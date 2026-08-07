DROP VIEW pizzahut;



CREATE VIEW pizzahut AS
SELECT
od.order_details_id,
o.order_id,
o.date,
o.time,
p.pizza_id,
pt.name AS pizza_name,
pt.category,
p.size,
p.price,
od.quantity,
(p.price * od.quantity) AS total_price

FROM pizza_sales_analysis.order_details od
JOIN pizza_sales_analysis.orders o
ON od.order_id = o.order_id

JOIN pizza_sales_analysis.pizzas p
ON od.pizza_id = p.pizza_id

JOIN pizza_sales_analysis.pizza_types pt
ON p.pizza_type_id = pt.pizza_type_id;


SELECT * FROM pizzahut;


--  Q1  Retrieve the total number of order placed.

SELECT COUNT (order_id ) AS total_order FROM pizzahut;


--  Q2  Calculte the total revenue generated from pizza sales.

SELECT SUM (price * quantity) AS total_revenue FROM pizzahut;

--  Q3  Identify the highest priced pizza

SELECT MAX (price) AS most_expensive_pizza 
FROM pizzahut;

--  Q4  Identify the most common pizza size ordered.

SELECT size , COUNT(order_details_id) AS order_count
FROM pizzahut 
GROUP BY size
ORDER BY order_count DESC;



--  Q5 List the top 5 most ordered pizza types along with their quantities.

SELECT pizza_name ,
SUM (quantity) AS quantities
FROM pizzahut
GROUP BY pizza_name
ORDER BY quantities DESC LIMIT 5;


--  Q6  Find the total quantity of each pizza category ordered.

SELECT category,
sum (quantity) as quantities
FROM pizzahut
GROUP BY category
ORDER BY quantities DESC LIMIT 5;

--  Q7 Determine the distribution order by  hour of the day.

SELECT EXTRACT (HOUR FROM time) AS order_hour,
COUNT(order_id) AS total_orders
FROM pizzahut
GROUP BY EXTRACT (HOUR FROM time)
ORDER BY order_hour;

--  Q8  Make a table showing category wise distribution of pizza.

SELECT category ,
COUNT (pizza_name)
FROM pizzahut
GROUP BY category;

-- Q9  Group the orders by date and calculate the average number of pizza ordered per day.

SELECT ROUND (AVG(pizza_ordered_per_day),0)
FROM(SELECT date,
sum ( quantity) AS pizza_ordered_per_day
FROM pizzahut
GROUP BY date 
ORDER BY date) AS Average_pizza_ordered_perday;


--  Q10  Determine the top 3 most ordered pizza based on revenue.

SELECT pizza_name , 
SUM(total_price) AS revenue
FROM pizzahut
GROUP BY pizza_name
ORDER BY revenue DESC LIMIT 3;

--  Q11  Calculate the percentage contribution of each pizza types to total revenue

SELECT category , 
ROUND (SUM(total_price)/(SELECT SUM (price * quantity) FROM pizzahut)*100,2) AS revenue
FROM pizzahut
GROUP BY category
ORDER BY revenue DESC;


--  Q12  Analyze the cumlative revenue generated over time.
SELECT date,
SUM (revenue) OVER (ORDER BY date) AS cum_revenue
FROM
(SELECT date, 
SUM (total_price) AS revenue
FROM pizzahut
GROUP BY date) AS sales;


--  Q13  Determine the top 3 most ordered pizza types based on revenue for each pizza category.


SELECT pizza_name,revenue
FROM (SELECT category, pizza_name , revenue,
RANK() OVER(PARTITION BY category ORDER BY revenue DESC ) as rn
FROM
(SELECT category,
pizza_name,
SUM (total_price) AS revenue
FROM pizzahut
GROUP BY category , pizza_name) AS a) AS b 
WHERE rn <= 3;