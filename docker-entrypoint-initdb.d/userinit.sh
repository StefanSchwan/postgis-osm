#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER ${PGUSER};
	CREATE DATABASE ${PGDATABASE} OWNER=${PGUSER} ENCODING="UTF-8";
	GRANT ALL PRIVILEGES ON DATABASE ${PGDATABASE} TO $POSTGRES_USER;
EOSQL
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "${PGDATABASE}" <<-EOSQL
	CREATE EXTENSION postgis;
	CREATE EXTENSION hstore;
	ALTER USER osm WITH PASSWORD '${PGPASSWORD}';
EOSQL
