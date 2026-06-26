from flask import Blueprint, request
from flask_jwt_extended import get_jwt_identity, jwt_required
from app.tabs import append_tabs_list, remove_tabs_list, resolve_by_id, fetch_lyrics
import logging

logger = logging.getLogger(__name__)
bp = Blueprint("tabs", __name__, url_prefix="/tabs")


@bp.route("/add_to_panel", methods=["POST"])
@jwt_required()
def add_to_panel():
    data = request.get_json()
    track_ids = data.get("items", [])

    panel = data["panel"]
    user_id = int(get_jwt_identity())

    full_items = resolve_by_id(user_id, track_ids)
    full_items_lyrics = fetch_lyrics(full_items)

    tabs = append_tabs_list(user_id, full_items_lyrics, panel)
    panel_tab = tabs.get(f"{panel}", [])

    return {
        "route": "add_to_panel",
        "status": "success",
        "result": panel_tab
    }, 200


@bp.route("/remove_from_panel", methods=["POST"])
@jwt_required()
def remove_from_panel():
    data = request.get_json()
    track_ids = data.get("items", [])

    panel = data["panel"]
    user_id = int(get_jwt_identity())

    tabs = remove_tabs_list(user_id, track_ids, panel)
    panel_tab = tabs.get(f"{panel}", [])

    return {
        "route": "remove_from_panel",
        "status": "success",
        "result": panel_tab
    }, 200


