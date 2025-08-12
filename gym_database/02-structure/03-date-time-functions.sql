-- MySQL/Postgres
SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- SQLite
SELECT strftime('%m', last_checkin), last_checkin
FROM memberships;

SELECT strftime('%d', last_checkin), last_checkin
FROM memberships;

SELECT strftime('%M', last_checkin), last_checkin
FROM memberships;