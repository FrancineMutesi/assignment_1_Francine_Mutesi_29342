 Sunrise Supermarket - PLSQL Assignment One
   Student ID: 29342
   DBMS: Oracle Database


-- =========================================
-- 1. CREATE TABLES
-- =========================================

CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    email VARCHAR2(100),
    city VARCHAR2(50)
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    price NUMBER(10,2)
);

CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES customers(customer_id),
    order_date DATE
);

CREATE TABLE order_items (
    order_item_id NUMBER PRIMARY KEY,
    order_id NUMBER REFERENCES orders(order_id),
    product_id NUMBER REFERENCES products(product_id),
    quantity NUMBER
);
-- =========================================
-- 2. INSERT CUSTOMERS
-- =========================================

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (1, 'Alice Mwangi', 'alice@example.com', 'Kigali');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (2, 'Brian Niyonzima', 'brian@example.com', 'Kigali');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (3, 'Chantal Uwase', 'chantal@example.com', 'Huye');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (4, 'David Habimana', 'david@example.com', 'Musanze');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (5, 'Esther Mukamana', 'esther@example.com', 'Rubavu');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (6, 'Felix Tuyisenge', 'felix@example.com', 'Kigali');
-- =========================================
-- 3. INSERT PRODUCTS
-- =========================================

INSERT INTO products (product_id, product_name, category, price)
VALUES (101, 'Rice 5kg', 'Groceries', 10.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (102, 'Cooking Oil 2L', 'Groceries', 20.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (103, 'Sugar 2kg', 'Groceries', 5.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (104, 'Milk 1L', 'Dairy', 3.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (105, 'Bread', 'Bakery', 2.50);

INSERT INTO products (product_id, product_name, category, price)
VALUES (106, 'Eggs Pack of 12', 'Dairy', 6.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (107, 'Soap', 'Household', 4.00);

INSERT INTO products (product_id, product_name, category, price)
VALUES (108, 'Juice 1L', 'Beverages', 7.00);
-- =========================================
-- 4. INSERT ORDERS
-- =========================================

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1001, 1, DATE '2026-09-01');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1002, 2, DATE '2026-09-02');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1003, 3, DATE '2026-09-03');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1004, 4, DATE '2026-09-04');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1005, 1, DATE '2026-09-05');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1006, 2, DATE '2026-09-07');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1007, 3, DATE '2026-09-08');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1008, 4, DATE '2026-09-10');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1009, 5, DATE '2026-09-11');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1010, 1, DATE '2026-09-12');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1011, 2, DATE '2026-09-14');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1012, 3, DATE '2026-09-15');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1013, 4, DATE '2026-09-17');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1014, 5, DATE '2026-09-18');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1015, 1, DATE '2026-09-20');

-- =========================================
-- 5. INSERT ORDER ITEMS
-- =========================================

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (1, 1001, 101, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (2, 1001, 104, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (3, 1002, 102, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (4, 1002, 105, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (5, 1003, 103, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (6, 1003, 106, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (7, 1004, 107, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (8, 1004, 108, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (9, 1005, 101, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (10, 1005, 102, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (11, 1006, 104, 4);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (12, 1006, 105, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (13, 1007, 106, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (14, 1007, 108, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (15, 1008, 107, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (16, 1008, 103, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (17, 1009, 101, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (18, 1009, 105, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (19, 1010, 102, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (20, 1010, 106, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (21, 1011, 104, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (22, 1011, 108, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (23, 1012, 103, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (24, 1012, 107, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (25, 1013, 101, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (26, 1013, 106, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (27, 1014, 102, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (28, 1014, 105, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (29, 1015, 108, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (30, 1015, 107, 1);

-- =========================================
-- 6. JOIN QUERIES
-- =========================================

-- JOIN 1: Display every order with customer name, city, and order date

SELECT o.order_id,
       c.customer_name,
       c.city,
       o.order_date
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_id;


-- JOIN 2: Display every order item with product details

SELECT oi.order_item_id,
       oi.order_id,
       p.product_name,
       p.category,
       p.price,
       oi.quantity
FROM order_items oi
INNER JOIN products p
    ON oi.product_id = p.product_id
ORDER BY oi.order_item_id;


-- JOIN 3: Display all customers and their orders,
-- including customers who have no orders

SELECT c.customer_id,
       c.customer_name,
       c.city,
       o.order_id,
       o.order_date
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_date;


-- =========================================
-- 7. CTE QUERY
-- =========================================

-- Calculate each customer's total spending
-- and display customers whose spending is above average

WITH customer_totals AS (
    SELECT c.customer_id,
           c.customer_name,
           NVL(SUM(oi.quantity * p.price), 0) AS total_spend
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN order_items oi
        ON o.order_id = oi.order_id
    LEFT JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT customer_id,
       customer_name,
       total_spend
FROM customer_totals
WHERE total_spend > (SELECT AVG(total_spend) FROM customer_totals)
ORDER BY total_spend DESC;


-- =========================================
-- 8. WINDOW FUNCTIONS
-- =========================================

-- WINDOW 1: Rank customers by total amount spent

WITH customer_totals AS (
    SELECT c.customer_id,
           c.customer_name,
           NVL(SUM(oi.quantity * p.price), 0) AS total_spend
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN order_items oi
        ON o.order_id = oi.order_id
    LEFT JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT customer_id,
       customer_name,
       total_spend,
       RANK() OVER (ORDER BY total_spend DESC) AS spend_rank
FROM customer_totals
ORDER BY spend_rank, customer_id;


-- WINDOW 2: Number each customer's orders
-- in the order they were placed

SELECT customer_id,
       order_id,
       order_date,
       ROW_NUMBER() OVER (
           PARTITION BY customer_id
           ORDER BY order_date, order_id
       ) AS order_number
FROM orders
ORDER BY customer_id, order_number;


-- WINDOW 3: Calculate running total of revenue over time

WITH daily_revenue AS (
    SELECT o.order_date,
           SUM(oi.quantity * p.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY o.order_date
)
SELECT order_date,
       revenue,
       SUM(revenue) OVER (
           ORDER BY order_date
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total
FROM daily_revenue
ORDER BY order_date;


-- WINDOW 4: Show the number of days between
-- a customer's current and previous order

WITH ordered_orders AS (
    SELECT o.customer_id,
           o.order_id,
           o.order_date,
           LAG(o.order_date) OVER (
               PARTITION BY o.customer_id
               ORDER BY o.order_date, o.order_id
           ) AS previous_order_date
    FROM orders o
)
SELECT customer_id,
       order_id,
       order_date,
       previous_order_date,
       order_date - previous_order_date AS days_between_orders
FROM ordered_orders
WHERE previous_order_date IS NOT NULL
ORDER BY customer_id, order_date;


-- =========================================
-- 9. SAVE CHANGES
-- =========================================

COMMIT;





