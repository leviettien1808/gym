-- MySQL
SELECT TIMESTAMPDIFF(minute, last_checkin, last_checkout)
FROM memberships;

SELECT DATEDIFF(membership_end, membership_start)
FROM memberships;

SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;

-- Postgres
SELECT last_checkout - last_checkin
FROM memberships;

SELECT membership_end - membership_start
FROM memberships;

SELECT NOW() - membership_start
FROM memberships;

-- SQLite
SELECT CAST((julianday(last_checkout) - julianday(last_checkin)) * 24 * 60 AS INTEGER) -- julianday() chuyển đổi thời gian thành số ngày dưới dạng số thực
FROM memberships;

SELECT CAST(julianday(membership_end) - julianday(membership_start) AS INTEGER)
FROM memberships;

SELECT CAST(julianday('now') - julianday(membership_start) AS INTEGER)
FROM memberships;