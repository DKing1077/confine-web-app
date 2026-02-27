from flask import url_for
from app import app

# default root
@app.route('/')
def index():
    return 'Root Directory!'

# dynamic routes: show user profile, post id
@app.route('/user/<username>')
def show_profile(username):
    return f'username: {username}'

@app.route('/post/<int:post_id>')
def show_post(post_id):
    return f'post: {post_id}'

# error handling
@app.errorhadnler(404)
def page_not_found(error):
    return "This page does not exist.", 404

@app.errorhadnler(500)
def internal_server_error(error):
    return "Internal server error.", 500

# generates urls
with app.test_request_context():
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




