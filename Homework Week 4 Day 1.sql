-- HW Week 4 day 1

--1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name) AS Number_of_Whalberg
FROM actor
WHERE last_name LIKE 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)
--actual answer
SELECT film_id, COUNT(film_id) as inventory
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- answer where we look specifically for the 1st store only
SELECT film_id, COUNT(film_id) as inventory
FROM inventory
WHERE store_id = 1
GROUP BY film_id, store_id
ORDER BY COUNT(film_id) DESC;

--4. How many customers have the last name ‘William’?
SELECT COUNT(last_name) AS Number_of_Williams
FROM customer
WHERE last_name LIKE 'William';

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, count(staff_id) as total_transactions
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

--6. How many different district names are there?
SELECT COUNT(DISTINCT district) as total_number_of_districts
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(film_id) as number_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = '1';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;




