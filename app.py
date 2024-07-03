import os
import configargparse
import subprocess
from sqlalchemy import text
import lyrics_api
from utils import parse_arguments, db_connection, api_connection
from tables import Artists, Albums, Songs, reg
from lyrics_api import geniusapi


def main(config):

    # make db connection, load sql
    session, engine = db_connection(config)
    check_db(session, engine)

    # make api connection
    genius = api_connection(config)
    start = int(input('1) search artist\n2) search song\n3) search album\n'))

    data = geniusapi(genius, start)
    relationalmapping(genius, session, data, start)

    # saving db, commit session, close session
    save_db(config), session.commit(), session.close()


def relationalmapping(genius, session, data, start):

    if start == 1:
        for index in data.index:

            artist_id = int(data['artist_id'][index])
            song_id = int(data['song_id'][index])

            artist = check_if_exists(session, Artists, 'id', artist_id)
            if not artist:
                artist = add_artist(session, data, index)

            song = check_if_exists(session, Songs, 'id', song_id)
            if not song:
                add_song(session, data, index, artist)

    elif start == 2:
        for index in data.index:

            artist = data['artist'][index]
            song_id = int(data['song_id'][index])

            song = check_if_exists(session, Songs, 'id', song_id)
            if not song:
                artist = check_if_exists(session, Artists, 'name', artist)

                if not artist:
                    artist_data = lyrics_api.search_by_artist(genius, artist, max_songs=1)

                    artist = add_artist(session, artist_data, 0)
                    add_song(session, data, index, artist)

    elif start == 3:
        for index in data.index:

            artist = data['artist'][index]
            album_id = data['album_id'][index]

            album = check_if_exists(session, Albums, 'id', album_id)
            if not album:
                artist = check_if_exists(session, Artists, 'name', artist)

                if not artist:
                    artist_data = lyrics_api.search_by_artist(genius, artist, max_songs=1)

                    artist = add_artist(session, artist_data, 0)
                    add_album(session, data, index, artist)


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
        lyrics=data['lyrics'][index], artist=artist
    )
    session.add(album)


def check_if_exists(session, table, column, value):
    column_attr = getattr(table, column)
    record = session.query(table).filter(column_attr == value).first()
    return record


def check_db(session, engine):
    sql_file = 'sql/check.sql'
    with open(sql_file, 'r') as file:

        sql = file.read()
        result = session.execute(text(sql))

        table_exists = result.fetchone()[0]
        if not table_exists:
            load_db(session, engine)


def load_db(session, engine):
    sql_file = 'sql/database.sql'
    if os.path.exists(sql_file):

        with open(sql_file, 'r') as file:
            sql = file.read()
            sql = sql.replace(r'\.', '')

            session.execute(text(sql))
            session.commit()
    else:
        reg.metadata.create_all(engine)


def save_db(config):
    command = [
        'pg_dump',
        '-U', str(config.db_user),
        '-d', str(config.db_name),
        '-f', 'sql/database.sql'
    ]

    os.environ['PGPASSWORD'] = str(config.db_pass)
    subprocess.run(command, check=True)


if __name__ == '__main__':
    parser = configargparse.ArgParser()
    cfg = parse_arguments(parser)
    main(cfg)




