from flask import render_template, Blueprint, request, current_app, session
from app.celery.tasks import process_search_task, parse_search_task, add_to_workflow_task
from app.db.user import add_user, login_user
from app.models import Users
from app import extensions
from celery import chain

bp = Blueprint("main", __name__)
limiter = extensions.limiter


# index root
@bp.route('/')
def index():
    return render_template('index.html')


# session root
@bp.route('/session')
def session_pg():
    return render_template('session.html')


# search route
@bp.route("/search")
@limiter.limit("10/minute")
def search():
    if "user_id" not in session:
        return {
        "route": "search",
        "status": "failed",
        "reason": "user login required"
    }, 401
    user_id = session["user_id"]

    search_input = request.args.get("search_input")
    current_app.logger.info("search input: %s", search_input)

    # Chain: parse first, then search
    job = chain(
        parse_search_task.s(search_input),
        process_search_task.s(user_id)
    ).apply_async()

    return {
        "route": "search",
        "status": "success",
        "job_id": job.id
    }, 200


# register route
@limiter.limit("3/minute")
@bp.route("/register", methods=["POST"])
def registration():
    email = request.json["email"]
    password = request.json["password"]

    # 400 bad request
    result = add_user(extensions.db_session, email, password)
    if not result["ok"]:
        return {
            "route": "register",
            "status": "failed",
            "email": email
        }, 400
    current_app.logger.info("user registered: %s", email)
    current_app.logger.info("user id: %s", result["user_id"])

    # 201 created
    return {
        "route": "register",
        "status": "success",
        "email": email
    }, 201


# login route
@limiter.limit("5/minute")
@bp.route("/login", methods=["POST"])
def loginuser():
    email = request.json["email"]
    password = request.json["password"]

    # 401 unauthorized
    result = login_user(extensions.db_session, email, password)
    if not result["ok"]:
        return {
            "route": "login",
            "status": "failed",
            "email": email
        }, 401
    current_app.logger.info("user logged in: %s", email)
    current_app.logger.info("user id: %s", result["user_id"])

    # 200 ok
    session["user_id"] = result["user_id"]
    return {
        "route": "login",
        "status": "success",
        "email": email
    }, 200


# logout route
@bp.route("/logout", methods=["POST"])
def logout():
    email = session.get("email")
    session.clear()
    return {
        "route": "logout",
        "status": "success",
        "email": email or "unknown"
    }, 200


# session status route
@bp.route("/session-status", methods=["GET"])
def session_status():
    # is user_id set in session
    user_id = session.get("user_id")
    if not user_id:
        return {
            "logged_in": False
        }, 200

    # if user is in db
    user = extensions.db_session.query(Users).filter_by(user_id=user_id).first()
    if not user:
        return {
            "logged_in": False
        }, 200

    # return logged in, 200 ok
    current_app.logger.info("session status: %s logged in", user_id)
    return {
        "logged_in": True,
        "email": user.email
    }, 200


# workflow add route
@bp.route("/add_workflow")
@limiter.limit("30/minute")
def add_workflow():
    if "user_id" not in session:
        return {
        "route": "workflow add",
        "status": "failed"
    }, 401

    user_id = session["user_id"]
    search_input = request.args.get("search_input")
    current_app.logger.info("request to add to workflow: %s", search_input)

    job = add_to_workflow_task.delay(search_input, user_id)
    return {
        "route": "workflow add",
        "status": "success"
    }, 200


# Flask API	Reads from
# request.args URL query string
# request.jsonJSON request body
# request.form HTML form body
# request.headers	HTTP headers

# # job status route
# @bp.route("/job/<job_id>")
# def job_status(job_id):
#     job = AsyncResult(job_id, app=celery)
#     response = {
#         "job_id": job.id,
#         "status": job.status,
#         "result": job.result
#     }
#     if job.successful():
#         response["result"] = job.result
#     elif job.failed():
#         response["result"] = str(job.result)
#     return response

# from flask import request, redirect, url_for, Blueprint, jsonify, current_app)
# from werkzeug.utils import secure_filename
# import os

# # form examples
# @bp.route('/contact')
# def contact():
#     return render_template('contact.html')
#
# @bp.route('/handle_form', methods=['POST'])
# def handle_form():
#     name = request.form['name']
#     email = request.form['email']
#     return redirect(url_for('thank_you'))
#
# # form file upload
# @bp.route('/handle_file_upload', methods=['POST'])
# def handle_file_upload():
#     file = request.files['file']
#     if file and allowed_file(file.filename):
#         filename = secure_filename(file.filename)
#         file.save(os.path.join(bp.config['UPLOAD_FOLDER'], filename))
#         return redirect(url_for('uploaded_file', filename=filename))
#     return 'File upload unsuccessful'
#
# ALLOWED_EXTENSIONS = {"csv", "tsv", "txt", "json", "xlsx", "xls", "png", "jpg", "jpeg", "pdf"}
# def allowed_file(filename: str) -> bool:
#     """Return True if filename has an allowed extension."""
#     return bool(filename and "." in filename and filename.rsplit(".", 1)[1].lower() in ALLOWED_EXTENSIONS)
#
# # dynamic routes: show user profile, post id
# @bp.route('/user/<username>')
# def show_profile(username):
#     return f'username: {username}'
#
# @bp.route('/post/<int:post_id>')
# def show_post(post_id):
#     return f'post: {post_id}'
#
# # error handling
# @bp.errorhandler(404)
# def page_not_found(error):
#     return "This page does not exist.", 404
#
# @bp.errorhandler(500)
# def internal_server_error(error):
#     return "Internal server error.", 500

# # generates urls
# with current_app.test_request_context():
#     print(url_for('index'))
#     print(url_for(show_profile))
#     print(url_for(show_profile))

# http methods
# @app.route('/login', method=['GET', 'POST'])
# def login():
#     if request.method == 'POST':
#         return login()
#     else:
#         return login_form()

