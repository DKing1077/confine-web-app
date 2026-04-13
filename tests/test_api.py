from app import extensions
from app.database import db_create, create_tables
from app.services.api_sync import search_by_artist, search_by_album, search_by_song
from config import Test
import pandas as pd
import pytest


@pytest.fixture(scope="session", autouse=True)
def create_app_test():
    # create database, init database
    db_create(Test)
    extensions.init_db(Test)
    extensions.init_api_client(Test)

    # create tables, teardown
    create_tables(Test, extensions.db_session, extensions.engine)
    extensions.db_session.remove()


# @pytest.mark.skip
@pytest.mark.parametrize("artist_name", ["Drake", "Adele"])
def test_search_by_artist(artist_name:str):
    result = search_by_artist(extensions.api_conn, artist_name, 10)
    print(f'lenegth of result for artist search : {len(result)}')
    print(f'the result from artist search - Drake : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)


# @pytest.mark.skip
@pytest.mark.parametrize("song_title", ["God's Plan", "Hello"])
def test_search_by_song(song_title: str):
    result = search_by_song(extensions.api_conn, song_title)
    print(f'lenegth of result for song search : {len(result)}')
    print(f'the result from song search - Gods Plan : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)


# @pytest.mark.skip
@pytest.mark.parametrize("album_name", ["Take Care", "25"])
def test_search_by_album(album_name:str):
    result = search_by_album(extensions.api_conn, album_name)
    print(f'lenegth of result for album search : {len(result)}')
    print(f'the result from album search - Take Care : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)







