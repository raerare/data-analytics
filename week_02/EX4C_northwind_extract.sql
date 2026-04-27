/*
a) The actor table includes actor_id, first_name, last_name, and last_update.
This table stores the basic information for each actor.

b) The film table includes film_id, title, description, release_year, language_id,
rental_duration, rental_rate, length, replacement_cost, rating, special_features,
and last_update. This table stores the main details about each movie.

c) The film_actor table contains both actor_id and film_id.
This table connects actors to the films they appeared in.

d) The rental table includes rental_id, rental_date, inventory_id, customer_id,
return_date, staff_id, and last_update. This table shows rental activity, but it is
not very easy to read by itself because it uses ID numbers instead of film titles
or customer names.

e) The inventory table includes inventory_id, film_id, store_id, and last_update.
This table shows which films are in inventory and which store they belong to.
It is useful, but it needs to be connected to the film table to show actual movie titles.

f) To find the names of all films rented on a specific date, I would use the rental,
inventory, and film tables. The rental table has the rental_date and inventory_id.
The inventory table connects inventory_id to film_id. The film table uses film_id
to show the movie title.

The relationship is:
rental -> inventory -> film
*/

USE sakila;

-- View rental information
SELECT *
FROM rental;

-- View inventory information
SELECT *
FROM inventory;

-- View film information
SELECT *
FROM film;
