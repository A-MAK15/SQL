-- Mathematical Functions and Operators
SELECT ROUND(rental_rate/replacement_cost, 4)*100 FROM film AS percent_cost
-- String Functions and Operators
SELECT LENGTH(first_name) FROM customer

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name FROM customer

SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS full_name FROM customer


-- SubQuery
SELECT title, rental_rate
FROM film
WHERE rental_rate > 
(SELECT AVG(rental_rate) FROM film)

SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment as p
WHERE p.customer_id = c.customer_id
AND amount > 11
)
