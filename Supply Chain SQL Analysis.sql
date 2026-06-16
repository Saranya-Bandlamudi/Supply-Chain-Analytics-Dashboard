CREATE DATABASE supply_chain_db;
USE supply_chain_db;
SELECT COUNT(*) AS total_rows
FROM supply_chain;
SELECT *
FROM supply_chain
LIMIT 5;
DESCRIBE supply_chain;
SELECT COUNT(*) AS total_records
FROM supply_chain;
SHOW COLUMNS FROM supply_chain;
SELECT ROUND(SUM(`Revenue generated`),2) AS Total_Revenue
FROM supply_chain;
SELECT SUM(`Number of products sold`) AS Total_Products_Sold
FROM supply_chain;
SELECT ROUND(AVG(Price),2) AS Avg_Price
FROM supply_chain;
SELECT `Product type`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Product type`
ORDER BY Revenue DESC;
DESCRIBE supply_chain;
SELECT `Product type`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Product type`
ORDER BY Revenue DESC;
SELECT * FROM supply_chain LIMIT 1;
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'supply_chain_db'
AND TABLE_NAME = 'supply_chain';
ALTER TABLE supply_chain
RENAME COLUMN `ï»¿Product type` TO `Product type`;
SHOW COLUMNS FROM supply_chain;
SELECT `Product type`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Product type`
ORDER BY Revenue DESC;
SELECT SKU,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY SKU
ORDER BY Revenue DESC
LIMIT 5;
SELECT `Customer demographics`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Customer demographics`
ORDER BY Revenue DESC;
SELECT `Product type`,
ROUND(AVG(`Stock levels`),2) AS Avg_Stock
FROM supply_chain
GROUP BY `Product type`;
SELECT `Shipping carriers`,
COUNT(*) AS Total_Orders
FROM supply_chain
GROUP BY `Shipping carriers`
ORDER BY Total_Orders DESC;
SELECT `Product type`,
ROUND(AVG(`Lead times`),2) AS Avg_Lead_Time
FROM supply_chain
GROUP BY `Product type`;
SELECT `Product type`,
SUM(`Number of products sold`) AS Products_Sold
FROM supply_chain
GROUP BY `Product type`
ORDER BY Products_Sold DESC;
SELECT `Shipping carriers`,
ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Shipping carriers`
ORDER BY Revenue DESC;
SELECT SKU,
SUM(`Number of products sold`) AS Products_Sold
FROM supply_chain
GROUP BY SKU
ORDER BY Products_Sold DESC
LIMIT 10;
SELECT `Product type`,
ROUND(AVG(`Revenue generated`),2) AS Avg_Revenue
FROM supply_chain
GROUP BY `Product type`
ORDER BY Avg_Revenue DESC;
SELECT `Customer demographics`,
COUNT(*) AS Orders_Count,
ROUND(SUM(`Revenue generated`),2) AS Total_Revenue
FROM supply_chain
GROUP BY `Customer demographics`
ORDER BY Total_Revenue DESC;
SELECT SKU,
`Stock levels`,
`Number of products sold`
FROM supply_chain
ORDER BY `Stock levels` ASC
LIMIT 10;