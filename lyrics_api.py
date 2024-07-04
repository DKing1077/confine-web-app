import pandas as pd

pd.options.display.max_columns = None
pd.options.display.max_rows = None
pd.set_option('expand_frame_repr', False)


def geniusapi(genius, start):
    if start == 1:
        artist = input('please enter artist name : ')
        df = search_by_artist(genius, artist)
    elif start == 2:
        song = input('plese enter song name : ')
        df = search_by_song(genius, song)
    else:
        album = input('please enter album name : ')
        df = search_by_album(genius, album)
    return df


def search_by_artist(genius, artist_name, max_songs=2):
    df = pd.DataFrame(columns=['artist_id', 'artist', 'song_id', 'title', 'lyrics'])
    artist = genius.search_artist(artist_name, max_songs=max_songs, sort='popularity')

    for song in artist.songs:
        new_row = {
            'artist_id': artist.id,
            'artist': song.artist.lower(),
            'song_id': song.id,
            'title': song.title.lower(),
            'lyrics': song.lyrics
        }
        df = pd.concat([df, pd.DataFrame([new_row])], ignore_index=True)
    return df


def search_by_song(genius, song):
    df = pd.DataFrame(columns=['artist', 'song_id', 'title', 'lyrics'])

    song = genius.search_song(song)
    new_row = [song.artist, song.id, song.title.lower(), song.lyrics]

    df.loc[0] = new_row
    return df


def search_by_album(genius, album):
    df = pd.DataFrame(columns=['album_id', 'artist', 'title', 'lyrics'])

    album = genius.search_album(album)
    new_row = [album.id, album.artist.name.lower(), album.name.lower(), album.to_text()]

    df.loc[0] = new_row
    return df
