from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker


def parse_arguments(parser):

    parser.add('--config', default='config.cfg', is_config_file=True)
    parser.add_argument('--db_user')
    parser.add_argument('--db_pass')
    parser.add_argument('--db_name')
    parser.add_argument('--db_host')
    parser.add_argument('--db_port')

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

        return session

    except Exception as e:
        print(f"Error connecting to PostgreSQL database: {e}")


def api_connection():
    pass
