from flask import Flask
from app import routes
from database import db_create, db_connection, api_connection, configure_db
from routes import bp as main_bp


def create_app(config=None):
    """
    creates the flask application
    configures the local postgres database
    configures a scoped db session to be used - one per request
    closes each session automatically when the request ends
    first sql execution within request - connection opened - taken from pool
    end of request - flask teardown calls session remove - connection closed returned to the pool
    :param config:
        the applications run configurations defined in config.py
    """

    # configure database
    db_create(config)
    db_session, engine = db_connection(config)

    # flask instance
    app = Flask(__name__)
    if config:
        app.config.from_object(config)

    # attach session
    app.engine = engine
    app.db_session = db_session

    # configure database
    configure_db(db_session, engine, config)

    # attach api connection
    api_conn = api_connection(config)
    app.api_client = api_conn

    # remove session after request
    @app.teardown_appcontext
    def remove_session(exception=None):
        app.db_session.remove()

    # register routes
    app.register_blueprint(main_bp)
    return app

