USE northwind;

-- Ex4 Questions

-- 1. Write a query to find the price of the cheapest item Northwind sells.
-- Then write a second query to find the product name that has that price.

SELECT MIN(UnitPrice) AS CheapestPrice
FROM products;

SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (
    SELECT MIN(UnitPrice)
    FROM products
);


-- 2. Write a query to find the average price of all items Northwind sells.
-- Round the average price to the nearest cent.

SELECT ROUND(AVG(UnitPrice), 2) AS AveragePrice
FROM products;


-- 3. Write a query to find the price of the most expensive item Northwind sells.
-- Then write a second query to find the product name and supplier name for that item.

SELECT MAX(UnitPrice) AS MostExpensivePrice
FROM products;

SELECT p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM products AS p
JOIN suppliers AS s
  ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);


-- 4. Write a query to find the total monthly payroll.

SELECT ROUND(SUM(Salary), 2) AS TotalMonthlyPayroll
FROM employees;


-- 5. Write a query to show the highest and lowest salary amounts.

SELECT 
    ROUND(MAX(Salary), 2) AS HighestSalary,
    ROUND(MIN(Salary), 2) AS LowestSalary
FROM employees;


-- 6. Write a query to show each supplier name, supplier ID,
-- and the number of products they supply.

SELECT 
    s.SupplierID,
    s.CompanyName AS SupplierName,
    COUNT(p.ProductID) AS ProductCount
FROM suppliers AS s
JOIN products AS p
  ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName
ORDER BY ProductCount DESC;


-- 7. Write a query to show all category names and the average price
-- of products in each category.

SELECT 
    c.CategoryName,
    ROUND(AVG(p.UnitPrice), 2) AS AverageCategoryPrice
FROM categories AS c
JOIN products AS p
  ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
ORDER BY c.CategoryName ASC;


-- 8. Write a query to show suppliers that provide at least 5 products,
-- along with the number of products they supply.

SELECT 
    s.CompanyName AS SupplierName,
    COUNT(p.ProductID) AS ProductCount
FROM suppliers AS s
JOIN products AS p
  ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName
HAVING COUNT(p.ProductID) >= 5
ORDER BY ProductCount DESC;


-- 9. Write a query to list products currently in inventory.
-- Inventory value is calculated as unit price multiplied by units in stock.
-- Leave products with no stock off the list.

SELECT 
    ProductID,
    ProductName,
    ROUND(UnitPrice * UnitsInStock, 2) AS InventoryValue
FROM products
WHERE UnitsInStock > 0
ORDER BY InventoryValue DESC, ProductName ASC;
