from flask_jwt_extended import jwt_required, get_jwt_identity
from flask import Blueprint, request, current_app
from app.celery.tasks import process_search_task, parse_search_task
from app.schemas import SearchSchema
from app.extensions import limiter
from marshmallow import ValidationError
from celery import chain
import logging

logger = logging.getLogger(__name__)

bp = Blueprint("search", __name__, url_prefix="/search")
search_schema = SearchSchema()


# search route
@bp.route("/", methods=["POST"])
@limiter.limit("10/minute")
@jwt_required()
def search():
    # validate
    try:
        data = search_schema.load(request.get_json())
    except ValidationError as err:
        return {"errors": err.messages}, 400

    identity_string = get_jwt_identity()
    user_id = int(identity_string)

    search_input = data["search_input"]
    current_app.logger.info("search input: %s", search_input)

    # async tasks
    result = chain(
        parse_search_task.s(search_input),
        process_search_task.s(user_id)
    ).apply_async()

    # 200 ok
    return {
        "route": "search",
        "status": "success",
        "job_id": result.id,
        "result": result.get()
    }, 200

