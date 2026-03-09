from flask import Flask
from app import routes
from .database import db_create, create_tables
from .routes import bp as main_bp
from .extensions import init_db, init_api_client


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

    # init db_session, engine, api_client
    init_db(config)
    init_api_client(config)

    # create database, tables
    db_create(config)
    create_tables(config)

    # flask instance
    app = Flask(__name__)
    if config:
        app.config.from_object(config)

    # remove session after request
    @app.teardown_appcontext
    def remove_session(exception=None):
        extensions.db_session.remove()

    # register routes
    app.register_blueprint(main_bp)
    return app

