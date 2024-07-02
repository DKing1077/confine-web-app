import os
import configargparse
import subprocess
from sqlalchemy import text
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
    relationalmapping(session, data, start)

    # saving db, commit session, close session
    save_db(config), session.commit(), session.close()


def relationalmapping(session, data, start):
    if start == 1:
        for index in data.index:
            artist = session.query(Artists).filter_by(id=int(data['artist_id'][index])).first()
            if not artist:
                artist = Artists(
                    id=int(data['artist_id'][index]), name=data['artist'][index], albums=[], songs=[]
                )
                session.add(artist)

            song = session.query(Songs).filter_by(id=int(data['song_id'][index])).first()
            if not song:
                song = Songs(
                    id=int(data['song_id'][index]), name=data['title'][index],
                    lyrics=data['lyrics'][index], artist_id=int(data['artist_id'][index]), artist=artist
                )
                session.add(song)

    elif start == 2:
        for index in data.index:
            song = session.query(Songs).filter_by(id=int(data['song_id'][index])).first()
            if not song:
                artist = session.query(Artists).filter_by(id=int(data['artist'][index])).first()
                if not artist:
                    # TODO
                    pass

                song = Songs(
                    id=int(data['song_id'][index]), name=data['title'][index],
                    lyrics=data['lyrics'][index], artist=artist
                )
                session.add(song)

    elif start == 3:
        for index in data.index:
            album = session.query(Albums).filter_by(id=data['album_id'][index]).first()
            if not album:
                artist = session.query(Artists).filter_by(id=data['artist'][index]).first()
                if not artist:
                    # TODO
                    pass

                album = Albums(
                    id=int(data['album_id'][index]), name=data['title'][index],
                    lyrics=data['lyrics'][index], artist=artist
                )
                session.add(album)


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




