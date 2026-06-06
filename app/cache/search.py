import json
import redis
from app.search import normalize

# DB 0 → default (Celery broker/backend)
# DB 1 → rate limiting
# DB 2 → cache
# ttl=43200 # 12 hours in seconds
# make key -> check get cache - > miss set cache or api return

redis_search_cache = redis.Redis(
    host="redis",
    port=6379,
    db=2,
    decode_responses=True
)


# search cache key, get, set, delete
def search_cache_key(artist_input, track_input):
    key = f'{normalize(artist_input)}:{normalize(track_input)}'
    return key


def search_cache_get(key):
    cached = redis_search_cache.get(key)
    if not cached:
        return None
    try:
        return json.loads(cached)
    except json.JSONDecodeError:
        return None


def search_cache_set(key, value, ttl=43200):
    redis_search_cache.setex(key, ttl, json.dumps(value))


def search_cache_delete(key):
    redis_search_cache.delete(key)

