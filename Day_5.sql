--Day_5
-- Challenge
-- 1.
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

SELECT DISTINCT(staff_id) FROM payment;

-- 2. 
SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating;

-- 4.
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- HAVING CLAUSE
SELECT customer_id, SUM(amount) FROM payment 
WHERE customer_id NOT IN(184, 87, 477)
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id) 
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;

-- Challenge 1
SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id
-- ORDER BY COUNT(customer_id) DESC;
HAVING COUNT(customer_id) >= 40;

-- Challenge 2
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;

