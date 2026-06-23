from app.cache import tab_key, tab_cache_set
from app.logic import get_tab_cache
import logging

logger = logging.getLogger(__name__)

def append_tabs_list(user_id, items_list, tabs_listname):
    tabs = get_tab_cache(user_id)
    existing_ids = {
        item["commontrack_id"]
        for item in tabs[tabs_listname]
    }
    for item in items_list:
        track_id = item["commontrack_id"]
        if track_id not in existing_ids:
            tabs[tabs_listname].append({
                "commontrack_id": track_id,
                "artist_name": item["artist_name"],
                "track_name": item["track_name"],
            })
            existing_ids.add(track_id)
    key = tab_key(user_id, tabs["tabs_id"])
    tab_cache_set(key, tabs)
    logger.info("items list appended to tabs list:%s=%s", tabs_listname, len(tabs[tabs_listname]))
    return tabs
