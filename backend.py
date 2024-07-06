import os
import subprocess
from sqlalchemy import text
from lyrics_api import *
from tables import Artists, Albums, Songs, reg


def collect_data(session, genius, search, start):
    if start == 1:
        data = session.query(Artists).filter(Artists.name == search).limit(10).all()
        if len(data) < 10:
            data = search_by_artist(genius, search)
            relational_mapping(session, genius, data, start)
    elif start == 2:
        data = session.query(Songs).filter(Songs.name == search).limit(1).all()
        if len(data) < 1:
            data = search_by_song(genius, search)
            relational_mapping(session, genius, data, start)
    else:
        data = session.query(Albums).filter(Albums.name == search).limit(1).all()
        if len(data) < 1:
            data = search_by_album(genius, search)
            relational_mapping(session, genius, data, start)
    return data


def relational_mapping(session, genius, data, start):

    if start == 1:
        for index in data.index:
            artist_id = int(data['artist_id'][index])
            song_id = int(data['song_id'][index])

            artist_rec = check_if_exists(session, Artists, 'id', artist_id)
            if not artist_rec:
                artist_rec = add_artist(session, data, index)

            song_rec = check_if_exists(session, Songs, 'id', song_id)
            if not song_rec:
                add_song(session, data, index, artist_rec)

    elif start == 2:
        artist_name = data['artist'][0]
        song_id = int(data['song_id'][0])

        song_rec = check_if_exists(session, Songs, 'id', song_id)
        if not song_rec:
            artist_rec = check_if_exists(session, Artists, 'name', artist_name)

            if not artist_rec:
                artist_data = search_by_artist(genius, artist_name, max_songs=1)
                artist_rec = add_artist(session, artist_data, 0)

                if song_id != int(artist_data['song_id'][0]):
                    song_rec = check_if_exists(session, Songs, 'id', int(artist_data['song_id'][0]))
                    if not song_rec:
                        add_song(session, artist_data, 0, artist_rec)

            data['artist_id'] = artist_rec.id
            add_song(session, data, 0, artist_rec)

    elif start == 3:
        artist_name = data['artist'][0]
        album_id = int(data['album_id'][0])

        album_rec = check_if_exists(session, Albums, 'id', album_id)
        if not album_rec:
            artist_rec = check_if_exists(session, Artists, 'name', artist_name)

            if not artist_rec:
                artist_data = search_by_artist(genius, artist_name, max_songs=1)
                artist_rec = add_artist(session, artist_data, 0)

                song_rec = check_if_exists(session, Songs, 'id', int(artist_data['song_id'][0]))
                if not song_rec:
                    add_song(session, artist_data, 0, artist_rec)

            data['artist_id'] = artist_rec.id
            add_album(session, data, 0, artist_rec)


def add_artist(session, data, index):
    artist = Artists(
        id=int(data['artist_id'][index]), name=data['artist'][index], albums=[], songs=[]
    )
    session.add(artist)
    return artist


def add_song(session, data, index, artist):
    song = Songs(
        id=int(data['song_id'][index]), name=data['title'][index],
        lyrics=data['lyrics'][index], artist_id=int(data['artist_id'][index]), artist=artist
    )
    session.add(song)


def add_album(session, data, index, artist):
    album = Albums(
        id=int(data['album_id'][index]), name=data['title'][index],
        lyrics=data['lyrics'][index], artist_id=int(data['artist_id'][index]), artist=artist
    )
    session.add(album)


def check_if_exists(session, table, column, value):
    column_attr = getattr(table, column)
    record = session.query(table).filter(column_attr == value).first()
    return record


def configure_db(session, engine, config):
    sql_file = 'sql/check.sql'

    with open(sql_file, 'r') as file:
        sql = file.read()
        result = session.execute(text(sql))
        table_exists = result.fetchone()[0]

        if not table_exists:
            load_db(engine, config)


def load_db(engine, config):
    sql_file = 'sql/database.sql'
    if os.path.exists(sql_file):
        command = [
            'psql',
            '-U', str(config.db_user),
            '-d', str(config.db_name),
            '-f', sql_file,
        ]
        os.environ['PGPASSWORD'] = str(config.db_pass)
        subprocess.run(command, check=True)
    else:
        reg.metadata.create_all(engine)


def save_db(config):
    command = [
        'pg_dump',
        '--column-inserts',
        '-U', str(config.db_user),
        '-d', str(config.db_name),
        '-f', 'sql/database.sql'
    ]
    os.environ['PGPASSWORD'] = str(config.db_pass)
    subprocess.run(command, check=True)