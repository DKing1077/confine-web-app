from app.cache import search_cache_set, search_cache_get, search_cache_key
from app.search.db import *
import logging
import json

logger = logging.getLogger(__name__)


def search_cache(db_session, user_id, artist_input, track_input, search_text):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)

    if cached_data:
        logger.info(
            "Cache hit\n"
            "Key: %s\n"
            "Type: %s\n"
            "Data:\n%s",
            cache_key,
            type(cached_data).__name__,
            json.dumps(cached_data, default=str, indent=2)
        )
        add_search_result(db_session, user_id, search_text, cached_data)
        logger_message(cached_data, 'search cache', artist_input, track_input)
        return cached_data, None

    else:
        logger.info("cache miss for key: %s", cache_key)
        return None, cache_key


def search_pipeline(db_session, api_client, user_id, artist_input, track_input, search_text, cache_key):
    logger.info("artist: %s | track: %s", artist_input, track_input)
    search_result = search_fetch(db_session, api_client, artist_input, track_input)
    search_cache_set(cache_key, search_result)

    logger.info(
        "Search result (%s): %s",
        type(search_result).__name__,
        json.dumps(search_result, default=str)
    )
    add_search_result(db_session, user_id, search_text, search_result)
    logger.info("cache set for key: %s", cache_key)
    return search_result


def search_fetch(db_session, api_client, artist_input, track_input):
    db_classes, api_flag = db_lookup(db_session, artist_input, track_input)
    if api_flag:

        classes = api_client.track_search(artist=artist_input, track=track_input)
        logger.info(classes)

        logger_message(classes, 'api', artist_input, track_input)
        classes_parsed = parse_classes(classes)

        if artist_input and track_input:
            classes_parsed = verify_track(classes_parsed, artist_input, track_input)

        db_insert(db_session, classes_parsed)
        api_classes = serialize_tracks(classes_parsed, 'api')

        logger_message(api_classes, 'api', artist_input, track_input)
        return api_classes

    logger_message(db_classes, 'postgres', artist_input, track_input)
    return db_classes


def logger_message(return_var, method, artist_input=None, track_input=None):
    if not return_var:
        return

    if artist_input and track_input:
        search_type = 'track search'
        search_values = f'{artist_input} - {track_input}'
    else:
        search_type = 'artist search'
        search_values = f'{artist_input}'

    sample = return_var[0]

    logger.info('return var: %s', return_var)
    logger.info('sample: %s', sample)

    logger.info('the workflow used : %s', method)
    logger.info('search type : %s', search_type)
    logger.info('search value : %s', search_values)
    logger.info('features: %s', sample.features)

    logger.info('number of tracks: %s', len(return_var))
    logger.info('schema fields: %s', list(sample.__dict__.keys()))


