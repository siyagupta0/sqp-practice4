#Top 5 Customers by Order Volume
SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalOrders DESC
LIMIT 5;

#Average Order Quantity per Product
SELECT p.ProductName, AVG(od.Quantity) AS AvgQuantity
FROM products p
JOIN order_details od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName;

#Employees with Highest Sales (by Quantity)
SELECT e.FirstName, e.LastName, SUM(od.Quantity) AS TotalQuantitySold
FROM employees e
JOIN orders o ON e.EmployeeID = o.EmployeeID
JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY TotalQuantitySold DESC;

#Monthly Order Volume Trend
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS OrderMonth, COUNT(OrderID) AS TotalOrders
FROM orders
GROUP BY OrderMonth
ORDER BY OrderMonth;

#Products with No Orders (Data Discrepancy Check)
SELECT p.ProductID, p.ProductName
FROM products p
LEFT JOIN order_details od ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;

#Revenue by Country
SELECT c.Country, SUM(od.Quantity * p.Price) AS TotalRevenue
FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID
JOIN order_details od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
GROUP BY c.Country
ORDER BY TotalRevenue DESC;

#Orders with Quantity Greater Than Average
SELECT od.OrderID, p.ProductName, od.Quantity
FROM order_details od
JOIN products p ON od.ProductID = p.ProductID
WHERE od.Quantity > (
    SELECT AVG(Quantity) FROM order_details
);

#Customer Order Frequency by Shipper
SELECT s.ShipperName, COUNT(o.OrderID) AS TotalOrders
FROM shippers s
JOIN orders o ON s.ShipperID = o.ShipperID
GROUP BY s.ShipperID, s.ShipperName;

#Duplicate Customer Addresses (Data Quality Check)
SELECT Address, COUNT(*) AS Count
FROM customers
GROUP BY Address
HAVING COUNT(*) > 1;

#Top 5 Most Expensive Products
SELECT ProductName, Price
FROM products
ORDER BY Price DESC
LIMIT 5;