from app.extensions import celery
from app.services import process_search
from app.extensions import db_session

@celery.task
def process_search_task(search_input):
    try:
        result = process_search(db_session, search_input)
        db_session.commit()
        return result

    except Exception:
        db_session.rollback()
        raise

    finally:
        db_session.remove()


