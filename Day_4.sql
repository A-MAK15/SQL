-- Day_4
-- GROUP BY
SELECT staff_id, customer_id, SUM(amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, staff_id;

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

