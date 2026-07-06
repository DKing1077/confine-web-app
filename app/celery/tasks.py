import logging
from flask import current_app
from app import extensions
from app.extensions import celery
from app.logic import cache_pipeline, search_pipeline
from app.services import AIService, MusixMatch
from app.tabs import append_tabs_list

logger = logging.getLogger(__name__)


# @celery.task(
#     autoretry_for=(Exception,),
#     retry_backoff=True,
#     retry_kwargs={"max_retries": 3},
# )
@celery.task
def parse_search_task(search_input):
    try:
        # ai parsing
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"],)
        artist_input, track_input = ai_client.parse_search(search_input)

        logger.info("parsed raw input: artist=%s, track=%s", artist_input, track_input)
        return artist_input, track_input, search_input

    except Exception as e:
        raise e


# @celery.task(
#     autoretry_for=(Exception,),
#     retry_backoff=False,
#     retry_kwargs={"max_retries": 3},
# )
@celery.task
def process_search_task(parsed_data, user_id):
    artist_input, track_input, search_input = parsed_data
    try:
        # search cache
        cached_data, cache_key = cache_pipeline(extensions.db_session, user_id, artist_input, track_input, search_input)
        if cached_data:
            tabs = append_tabs_list(user_id, cached_data, "search_results")
            return tabs

        # search pipeline
        api_client = MusixMatch(api_key=current_app.config["MUSIXMATCH_APIKEY"])
        search_result = search_pipeline(extensions.db_session, api_client,user_id, artist_input, track_input, search_input, cache_key)

        # tabs result
        tabs = append_tabs_list(user_id, search_result, "search_results")

        extensions.db_session.commit()
        return tabs

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


# @celery.task(
#     autoretry_for=(Exception,),
#     retry_backoff=True,
#     retry_kwargs={"max_retries": 3},
# )
@celery.task
def analyze_items_task(tracks_lyrics):
    try:
        logger.info("analyzing items lyrics=%s", len(tracks_lyrics))
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"],)

        concepts = ai_client.get_concepts(tracks_lyrics)
        logger.info("concepts fetched=%s", len(concepts))

        semantics = ai_client.get_semantics(tracks_lyrics)
        logger.info("semantics fetched=%s", len(semantics))

        return concepts, semantics

    except Exception:
        raise e
