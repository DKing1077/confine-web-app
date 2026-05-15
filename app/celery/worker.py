from app.extensions import celery
from app import create_app
from config import Test

create_app(Test)
