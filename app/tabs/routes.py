from flask import Blueprint, request
from flask_jwt_extended import get_jwt_identity, jwt_required
from app.tabs import append_tabs_list
import logging

logger = logging.getLogger(__name__)
bp = Blueprint("tabs", __name__, url_prefix="/tabs")


@bp.route("/tabs/add_to_panel", methods=["POST"])
@jwt_required()
def add_to_panel():
    user_id = int(get_jwt_identity())
    data = request.get_json()

    panel = data["panel"]
    items = data["items"]

    tabs = append_tabs_list(user_id, items, panel)
    return {"status": "ok", "tabs": tabs}


