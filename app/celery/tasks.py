from app.extensions import celery
from app.services import process_search
from app import extensions
import logging
logger = logging.getLogger(__name__)


@celery.task(
    bind=True,
    autoretry_for=(Exception,),
    retry_backoff=True,
    retry_kwargs={"max_retries": 3},
)
def process_search_task(self, search_input):
    try:
        result = process_search(extensions.db_session, search_input, self.request.id)
        extensions.db_session.commit()
        return result

    except Exception:
        extensions.db_session.rollback()
        raise

    finally:
        extensions.db_session.remove()


