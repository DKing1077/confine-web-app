import pandas as pd
import re

pd.options.display.width = 0
pd.set_option('display.max_rows', None)


def search_by_artist(genius, artist_name, max_songs=10):
    df = pd.DataFrame(columns=['artist_id', 'artist', 'song_id', 'title', 'lyrics'])
    artist = genius.search_artist(artist_name, max_songs=max_songs, sort='popularity')

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


def search_by_song(genius, song):
    df = pd.DataFrame(columns=['artist', 'song_id', 'title', 'lyrics'])

    song = genius.search_song(song)
    new_row = [song.artist, song.id, song.title, song.lyrics]

    df.loc[0] = new_row
    df = clean_lyrics(df)
    return df


def search_by_album(genius, album):
    df = pd.DataFrame(columns=['album_id', 'artist', 'title', 'lyrics'])

    album = genius.search_album(album)
    new_row = [album.id, album.artist.name, album.name, album.to_text()]

    df.loc[0] = new_row
    df = clean_lyrics(df)
    return df


def clean_lyrics(df):
    regexlist = [
        '[0-9]+.*?Lyrics',
        '[0-9]+Embed.*?Lyrics',
        '[0-9][.][0-9]KEmbed', '[0-9]+Embed',
        'like.*?Embed', 'likeEmbed'
    ]

    for index in df.index:
        columnlist = ['artist', 'title', 'lyrics']
        for column in columnlist:
            df[column][index].encode("ascii", "ignore").decode()
        for regex in regexlist:
            df.loc[index, 'lyrics'] = re.sub(regex, '', df['lyrics'][index])
    return df

