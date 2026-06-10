from flask import Flask
from flask_cors import CORS
from .database import db_create, create_tables
from app.routes import bp as main_bp
from app.auth.routes import bp as auth_bp
from app.search.routes import bp as search_bp
from app.tabs.routes import bp as tabs_bp
from app.logger import configure_logging
from . import extensions


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

    # configure logging
    configure_logging()

    # create database
    db_create(config)

    # init database
    extensions.init_db(config)

    # create tables
    create_tables(config, extensions.db_session, extensions.engine)

    # register routes.py
    app.register_blueprint(main_bp)
    app.register_blueprint(auth_bp)
    app.register_blueprint(search_bp)
    app.register_blueprint(tabs_bp)

    # init celery
    extensions.init_celery(app)

    # init rate limiting
    extensions.limiter.init_app(app)

    # init jwt
    extensions.init_jwt(app)

    # allow browser headers across ports!
    CORS(app, resources={r"/*": {"origins": "*"}},
         allow_headers=["Content-Type", "Authorization"],
         methods=["GET", "POST", "PUT", "DELETE", "OPTIONS"])

    # remove session after request
    @app.teardown_appcontext
    def remove_session(exception=None):
        extensions.db_session.remove()

    return app




