from app.extensions import celery
from app.celery import signals
from app import create_app
from config import Test

create_app(Test)
