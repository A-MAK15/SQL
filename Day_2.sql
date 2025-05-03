-- Day2

SELECT WHERE
SELECT * FROM customer
WHERE first_name = 'Jared';
SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

ORDER BY
SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

LIMIT
SELECT * FROM payment 
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5;

SELECT * FROM payment
LIMIT 1;

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT COUNT(title) FROM film
WHERE length <= 50;

BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 8 and 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-1' AND '2007-02-15';
