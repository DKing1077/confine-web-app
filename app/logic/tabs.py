from app.cache import tab_key, tab_cache_get, tab_cache_set
from app.cache import redis_tab_cache
import logging
import uuid

logger = logging.getLogger(__name__)


def get_tab_cache(user_id):
    tab_id = redis_tab_cache.get(f"user_tabs:{user_id}")
    if not tab_id:
        key = create_tab_cache(user_id)
        tabs = tab_cache_get(key)
    else:
        key = tab_key(user_id, tab_id)
        tabs = tab_cache_get(key)
    return tabs


def create_tab_cache(user_id):
    tabs_id = str(uuid.uuid4())
    key = tab_key(user_id, tabs_id)
    tabs = {
        "tabs_id": tabs_id,
        "user_id": user_id,
        "search_results": [],
        "workspace": [],
        "concepts": [],
        "semantics": [],
        "instructions": [],
        "input": [],
        "output": []
    }
    tab_cache_set(key, tabs)
    redis_tab_cache.set(
        f"user_tabs:{user_id}",
        tabs_id
    )
    return key


def append_tab_list(user_id, search_result):
    tabs = get_tab_cache(user_id)
    existing_ids = {
        item["commontrack_id"]
        for item in tabs["search_results"]
    }
    for item in search_result:
        track_id = item["commontrack_id"]
        if track_id not in existing_ids:
            tabs["search_results"].append({
                "commontrack_id": track_id,
                "artist_name": item["artist_name"],
                "track_name": item["track_name"],
            })
            existing_ids.add(track_id)
    key = tab_key(user_id, tabs["tabs_id"])
    tab_cache_set(key, tabs)
    logger.info('search appended to tab cache:search_results=%s', len(tabs["search_results"]))
    return tabs

