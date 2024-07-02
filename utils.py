from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker
import lyricsgenius
from tables import reg


def parse_arguments(parser):

    parser.add('--config', default='config.cfg', is_config_file=True)
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

        reg.metadata.create_all(engine)
        return session, engine

    except Exception as e:
        print(f"Error connecting to PostgreSQL database: {e}")


def api_connection(config):
    try:
        genius = lyricsgenius.Genius(config.access_token, remove_section_headers=True,
                                     excluded_terms=['(Remix)', '(Live)'], timeout=None)
        return genius

    except Exception as e:
        print(f"Error connecting to lyrics genius api: {e}")


