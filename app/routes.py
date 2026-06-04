from flask import render_template, Blueprint, request, current_app, session, jsonify
from app.celery.tasks import process_search_task, parse_search_task, add_to_workflow_task
from app.db.user import add_user, login_user
from app.models import Users
from app import extensions
from app.schemas import RegisterSchema, LoginSchema, SearchSchema
from marshmallow import ValidationError
from celery import chain
from flask_jwt_extended import create_access_token, create_refresh_token, jwt_required, get_jwt_identity

bp = Blueprint("main", __name__)
limiter = extensions.limiter

register_schema = RegisterSchema()
login_schema = LoginSchema()
search_schema = SearchSchema()


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
    # validate
    try:
        data = search_schema.load(request.get_json())
    except ValidationError as err:
        return {"errors": err.messages}, 400

    if "user_id" not in session:
        return {
        "route": "search",
        "status": "failed",
        "reason": "user login required"
    }, 401
    user_id = session["user_id"]

    search_input = data["search_input"]
    current_app.logger.info("search input: %s", search_input)

    # async tasks
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
    # validate
    try:
        data = register_schema.load(request.get_json())
    except ValidationError as err:
        return {"errors": err.messages}, 400
    email = data["email"]
    password = data["password"]

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
    # validate
    try:
        data = login_schema.load(request.get_json())
    except ValidationError as err:
        return {"errors": err.messages}, 400
    email = data["email"]
    password = data["password"]

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
    user_id = result["user_id"]
    access_token = create_access_token(identity=user_id)
    refresh_token = create_refresh_token(identity=user_id)
    return {
        "route": "login",
        "status": "success",
        "email": email,
        "access_token": access_token,
        "refresh_token": refresh_token
    }, 200


# logout route TODO update JS frontend
@bp.route("/logout", methods=["POST"])
@jwt_required()
def logout():
    user_id = get_jwt_identity()
    return {
        "route": "logout",
        "status": "success",
        "user_id": user_id,
        "message": "client should delete tokens"
    }, 200


# session status route
@bp.route("/session-status", methods=["GET"])
@jwt_required()
def session_status():
    user_id = get_jwt_identity()

    # user exist in db, 200 ok
    user = extensions.db_session.query(Users).filter_by(user_id=user_id).first()
    if not user:
        return {
            "logged_in": False
        }, 200
    current_app.logger.info("jwt status: %s logged in", user_id)

    # js update
    return {
        "logged_in": True,
        "email": user.email
    }, 200


# token refresh
@bp.route("/refresh", methods=["POST"])
@jwt_required(refresh=True)
def refresh():
    user_id = get_jwt_identity()
    new_access_token = create_access_token(identity=user_id)

    return {
        "access_token": new_access_token
    }, 200


########################## WORKFLOW AND EXTRAS ##########################


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

