import logging
import sys

def configure_logging():
    handler = logging.StreamHandler(sys.stdout)

    formatter = logging.Formatter(
        "%(asctime)s %(levelname)s %(name)s: %(message)s"
    )

    handler.setFormatter(formatter)

    root = logging.getLogger()
    root.setLevel(logging.INFO)

    logging.getLogger('werkzeug').setLevel(logging.ERROR)
    logging.getLogger("httpx").setLevel(logging.WARNING)
    logging.getLogger("urllib3").setLevel(logging.WARNING)

    # avoid duplicate handlers in reload/dev
    if not root.handlers:
        root.addHandler(handler)
