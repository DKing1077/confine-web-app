from flask import Blueprint, request
from flask_jwt_extended import get_jwt_identity, jwt_required
from app.tabs import append_tabs_list, fetch_lyrics, remove_tabs_list, resolve_by_id
from app.celery import analyze_items_task
import logging

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
    workspace = tabs.get(target_panel, [])

    return {
        "route": "add_to_panel",
        "status": "success",
        "result": workspace
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
    tracks_lyrics = [
        {
            "commontrack_id": item.get("commontrack_id", ""),
            "track_name": item.get("track_name", ""),
            "lyrics": item.get("lyrics", ""),
        }
        for item in full_items
    ]

    # analyze tracks task
    result = analyze_items_task.delay(tracks_lyrics)
    concepts_return, semantics_return = result.get()

    # append concepts
    tabs = append_tabs_list(user_id, concepts_return, 'concepts')
    concepts = tabs.get('concepts', [])
    concepts_return = [
        {
            "track": t["track"],
            "commontrack_id": t["commontrack_id"],
            "concepts": [
                {
                    "name": c["name"],
                    "display_concept": c["display_concept"],
                    "evidence": c["evidence"]
                }
                for c in t["concepts"]
            ],
        }
        for t in concepts
    ]

    tabs = append_tabs_list(user_id, semantics_return, 'semantics')
    semantics = tabs.get('semantics', [])
    semantics_return = [
        {
            "track": t["track"],
            "commontrack_id": t["commontrack_id"],
            "semantics": [
                {
                    "name": s["name"],
                    "display_semantic": s["display_semantic"],
                    "evidence": s["evidence"]
                }
                for s in t["semantics"]
            ],
        }
        for t in semantics
    ]

    return {
        "route": "analyze_items",
        "status": "success",
        "result": {"concepts": concepts_return, "semantics": semantics_return}
    }, 202

