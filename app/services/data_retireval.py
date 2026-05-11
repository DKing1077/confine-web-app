from sqlalchemy import select
from app.models import Artists, Albums, Tracks, Features
from app.services.musixmatch import MusixMatch
from app.services.openrouter import AIService
from flask import current_app
import re


def process_search(db_session, search_input):

    # parse search input
    ai_client = AIService(api_key=current_app.config["OPENROUTER_APIKEY"],model=current_app.config["OPENROUTER_MODEL"])
    artist_input, track_input = ai_client.parse_search(search_input)

    # db lookup
    classes, api_flag = db_lookup(db_session, artist_input, track_input)
    if api_flag:

        # api call
        api_client = MusixMatch(api_key=current_app.config["MUSIXMATCH_APIKEY"])
        classes = api_client.track_search(artist=artist_input, track=track_input)
        classes_parsed = parse_classes(classes)

        # get correct track
        if artist_input and track_input:
            classes_parsed = verify_track(classes_parsed, artist_input, track_input)

        # db insert
        db_insert(db_session, classes_parsed)
        return classes_parsed

    return classes


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
    if track_input:
        qry = (
            select(Tracks)
            .join(Tracks.artist)
            .where(Tracks.track_name.ilike(f"%{track_input}%"),
                   Artists.artist_name.ilike(f"%{artist_input}%"))
            .limit(1)
        )
        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 1:
            api_flag = True
    else:
        qry = (
            select(Tracks)
            .join(Tracks.artist)
            .where(Artists.artist_name.ilike(f"%{artist_input}%"))
            .limit(10)
        )
        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 10:
            api_flag = True
    return classes, api_flag


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


def normalize(name: str) -> str:
    name = name.lower().strip()
    prefixes = ["dj "]
    for prefix in prefixes:
        if name.startswith(prefix):
            name = name[len(prefix):]
            break
    return name

