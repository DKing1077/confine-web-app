from app.cache import search_cache_set, search_cache_get, search_cache_key
from app.search.db import *
import logging

logger = logging.getLogger(__name__)


def search_cache(db_session, user_id, artist_input, track_input, search_text):
    cache_key = search_cache_key(artist_input, track_input)
    cached_data = search_cache_get(cache_key)
    if cached_data:
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
    return search_result_dicts


def search_fetch(db_session, api_client, artist_input, track_input):
    db_classes, api_flag = db_lookup(db_session, artist_input, track_input)
    return_message(db_classes, 'postgres', artist_input, track_input)

    if api_flag:
        api_classes = api_client.track_search(artist=artist_input, track=track_input)
        api_classes_parsed = parse_classes(api_classes)

        if artist_input and track_input:
            api_classes_parsed = verify_track(api_classes_parsed, artist_input, track_input)

        db_insert(db_session, api_classes_parsed)
        return_message(api_classes_parsed, 'api call', artist_input, track_input)

        api_classes_ser = serialize_return(api_classes_parsed, 'api')
        return api_classes_ser

    db_classes_ser = serialize_return(db_classes, 'postgres')
    return db_classes_ser


def return_message(return_var, method, artist_input=None, track_input=None):
    if not return_var:
        return

    sample = return_var[0]
    if artist_input and track_input:
        search_type = "track search"
        search_value = f"{artist_input} - {track_input}"
    else:
        search_type = "artist search"
        search_value = f"{artist_input}"

    logger.info("\n####### RETURN LOGS START: #######")
    logger.info("workflow used: %s", method)

    logger.info("return count: %s", len(return_var))
    logger.info("search type: %s", search_type)

    logger.info("search value: %s", search_value)
    logger.info("sample: %s", sample)

    logger.info("return data type: %s", type(sample))
    logger.info("####### RETURN LOGS END: #######\n")



