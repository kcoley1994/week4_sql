-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 4 and 5.98;

-- 3. What film does the store have the most of? (search in inventory table)
SELECT store_id, COUNT(film_id)
FROM inventory
GROUP BY store_id ORDER BY (store_id) DESC;

-- 4. How many customers have the last name ‘Williams’?
SELECT *
FROM customer
WHERE last_name LIKE 'William_';

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;

-- 6. How many different distinct names are there?
-- Im not sure which table to use.

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, actor_id
FROM film_actor
ORDER BY actor_id DESC
LIMIT 20;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, Count(last_name)
From customer
where last_name like '%es'
GROUP BY store_id
LIMIT 1;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

-- i am confuse how to answer this question I tried to break it down and code it piece by piece. 

SELECT *
FROM payment;

SELECT customer_id, COUNT(rental_id)
FROM payment
HAVING COUNT(rental_id) > 250 and customer_id BETWEEN 381 and 429
GROUP BY customer_id;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT *
FROM film;

SELECT count(distinct rating),MAX(rating)
FROM film;