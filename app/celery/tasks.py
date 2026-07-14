import logging
from flask import current_app
from app import extensions
from app.extensions import celery
from app.logic import cache_pipeline, search_pipeline
from app.services import AIService, MusixMatch
from app.tabs import append_tabs_list, stable_id
from app.schemas import validate_concepts, validate_semantics

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
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
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

    except Exception as e:
        extensions.db_session.rollback()
        raise e

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
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])

        concepts = validate_concepts(ai_client, tracks_lyrics)
        for t in concepts:
            for c in t.get("concepts", []):
                c["id"] = stable_id(
                    "c",
                    t["commontrack_id"],
                    c.get("name", ""),
                    c.get("evidence", "")
                )
        logger.info("concepts fetched=%s", len(concepts))

        semantics = validate_semantics(ai_client, tracks_lyrics)
        for t in semantics:
            for s in t.get("semantics", []):
                s["id"] = stable_id(
                    "s",
                    t["commontrack_id"],
                    s.get("name", ""),
                    s.get("evidence", "")
                )
        logger.info("semantics fetched=%s", len(semantics))

        return concepts, semantics

    except Exception as e:
        raise e


# @celery.task(
#     autoretry_for=(Exception,),
#     retry_backoff=True,
#     retry_kwargs={"max_retries": 3},
# )
@celery.task
def process_input(concepts, semantics, instructions, input_text):
    try:
        applied = len(concepts) + len(semantics)
        logger.info("applying transforms=%s", applied)

        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
        display_result = ai_client.transform_lyrics(concepts, semantics, instructions, input_text)

        return display_result

    except Exception as e:
        raise e
