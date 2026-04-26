import os

class Config(object):
    ACCESS_TOKEN = 'a94199af41b2cbfb54d3516a97658701'
    POSTGRES_NAME = 'PostgreSQL18'
    POSTGRES_USER = 'postgres'
    POSTGRES_PASS = 'postgres'
    POSTGRES_HOST = 'localhost'
    POSTGRES_PORT = 5432

    SECRET_KEY = os.environ.get('SECRET_KEY')
    DEBUG = False
    TEST = False

class Production(Config):
    ACCESS_TOKEN = 'a94199af41b2cbfb54d3516a97658701'
    DB_NAME = 'genius_prod_db'
    DB_USER = 'genius_prod_user'
    DB_PASS = 'genius_pass'
    DB_HOST = 'localhost'
    DB_PORT = 5432

class Development(Config):
    ACCESS_TOKEN = 'a94199af41b2cbfb54d3516a97658701'
    DB_NAME = 'genius_dev_db'
    DB_USER = 'genius_dev_user'
    DB_PASS = 'genius_dev_pass'
    DB_HOST = 'localhost'
    DB_PORT = 5432

class Test(Config):
    ACCESS_TOKEN = 'a94199af41b2cbfb54d3516a97658701'
    DB_NAME = 'genius_test_db'
    DB_USER = 'genius_test_user'
    DB_PASS = 'genius_test_pass'
    DB_HOST = 'localhost'
    DB_PORT = 5432
    TEST = True

