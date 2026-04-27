USE northwind;

-- Ex5 Questions

-- 1. What is the product name of the most expensive product?

SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM products
);


-- 2. What is the product name and category of the least expensive product?

SELECT p.ProductName, c.CategoryName, p.UnitPrice
FROM products AS p
JOIN categories AS c
  ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (
    SELECT MIN(UnitPrice)
    FROM products
);


-- 3. What are the order id, ship name, and ship address
-- for all orders shipped by Federal Shipping?

SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM shippers
    WHERE CompanyName = 'Federal Shipping'
);


-- 4. What are the order ids for orders that included Sasquatch Ale?

SELECT DISTINCT OrderID
FROM `order details`
WHERE ProductID = (
    SELECT ProductID
    FROM products
    WHERE ProductName = 'Sasquatch Ale'
);


-- 5. What is the name of the employee who sold order 10266?

SELECT FirstName, LastName
FROM employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM orders
    WHERE OrderID = 10266
);


-- 6. What is the name of the customer who bought order 10266?

SELECT CompanyName, ContactName
FROM customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM orders
    WHERE OrderID = 10266
);
