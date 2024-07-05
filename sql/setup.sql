CREATE ROLE genius_admin WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	BYPASSRLS
	CONNECTION LIMIT -1
	PASSWORD 'genius_pass';

CREATE DATABASE genius_db
    WITH
    OWNER = genius_admin
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

SELECT pg_size_pretty(pg_database_size('genius_db')) AS size;