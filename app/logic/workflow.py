from app.cache import tab_key, tab_cache_get, tab_cache_set
from app.cache import redis_tab_cache
import uuid
import logging

logger = logging.getLogger(__name__)


def get_tab_cache(user_id):
    workflow_id = redis_tab_cache.get(f"user_workflow:{user_id}")
    if workflow_id:
        key = tab_key(user_id, workflow_id)
        workflow = tab_cache_get(key)
        if workflow:
            return workflow
    workflow = create_tab_cache(user_id)
    return workflow


def create_tab_cache(user_id):
    workflow_id = str(uuid.uuid4())
    key = tab_key(user_id, workflow_id)
    workflow = {
        "workflow_id": workflow_id,
        "user_id": user_id,
        "search_results": [],
        "workspace": [],
        "concepts": [],
        "semantics": [],
        "instructions": [],
        "input": [],
        "output": []
    }
    tab_cache_set(key, workflow)
    redis_workflow_cache.set(
        f"user_workflow:{user_id}",
        workflow_id
    )
    return key

