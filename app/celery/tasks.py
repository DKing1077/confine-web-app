from app.extensions import celery
from app.services import process_search
from app.services.search import add_search_result
from app.services.openrouter import AIService
from app import extensions
from app.cache import cached_set, cached_get, cached_key
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

        # cache get
        cache_key = cached_key(artist_input, track_input)
        cached_data = cached_get(cache_key)
        if cached_data:
            current_app.logger.info("cache hit for key: %s", cache_key)
            return cached_data
        current_app.logger.info("cache miss for key: %s", cache_key)

        # search workflow
        search_result = process_search(extensions.db_session, artist_input, track_input)
        search_text = f'{artist_input} - {track_input}'
        add_search_result(extensions.db_session, user_id, search_text, search_result)

        # cache set
        cached_set(cache_key, search_result)
        current_app.logger.info("cache set for key: %s", cache_key)

        extensions.db_session.commit()
        return search_result

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


