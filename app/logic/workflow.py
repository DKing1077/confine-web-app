from app.cache import workflow_cache_key, workflow_cache_get, workflow_cache_set
from app.cache import redis_workflow_cache
import uuid
import logging

logger = logging.getLogger(__name__)


def get_workflow(user_id):
    workflow_id = redis_workflow_cache.get(f"user_workflow:{user_id}")
    if not workflow_id:
        key = create_workflow(user_id)
        workflow = workflow_cache_get(key)
    else:
        key = workflow_cache_key(user_id, workflow_id)
        workflow = workflow_cache_get(key)
    return workflow


def create_workflow(user_id):
    workflow_id = str(uuid.uuid4())
    key = workflow_cache_key(user_id, workflow_id)
    workflow = {
        "workflow_id": workflow_id,
        "user_id": user_id,
        "tracks": {},
    }
    workflow_cache_set(key, workflow)
    redis_workflow_cache.set(
        f"user_workflow:{user_id}",
        workflow_id
    )
    return key

