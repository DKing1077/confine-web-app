import logging
import sys

def configure_logging():
    root = logging.getLogger()
    root.handlers.clear()

    handler = logging.StreamHandler(sys.stdout)
    handler.setFormatter(logging.Formatter("%(message)s"))

    root.addHandler(handler)
    root.setLevel(logging.INFO)

    logging.getLogger("werkzeug").setLevel(logging.ERROR)
    logging.getLogger("httpx").setLevel(logging.WARNING)
    logging.getLogger("urllib3").setLevel(logging.WARNING)

    # Celery
    logging.getLogger("celery").setLevel(logging.ERROR)
    logging.getLogger("celery.app.trace").setLevel(logging.ERROR)
    logging.getLogger("celery.worker").setLevel(logging.ERROR)
    logging.getLogger("celery.worker.strategy").setLevel(logging.ERROR)
