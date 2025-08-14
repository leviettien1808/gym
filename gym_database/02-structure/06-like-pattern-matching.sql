-- MySQL/Postgres/SQLite
SELECT first_name LIKE 'John', first_name
FROM memberships;

SELECT first_name LIKE 'Jo%', first_name
FROM memberships;

SELECT first_name LIKE '%o%', first_name
FROM memberships;

SELECT first_name LIKE '_o%', first_name
FROM memberships;

SELECT first_name
FROM memberships
WHERE first_name LIKE 'J___';

-- Postgres
SELECT first_name
FROM memberships
WHERE first_name ILIKE 'j___';

-- MySQL/SQLite
SELECT first_name
FROM memberships
WHERE LOWER(first_name) LIKE 'j___';