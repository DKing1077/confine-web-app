from sqlalchemy import func
from app.models import Artists, Albums, Tracks
from app.schemas.transfers import AlbumRecord, TrackRecord, ArtistRecord
import re


def api_request(db_session, api_conn, search_type, search_input):
    classes, api_flag = db_lookup(db_session, search_type, search_input)
    if api_flag:
        classes = api_fetch(api_conn, search_type, search_input)
        relational_mapping(db_session, classes, search_type)
        db_session.commit()
    return classes


def db_lookup(db_session, search_type, search_input):
    api_flag = False
    if search_type == 'artist':
        records = db_session.query(Tracks).join(Artists).filter(
            Artists.artist_name.ilike(f'%{search_input}%')
        ).limit(10).all()
        if len(records) < 10:
            api_flag = True

    elif search_type == 'song':
        records = db_session.query(Tracks).filter(
            func.replace(
                func.replace(Tracks.title, '’', ''), ',', ''
            ).ilike(f'%{search_input}%')
        ).limit(1).all()
        if len(records) < 1:
            api_flag = True

    else:
        records = db_session.query(Albums).filter(
            Albums.title.ilike(f'%{search_input}%')
        ).limit(1).all()
        if len(records) < 1:
            api_flag = True
    return records, api_flag


def api_fetch(api_conn, search_type, search_input):
    classes = []
    if search_type == 'artist':
        artist = api_conn.search_artist(search_input, max_songs=10, sort='popularity')
        for song in artist.songs:
            classes.append(
                ArtistRecord(
                    artist_id=artist.id,
                    artist=song.artist,
                    song_id=song.id,
                    title=song.title,
                    lyrics=song.lyrics
                )
            )
    elif search_type == 'song':
        song = api_conn.search_song(search_input)
        classes.append(
            TrackRecord(
                artist=song.artist,
                song_id=song.id,
                title=song.title,
                lyrics=song.lyrics
            )
        )
    else:
        album = api_conn.search_album(search_input)
        classes.append(
            AlbumRecord(
                album_id=album.id,
                artist=album.artist.name,
                title=album.name,
                lyrics=album.to_text()
            )
        )
    return classes


def relational_mapping(db_session, classes, search_type):
    for obj in classes:
        if search_type != 'album':
            artist_name = normalize(obj.artist)
            song_ex_id = obj.song_id

            artist_rec = check_if_exists(db_session, Artists, 'name', artist_name)
            song_rec = check_if_exists(db_session, Tracks, 'external_id', song_ex_id)

            if not artist_rec:
                artist_rec = add_artist(db_session, artist_name)
            if not song_rec:
                add_song(db_session, obj, artist_rec)

        elif search_type == 'album':
            artist_name = normalize(obj.artist)
            album_ex_id = obj.album_id

            artist_rec = check_if_exists(db_session, Artists, 'name', artist_name)
            album_rec = check_if_exists(db_session, Albums, 'external_id', album_ex_id)

            if not artist_rec:
                artist_rec = add_artist(db_session, artist_name)
            if not album_rec:
                add_album(db_session, obj, artist_rec)


def add_artist(db_session, artist_name):
    artist = Artists(
        name=artist_name,
    )
    db_session.add(artist)
    db_session.flush()
    return artist


def add_song(db_session, obj, artist):
    song = Tracks(
        external_id=int(obj.song_id), title=obj.title,
        lyrics=obj.lyrics, artist=artist
    )
    db_session.add(song)
    db_session.flush()


def add_album(db_session, obj, artist):
    album = Albums(
        external_id=int(obj.album_id), title=obj.title,
        lyrics=obj.lyrics, artist=artist
    )
    db_session.add(album)
    db_session.flush()


def check_if_exists(db_session, table, column, value):
    column_attr = getattr(table, column)
    record = db_session.query(table).filter(column_attr == value).first()
    return record


def normalize(value: str) -> str:
    return value.strip().lower()


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






