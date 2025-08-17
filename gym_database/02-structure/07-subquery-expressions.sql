SELECT first_name, last_name
FROM customers
WHERE email = 'john@gmail.com'

SELECT EXISTS (
    SELECT *
    FROM customers
    WHERE email = 'john@gmail.com'
);

SELECT o.id
FROM orders AS o
WHERE EXISTS (
    SELECT *
    FROM customers AS c
    WHERE o.customer_id = c.id AND c.email = 'john@gmail.com'
);