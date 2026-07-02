from flask import Blueprint, request
from flask_jwt_extended import get_jwt_identity, jwt_required
from app.tabs import append_tabs_list, fetch_lyrics, remove_tabs_list, resolve_by_id
from app.celery import analyze_items_task
import logging
import json

logger = logging.getLogger(__name__)
bp = Blueprint("tabs", __name__, url_prefix="/tabs")


@bp.route("/add_to_panel", methods=["POST"])
@jwt_required()
def add_to_panel():
    data = request.get_json()
    track_ids = data.get("items", [])
    target_panel = data["panel"]
    user_id = int(get_jwt_identity())

    # resolve from search results - hard coded
    full_items = resolve_by_id(user_id, track_ids, 'search_results')
    full_items_lyrics = fetch_lyrics(full_items)

    # append to workspace - hard coded
    tabs = append_tabs_list(user_id, full_items_lyrics, target_panel)
    panel_tab = tabs.get(target_panel, [])

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
    source_panel = data["panel"]
    user_id = int(get_jwt_identity())

    # removes items via id from any panel - active tab
    tabs = remove_tabs_list(user_id, track_ids, source_panel)
    panel_tab = tabs.get(f"{source_panel}", [])

    return {
        "route": "remove_from_panel",
        "status": "success",
        "result": panel_tab
    }, 200


@bp.route("/analyze_items", methods=["POST"])
@jwt_required()
def analyze_items():
    data = request.get_json()
    track_ids = data.get("items", [])
    user_id = int(get_jwt_identity())

    # resolve from workspace - hard coded
    full_items = resolve_by_id(user_id, track_ids, 'workspace')
    tracks_lyrics = [f'{item.get("track_name", "")}: {item.get("lyrics", "")}' for item in full_items]

    # analyze tracks task
    result = analyze_items_task.delay(tracks_lyrics)
    concepts = result.get()

    print(json.dumps(concepts, indent=2, ensure_ascii=False))

    # append to concepts
    # tabs = append_tabs_list(user_id, full_items_lyrics, target_panel)
    # panel_tab = tabs.get(target_panel, [])

    # analyze_items = result.get()
    # logger.info(analyze_items)
    # search_tab = tabs.get("search_results", [])

    return {
        "route": "analyze_items",
        "status": "success",
        "result": {"concepts": concepts, "semantics": []}
    }, 202

