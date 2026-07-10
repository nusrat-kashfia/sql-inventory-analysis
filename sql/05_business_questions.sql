/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 05_business_questions.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
Business Questions
=========================================================
*/

/*
1. Which products are currently below their reorder point?
*/
SELECT
    p.product_id,
    p.product_name,
    p.reorder_point,
    i.stock_on_hand
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
WHERE i.stock_on_hand < p.reorder_point;

/*
2. Which products have the highest stock on hand?
*/
SELECT
    p.product_id,
    p.product_name,
    p.reorder_point,
    i.stock_on_hand
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
WHERE i.stock_on_hand > p.reorder_point;

/*
3. Which products have the lowest stock on hand?
*/
SELECT
    p.product_id,
    p.product_name,
    SUM(i.stock_on_hand) AS total_stock
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_stock ASC
LIMIT 10;

/*
4. Which products have never been sold?
*/
SELECT
    p.product_name,
    p.product_id
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

/* Alternative Solution */
SELECT
    p.product_name,
    p.product_id
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
WHERE s.product_id IS NOT NULL;

/*
5. Which products generated the highest revenue?
*/
SELECT
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold * p.unit_price) AS total_revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC
LIMIT 10;

/*
6. Which products generated the lowest revenue?
*/
SELECT
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold * p.unit_price) AS total_revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue ASC
LIMIT 10;

/*
7. Which warehouses hold the most inventory?
*/
SELECT
    warehouse_id,
    SUM(stock_on_hand) AS total_inventory
FROM inventory
GROUP BY warehouse_id
ORDER BY total_inventory DESC;

/*
8. Which warehouses generated the most sales revenue?
*/
SELECT
    warehouse_name,
    SUM(revenue) AS total_revenue
FROM sales s
JOIN warehouses w
    ON s.warehouse_id = w.warehouse_id
GROUP BY warehouse_name
ORDER BY total_revenue DESC;

/*
9. Which categories generated the highest revenue?
*/
SELECT
    p.category,
    SUM(s.revenue) AS total_revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

/*
10. Which categories sold the most units?
*/
SELECT
    p.category,
    SUM(s.quantity_sold) AS total_unit_sold
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_unit_sold DESC;