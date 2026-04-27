USE northwind;

-- Ex3 Questions

-- 1. Create a query that lists product id, product name, unit price, and category name.
-- Order the results by category name, and then by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products AS p
JOIN categories AS c
  ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName ASC, p.ProductName ASC;


-- 2. Create a query that lists product id, product name, unit price, and supplier name
-- for products that cost more than $75. Order by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM products AS p
JOIN suppliers AS s
  ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName ASC;


-- 3. Create a query that lists product id, product name, unit price,
-- category name, and supplier name for every product. Order by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName AS SupplierName
FROM products AS p
JOIN categories AS c
  ON p.CategoryID = c.CategoryID
JOIN suppliers AS s
  ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName ASC;


-- 4. Create a query that lists order id, ship name, ship address, and shipping company name
-- for every order shipped to Germany. Use Shipper as the alias for the shipping company.

SELECT o.OrderID, o.ShipName, o.ShipAddress, sh.CompanyName AS Shipper
FROM orders AS o
JOIN shippers AS sh
  ON o.ShipVia = sh.ShipperID
WHERE o.ShipCountry = 'Germany'
ORDER BY Shipper ASC, o.ShipName ASC;


-- 5. Start with the same Germany shipping query, but remove OrderID.
-- Group by ship name and count how many orders were shipped for each ship name.

SELECT o.ShipName, sh.CompanyName AS Shipper, COUNT(o.OrderID) AS OrderCount
FROM orders AS o
JOIN shippers AS sh
  ON o.ShipVia = sh.ShipperID
WHERE o.ShipCountry = 'Germany'
GROUP BY o.ShipName, sh.CompanyName
ORDER BY Shipper ASC, o.ShipName ASC;


-- 6. Create a query that lists order id, order date, ship name, and ship address
-- for all orders that included Sasquatch Ale.

SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders AS o
JOIN `order details` AS od
  ON o.OrderID = od.OrderID
JOIN products AS p
  ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale'
ORDER BY o.OrderDate ASC;
