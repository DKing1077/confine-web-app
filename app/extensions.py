from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker
from celery import Celery

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
        result_backend=app.config["CELERY_RESULT_BACKEND"]
    )

    class ContextTask(celery.Task):
        def __call__(self, *args, **kwargs):
            with app.app_context():
                return self.run(*args, **kwargs)
    celery.Task = ContextTask




