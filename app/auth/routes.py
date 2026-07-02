import logging

from flask import Blueprint, request
from flask_jwt_extended import (
    create_access_token,
    create_refresh_token,
    get_jwt_identity,
    jwt_required,
)
from marshmallow import ValidationError

from app import extensions
from app.auth import add_user, login_user
from app.models import Users
from app.schemas import LoginSchema, RegisterSchema, SearchSchema

logger = logging.getLogger(__name__)

bp = Blueprint("auth", __name__, url_prefix="/auth")
limiter = extensions.limiter
jwt = extensions.jwt

register_schema = RegisterSchema()
login_schema = LoginSchema()
search_schema = SearchSchema()


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
        return {"route": "register", "status": "failed", "email": email}, 400
    logger.info("user registered: %s", email)
    logger.info("user id: %s", result["user_id"])

    # 201 created
    return {"route": "register", "status": "success", "email": email}, 201


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
        return {"route": "login", "status": "failed", "email": email}, 401
    logger.info("user logged in: %s", email)
    logger.info("user id: %s", result["user_id"])

    # 200 ok
    user_id = result["user_id"]
    access_token = create_access_token(identity=str(user_id))
    refresh_token = create_refresh_token(identity=str(user_id))
    return {
        "route": "login",
        "status": "success",
        "email": email,
        "access_token": access_token,
        "refresh_token": refresh_token,
    }, 200


# logout route
@bp.route("/logout", methods=["POST"])
@jwt_required()
def logout():
    # validate
    identity_string = get_jwt_identity()
    user_id = int(identity_string)
    return {"route": "logout", "status": "success", "user_id": user_id}, 200


# session status route
@bp.route("/session-status", methods=["GET"])
@jwt_required()
def session_status():
    # validate
    identity_string = get_jwt_identity()
    user_id = int(identity_string)

    # user exist in db, 200 ok
    user = extensions.db_session.query(Users).filter_by(user_id=user_id).first()
    if not user:
        return {"logged_in": False}, 200

    # js update
    return {"logged_in": True, "email": user.email}, 200


# token refresh
@bp.route("/refresh", methods=["POST"])
@jwt_required(refresh=True)
def refresh():
    identity_string = get_jwt_identity()
    user_id = int(identity_string)
    new_access_token = create_access_token(identity=user_id)
    return {"access_token": new_access_token}, 200
