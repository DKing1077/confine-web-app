from app.extensions import celery
from app.services import process_search
from app import extensions
import logging
logger = logging.getLogger(__name__)


@celery.task(bind=True)
def process_search_task(self, search_input):
    try:
        logger.info(f"[{self.request.id}] started")
        result = process_search(extensions.db_session, search_input, self.request.id)

        extensions.db_session.commit()
        logger.info(f"[{self.request.id}] success")
        return result

    except Exception:
        logger.info(f"[{self.request.id}] failed")
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


