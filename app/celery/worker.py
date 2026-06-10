from app.extensions import celery
from app.celery import signals
from app import create_app
from config import Config
import logging
import debugpy
import os

logger = logging.getLogger(__name__)

if os.getenv("DEBUGPY") == "1":
    debugpy.listen(("0.0.0.0", 5678))
    logger.info("debugpy listening on 5678")

# Create and initialize the app with Celery
app = create_app(Config)
