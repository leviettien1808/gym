-- MySQL/Postgres/SQLite
SELECT CONCAT(first_name, ' ', last_name)
FROM memberships;

-- Postgres/SQLite
SELECT first_name || ' ' || last_name
FROM memberships;

-- MySQL/Postgres/SQLite
SELECT CONCAT('$ ', price)
FROM memberships;