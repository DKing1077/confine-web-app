from app.cache import search_cache_set, search_cache_get, search_cache_key
from app.search.db import *
import logging

logger = logging.getLogger(__name__)


def search_cache(db_session, user_id, artist_input, track_input, search_text):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)

    if cached_data:
        logger.info('\nsearch cache return sample : %s', cached_data[0])
        logger.info('search cache return type : %s\n', type(cached_data[0]))

        add_search_result(db_session, user_id, search_text, cached_data)
        return_message(cached_data, 'search cache', artist_input, track_input)
        return cached_data, None
    else:
        return None, cache_key


def search_pipeline(db_session, api_client, user_id, artist_input, track_input, search_text, cache_key):
    search_result = search_fetch(db_session, api_client, artist_input, track_input)
    search_result_dicts = [item.to_dict() for item in search_result]

    search_cache_set(cache_key, search_result_dicts)
    add_search_result(db_session, user_id, search_text, search_result_dicts)

    logger.info('search pipeline return : %s', search_result_dicts[0])
    return search_result_dicts


def search_fetch(db_session, api_client, artist_input, track_input):
    db_classes, api_flag = db_lookup(db_session, artist_input, track_input)
    if api_flag:

        classes = api_client.track_search(artist=artist_input, track=track_input)
        classes_parsed = parse_classes(classes)

        if artist_input and track_input:
            classes_parsed = verify_track(classes_parsed, artist_input, track_input)

        db_insert(db_session, classes_parsed)
        api_classes = serialize_return(classes_parsed, 'api')

        return_message(api_classes, 'api call', artist_input, track_input)
        return api_classes

    return_message(db_classes, 'postgres', artist_input, track_input)
    return db_classes


def return_message(return_var, method, artist_input=None, track_input=None):
    if not return_var:
        return

    sample = return_var[0]
    if artist_input and track_input:
        search_type = "track search"
        search_values = f"{artist_input} - {track_input}"
    else:
        search_type = "artist search"
        search_values = f"{artist_input}"

    logger.info("\n\n####### RETURN LOGS START: #######\n")

    logger.info("workflow used: %s", method)
    logger.info("return count: %s", len(return_var))

    logger.info("search type: %s", search_type)
    logger.info("search value: %s", search_values)

    logger.info("sample: %s", sample)
    logger.info("return data type: %s", type(sample))

    logger.info("\n\n####### RETURN LOGS END: #######\n")



