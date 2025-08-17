INSERT INTO customers(first_name, last_name, email)
VALUES ('Ken', 'Brooks', 'ken@gmail.com');

SELECT id, first_name
FROM customers
WHERE first_name IN ('Ken', 'John');

SELECT email
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);