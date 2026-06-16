# 🛒 Walmart Sales Analysis Using SQL

## Project Overview

This project analyzes sales data from three Walmart branches located in **Mandalay**, **Yangon**, and **Naypyitaw**. The dataset contains detailed transaction-level information, including customer demographics, product categories, payment methods, sales amounts, taxes, ratings, and purchase timestamps.

The objective is to leverage SQL for exploratory data analysis (EDA) and generate actionable business insights that can support strategic decision-making and improve overall sales performance.

---

## Problem Statement

Retail businesses generate large volumes of transactional data daily. The challenge is to transform this raw data into meaningful insights that help stakeholders understand:

* Sales performance across branches
* Customer purchasing behavior
* Revenue trends
* Product performance
* Payment preferences
* Customer satisfaction levels

This project uses SQL to analyze Walmart sales data and answer key business questions that drive data-informed decisions.

---

## Dataset Information

The dataset includes the following attributes:

* Invoice ID
* Branch
* City
* Customer Type
* Gender
* Product Line
* Unit Price
* Quantity
* Tax (VAT)
* Total Revenue
* Date
* Time
* Payment Method
* Month Name
* Hour
* Rating

---

## Tools & Technologies

* SQL
* Microsoft Excel
* Power Query

---

## Methodology

### 1. Data Import

* Imported raw sales data from a CSV file into Microsoft Excel.

### 2. Data Cleaning & Transformation

* Cleaned and transformed the dataset using Power Query.
* Created additional columns such as:

  * Month Name
  * Hour
* Exported the processed dataset as a CSV file.

### 3. SQL Analysis

* Imported the cleaned dataset into a SQL database.
* Performed Exploratory Data Analysis (EDA) using SQL queries.
* Solved business-driven analytical requirements.

---

## Business Requirements

### Sales & Revenue Analysis

* Count distinct cities in the dataset.
* Calculate total revenue for each branch.
* Identify monthly revenue trends.
* Determine the customer type contributing the highest revenue.
* Find the top 3 cities with the highest revenue above a specified threshold.

### Customer Analysis

* Count male and female customers.
* Identify customer payment preferences.
* Analyze customer ratings across branches and product lines.

### Product Performance Analysis

* Calculate average ratings for each product line.
* Identify the top 5 best-selling product lines based on quantity sold.
* Determine the highest revenue-generating product line for each branch.

### Operational Analysis

* Count transactions by city.
* Calculate total tax collected each month.
* Identify peak sales hours based on transaction volume.
* Analyze branch-wise credit card sales.
* Determine the branch with the highest average customer rating.

---

## Key Areas of Analysis

### 📈 Revenue Analysis

* Branch-wise revenue performance
* Monthly sales trends
* High-performing cities

### 👥 Customer Analysis

* Customer type contribution
* Gender distribution
* Payment method preferences

### 🛍️ Product Analysis

* Best-selling products
* Revenue contribution by product line
* Product ratings

### ⭐ Customer Satisfaction

* Branch ratings
* Product line ratings
* Customer feedback trends

---

## Project Outcome

This analysis provides valuable insights into Walmart's sales performance, customer behavior, and product trends. The findings can help businesses:

✅ Improve sales strategies
✅ Optimize product offerings
✅ Enhance customer segmentation
✅ Increase revenue opportunities
✅ Support data-driven decision-making

---

## Conclusion

Through comprehensive SQL-based analysis of Walmart sales data, this project uncovers trends, patterns, and performance metrics across branches, customers, and product lines. The insights generated can guide strategic business decisions and contribute to future growth and profitability.

⭐ If you found this project useful, consider giving the repository a star.
