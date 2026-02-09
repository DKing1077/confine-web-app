import os

class Config(object):
    postgres_name = 'PostgreSQL18'
    postgres_user = 'postgres'
    postgres_pass = 'postgres'
    postgres_host = 'localhost'
    postgres_port = 5432

    secret_key = os.environ.get('SECRET_KEY')
    debug = False
    Test = False

class Production(Config):
    db_name = 'genius_prod_db'
    db_user = 'genius_prod_user'
    db_pass = 'genius_pass'
    db_host = 'localhost'
    db_port = 5432

class Development(Config):
    db_name = 'genius_dev_db'
    db_user = 'genius_dev_user'
    db_pass = 'genius_dev_pass'
    db_host = 'localhost'
    db_port = 5432

class Test(Config):
    db_name = 'genius_test_db'
    db_user = 'genius_test_user'
    db_pass = 'genius_test_pass'
    db_host = 'localhost'
    db_port = 5432
    test = True

