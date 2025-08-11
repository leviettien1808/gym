SELECT price * billing_frequency AS annual_revenue
FROM memberships;

SELECT consumption
FROM memberships;

SELECT CEIL(consumption)
FROM memberships;

SELECT FLOOR(consumption)
FROM memberships;

SELECT ROUND(consumption)
FROM memberships;

SELECT ROUND(consumption, 2)
FROM memberships;

SELECT ROUND(consumption, 1)
FROM memberships;

-- MySQL
SELECT TRUNCATE(consumption, 1)
FROM memberships;

-- Postgres
SELECT TRUNC(consumption, 1)
FROM memberships;