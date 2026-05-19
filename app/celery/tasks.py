from app.extensions import celery
from app.services import process_search
from app.services.openrouter import AIService
from app.services.search import add_search_result
from app import extensions
from app.cache import search_cache_set, search_cache_get, search_cache_key
from flask import current_app, request
from celery.utils.log import get_task_logger

logger = get_task_logger(__name__)

@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def process_search_task(search_input, user_id):
    try:
        logger.info('')
        logger.info('')

        # ai, parsing
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
        artist_input, track_input = ai_client.parse_search(search_input)

        # search cache
        cached_data, cache_key = search_cache(artist_input, track_input)
        if cached_data:
            return cached_data

        # search workflow
        search_result = search_workflow(extensions.db_session, artist_input, track_input, user_id, cache_key)

        extensions.db_session.commit()
        return search_result

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


def search_cache(artist_input, track_input):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)
    if cached_data:
        current_app.logger.info("cache hit for key: %s", cache_key)
        return cached_data, cache_key
    else:
        current_app.logger.info("cache miss for key: %s", cache_key)
        return None, cache_key


def search_workflow(db_session, artist_input, track_input, user_id, cache_key):
    search_result = process_search(db_session, artist_input, track_input)

    search_text = f'{artist_input} - {track_input}'
    add_search_result(db_session, user_id, search_text, search_result)

    search_cache_set(cache_key, search_result)
    current_app.logger.info("cache set for key: %s", cache_key)
    return search_result



