from flask import render_template, request, redirect, url_for, Blueprint, jsonif
from werkzeug.utils import secure_filename
import os

bp = Blueprint("main", __name__)

# default root
@bp.route('/')
def index():
    return render_template('template.html', title='HomePage', name='David King', messages=['Hello', 'Hi', 'Hey'])

# form examples
@bp.route('/contact')
def contact():
    return render_template('contact.html')

@bp.route('/handle_form', methods=['POST'])
def handle_form():
    name = request.form['name']
    email = request.form['email']
    return redirect(url_for('thank_you'))

# form file upload
@bp.route('/handle_file_upload', methods=['POST'])
def handle_file_upload():
    file = request.files['file']
    if file and allowed_file(file.filename):
        filename = secure_filename(file.filename)
        file.save(os.path.join(bp.config['UPLOAD_FOLDER'], filename))
        return redirect(url_for('uploaded_file', filename=filename))
    return 'File upload unsuccessful'

ALLOWED_EXTENSIONS = {"csv", "tsv", "txt", "json", "xlsx", "xls", "png", "jpg", "jpeg", "pdf"}
def allowed_file(filename: str) -> bool:
    """Return True if filename has an allowed extension."""
    return bool(filename and "." in filename and filename.rsplit(".", 1)[1].lower() in ALLOWED_EXTENSIONS)

# dynamic routes: show user profile, post id
@bp.route('/user/<username>')
def show_profile(username):
    return f'username: {username}'

@bp.route('/post/<int:post_id>')
def show_post(post_id):
    return f'post: {post_id}'

# error handling
@bp.errorhadnler(404)
def page_not_found(error):
    return "This page does not exist.", 404

@bp.errorhadnler(500)
def internal_server_error(error):
    return "Internal server error.", 500

# generates urls
with bp.test_request_context():
    print(url_for('index'))
    print(url_for(show_profile))
    print(url_for(show_profile))

# http methods
# @app.route('/login', method=['GET', 'POST'])
# def login():
#     if request.method == 'POST':
#         return login()
#     else:
#         return login_form()

