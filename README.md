# PIzza_Sales_Analysis
# 🍕 Pizza Sales Analysis using SQL (PostgreSQL)

## 📌 Project Overview

This project analyzes a Pizza Sales dataset using SQL in PostgreSQL.

The objective is to answer real business questions by writing SQL queries ranging from basic aggregations to advanced window functions.

The project demonstrates practical SQL skills including:

- Aggregate Functions
- GROUP BY
- ORDER BY
- LIMIT
- Subqueries
- Window Functions
- Date & Time Functions
- Revenue Analysis
- Business Insights

---

## 🛠️ Tools Used

- PostgreSQL
- pgAdmin 4
- SQL

---

## 📂 Dataset

The dataset contains information about pizza orders including:

- Order ID
- Pizza Name
- Category
- Size
- Quantity
- Price
- Total Price
- Order Date
- Order Time

---

# 📋 Business Questions Solved

## Basic SQL

### 1. Retrieve the total number of orders placed.

**Result**

- Total Orders: **48,620**

---

### 2. Calculate the total revenue generated.

**Result**

- Total Revenue: **817,860.05**

---

### 3. Identify the highest priced pizza.

**Result**

- Highest Price: **35.95**

---

### 4. Identify the most common pizza size ordered.

**Result**

| Size | Orders |
|------|-------:|
| L | 18,526 |
| M | 15,385 |
| S | 14,137 |
| XL | 544 |
| XXL | 28 |

---

### 5. List the Top 5 most ordered pizza types.

| Pizza | Quantity |
|--------|---------:|
| The Classic Deluxe Pizza | 2,453 |
| The Barbecue Chicken Pizza | 2,432 |
| The Hawaiian Pizza | 2,422 |
| The Pepperoni Pizza | 2,418 |
| The Thai Chicken Pizza | 2,371 |

---

## Intermediate SQL

### 6. Total quantity sold by pizza category

| Category | Quantity |
|-----------|---------:|
| Classic | 14,888 |
| Supreme | 11,987 |
| Veggie | 11,649 |
| Chicken | 11,050 |

---

### 7. Distribution of orders by hour

Business insight:

- Lunch hours (12 PM–1 PM) receive the highest number of orders.
- Demand decreases gradually after evening.

---

### 8. Category-wise distribution of pizzas

| Category | Orders |
|-----------|-------:|
| Classic | 14,579 |
| Supreme | 11,777 |
| Veggie | 11,449 |
| Chicken | 10,815 |

---

### 9. Average pizzas ordered per day

**Result**

- Average pizzas ordered per day: **138**

---

### 10. Top 3 pizza types based on revenue

| Pizza | Revenue |
|--------|--------:|
| The Thai Chicken Pizza | 43,434.25 |
| The Barbecue Chicken Pizza | 42,768.00 |
| The California Chicken Pizza | 41,409.50 |

---

## Advanced SQL

### 11. Percentage contribution of each category to total revenue

| Category | Revenue Contribution |
|-----------|--------------------:|
| Classic | 26.91% |
| Supreme | 25.46% |
| Chicken | 23.96% |
| Veggie | 23.68% |

---

### 12. Cumulative revenue over time

Used SQL Window Functions to calculate cumulative revenue generated over time.

---

### 13. Top 3 highest revenue pizzas within each category

Used:

- Subqueries
- Window Functions
- RANK()

to identify the top-performing pizzas for every category.

---

# 📚 SQL Concepts Practiced

✔ SELECT

✔ WHERE

✔ ORDER BY

✔ GROUP BY

✔ Aggregate Functions

✔ COUNT()

✔ SUM()

✔ AVG()

✔ MAX()

✔ LIMIT

✔ Subqueries

✔ Window Functions

✔ RANK()

✔ EXTRACT()

✔ ROUND()

---

# 📈 Key Business Insights

- Large pizzas are the most popular size.
- Classic pizzas generate the highest revenue contribution.
- Lunch hours are the busiest sales period.
- Thai Chicken Pizza generates the highest revenue.
- Classic Deluxe Pizza is the most frequently ordered pizza.
- Revenue increases steadily throughout the sales period.

---

# 📁 Project Structure

```
Pizza Sales SQL Analysis
│
├── README.md
├── Pizza_Sales_SQL.sql
├── Dataset
│   └── pizza_sales.csv
└── Screenshots
    ├── Q1.png
    ├── Q2.png
    ├── ...
    └── Q13.png
```

---

# 🚀 Skills Demonstrated

- SQL Query Writing
- Data Analysis
- Business Intelligence
- PostgreSQL
- Data Aggregation
- Analytical Thinking
- Problem Solving

---

## ⭐ If you found this project useful, feel free to star the repository.
