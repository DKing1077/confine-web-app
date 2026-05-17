from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker
from celery import Celery
from flask_limiter import Limiter
from flask_limiter.util import get_remote_address

limiter = Limiter(
    key_func=get_remote_address,
    storage_uri="redis://localhost:6379/1"
)

engine = None
db_session = None
celery = Celery(__name__)


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
        broker_url=app.config["CELERY_BROKER_URL"],
        result_backend=app.config["CELERY_RESULT_BACKEND"],
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




