-- Day 3
-- IN
SELECT * FROM payment 
WHERE amount IN (0.99, 1.98, 1.99)

SELECT * FROM customer
WHERE first_name NOT IN ('John', 'Jake', 'Julie')

-- LIKE and ILIKE
SELECT * FROM customer
WHERE first_name ILIKE 'J%' AND last_name ILIKE 'S%'

SELECT * FROM customer
WHERE first_name LIKE '%er'

SELECT * FROM customer
WHERE first_name NOT LIKE '%er'

-- Challenge
SELECT COUNT(*) FROM payment
WHERE amount > 5;

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

SELECT COUNT(DISTINCT(district)) FROM address;

SELECT DISTINCT(district) FROM address;

SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 and 15;

SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';

-- Aggregate functions
SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;
SELECT ROUND(AVG(replacement_cost),2)
FROM film;
