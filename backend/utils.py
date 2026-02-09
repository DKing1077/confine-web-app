from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker
import lyricsgenius


def parse_arguments(parser):
    parser.add('--config', default='config.cfg', is_config_file=True)
    parser.add_argument('--postgres_user')
    parser.add_argument('--postgres_pass')
    parser.add_argument('--postgres_name')
    parser.add_argument('--postgres_host')
    parser.add_argument('--postgres_port')

    parser.add_argument('--db_user')
    parser.add_argument('--db_pass')
    parser.add_argument('--db_name')
    parser.add_argument('--db_host')
    parser.add_argument('--db_port')

    parser.add_argument('--client_id')
    parser.add_argument('--client_secret')
    parser.add_argument('--access_token')
    args = parser.parse_args()
    return args


def db_create(config):
    default_engine = create_engine(
        f'postgresql://{config.postgres_user}:{config.postgres_pass}@{config.postgres_host}:{config.postgres_port}/postgres', isolation_level = "AUTOCOMMIT")

    with default_engine.connect() as conn:
        # create superuser role
        role_exists = conn.execute(
            text(f"SELECT 1 FROM pg_roles WHERE rolname = '{config.db_user}'"),
        ).fetchone()
        if not role_exists:
            sql = text(f"""CREATE ROLE {config.db_user} WITH
                           LOGIN
                           SUPERUSER
                           CREATEDB
                           CREATEROLE
                           INHERIT
                           REPLICATION
                           BYPASSRLS
                           CONNECTION LIMIT -1
                           PASSWORD '{config.db_pass}';""")
            conn.execute(sql)
            print(f"Super User '{config.db_user}' created successfully!")
        else:
            print(f"Super user '{config.db_user}' already exists.")

        # create database
        db_exists = conn.execute(
            text(f"SELECT 1 FROM pg_database WHERE datname='{config.db_name}'")
        ).fetchone()
        if not db_exists:
            sql = text(f"""CREATE DATABASE {config.db_name}
                           WITH
                           OWNER = {config.db_user}
                           CONNECTION LIMIT = -1; """)
            conn.execute(sql)
            print(f"Database '{config.db_name}' created successfully!")
        else:
            print(f"Database '{config.db_name}' already exists.")


def db_connection(config):
    db_uri = f'postgresql://{config.db_user}:{config.db_pass}@{config.db_host}:{config.db_port}/{config.db_name}'
    engine = create_engine(db_uri)
    try:
        Session = sessionmaker(bind=engine)
        session = Session()

        query = text('SELECT version();')
        result = session.execute(query)

        db_version = result.fetchone()[0]
        print(f"Connected to PostgreSQL! Server version: {db_version}")
        return session, engine

    except Exception as e:
        print(f"Error connecting to PostgreSQL database: {e}")


def api_connection(config):
    try:
        genius = lyricsgenius.Genius(config.access_token, remove_section_headers=True, timeout=None)
        return genius

    except Exception as e:
        print(f"Error connecting to lyrics genius api: {e}")


