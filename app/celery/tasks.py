import logging
from flask import current_app
from app import extensions
from app.extensions import celery
from app.logic import cache_pipeline, search_pipeline
from app.services import AIService, MusixMatch
from app.tabs import append_tabs_list, stable_id
from app.schemas import validate_primary_panel, validate_secondary_panel

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
def build_panel_data_task(tracks_lyrics):
    try:
        logger.info("building panel data lyrics=%s", len(tracks_lyrics))
        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])

        primary_panel = validate_primary_panel(ai_client, tracks_lyrics)
        for t in primary_panel:
            for c in t.get("concepts", []):
                c["id"] = stable_id(
                    "c",
                    t["commontrack_id"],
                    c.get("name", ""),
                    c.get("evidence", "")
                )
        logger.info("primary panel fetched=%s", len(primary_panel))

        secondary_panel = validate_secondary_panel(ai_client, tracks_lyrics)
        for t in secondary_panel:
            for s in t.get("semantics", []):
                s["id"] = stable_id(
                    "s",
                    t["commontrack_id"],
                    s.get("name", ""),
                    s.get("evidence", "")
                )
        logger.info("secondary panel fetched=%s", len(secondary_panel))

        return primary_panel, secondary_panel

    except Exception as e:
        raise e


# @celery.task(
#     autoretry_for=(Exception,),
#     retry_backoff=True,
#     retry_kwargs={"max_retries": 3},
# )
@celery.task
def render_selection_task(primary_panel, secondary_panel, instructions, input_text):
    try:
        applied = len(primary_panel) + len(secondary_panel)
        logger.info("applying transforms=%s", applied)

        ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"], model=current_app.config["OPENROUTER_MODEL"])
        display_result = ai_client.transform_lyrics(primary_panel, secondary_panel, instructions, input_text)

        return display_result

    except Exception as e:
        raise e
