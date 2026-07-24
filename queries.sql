-- Sales Data Engineering Pipeline - SQL Queries

USE sales_warehouse;

-- 1. Top 10 products by revenue
SELECT Description, SUM(Quantity * UnitPrice) as TotalRevenue
FROM sales
GROUP BY Description
ORDER BY TotalRevenue DESC
LIMIT 10;

-- 2. Country-wise total sales
SELECT Country, SUM(Quantity * UnitPrice) as TotalRevenue
FROM sales
GROUP BY Country
ORDER BY TotalRevenue DESC;

-- 3. Monthly sales trend
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') as Month, 
       SUM(Quantity * UnitPrice) as MonthlyRevenue
FROM sales
GROUP BY Month
ORDER BY Month;

-- 4. Top 10 customers by spend
SELECT CustomerID, SUM(Quantity * UnitPrice) as TotalSpent
FROM sales
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;