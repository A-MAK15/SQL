-- Full Outer Join
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null

-- Left Outer Join
SELECT * FROM film --table 1

SELECT * FROM inventory --table 2

SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL

-- Right Outer Join
SELECT film.film_id, title, inventory_id, store_id FROM film
RIGHT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL

-- Challenge 1
SELECT * FROM customer

SELECT * FROM address

SELECT district, email FROM customer
LEFT JOIN address 
ON customer.address_id = address.address_id
WHERE district = 'California'

-- Challenge 2
SELECT * FROM film

SELECT title, first_name, last_name FROM film_actor
LEFT JOIN actor A
ON A.actor_id = film_actor.actor_id
LEFT JOIN film B
ON film_actor.film_id = B.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'
