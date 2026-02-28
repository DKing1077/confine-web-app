from sqlalchemy import create_engine, text
from extensions import db_session, engine
from app.models import reg
import subprocess
import os


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


def create_tables(config):
    sql = text("""SELECT
                  EXISTS (
                  SELECT 1
                  FROM information_schema.tables
                  WHERE table_name IN ('artists', 'albums', 'songs'));""")
    table_exists = db_session.execute(sql).fetchone()
    if not table_exists:
        sql_file = 'data/database.sql'
        if os.path.exists(sql_file):
            command = [
                'psql',
                '-U', str(config.db_user),
                '-d', str(config.db_name),
                '-f', sql_file,
            ]
            os.environ['PGPASSWORD'] = str(config.db_pass)
            subprocess.run(command, check=True)
        else:
            reg.metadata.create_all(engine)


def save_db(config):
    command = [
        'pg_dump',
        '--column-inserts',
        '-U', str(config.db_user),
        '-d', str(config.db_name),
        '-f', 'data/database.data'
    ]
    os.environ['PGPASSWORD'] = str(config.db_pass)
    subprocess.run(command, check=True)


