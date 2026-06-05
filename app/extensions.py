from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker
from celery import Celery
from flask_limiter import Limiter
from flask_limiter.util import get_remote_address
from flask_jwt_extended import JWTManager
import os
from flask import jsonify

celery = Celery(__name__)
limiter = Limiter(
    key_func=get_remote_address,
    storage_uri=os.getenv("REDIS_URL", "redis://localhost:6379/1")
)

engine = None
db_session = None
jwt = None

def init_db(config):
    global engine, db_session
    db_uri = f'postgresql://{config.DB_USER}:{config.DB_PASS}@{config.DB_HOST}:{config.DB_PORT}/{config.DB_NAME}'
    engine = create_engine(db_uri)
    try:
        session = sessionmaker(bind=engine, autoflush=False)
        db_session = scoped_session(session)

        query = text('SELECT version();')
        result = db_session.execute(query)

        db_version = result.fetchone()[0]
        print(f"connected to PostgreSQL! Server version: {db_version}")
    except Exception as e:
        print(f"error connecting to PostgreSQL database: {e}")


def init_celery(app):
    celery.conf.update(
        broker_url=os.getenv("CELERY_BROKER_URL", "redis://localhost:6379/0"),
        result_backend=os.getenv("CELERY_RESULT_BACKEND", "redis://localhost:6379/0"),
        task_track_started=True,
        task_serializer="json",
        result_serializer="json",
        accept_content=["json"],
        worker_hijack_root_logger=False,
        worker_redirect_stdouts=True,
        worker_redirect_stdouts_level="INFO",
        result_expires=3600
    )

    class ContextTask(celery.Task):
        def __call__(self, *args, **kwargs):
            with app.app_context():
                return self.run(*args, **kwargs)
    celery.Task = ContextTask


def init_jwt(app):
    global jwt
    jwt = JWTManager(app)

    # 1. Print out the key Flask actually has loaded in memory right now
    print("--- JWT STARTUP DEBUGGER ---")
    print(f"Loaded App Config Secret Key: {app.config.get('JWT_SECRET_KEY')}")
    print(f"Loaded Environment OS Key: {os.getenv('JWT_SECRET_KEY')}")
    print(f"Loaded JWT_TOKEN_LOCATION: {app.config.get('JWT_TOKEN_LOCATION')}")
    print(f"Loaded JWT_HEADER_NAME: {app.config.get('JWT_HEADER_NAME')}")
    print(f"Loaded JWT_HEADER_TYPES: {app.config.get('JWT_HEADER_TYPES')}")

    @jwt.expired_token_loader
    def expired_token_callback(jwt_header, jwt_payload):
        return jsonify({
            "route": "session-status",
            "status": "expired",
            "logged_in": False,
            "message": "The access token has expired."
        }), 401

    @jwt.invalid_token_loader
    def invalid_token_callback(error_string):
        return jsonify({
            "route": "session-status",
            "status": "invalid",
            "logged_in": False,
            "message": f"Signature verification failed: {error_string}"
        }), 401

    @jwt.unauthorized_loader
    def missing_token_callback(error_string):
        return jsonify({
            "route": "session-status",
            "status": "unauthorized",
            "logged_in": False,
            "message": f"Request missing authorization header: {error_string}"
        }), 401


