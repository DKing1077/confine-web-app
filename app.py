import os
import configargparse
import pandas as pd
import subprocess
from sqlalchemy import text
from utils import parse_arguments, db_connection, api_connection
from tables import Artists, Albums, Songs, reg


def main(config):

    # make connection, load data
    session, engine = db_connection(config)
    check_db(session, engine)

    # saving db, commit session, close session
    save_db(config), session.commit(), session.close()


def check_db(session, engine):
    sql_file = 'data/check.sql'

    with open(sql_file, 'r') as file:
        sql = file.read()

        result = session.execute(text(sql))
        table_exists = result.fetchone()[0]

        if not table_exists:
            load_db(session, engine)


def load_db(session, engine):
    sql_file = 'data/database.sql'
    if os.path.exists(sql_file):

        with open(sql_file, 'r') as file:
            sql = file.read()
            sql = sql.replace(r'\.', '')

            session.execute(text(sql))
            session.commit()

    else:
        reg.metadata.create_all(engine)


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




