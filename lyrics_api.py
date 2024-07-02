import pandas as pd
import time

pd.options.display.max_columns = None
pd.options.display.max_rows = None
pd.set_option('expand_frame_repr', False)


def api(genius, start):
    if start == 1:
        artist = input('please enter artist name : ')
        search_by_artist(genius, artist)

    elif start == 2:
        song = input('plese enter song name : ')
        search_by_song(genius, song)

    elif start == 3:
        album = input('please enter album name : ')
        search_by_album(genius, album)


def search_by_artist(genius, artist):

    df = pd.DataFrame(columns=['id', 'artist', 'sing', 'lyrics'])
    artist = genius.search_artist(artist, max_songs=10, sort='popularity')

    for song in artist.songs:
        new_row = [song.id, song.artist.lower(), song.title.lower(), song.lyrics]
        df = pd.concat([df, pd.DataFrame([new_row])], ignore_index=True)

    return df


def search_by_song(genius, song):

    df = pd.DataFrame(columns=['id', 'artist', 'song', 'lyrics'])
    song = genius.search_song(song)

    new_row = [song.id, song.artist.lower(), song.title.lower(), song.lyrics]
    df = pd.concat([df, pd.DataFrame([new_row])], ignore_index=True)

    return df


def search_by_album(genius, album):

    df = pd.DataFrame(columns=['id', 'artist', 'album', 'lyrics'])
    album = genius.search_album(album)

    new_row = [album.id, album.artist.lower(), album.title.lower(), album.to_text()]
    df = pd.concat([df, pd.DataFrame([new_row])], ignore_index=True)

    return df
