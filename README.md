# PLSQL Assignment One - Sunrise Supermarket

## Student Information

- *Name:* Francine Mutesi
- *Student ID:* 29342
- *DBMS Used:* Oracle Database
- *Repository:* assignment_1_Francine_Mutesi_29342

## Project Summary

This project is a PL/SQL and SQL database assignment for Sunrise Supermarket.

The database stores information about customers, products, orders, and order items. SQL JOINs, a Common Table Expression (CTE), and window functions are used to analyze customer purchases and supermarket sales.

## Business Scenario

Sunrise Supermarket sells different products to customers. Customers can place orders, and each order can contain one or more products.

Management wants to use the database to understand:

- Customer information
- Products and product categories
- Customer orders
- Products purchased in each order
- Customer spending
- Customer purchase rankings
- Sales revenue over time
- The time between customer orders

## Database Tables

The project contains four main tables:

### 1. Customers

Stores customer information.

Main columns:
- customer_id
- customer_name
- email
- city

### 2. Products

Stores information about products sold by the supermarket.

Main columns:
- product_id
- product_name
- category
- price

### 3. Orders

Stores customer orders.

Main columns:
- order_id
- customer_id
- order_date

### 4. Order Items

Stores the products included in each order.

Main columns:
- order_item_id
- order_id
- product_id
- quantity

## Data Population

The database was populated with:

- 6 customers
- 8 products
- 4 product categories
- 15 orders
- 30 order items
- Orders covering multiple dates

One customer was intentionally added without any orders so that the LEFT JOIN requirement could be demonstrated.

## How to Run the Project

1. Open Oracle SQL*Plus or another Oracle SQL environment.
2. Connect to the Oracle database.
3. Open the sunrise_supermarket.sql file.
4. Run the SQL script.
5. The script creates the tables, inserts the sample data, runs the required queries, and commits the changes.

The SQL script should be run in an Oracle schema where the required tables do not already exist.

## JOIN Queries

### JOIN 1: Orders with Customer Information

This query uses an INNER JOIN between the orders and customers tables.

It displays:

- Order ID
- Customer name
- City
- Order date

The JOIN connects the tables using customer_id.

### JOIN 2: Order Items with Product Information

This query uses an INNER JOIN between order_items and products.

It displays:

- Order item ID
- Order ID
- Product name
- Product category
- Product price
- Quantity

The JOIN connects the tables using product_id.

### JOIN 3: Customers and Their Orders

This query uses a LEFT JOIN between customers and orders.

It displays all customers, including customers who have not placed any orders.

This is useful for identifying customers who are registered with the supermarket but have not yet made a purchase.

## CTE Query

A Common Table Expression (CTE) is used to calculate the total spending of each customer.

The calculation is based on:

quantity × price

The query then compares each customer's total spending with the average spending of all customers.

The result shows customers whose spending is above the average.

### Result

The customers above the average spending were:

| Customer | Total Spend |
|---|---:|
| Alice Mwangi | 129.00 |
| Esther Mukamana | 82.50 |
| Chantal Uwase | 71.00 |

## Window Functions

### 1. Rank Customers by Total Spending

The RANK() window function ranks customers according to their total spending, from the highest amount to the lowest amount.

This helps management identify customers based on their total purchase value.

### 2. Number Each Customer's Orders

The ROW_NUMBER() window function numbers each customer's orders according to the order date.

This shows the sequence in which each customer placed their orders.

### 3. Running Total of Revenue

A running total is calculated using the SUM() window function.

The revenue is ordered by date, allowing management to see how total revenue accumulates over time.

Revenue is calculated using:

quantity × price

### 4. Days Between Customer Orders

The LAG() window function is used to obtain each customer's previous order date.

The difference between the current order date and the previous order date shows the number of days between orders.

This can help management understand customer purchasing frequency.

## Results

The required queries were successfully executed in Oracle Database.

The main results included:

- The first JOIN returned 15 orders.
- The second JOIN returned 30 order items.
- The LEFT JOIN returned all customer records, including the customer without orders.
- The CTE identified 3 customers whose spending was above the average.
- The customer ranking query ranked all 6 customers according to total spending.
- The order numbering query numbered all 15 orders.
- The running revenue query calculated cumulative revenue across the order dates.
- The days-between-orders query calculated the intervals between previous and current orders for customers with more than one order.

## Business Interpretation

The queries provide useful information for Sunrise Supermarket management.

Customer spending analysis identifies customers who purchase more than the average. Customer ranking provides a way to compare total spending across customers.

The running revenue analysis shows how sales revenue accumulates over time.

The days-between-orders analysis provides information about customer purchasing frequency, which can help management understand customer ordering patterns.

The LEFT JOIN also helps identify registered customers who have not yet placed an order.

## Challenges and Resolutions

### Challenge 1: Connecting Related Tables

The tables contained related information stored separately.

*Resolution:* JOINs were used to connect customers with orders and order items with products using their related ID fields.

### Challenge 2: Calculating Customer Spending

Customer spending required combining information from several tables.

*Resolution:* A CTE was used to calculate the total spending for each customer using quantity multiplied by product price.

### Challenge 3: Analyzing Orders Over Time

It was necessary to determine the order sequence and the time between orders.

*Resolution:* Window functions such as ROW_NUMBER() and LAG() were used.

### Challenge 4: Identifying Customers Without Orders

Some customers may not have placed any orders.

*Resolution:* A LEFT JOIN was used so that customers without orders were still included in the results.

## Files in This Repository

- README.md — Project documentation and explanations.
- sunrise_supermarket.sql — SQL script containing table creation, data insertion, JOIN queries, CTE query, window functions, and COMMIT.

## Screenshots

Screenshots of the executed SQL queries and their results can be added here as evidence of successful execution.


---

*PLSQL Assignment One - Sunrise Supermarket*