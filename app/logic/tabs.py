from app.cache import tab_key, tab_cache_get, tab_cache_set
from app.cache import redis_tab_cache
from app.prompts import create_tabs
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
    tabs = create_tabs(tabs_id, user_id)
    tab_cache_set(key, tabs)
    redis_tab_cache.set(
        f"user_tabs:{user_id}",
        tabs_id
    )
    return key
