SELECT * FROM walmart_sales_analysis.sales;

# Exploratory Data Analysis

# 1. How many unique cities does the data have?
SELECT DISTINCT CITY FROM SALES;

# 2. Find the total revenue (sum of the Total column) for each branch.
SELECT BRANCH, ROUND(SUM(TOTAL),0) AS `TOTAL SALES` FROM SALES GROUP BY BRANCH;

# 3. List all unique payment methods used by customers.
SELECT DISTINCT PAYMENT FROM SALES;

# 4.Find the average rating given by customers for each product line.
SELECT `PRODUCT LINE`, ROUND(AVG(RATING),2) AS AVG_RATING FROM SALES group by `PRODUCT LINE` ORDER BY AVG_RATING ;

# 5. Count the number of transactions per city.
SELECT CITY, COUNT(*) AS `TRANSACTIONS PER CITY` FROM SALES GROUP BY CITY;

# 6. Find the total tax collected for each month.
SELECT `MONTH NAME`, ROUND(SUM(`TAX 5%`),2) AS `TOTAL TAX` FROM SALES group by `MONTH NAME`;

# 7. Find the peak sales hours (most transactions per hour).
SELECT HOUR, COUNT(*) AS `NO. OF TRANSACTION` FROM SALES GROUP BY HOUR ORDER BY `NO. OF TRANSACTION` DESC;

# 8. Find the monthly revenue trend.
SELECT `MONTH NAME`, ROUND(SUM(TOTAL),2) AS TOTAL FROM SALES GROUP BY `MONTH NAME`;

# 9. Find the total number of male and female customers.
SELECT GENDER, COUNT(*) AS `TOTAL COUNT` FROM SALES GROUP BY GENDER;

# 10. Find the customer type that generates the most revenue.
SELECT `CUSTOMER TYPE`, ROUND(SUM(TOTAL),2) AS REVENUE FROM SALES group by `CUSTOMER TYPE` LIMIT 1 ;

# 11. Find the top 5 best-selling products based on quantity sold.
SELECT `PRODUCT LINE`,SUM(QUANTITY) AS `QUANTITY SOLD` FROM SALES GROUP BY `PRODUCT LINE` ORDER BY `QUANTITY SOLD` DESC LIMIT 5;

 # 12. Find the branch with the highest average rating.
 SELECT BRANCH, ROUND(AVG(RATING),2) AS AVERAGE FROM SALES GROUP BY BRANCH ORDER BY AVERAGE DESC LIMIT 1 ;
 
 # 13. Find the total sales made via "Credit Card" for each branch.
  SELECT BRANCH, ROUND(SUM(TOTAL),2) AS `TOTAL SALES` FROM SALES WHERE PAYMENT = "CREDIT CARD" GROUP BY BRANCH;
 
 # 14. Find the top 3 cities with the highest total revenue, excluding cities where total revenue is below 100,000.
 SELECT CITY, ROUND(SUM(TOTAL),2) AS TOTAL FROM SALES GROUP BY CITY HAVING TOTAL >100000;
 
 # 15. Identify the product line with the highest total revenue for each branch
SELECT Branch, `Product line`, SUM(Total) AS total_revenue 
FROM sales
GROUP BY Branch, `Product line` 
HAVING total_revenue = (SELECT MAX(total_revenue) 
                        FROM (SELECT Branch, `Product line`, SUM(Total) AS total_revenue 
                              FROM sales
                              GROUP BY Branch, `Product line`) AS temp_table);
