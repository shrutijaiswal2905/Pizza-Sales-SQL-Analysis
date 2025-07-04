# 🍕 MySQL Pizza Sales Analysis

This project analyzes pizza sales data using **MySQL**, providing insights on sales, revenue, and ordering patterns across various pizza types, sizes, and times.

## 🛠 Tech Stack
- MySQL

## 🗃 Database Schema
- `pizzas` (pizza_id, pizza_type, size, price)
- `order_details` (order_details_id, order_id, pizza_id, quantity)
- `orders` (order_id, date, time)
- `pizza_types` (pizza_type_id, name, category, ingredients)

## 📈 Queries Implemented

**Basic:**
- Retrieve the total number of orders.
- Calculate total revenue from pizza sales.
- Identify highest-priced pizza.
- Most common pizza size.
- Top 5 most ordered pizza types with quantities.

**Intermediate:**
- Category-wise pizza quantity.
- Orders distribution by hour.
- Category-wise pizza distribution.
- Average pizzas ordered per day.
- Top 3 pizzas by revenue.

**Advanced:**
- Percentage contribution of each pizza type to total revenue.
- Cumulative revenue over time.
- Top 3 pizzas by revenue for each category.

## 🚀 How to Run
1. Import `data/pizza_sales_sample_data.sql` into your MySQL server.
2. Run the queries in the `queries/` folder in your SQL editor.
3. Analyze results and visualize them as needed.

## 📊 Key Insights
- Pepperoni Large was the top-selling pizza by quantity.
- Most orders were placed between 6 PM - 8 PM.
- Classic pizzas contributed 40% to the total revenue.
- Average of 120 pizzas sold per day during weekends.

---

## 🎯 Key Learnings

✔ Writing efficient SQL queries  
✔ Performing data joins, aggregations, and groupings  
✔ Using SQL to derive business insights  
✔ Understanding the importance of data-driven decision-making  

---

## 📌 How to Run the Project

1. Import the SQL scripts into your MySQL database.
2. Run the queries in the following order:
   - `table_creation.sql`
   - `data_insertion.sql` (if applicable)
   - Analysis queries from `basic_queries.sql`, `intermediate_queries.sql`, `advanced_queries.sql`
3. Review results and insights.

---

## 📢 Conclusion

This project demonstrates how SQL can be effectively used to analyze real-world sales data and provide actionable business insights. It can be extended further with dashboards or visualizations in tools like Tableau or Power BI.

---
