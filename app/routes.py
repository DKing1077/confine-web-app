from flask import Blueprint, render_template
import logging


logger = logging.getLogger(__name__)
bp = Blueprint("app", __name__)


# index root
@bp.route("/")
def index():
    return render_template("index.html")


# session root
@bp.route("/session")
def session_pg():
    return render_template("session.html")


@bp.route("/sentry-test")
def sentry_test():
    raise Exception("Sentry test error")
