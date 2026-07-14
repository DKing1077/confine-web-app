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


def validate_concepts(ai_client, tracks_lyrics):
    concepts_flag = True
    concepts = None
    max_attempts = 3
    attempt = 0
    while concepts_flag and attempt < max_attempts:
        attempt += 1
        concepts = ai_client.get_concepts(tracks_lyrics)
        if (
                isinstance(concepts, list)
                and len(concepts) == len(tracks_lyrics)
                and all(
            isinstance(t, dict)
            and "commontrack_id" in t
            and "track" in t
            and isinstance(t.get("concepts"), list)
            for t in concepts
        )
        ):
            concepts_flag = False
        else:
            logger.warning("invalid concepts schema on attempt=%s response=%r", attempt, concepts)
    return concepts


def validate_semantics(ai_client, tracks_lyrics):
    semantics_flag = True
    semantics = None
    max_attempts = 3
    attempt = 0
    while semantics_flag and attempt < max_attempts:
        attempt += 1
        semantics = ai_client.get_semantics(tracks_lyrics)
        if (
                isinstance(semantics, list)
                and len(semantics) == len(tracks_lyrics)
                and all(
            isinstance(t, dict)
            and "commontrack_id" in t
            and "track" in t
            and isinstance(t.get("semantics"), list)
            for t in semantics
        )
        ):
            semantics_flag = False
        else:
            logger.warning("invalid semantics schema on attempt=%s response=%r", attempt, semantics)
    return semantics

