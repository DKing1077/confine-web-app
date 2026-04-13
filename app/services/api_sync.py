from sqlalchemy import func
from app.models import Artists, Albums, Songs
import pandas as pd
import re


def api_request(db_session, api_conn, search_type, search_input):
    if search_type == 'artist':
        data = db_session.query(Songs).join(Artists).filter(
            Artists.name.ilike(f'%{search_input}%')
        ).limit(10).all()

        if len(data) < 10:
            data = search_by_artist(api_conn, search_input, 10)
            relational_mapping(db_session, api_conn, data, search_type)
            data = api_request(db_session, api_conn, search_type, search_input)

    elif search_type == 'song':
        data = db_session.query(Songs).filter(
            func.replace(
                func.replace(Songs.name, '’', ''), ',', ''
            ).ilike(f'%{search_input}%')
        ).limit(1).all()

        if len(data) < 1:
            data = search_by_song(api_conn, search_input)
            relational_mapping(db_session, api_conn, data, search_type)
            data = api_request(db_session, api_conn, search_type, search_input)

    else:
        data = db_session.query(Albums).filter(
            Albums.name.ilike(f'%{search_input}%')
        ).limit(1).all()

        if len(data) < 1:
            data = search_by_album(api_conn, search_input)
            relational_mapping(db_session, api_conn, data, search_type)
            data = api_request(db_session, api_conn, search_type, search_input)
    return data


def relational_mapping(db_session, api_conn, data, search_type):
    if search_type == 'artist':
        for index in data.index:
            artist_id = int(data['artist_id'][index])
            song_id = int(data['song_id'][index])

            artist_rec = check_if_exists(db_session, Artists, 'id', artist_id)
            if not artist_rec:
                artist_rec = add_artist(db_session, data, index)

            song_rec = check_if_exists(db_session, Songs, 'id', song_id)
            if not song_rec:
                add_song(db_session, data, index, artist_rec)

    elif search_type == 'song':
        artist_name = data['artist'][0]
        song_id = int(data['song_id'][0])

        song_rec = check_if_exists(db_session, Songs, 'id', song_id)
        if not song_rec:
            artist_rec = check_if_exists(db_session, Artists, 'name', artist_name)

            if not artist_rec:
                artist_data = search_by_artist(api_conn, artist_name, max_songs=1)
                artist_rec = add_artist(db_session, artist_data, 0)

                if song_id != int(artist_data['song_id'][0]):
                    song_rec = check_if_exists(db_session, Songs, 'id', int(artist_data['song_id'][0]))
                    if not song_rec:
                        add_song(db_session, artist_data, 0, artist_rec)

            data['artist_id'] = artist_rec.id
            add_song(db_session, data, 0, artist_rec)

    elif search_type == 'album':
        artist_name = data['artist'][0]
        album_id = int(data['album_id'][0])

        album_rec = check_if_exists(db_session, Albums, 'id', album_id)
        if not album_rec:
            artist_rec = check_if_exists(db_session, Artists, 'name', artist_name)

            if not artist_rec:
                artist_data = search_by_artist(api_conn, artist_name, max_songs=1)
                artist_rec = add_artist(db_session, artist_data, 0)

                song_rec = check_if_exists(db_session, Songs, 'id', int(artist_data['song_id'][0]))
                if not song_rec:
                    add_song(db_session, artist_data, 0, artist_rec)

            data['artist_id'] = artist_rec.id
            add_album(db_session, data,0, artist_rec)


def add_artist(db_session, data, index):
    artist = Artists(
        id=int(data['artist_id'][index]), name=data['artist'][index],
    )
    db_session.add(artist)
    db_session.commit()
    return artist


def add_song(db_session, data, index, artist):
    song = Songs(
        id=int(data['song_id'][index]), name=data['title'][index],
        lyrics=data['lyrics'][index], artist_id=int(data['artist_id'][index])
    )
    song.artist = artist
    db_session.add(song)


def add_album(db_session, data, index, artist):
    album = Albums(
        id=int(data['album_id'][index]), name=data['title'][index],
        lyrics=data['lyrics'][index], artist_id=int(data['artist_id'][index])
    )
    album.artist = artist
    db_session.add(album)


def check_if_exists(db_session, table, column, value):
    column_attr = getattr(table, column)
    record = db_session.query(table).filter(column_attr == value).first()
    return record


def search_by_artist(api_conn, artist_name, max_songs=10):
    df = pd.DataFrame(columns=['artist_id', 'artist', 'song_id', 'title', 'lyrics'])
    artist = api_conn.search_artist(artist_name, max_songs=max_songs, sort='popularity')

    for song in artist.songs:
        new_row = {
            'artist_id': artist.id,
            'artist': song.artist,
            'song_id': song.id,
            'title': song.title,
            'lyrics': song.lyrics
        }
        df = pd.concat([df, pd.DataFrame([new_row])], ignore_index=True)
    df = clean_lyrics(df)
    return df


def search_by_song(api_conn, song):
    df = pd.DataFrame(columns=['artist', 'song_id', 'title', 'lyrics'])

    song = api_conn.search_song(song)
    new_row = [song.artist, song.id, song.title, song.lyrics]

    df.loc[0] = new_row
    df = clean_lyrics(df)
    return df


def search_by_album(api_conn, album):
    df = pd.DataFrame(columns=['album_id', 'artist', 'title', 'lyrics'])

    album = api_conn.search_album(album)
    new_row = [album.id, album.artist.name, album.name, album.to_text()]

    df.loc[0] = new_row
    df = clean_lyrics(df)
    return df


def clean_lyrics(df):
    regexlist = [
        '[0-9]+.*?Lyrics',
        '[0-9]+Embed.*?Lyrics',
        '[0-9][.][0-9]KEmbed', '[0-9]+Embed',
        'like.*?Embed', 'likeEmbed',
    ]

    for index in df.index:
        columnlist = ['artist', 'title', 'lyrics']
        for column in columnlist:
            df[column][index].encode("ascii", "ignore").decode()
        for regex in regexlist:
            df.loc[index, 'lyrics'] = re.sub(regex, '', df['lyrics'][index])
        df.loc[index, 'lyrics'].replace('\n\n', '\n').replace('\'\'', '')
    return df

