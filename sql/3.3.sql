SELECT category_id, name FROM category;

---------------------------------
SELECT name, COUNT(name)
from category
Group by name
HAVING COUNT( name )>1
ORDER BY name;
--------------------------------------
DELETE FROM category a 
USING category b
WHERE a.category_id < b.category_id
and a.name = b.name;

----------------------------------------------
SELECT category_id, name FROM category;


------------------------------------------------

SELECT film_id FROM film
WHERE title = 'African Egg';

-------------------------------------------------
SELECT * FROM film_category 
WHERE film_id = 5;

------------------------------------------------
UPDATE film_category
SET category_id = 72
WHERE film_id = 5;

-------------------------------------------------------
DELETE FROM category
WHERE name = 'Mystery';

-------------------------------------------------------
SELECT category_id, name FROM category;

---------------------------------------------------------
CREATE TABLE employees (
	employee_id INT,
	name VARCHAR(50),
	contact_number VARCHAR(30),
	designation_id INT,
	last_update TIMESTAMP NOT NULL DEFAULT NOW(),
	PRIMARY KEY (employee_id)
);