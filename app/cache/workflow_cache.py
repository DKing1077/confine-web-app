import redis
import json


redis_workflow_cache = redis.Redis(
    host="redis",
    port=6379,
    db=3,
    decode_responses=True
)


# workflow cache key, get, set, delete
def workflow_cache_key(user_id, workflow_id):
    key = f"workflow:{user_id}:{workflow_id}"
    return key


def workflow_cache_get(key):
    cached = redis_workflow_cache.get(key)
    if not cached:
        return None
    try:
        return json.loads(cached)
    except json.JSONDecodeError:
        return None


def workflow_cache_set(key, value, ttl=43200):
    redis_workflow_cache.setex(key, ttl, json.dumps(value))


def workflow_cache_delete(key):
    redis_workflow_cache.delete(key)

