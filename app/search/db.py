from app.models import Artists, Albums, Tracks, Features, SearchResults
from app.services.musixmatch import ApiData
from sqlalchemy import select
import logging
import debugpy
import re

logger = logging.getLogger(__name__)


def serialize_return(classes, method):
    serialized = []
    if method == "api":
        for obj in classes:
            serialized.append(
                ApiData(
                    artist_name=obj.artist_name,
                    album_name=obj.album_name,
                    track_name=obj.track_name,
                    commontrack_id=obj.commontrack_id,
                    lyrics=obj.lyrics,
                    features=obj.features or [],
                )
            )
    elif method == "postgres":
        for obj in classes:
            serialized.append(
                ApiData(
                    artist_name=obj.artist.artist_name,
                    album_name=obj.album.album_name,
                    track_name=obj.track_name,
                    commontrack_id=obj.commontrack_id,
                    lyrics=obj.lyrics,
                    features=obj.features or [],
                )
            )
    elif method == "cache":
        for obj in classes:
            serialized.append(ApiData.from_dict(obj))

    logger.info('serialized data : %s', method)
    return serialized


def verify_track(classes, artist_input, track_input):
    artist_input = normalize(artist_input)
    track_input = normalize(track_input)
    for obj in classes:
        if obj.artist_name == artist_input and obj.track_name == track_input:
            classes = [obj]
            return classes
    return None


def parse_classes(classes):
    for obj in classes:
        parse = obj.artist_name.split('feat')
        obj.artist_name = normalize(parse[0].rstrip(' '))
        artist_features = parse_features(parse)

        parse = obj.track_name.split('feat')
        obj.track_name = normalize(parse[0].split(' (')[0])
        track_features = parse_features(parse)

        all_features = artist_features + track_features
        features = []
        for name in all_features:
            feat = normalize(name)
            if feat not in features:
                features.append(feat)
        obj.features = features
    return classes


def db_lookup(db_session, artist_input=None, track_input=None):
    api_flag = False
    qry = select(Tracks).join(Tracks.artist).join(Tracks.album)

    if track_input:
        qry = qry.where(
                Tracks.track_name.ilike(f"%{track_input}%"),
                Artists.artist_name.ilike(f"%{artist_input}%")
            ).limit(1)

        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 1:
            api_flag = True

    else:
        qry = qry.where(
                Artists.artist_name.ilike(f"%{artist_input}%")
            ).limit(10)

        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 10:
            api_flag = True

    if len(classes) > 0:
        logger.info('\npostgres return sample : %s', classes[0])
        logger.info('postgres return datatype : %s\n', type(classes[0]))

        serialize_classes = serialize_return(classes, 'postgres')
        return serialize_classes, api_flag
    return None, api_flag


def db_insert(db_session, classes):
    for obj in classes:
        artist_name = obj.artist_name
        album_name = obj.album_name
        track_name = obj.track_name

        artist_rec = check_if_exists(db_session, Artists, 'artist_name', artist_name)
        album_rec = check_if_exists(db_session, Albums, 'album_name', album_name)
        track_rec = check_if_exists(db_session, Tracks, 'track_name', track_name)

        if not artist_rec:
            artist_rec = add_artist(db_session, artist_name)
        if not album_rec:
            album_rec = add_album(db_session, obj, artist_rec)
        if not track_rec:
            track_rec = add_track(db_session, obj, artist_rec, album_rec)

        for feat_name in obj.features:
            feat_rec = check_if_exists(db_session, Artists, 'artist_name', feat_name)
            if not feat_rec:
                feat_rec = add_artist(db_session, artist_name=feat_name)
                add_feature(db_session, track=track_rec, artist=feat_rec)
            else:
                artist = Artists(artist_name=artist_name,)
                add_feature(db_session, track=track_rec, artist=artist)


def add_artist(db_session, artist_name=None):
    artist = Artists(
        artist_name=artist_name,
    )
    db_session.add(artist)
    db_session.flush()
    return artist


def add_album(db_session, obj, artist):
    album = Albums(
        album_name=obj.album_name, artist=artist
    )
    db_session.add(album)
    db_session.flush()
    return album


def add_track(db_session, obj, artist, album=None):
    track = Tracks(
        track_name=obj.track_name,
        commontrack_id=obj.commontrack_id,
        lyrics=obj.lyrics, artist=artist, album=album
    )
    db_session.add(track)
    db_session.flush()
    return track


def add_feature(db_session, track=None, artist=None):
    features = Features(
        track=track, artist=artist
    )
    db_session.add(features)
    db_session.flush()


def check_if_exists(db_session, table, column, value):
    column_attr = getattr(table, column)
    record = db_session.query(table).filter(column_attr == value).first()
    return record


def parse_features(parse):
    features = []
    if len(parse) > 1:
        features_parse = re.split(r'&|,| and ', parse[1].lstrip('. '))
        for i in range(len(features_parse)):
            feature = features_parse[i].lstrip(' ').rstrip(' ').rstrip(')')
            features.append(feature)
    features = [f for f in features if f != '']
    return features


def normalize(name):
    name = name.lower().strip()
    prefixes = ["dj "]
    for prefix in prefixes:
        if name.startswith(prefix):
            name = name[len(prefix):]
            break
    return name


def add_search_result(db_session, user_id, search_text, search_result):
    search_record = SearchResults(
        user_id=user_id,
        search_text=search_text,
        search_result=search_result
    )
    db_session.add(search_record)
    db_session.flush()
    logger.info('search result added for user_id %s', user_id)




