-- MySQL
SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start
FROM memberships;

SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start
FROM memberships;

SELECT DATE_ADD(membership_start, INTERVAL 7 YEAR), membership_start
FROM memberships;

-- Postgres
SELECT membership_start + 7, membership_start
FROM memberships;

SELECT (membership_start + INTERVAL '7 DAY')::TIMESTAMP::DATE, membership_start
FROM memberships;

SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start
FROM memberships;

SELECT (membership_start + INTERVAL '7 YEAR')::TIMESTAMP::DATE, membership_start
FROM memberships;

-- SQLite
SELECT DATE(membership_start, '+7 days'), membership_start
FROM memberships;

SELECT DATE(membership_start, '+7 months'), membership_start
FROM memberships;

SELECT DATE(membership_start, '+7 years'), membership_start
FROM memberships;