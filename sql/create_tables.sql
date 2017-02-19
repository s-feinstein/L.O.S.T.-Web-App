-- Wipe slate clean, create LOST and connect
DROP DATABASE if exists lost;
CREATE DATABASE lost
	WITH OWNER osnapdev;
\connect lost

-- Wipe table clean, create user tables
DROP TABLE if exists users;
-- serialized pk for continuity with username change, max username and password length is 16 chars
CREATE TABLE users ( user_pk serial PRIMARY KEY, username varchar(16), password(16));
