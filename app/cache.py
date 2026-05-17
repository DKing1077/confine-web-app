import json
import redis
from app.services.search import normalize

# DB 0 → default (Celery broker/backend)
# DB 1 → rate limiting
# DB 2 → cache

redis_cache = redis.Redis(
    host="localhost",
    port=6379,
    db=2,
    decode_responses=True
)

def cached_key(artist_input, track_input):
    key = f'{normalize(artist_input)}:{normalize(track_input)}'
    return key


def cached_set(key, value, ttl=3600):
    redis_cache.setex(key, ttl, json.dumps(value))


def cached_get(key):
    cached = redis_cache.get(key)
    if not cached:
        return None
    try:
        return json.loads(cached)
    except json.JSONDecodeError:
        return None


def cached_delete(key):
    redis_cache.delete(key)


