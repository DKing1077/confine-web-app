from sqlalchemy import create_engine, text
from sqlalchemy.orm import scoped_session, sessionmaker
import lyricsgenius

engine = None
db_session = None
api_conn = None


def init_db(config):
    global engine, db_session
    db_uri = f'postgresql://{config.db_user}:{config.db_pass}@{config.db_host}:{config.db_port}/{config.db_name}'
    engine = create_engine(db_uri)
    try:
        session = sessionmaker(bind=engine, autoflush=False, autocommit=False, future=True)
        db_session = scoped_session(session)

        query = text('SELECT version();')
        result = db_session.execute(query)

        db_version = result.fetchone()[0]
        print(f"connected to PostgreSQL! Server version: {db_version}")
    except Exception as e:
        print(f"error connecting to PostgreSQL database: {e}")


def init_api_client(config):
    global api_conn
    try:
        lg_conn = lyricsgenius.Genius(config.access_token, remove_section_headers=True, timeout=None)
        api_conn = lg_conn

    except Exception as e:
        print(f"error connecting to lyrics genius api: {e}")
