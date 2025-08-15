SELECT first_name, last_name
FROM customers
WHERE email = 'john@gmail.com'

SELECT EXISTS (
    SELECT *
    FROM customers
    WHERE email = 'john@gmail.com'
);