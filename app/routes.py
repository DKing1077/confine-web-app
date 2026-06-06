from flask import render_template, Blueprint
from celery import chain

bp = Blueprint("app", __name__)

# index root
@bp.route('/')
def index():
    return render_template('index.html')


# session root
@bp.route('/session')
def session_pg():
    return render_template('session.html')


