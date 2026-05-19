from flask import render_template, Blueprint, request
from flask import current_app, session
from app.celery.tasks import process_search_task
from app.services.openrouter import AIService
from app.cache import cached_key, cached_get
from app.services.user import add_user, login_user
from app import extensions
from celery.utils.log import get_task_logger

logger = get_task_logger(__name__)

bp = Blueprint("main", __name__)
limiter = extensions.limiter

# default root
@bp.route('/')
def index():
    return render_template('template.html')


# search route - defaults - methods=["GET"]
@bp.route("/search")
@limiter.limit("10/minute")
def search():
    if "user_id" not in session:
        return {"error": "unauthorized"}, 401
    user_id = session["user_id"]

    search_input = request.args.get("search_input")
    current_app.logger.info("search input: %s", search_input)

    job = process_search_task.delay(search_input, user_id)
    return {
        "job_id": job.id,
        "status": "queued"
    }


# register route
@limiter.limit("3/minute")
@bp.route("/register", methods=["POST"])
def register():
    email = request.json["email"]
    password = request.json["password"]
    add_user(extensions.db_session, email, password)
    return {
        "status": "registered",
        "email": email
    }, 201


# login route
@limiter.limit("5/minute")
@bp.route("/login", methods=["POST"])
def login():
    email = request.json["email"]
    password = request.json["password"]

    result = login_user(extensions.db_session, email, password)
    if not result["ok"]:
        return result, 401

    session["user_id"] = result["user_id"]
    return {
        "status": "logged_in",
        "user_id": result["user_id"]
    }


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

