from marshmallow import Schema, fields, validate
import logging

logger = logging.getLogger(__name__)


class RegisterSchema(Schema):
    email = fields.Email(required=True)
    password = fields.String(
        required=True,
        validate=validate.Length(min=8)
    )


class LoginSchema(Schema):
    email = fields.Email(required=True)
    password = fields.String(
        required=True
    )


class SearchSchema(Schema):
    search_input = fields.String(
        required=True,
        validate=validate.Length(min=1)
    )


def validate_primary_panel(ai_client, tracks_lyrics):
    pending = True
    panel_items = None
    max_attempts = 3
    attempt = 0
    while pending and attempt < max_attempts:
        attempt += 1
        panel_items = ai_client.get_primary_panel(tracks_lyrics)
        if (
                isinstance(panel_items, list)
                and len(panel_items) == len(tracks_lyrics)
                and all(
            isinstance(t, dict)
            and "commontrack_id" in t
            and "track" in t
            and isinstance(t.get("concepts"), list)
            for t in panel_items
        )
        ):
            pending = False
        else:
            logger.warning("invalid primary panel schema on attempt=%s response=%r", attempt, panel_items)
    return panel_items


def validate_secondary_panel(ai_client, tracks_lyrics):
    pending = True
    panel_items = None
    max_attempts = 3
    attempt = 0
    while pending and attempt < max_attempts:
        attempt += 1
        panel_items = ai_client.get_secondary_panel(tracks_lyrics)
        if (
                isinstance(panel_items, list)
                and len(panel_items) == len(tracks_lyrics)
                and all(
            isinstance(t, dict)
            and "commontrack_id" in t
            and "track" in t
            and isinstance(t.get("semantics"), list)
            for t in panel_items
        )
        ):
            pending = False
        else:
            logger.warning("invalid secondary panel schema on attempt=%s response=%r", attempt, panel_items)
    return panel_items
