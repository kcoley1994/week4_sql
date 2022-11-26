-- 1. List all customers who live in Texas (use
-- JOINs)
SELECT *
FROM customer;

SELECT *
FROM address;

SELECT first_name, last_name,address.district
FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
WHERE district ='Texas';

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT * 
FROM customer;

SELECT *
FROM payment;

SELECT first_name, last_name, payment.amount
FROM customer
LEFT JOIN payment 
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
ORDER BY amount;

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
SELECT * 
FROM customer;

SELECT *
FROM payment;

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount)> 175
);

-- 4. List all customers that live in Nepal (use the city
-- table)
SELECT *
FROM customer;

SELECT *
FROM address;

SELECT *
FROM city;

SELECT *
FROM country;

SELECT first_name, last_name, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id=city.city_id
INNER JOIN country
ON city.country_id=country.country_id
WHERE country = 'Nepal';

-- 5. Which staff member had the most
-- transactions?

SELECT *
FROM staff;

SELECT 
FROM payment;

SELECT first_name,last_name,SUM(payment.staff_id)
FROM staff
LEFT JOIN payment
ON staff.staff_id=payment.staff_id
GROUP BY staff.first_name,staff.last_name, payment.staff_id
ORDER BY payment.staff_id DESC;

-- 6. How many movies of each rating are
-- there?

SELECT *
FROM film;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

SELECT *
FROM customer;

SELECT *
FROM payment;

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(DISTINCT amount)> 6.99
);

--8. How many free rentals did our stores give away?
SELECT *
FROM customer;

SELECT *
FROM payment;

SELECT store_id
FROM customer
WHERE customer_id IN (
    SELECT amount
    FROM payment
    GROUP BY payment.amount
    HAVING count(amount)= 0
);