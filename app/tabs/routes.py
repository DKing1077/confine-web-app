from flask import Blueprint, request, current_app, session
from app.celery.tasks import add_to_workflow_task
from app.extensions import limiter
from celery import chain
import logging

logger = logging.getLogger(__name__)

bp = Blueprint("tabs", __name__, url_prefix="/tabs")

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

