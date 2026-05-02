from sqlalchemy import select
from app.models import Artists, Albums, Tracks, Features
from app.services.musixmatch import MusixMatch
from flask import current_app
from dataclasses import asdict
import re


def api_request(db_session, artist=None, track=None):
    # classes, api_flag = db_lookup(db_session, artist_input, track_input)
    # if api_flag:

    api = MusixMatch(api_key=current_app.config["ACCESS_TOKEN"])
    classes = api.track_search(artist=artist, track=track)
    classes_parsed = parse_classes(classes)

    print('\nclasses : \n', classes, '\n')
    for obj in classes_parsed:
        print('artist name : ', obj.artist_name)
        print('ex artist id : ', obj.ex_artist_id)
        print('track name : ', obj.track_name, '\n')
        print(asdict(obj))

    # db_insert(db_session, classes)
    # db_session.commit()
    # return classes


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
    if artist_input and track_input:
        qry = (
            select(Tracks)
            .join(Tracks.artist)
            .where(
                Tracks.title.ilike(f"%{track_input}%"),
                Artists.artist_name.ilike(f"%{artist_input}%"))
            .limit(1)
        )
        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 1:
            api_flag = True
    elif artist_input:
        qry = (
            select(Tracks)
            .join(Tracks.artist)
            .where(Artists.artist_name.ilike(f"%{artist_input}%"))
            .limit(10)
        )
        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 10:
            api_flag = True
    else:
        qry = (
            select(Tracks)
            .where(Tracks.title.ilike(f"%{track_input}%"))
            .limit(1)
        )
        classes = db_session.execute(qry).scalars().all()
        if len(classes) < 1:
            api_flag = True
    return classes, api_flag


def db_insert(db_session, classes):
    for obj in classes:
        ex_artist_id = classes.ex_artist_id
        ex_album_id = classes.ex_album_id
        ex_track_id = classes.ex_track_id

        artist_rec = check_if_exists(db_session, Artists, 'ex_artist_id', ex_artist_id)
        album_rec = check_if_exists(db_session, Albums, 'ex_album_id', ex_album_id)
        track_rec = check_if_exists(db_session, Tracks, 'ex_track_id', ex_track_id)

        if not artist_rec:
            artist_rec = add_artist(db_session, obj)
        if not album_rec:
            album_rec = add_album(db_session, obj, artist_rec)
        if not track_rec:
            track_rec = add_track(db_session, obj, artist_rec, album_rec)


def add_artist(db_session, obj):
    artist = Artists(
        ex_artist_id=obj.ex_artist_id, artist_name=obj.artist_name,
    )
    db_session.add(artist)
    db_session.flush()
    return artist


def add_album(db_session, obj, artist):
    album = Albums(
        ex_album_id=obj.ex_album_id, title=obj.album_name, artist=artist
    )
    db_session.add(album)
    db_session.flush()
    return album


def add_track(db_session, obj, artist, album=None):
    track = Tracks(
        ex_track_id=obj.ex_track_id, title=obj.track_name,
        lyrics=obj.lyrics, artist=artist, album=album
    )
    db_session.add(track)
    db_session.flush()
    return track


def add_features(db_session, track=None, artist=None):
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

