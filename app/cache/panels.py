import redis
import json


redis_tab_cache = redis.Redis(
    host="redis",
    port=6379,
    db=3,
    decode_responses=True
)


# workflow cache key, get, set, delete
def tab_key(user_id, workflow_id):
    key = f"workflow:{user_id}:{workflow_id}"
    return key


def tab_cache_get(key):
    cached = redis_tab_cache.get(key)
    if not cached:
        return None
    try:
        return json.loads(cached)
    except json.JSONDecodeError:
        return None


def tab_cache_set(key, value, ttl=43200):
    redis_tab_cache.setex(key, ttl, json.dumps(value))


def tab_cache_delete(key):
    redis_tab_cache.delete(key)

