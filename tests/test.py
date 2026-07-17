from app import extensions
from app.database import db_create, create_tables
from app.services.api_sync_new import db_lookup, api_fetch, relational_mapping
from config import Test
import pytest


# init create app
@pytest.fixture(scope="session", autouse=True)
def create_app_test():
    db_create(Test)
    extensions.init_db(Test)

    create_tables(Test, extensions.db_session, extensions.engine)
    extensions.db_session.remove()


# get db_session
@pytest.fixture
def db_session():
    return extensions.db_session


# get api classes
@pytest.fixture
def api_classes(api_conn):
    return api_fetch(api_conn, "artist", "Drake")


# @pytest.mark.skip
@pytest.mark.parametrize("search_input", ["Drake"])
def test_db_lookup(db_session, search_input):
    classes, api_flag = db_lookup(db_session, "artist", search_input)


# @pytest.mark.skip
@pytest.mark.parametrize("search_input", ["Drake"])
def test_api_fetch(api_conn, search_input: str):
    classes = api_fetch(api_conn, "artist", search_input)


# @pytest.mark.skip
def test_relational_mapping(db_session, api_classes):
    relational_mapping(db_session, api_classes, "artist")









