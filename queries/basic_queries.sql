-- 🍕 MySQL Pizza Sales Analysis: Basic Queries
-- Author: Shruti Jaiswal
-- Description: Basic level queries to analyze pizza sales data

/* ---------------------------------------------------
1️⃣ Retrieve the total number of orders placed
----------------------------------------------------- */
SELECT COUNT(order_id) AS total_orders
FROM orders;

/* ---------------------------------------------------
2️⃣ Calculate the total revenue generated from pizza sales
----------------------------------------------------- */
SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS total_revenue
FROM
    order_details od
    JOIN pizzas p ON p.pizza_id = od.pizza_id;

/* ---------------------------------------------------
3️⃣ Identify the highest-priced pizza
----------------------------------------------------- */
SELECT 
    pt.name AS pizza_name,
    p.price AS pizza_price
FROM
    pizza_types pt
    JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
ORDER BY
    p.price DESC
LIMIT 1;

/* ---------------------------------------------------
4️⃣ Identify the most common pizza size ordered
----------------------------------------------------- */
SELECT 
    p.size AS pizza_size,
    COUNT(od.order_details_id) AS order_count
FROM
    pizzas p
    JOIN order_details od ON p.pizza_id = od.pizza_id
GROUP BY
    p.size
ORDER BY
    order_count DESC
LIMIT 1;

/* ---------------------------------------------------
5️⃣ List the top 5 most ordered pizza types along with their quantities
----------------------------------------------------- */
SELECT 
    pt.name AS pizza_type,
    SUM(od.quantity) AS total_quantity
FROM
    pizza_types pt
    JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
    JOIN order_details od ON od.pizza_id = p.pizza_id
GROUP BY
    pt.name
ORDER BY
    total_quantity DESC
LIMIT 5;
