/*
Part 3 Questions

a) The table that holds the items Northwind sells is the products table.
*/

USE northwind;

SELECT *
FROM products;


-- b) The table that holds the categories of items is the categories table.

SELECT *
FROM categories;


-- 5) Retrieve all columns from the employees table

SELECT *
FROM employees;

-- a) The employee whose name looks like a bird is:
-- Margaret Peacock


-- 6) Retrieve all columns from the products table

SELECT *
FROM products;

-- a) This query returns 77 records.
-- To limit the results to 10 rows, we can use LIMIT 10.

SELECT *
FROM products
LIMIT 10;

-- BONUS:
-- Other ways to limit rows:
-- MySQL: LIMIT 10
-- SQL Server: SELECT TOP 10 * FROM products
-- Oracle: FETCH FIRST 10 ROWS ONLY


-- 7) Retrieve all columns from the categories table

SELECT *
FROM categories;

-- a) The CategoryID for Seafood is 8


-- 8) Retrieve the first 50 records from orders,
-- including only selected columns

SELECT OrderID, OrderDate, ShipName, ShipCountry
FROM orders
LIMIT 50;

