-- CASE
-- General CASE
SELECT customer_id,
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer

-- CASE expression
SELECT customer_id, 
CASE
	customer_id 
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN '2nd Place'
	ELSE 'Normal'
END AS raffle_result
FROM customer

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(
	CASE rental_rate 
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(
	CASE rental_rate 
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
FROM film

--Challenge
SELECT
SUM(CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,
SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,
SUM(CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13
FROM film

SELECT * FROM film


