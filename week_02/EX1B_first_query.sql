/*
The Sakila database represents a movie rental system.
It contains data about films, actors, customers, rentals, and payments.
This allows us to analyze how a rental store operates and manages its inventory.
*/

USE sakila;

-- View all records from the actor table
SELECT * 
FROM actor;  -- Expected: 200 rows

-- View all records from the film table
SELECT * 
FROM film;   -- Expected: 1000 rows
