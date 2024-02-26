SELECT COUNT(*) AS num_actors_with_wahlberg_lastname
FROM actor
WHERE last_name = 'Wahlberg';


SELECT COUNT(*) AS num_payments_between_399_and_599
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


SELECT film_id, COUNT(*) AS num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC
LIMIT 1;


SELECT COUNT(*) AS num_customers_with_william_lastname
FROM customer
WHERE last_name = 'William';


SELECT staff_id, COUNT(*) AS num_rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY num_rentals_sold DESC
LIMIT 1;


SELECT COUNT(DISTINCT district) AS num_different_district_names
FROM address;


SELECT film_id, COUNT(*) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;


SELECT COUNT(*) AS num_customers_with_last_name_ending_with_es
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';


SELECT amount, COUNT(*) AS num_payments
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;


SELECT COUNT(DISTINCT rating) AS num_rating_categories,
       rating,
       COUNT(*) AS num_movies
FROM film
GROUP BY rating
ORDER BY num_movies DESC
LIMIT 1;
