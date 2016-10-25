SAKILA:

SELECT * FROM customer;
SELECT * FROM city;
SELECT * FROM address;


NUMBER 1:
SELECT address.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.city_id = 312

NUMBER 2:
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM category
JOIN film_category on category.category_id = film_category.category_id
JOIN film on film_category.film_id = film.film_id
WHERE category.name = 'Comedy'

NUMBER 3: ??????????
SELECT film.title, film.description, film.release_year
FROM film
LEFT JOIN film_actor on actor.actor_id = actor.actor_id
LEFT JOIN film on film_actor.film_id = film_actor.film_id

NUMBER 4:
SELECT customer.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer
LEFT JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND address.city_id IN (1, 42, 312, 459)

NUMBER 5:
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
WHERE rating = 'G'
AND film.special_features LIKE '%Behind the Scenes%'
AND film_actor.actor_id = 15;

NUMBER 6:
SELECT film.film_id, film.title as title, actor.actor_id, CONCAT(actor.first_name, " ", actor.last_name) as actor_name
FROM actor
JOIN film_actor ON actor.actor_id
JOIN film ON film_actor.film_id
WHERE film.film_id = 369

NUMBER 7:
SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, film.rental_rate, category.name
FROM category
LEFT JOIN film_category ON category.category_id = film_category.category_id
LEFT JOIN film ON film_category.film_id = film.film_id
WHERE film.rental_rate = 2.99 AND category.name = 'Drama'4

NUMBER 8:
SELECT film.film_id, film.title, film.description, film.release_year,
film.rating, film.special_features, category.name, actor.actor_id, CONCAT(actor.first_name," ", actor.last_name) as actor_name
FROM film
LEFT JOIN film_category ON film.film_id = film_category.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
LEFT JOIN film_actor ON film.film_id = film_actor.film_id
LEFT JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE category.name = 'Action' AND actor.first_name = 'Sandra' AND actor.last_name = 'Kilmer'
