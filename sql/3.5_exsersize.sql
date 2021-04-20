SELECT * FROM film
WHERE title = 'Chamber Italian';
--------------------------------------------------------
SELECT title, rental_rate
from film
WHERE rental_rate BETWEEN '0' and '2.99';
------------------------------------------------------------
SELECT title, rental_rate, rating
from film
WHERE rating = 'PG' AND rental_rate < '2.00';
---------------------------------------------------------
SELECT title, rental_rate, rating
FROM film
WHERE rating = 'PG' AND  NOT rental_rate <'2.00';
--------------------------------------------------------
SELECT title, rental_rate, rating
FROM film
WHERE rating = 'PG' OR  rental_rate <'2.00';
------------------------------------------------------------
SELECT title 
FROM film
WHERE title LIKE 
'%Italian%';
------------------------------------------------------------
SELECT * 
FROM film
WHERE rating IN ('PG','G','PG-13');
------------------------------------------------------------
SELECT store_id,
		COUNT(store_id)
FROM inventory
GROUP BY store_id;
----------------------------------------------------------
SELECT store_id,
COUNT(store_id) AS count_of_movies
FROM inventory
GROUP BY store_id
ORDER BY count_of_movies DESC;
------------------------------------------------------
SELECT store_id,
		COUNT(store_id) AS count_of_movies
FROM inventory
GROUP BY store_id
HAVING COUNT (store_id) > 2300
ORDER BY count_of_movies DESC;
------------------------------------------------------------
SELECT film_id, title, rental_rate,
	CASE
		WHEN language_id = 1 THEN 'English'
		WHEN language_id = 2 THEN 'Korean'
		ELSE 'Unknown'
	END AS movie_language
FROM film;

----------------------------------------------------------

SELECT film_id,
	   title,
	   rating,
	   CASE
	   		WHEN rating = 'PG' THEN 'Kids allowed'
			WHEN rating = 'NC-17' THEN 'Not allowed'
			ELSE 'Parental Guidance recommended'
		END AS kids_allowed
FROM film;
-----------------------------------------------------------

