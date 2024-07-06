import configargparse
from utils import *
from backend import *
from lyrics_api import *


def main(config):

    # make db connection, load sql
    session, engine = db_connection(config)
    check_db(session, engine, config)

    # make api connection
    genius = api_connection(config)
    start = int(input('1) search artist\n2) search song\n3) search album\n'))

    # get, store some data
    data = geniusapi(genius, start)
    relationalmapping(genius, session, data, start)

    # commit session, save db, close session
    session.commit(), save_db(config), session.close()


if __name__ == '__main__':
    parser = configargparse.ArgParser()
    cfg = parse_arguments(parser)
    main(cfg)




