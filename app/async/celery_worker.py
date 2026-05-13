from app import create_app
from app.extensions import celery
from config import Test

create_app(Test)
