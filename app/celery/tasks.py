from app.extensions import celery
from app import extensions
from app.services.openrouter import AIService
from db.search import add_search_result
from flask import current_app
from app.logic import search_pipeline, search_cache, get_workflow


@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def parse_search_task(search_input):
    try:
        # ai parsing
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
        artist_input, track_input = ai_client.parse_search(search_input)

        search_text = f'{artist_input} - {track_input}'
        return artist_input, track_input, search_text

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
def process_search_task(artist_input, track_input, search_text, user_id):
    try:
        # search cache
        cached_data, cache_key = search_cache(artist_input, track_input)
        if cached_data:
            add_search_result(extensions.db_session, user_id, search_text, cached_data)
            return cached_data

        # search pipeline
        search_result = search_pipeline(extensions.db_session, user_id, artist_input, track_input, search_text, cache_key)

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





