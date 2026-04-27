USE northwind;

-- 1. Show each product's ID, name, and unit price
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM products;


-- 2. Find products priced at $7.50 or less
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM products
WHERE UnitPrice <= 7.50;


-- 3. Find products with no inventory but at least one unit on order
SELECT 
    ProductID,
    ProductName,
    UnitsInStock,
    UnitsOnOrder
FROM products
WHERE UnitsInStock = 0
  AND UnitsOnOrder >= 1;


-- 4. Show how products connect to categories
SELECT 
    ProductID,
    ProductName,
    CategoryID
FROM products;

-- View the full list of product categories
SELECT 
    CategoryID,
    CategoryName,
    Description
FROM categories;

-- List all seafood products carried by Northwind
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    c.CategoryName
FROM products AS p
INNER JOIN categories AS c
    ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood';


-- 5. Show how products connect to suppliers
SELECT 
    ProductID,
    ProductName,
    SupplierID
FROM products;

-- View supplier information
SELECT 
    SupplierID,
    CompanyName,
    ContactName,
    Country
FROM suppliers;

-- Find all products supplied by Tokyo Traders
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    s.CompanyName AS SupplierName
FROM products AS p
INNER JOIN suppliers AS s
    ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Tokyo Traders';


-- 6. Count all employees at Northwind
SELECT 
    COUNT(EmployeeID) AS NumberOfEmployees
FROM employees;

-- Find employees with "manager" in their job title
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Title
FROM employees
WHERE Title LIKE '%manager%';
