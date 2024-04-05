/* contrib/uuid-ossp/uuid-ossp--1.1--1.2.sql */

-- complain if script is sourced in psql, rather than via ALTER EXTENSION
\echo Use "ALTER EXTENSION uuid-ossp UPDATE TO '1.2'" to load this file. \quit

CREATE FUNCTION uuid_generate_v3(namespace uuid, name bytea)
RETURNS uuid
AS 'MODULE_PATHNAME', 'uuid_generate_v3_bytea'
IMMUTABLE STRICT LANGUAGE C PARALLEL SAFE;

CREATE FUNCTION uuid_generate_v5(namespace uuid, name bytea)
RETURNS uuid
AS 'MODULE_PATHNAME', 'uuid_generate_v5_bytea'
IMMUTABLE STRICT LANGUAGE C PARALLEL SAFE;
