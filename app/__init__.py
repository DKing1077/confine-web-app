from flask import Flask
from app import routes
from .database import db_create, create_tables
from .routes import bp as main_bp
from . import extensions
from app.extensions import celery
from app.extensions import limiter


def create_app(config=None):
    """
    creates the flask application
    configures the local postgres database
    configures a scoped db session to be used - one per request
    closes each session automatically when the request ends
    first SQL execution within request - connection opened - taken from pool
    end of request - flask teardown calls session remove - connection closed returned to the pool
    :param config:
        the applications run configurations defined in config.py
    database.py is used here so need to import the module, in services we can import the variables
    """

    # flask instance
    app = Flask(__name__)
    if config:
        app.config.from_object(config)

    # create database
    db_create(config)

    # init database
    extensions.init_db(config)

    # create tables
    create_tables(config, extensions.db_session, extensions.engine)

    # register routes
    app.register_blueprint(main_bp)

    # init celery
    extensions.init_celery(app)

    # init rate limiting
    limiter.init_app(app)

    # remove session after request
    @app.teardown_appcontext
    def remove_session(exception=None):
        extensions.db_session.remove()

    return app




