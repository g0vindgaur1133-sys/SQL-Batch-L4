create database govind;
use govind;

CREATE TABLE Sales_Data (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(10),
    Category VARCHAR(50),
    OrderDate DATE,
    OrderValue DECIMAL(10,2)
);

INSERT INTO Sales_Data (OrderID, CustomerID, Category, OrderDate, OrderValue) VALUES
(1001, 'C201', 'Electronics', '2024-01-05', 12500),
(1002, 'C203', 'Apparel', '2024-01-07', 3200),
(1003, 'C205', 'Home', '2024-01-10', 5800),
(1004, 'C201', 'Electronics', '2024-01-15', 8900),
(1005, 'C207', 'Apparel', '2024-01-18', 2100),
(1006, 'C210', 'Home', '2024-01-22', 4700),
(1007, 'C203', 'Electronics', '2024-02-01', 15300),
(1008, 'C212', 'Apparel', '2024-02-05', 1800),
(1009, 'C205', 'Home', '2024-02-08', 6200),
(1010, 'C214', 'Electronics', '2024-02-12', 9400),
(1011, 'C207', 'Apparel', '2024-02-17', 2900),
(1012, 'C210', 'Electronics', '2024-02-20', 11000),
(1013, 'C212', 'Home', '2024-03-01', 3500),
(1014, 'C201', 'Apparel', '2024-03-05', 4100),
(1015, 'C214', 'Home', '2024-03-10', 7800);

-- select * from sales_data; 

-- 1. calculate the total revenue (sum of ordervalue) for each product category
SELECT Category, SUM(OrderValue) AS Total_Revenue FROM Sales_Data
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- 2. count the total number of orders placed in each category 
SELECT Category, COUNT(OrderID) AS Total_Orders FROM Sales_Data
GROUP BY Category
ORDER BY Total_Orders DESC;

-- 3. find the highest(maximum) single order value with in each category 
SELECT Category, MAX(OrderValue) AS Max_OrderValue FROM Sales_Data
GROUP BY Category
ORDER BY Max_OrderValue DESC;

-- 4. List all unique product Categories that appear in the Sales_Data table.
SELECT DISTINCT Category FROM Sales_Data ORDER BY Category;

-- 5. List all unique CustomerIDs who have placed at least one order.
SELECT DISTINCT CustomerID FROM Sales_Data ORDER BY CustomerID;

-- 6.Find all unique combinations of CustomerID and Category (i.e., which customers bought from which categories).
SELECT DISTINCT CustomerID, Category FROM Sales_Data
ORDER BY CustomerID, Category;

-- 7.  Revenue by CustomerID and Category .
SELECT CustomerID, Category, SUM(OrderValue) AS Total_Revenue FROM Sales_Data
GROUP BY CustomerID, Category
ORDER BY CustomerID, Category;

-- 8. Order Count by CustomerID and Category
SELECT CustomerID, Category, COUNT(OrderID) AS Order_Count FROM Sales_Data
GROUP BY CustomerID, Category
ORDER BY CustomerID, Category;

-- 9. Revenue by Category and Month
SELECT Category, MONTH(OrderDate) AS Order_Month, SUM(ordervalue) AS Total_Revenue
FROM Sales_Data
GROUP BY Category, MONTH(OrderDate)
ORDER BY Order_Month, Category;

-- 10. Categories with Revenue > $20,000
SELECT Category, SUM(OrderValue) AS Total_Revenue FROM Sales_Data
GROUP BY Category HAVING SUM(OrderValue) > 20000
ORDER BY Total_Revenue DESC;

-- 11. Customers with More Than 1 Order
SELECT CustomerID, COUNT(OrderID) AS Order_Count FROM Sales_Data
GROUP BY CustomerID HAVING COUNT(OrderID) > 1
ORDER BY Order_Count DESC;

-- 12. Customer + Category Spending > $10,000
SELECT CustomerID, Category, SUM(OrderValue) AS Total_Spent FROM Sales_Data
GROUP BY CustomerID, Category HAVING SUM(OrderValue) > 10000
ORDER BY Total_Spent DESC;

-- 13. Category KPI Dashboard (Avg > $5,000)
SELECT Category, COUNT(OrderID) AS Total_Orders,
    SUM(OrderValue) AS Total_Revenue,
    ROUND(AVG(OrderValue), 2) AS Avg_OrderValue FROM Sales_Data
GROUP BY Category
HAVING AVG(OrderValue) > 5000
ORDER BY Total_Revenue DESC;

-- 14. High-Value Repeat Customers
SELECT CustomerID, COUNT(OrderID) AS Order_Count,
    ROUND(AVG(OrderValue), 2) AS Avg_OrderValue FROM Sales_Data
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1 AND AVG(OrderValue) > 6000
ORDER BY Avg_OrderValue DESC;

-- 15. Category-Month Performance (Min 2 Orders)
SELECT Category,
    MONTH(OrderDate) AS Order_Month,
    COUNT(OrderID) AS Total_Orders,
    SUM(OrderValue) AS Total_Revenue,
    ROUND(AVG(OrderValue), 2) AS Avg_OrderValue
FROM Sales_Data
GROUP BY Category, MONTH(OrderDate)
HAVING COUNT(OrderID) >= 2 ORDER BY Order_Month , Total_Revenue DESC;


