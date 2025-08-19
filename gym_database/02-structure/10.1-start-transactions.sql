-- MySQL
START TRANSACTION;

-- Postgres
BEGIN;

WITH new_customer AS (
  INSERT INTO customers (first_name, last_name, email)
  VALUES ('Jonas', 'Blue', 'jonas@test.com')
  RETURNING id
)
INSERT INTO orders (amount_billed, customer_id)
SELECT 103.12, id FROM new_customer;

COMMIT;