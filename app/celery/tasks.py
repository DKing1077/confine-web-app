from app.extensions import celery
from app.services import process_search
from app.services.openrouter import AIService
from app.services.search import add_search_result
from app import extensions
from app.cache import search_cache_set, search_cache_get, search_cache_key
from app.cache import workflow_cache_key, workflow_cache_get, workflow_cache_set
from flask import current_app, request
from celery.utils.log import get_task_logger
from app.cache import redis_workflow_cache
import uuid


logger = get_task_logger(__name__)

@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def process_search_task(search_input, user_id):
    try:
        # ai parsing
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
        artist_input, track_input = ai_client.parse_search(search_input)
        search_text = f'{artist_input} - {track_input}'

        # search cache
        cached_data, cache_key = search_cache(artist_input, track_input)
        if cached_data:
            add_search_result(extensions.db_session, user_id, search_text, cached_data)
            return cached_data

        # search pipeline
        search_result = search_pipeline(extensions.db_session, user_id, artist_input, track_input, search_text, cache_key)

        logger.info("cached data: %s", cached_data)
        logger.info("search result: %s", search_result)

        extensions.db_session.commit()
        return search_result

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def add_to_workflow_task(search_input, user_id):
    try:
        workflow = get_workflow(user_id)

    except Exception:
        pass


@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def remove_from_workflow_task(search_input, user_id):
    try:
        workflow = get_workflow(user_id)

    except Exception:
        pass


def search_cache(artist_input, track_input):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)
    if cached_data:
        logger.info("cache hit for key: %s", cache_key)
        return cached_data, cache_key
    else:
        logger.info("cache miss for key: %s", cache_key)
        return None, cache_key


def search_pipeline(db_session, user_id, artist_input, track_input, search_text, cache_key):
    search_result = process_search(db_session, artist_input, track_input)
    add_search_result(db_session, user_id, search_text, search_result)

    search_cache_set(cache_key, search_result)
    logger.info("cache set for key: %s", cache_key)
    return search_result


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




