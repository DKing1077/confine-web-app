from app.extensions import celery
from app.services import process_search
from app import extensions


@celery.task
def process_search_task(search_input):
    try:
        result = process_search(extensions.db_session, search_input)
        extensions.db_session.commit()
        return result

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


