import os
import configargparse
import pandas as pd
import subprocess
from sqlalchemy import text
from utils import parse_arguments, db_connection, api_connection
from tables import Artists, Albums, Songs


def main(config):

    # make connection, load db
    session = db_connection(config)
    load_db(session)

    # saving db, close session
    save_db(config)
    session.close()


def load_db(session):
    sql_file = 'data/database.sql'

    with open(sql_file, 'r') as file:
        sql_commands = file.read()

        session.execute(text(sql_commands))
        session.commit()


def save_db(config):
    command = [
        'pg_dump',
        '-U', str(config.db_user),
        '-d', str(config.db_name),
        '-f', 'data/database.sql'
    ]

    os.environ['PGPASSWORD'] = str(config.db_pass)
    subprocess.run(command, check=True)


if __name__ == '__main__':
    parser = configargparse.ArgParser()
    cfg = parse_arguments(parser)
    main(cfg)




