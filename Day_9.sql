-- EXTRACT
SELECT EXTRACT(MONTH FROM payment_date)
FROM payment

-- AGE
SELECT AGE(payment_date)
FROM payment

-- TOCHAR
SELECT TO_CHAR(payment_date, 'MONTH')
FROM payment

-- Challenge
-- Task 1
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment

-- Task 2
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1
