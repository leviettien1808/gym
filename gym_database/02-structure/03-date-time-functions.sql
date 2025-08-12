-- MySQL/Postgres
SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- MySQL
SELECT WEEKDAY(last_checkin), last_checkin -- Monday is 0
FROM memberships;

SELECT WEEKDAY(last_checkin) + 1, last_checkin -- Monday is 1
FROM memberships;

SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;

-- Postgres
SELECT EXTRACT(DOW FROM last_checkin), last_checkin -- Sunday is 0
FROM memberships;

SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin -- Sunday is 7
FROM memberships;

SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;

-- SQLite
SELECT strftime('%m', last_checkin), last_checkin
FROM memberships;

SELECT strftime('%d', last_checkin), last_checkin
FROM memberships;

SELECT strftime('%M', last_checkin), last_checkin
FROM memberships;

SELECT strftime('%w', last_checkin), last_checkin -- Sunday is 0
FROM memberships;

SELECT date(last_checkin), time(last_checkin)
FROM memberships;