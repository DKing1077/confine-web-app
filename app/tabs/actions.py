from app.cache import tab_key, tab_cache_set
from app.logic import get_tab_cache
from app.services import MusixMatch
from flask import current_app
import logging

logger = logging.getLogger(__name__)


def fetch_lyrics(full_items):
    full_items_lyrics = []
    api_client = MusixMatch(api_key=current_app.config["MUSIXMATCH_APIKEY"])
    for item in full_items:
        track_id = item["commontrack_id"]
        lyrics = api_client.get_lyrics(track_id)
        item["lyrics"] = lyrics
        full_items_lyrics.append(item)
    return full_items_lyrics


def resolve_by_id(user_id, track_ids):
    tabs = get_tab_cache(user_id)
    search_results = tabs.get("search_results", [])
    track_ids = [int(track_id) for track_id in track_ids]
    lookup = {
        item["commontrack_id"]: item
        for item in search_results
    }
    resolved = [
        lookup[track_id]
        for track_id in track_ids
        if track_id in lookup
    ]
    return resolved


def append_tabs_list(user_id, items_list, tabs_listname):
    tabs = get_tab_cache(user_id)
    existing_ids = {
        item["commontrack_id"]
        for item in tabs[tabs_listname]
    }
    for item in items_list:
        track_id = item["commontrack_id"]
        if track_id not in existing_ids:
            tabs[tabs_listname].append(item)
            existing_ids.add(track_id)
    key = tab_key(user_id, tabs["tabs_id"])
    tab_cache_set(key, tabs)
    logger.info("items list appended to tabs list:%s=%s", tabs_listname, len(tabs[tabs_listname]))
    return tabs


def remove_tabs_list(user_id, track_ids, tabs_listname):
    tabs = get_tab_cache(user_id)
    remove_ids = {int(track_id) for track_id in track_ids}
    tabs[tabs_listname] = [
        item
        for item in tabs[tabs_listname]
        if item["commontrack_id"] not in remove_ids
    ]
    key = tab_key(user_id, tabs["tabs_id"])
    tab_cache_set(key, tabs)
    logger.info("items list removed from tabs list:%s=%s", tabs_listname, len(tabs[tabs_listname]))
    return tabs


