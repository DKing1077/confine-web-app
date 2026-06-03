from app.cache import search_cache_set, search_cache_get, search_cache_key
from app.services import MusixMatch
from flask import current_app
from db.search import *
import json


def process_search(db_session, artist_input, track_input):

    # db lookup
    db_classes, api_flag = db_lookup(db_session, artist_input, track_input)
    if api_flag:

        # api call
        api_client = MusixMatch(api_key=current_app.loggerconfig["MUSIXMATCH_APIKEY"])
        classes = api_client.track_search(artist=artist_input, track=track_input)

        # parse classes
        classes_parsed = parse_classes(classes)

        # get correct track
        if artist_input and track_input:
            classes_parsed = verify_track(classes_parsed, artist_input, track_input)

        # db insert
        db_insert(db_session, classes_parsed)
        api_classes = serialize_tracks(classes_parsed, 'api')

        current_app.logger_message(api_classes, True, artist_input, track_input)
        return api_classes

    current_app.logger_message(db_classes, False, artist_input, track_input)
    return db_classes


def search_pipeline(db_session, user_id, artist_input, track_input, search_text, cache_key):
    search_result = process_search(db_session, artist_input, track_input)
    current_app.logger.info(
        "Search result (%s): %s",
        type(search_result).__name__,
        json.dumps(search_result, default=str)
    )
    add_search_result(db_session, user_id, search_text, search_result)

    search_cache_set(cache_key, search_result)
    current_app.logger.info("cache set for key: %s", cache_key)
    return search_result


def search_cache(artist_input, track_input):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)
    if cached_data:
        current_app.logger.info(
            "Cache hit\n"
            "Key: %s\n"
            "Type: %s\n"
            "Data:\n%s",
            cache_key,
            type(cached_data).__name__,
            json.dumps(cached_data, default=str, indent=2)
        )
        return cached_data, cache_key
    else:
        current_app.logger.info("cache miss for key: %s", cache_key)
        return None, cache_key


def logger_message(return_var, flag, artist_input=None, track_input=None):
    if artist_input and track_input:
        search_type = 'track search'
        search_values = f'{artist_input} - {track_input}'
    else:
        search_type = 'artist search'
        search_values = f'{artist_input}'

    if flag:
        method = 'musixmatch api'
    else:
        method = 'postgres lookup'
    sample = return_var[0]

    current_app.logger.info('the work flow used : %s', method)
    current_app.logger.info('search type : %s', search_type)
    current_app.logger.info('search value : %s', search_values)
    current_app.logger.info("features: %s", sample["features"])

    current_app.logger.info('number of tracks %s: ', len(return_var))
    current_app.logger.info("schema keys: %s", list(sample.keys()))
    current_app.logger.info("features: %s", sample["features"])
