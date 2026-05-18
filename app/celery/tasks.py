from app.extensions import celery
from app.services import process_search
from app import extensions
from app.cache import cached_key, cached_get, cached_set
from flask import current_app


@celery.task(
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def process_search_task(artist_input, track_input, cache_key):
    try:
        result = process_search(extensions.db_session, artist_input, track_input)
        cached_set(cache_key, result)

        current_app.logger.info("cache set for key: %s", cache_key)
        extensions.db_session.commit()
        return True

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


