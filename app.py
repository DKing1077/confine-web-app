import configargparse
from utils import *
from backend import *
from models import *


def main(config):

    # make db connection, make api connection, configure db
    session, engine = db_connection(config)
    genius = api_connection(config)
    configure_db(session, engine, config)

    # start app, take input
    start = int(input('1) analyze artist\n2) analyze song\n3) analyze album\n'))
    search = input('please enter name : ')

    # collect data
    data = collect_data(session, genius, search, start)
    sentiment_analysis(data)
    session.commit(), save_db(config), session.close()


if __name__ == '__main__':
    parser = configargparse.ArgParser()
    cfg = parse_arguments(parser)
    main(cfg)




