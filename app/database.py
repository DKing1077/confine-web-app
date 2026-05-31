from sqlalchemy import create_engine, text
from app.models import Base
import subprocess
import os


def db_create(config):
    default_engine = create_engine(
        f'postgresql://{config.POSTGRES_USER}:{config.POSTGRES_PASS}@{config.POSTGRES_HOST}:{config.POSTGRES_PORT}/postgres', isolation_level = "AUTOCOMMIT")

    with default_engine.connect() as conn:
        # create superuser role
        role_exists = conn.execute(
            text(f"SELECT 1 FROM pg_roles WHERE rolname = '{config.DB_USER}'"),
        ).fetchone()
        if not role_exists:
            sql = text(f"""CREATE ROLE {config.DB_USER} WITH
                           LOGIN
                           SUPERUSER
                           CREATEDB
                           CREATEROLE
                           INHERIT
                           REPLICATION
                           BYPASSRLS
                           CONNECTION LIMIT -1
                           PASSWORD '{config.DB_PASS}';""")
            conn.execute(sql)
            print(f"super user '{config.DB_USER}' created successfully!")
        else:
            print(f"super user '{config.DB_USER}' already exists.")

        # create database
        db_exists = conn.execute(
            text(f"SELECT 1 FROM pg_database WHERE datname='{config.DB_NAME}'")
        ).fetchone()
        if not db_exists:
            sql = text(f"""CREATE DATABASE {config.DB_NAME}
                           WITH
                           OWNER = {config.DB_USER}
                           CONNECTION LIMIT = -1; """)
            conn.execute(sql)
            print(f"database '{config.DB_NAME}' created successfully!")
        else:
            print(f"database '{config.DB_NAME}' already exists.")


def create_tables(config, db_session, engine):
    sql = text("""SELECT
                  EXISTS (
                  SELECT 1
                  FROM information_schema.tables
                  WHERE table_name IN ('artists', 'albums', 'tracks'));""")
    table_exists = db_session.execute(sql).fetchone()[0]
    if not table_exists:
        sql_file = 'data/database.sql'
        if os.path.exists(sql_file):
            command = [
                'psql',
                '-U', str(config.DB_USER),
                '-d', str(config.DB_NAME),
                '-h', str(config.DB_HOST),
                '-p', str(config.DB_PORT),
                '-f', sql_file,
            ]
            os.environ['PGPASSWORD'] = str(config.DB_PASS)
            subprocess.run(command, check=True)
        else:
            Base.metadata.create_all(engine)


def save_db(config):
    command = [
        'pg_dump',
        '--column-inserts',
        '-U', str(config.DB_USER),
        '-d', str(config.DB_NAME),
        '-h', str(config.DB_HOST),
        '-p', str(config.DB_PORT),
        '-f', 'data/database.data'
    ]
    os.environ['PGPASSWORD'] = str(config.DB_PASS)
    subprocess.run(command, check=True)


