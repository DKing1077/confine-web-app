import pandas as pd

from app import extensions
from app.database import db_create, create_tables
from app.services.api_sync import search_by_artist, search_by_album, search_by_song
from config import Test
import pytest


@pytest.fixture(scope="session", autouse=True)
def create_app_test():
    # create database, init database
    db_create(Test)

    # init globals
    extensions.init_db(Test)
    extensions.init_api_client(Test)

    # create tables
    create_tables(Test, extensions.db_session, extensions.engine)

    # teardown
    extensions.db_session.remove()


# @pytest.mark.skip
def test_search_by_artist():
    result = search_by_artist(extensions.api_conn,"Drake", 10)
    print(f'lenegth of result for artist search : {len(result)}')
    print(f'the result from artist search - Drake : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)


# @pytest.mark.skip
def test_search_by_song():
    result = search_by_song(extensions.api_conn, "God's Plan")
    print(f'lenegth of result for song search : {len(result)}')
    print(f'the result from song search - Gods Plan : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)


# @pytest.mark.skip
def test_search_by_album():
    result = search_by_album(extensions.api_conn, "Take Care")
    print(f'lenegth of result for album search : {len(result)}')
    print(f'the result from album search - Take Care : \n')

    print(result.head())
    assert result is not None
    assert isinstance(result, pd.DataFrame)







