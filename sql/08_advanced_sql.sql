/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 08_advanced_sql.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
Advanced SQL Practice
=========================================================
*/

/*
1. Find the top-selling product in each category
*/
SELECT
    p.category,
    p.product_id,
    p.product_name,
    SUM(s.quantity_sold) AS total_quantity
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY
    p.category,
    p.product_id,
    p.product_name
ORDER BY
    p.category,
    total_quantity DESC;

/*
2. Find the warehouse with the highest revenue
*/
SELECT
    w.warehouse_name,
    w.warehouse_id,
    SUM(s.revenue) AS highest_revenue
FROM sales s
JOIN warehouses w
    ON s.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_name
ORDER BY highest_revenue DESC;

/*
3. Find the supplier with the best delivery performance
*/
SELECT
    po.supplier_name,
    AVG(DATEDIFF(po.actual_delivery_date, po.order_date)) AS avg_delivery_days
FROM purchase_orders po
GROUP BY po.supplier_name
ORDER BY avg_delivery_days ASC
LIMIT 1;

/*
4. Calculate each category's percentage contribution
   to total revenue
*/
SELECT
    p.category,
    SUM(s.revenue) AS category_revenue,
    (
        SUM(s.revenue) /
        (SELECT SUM(revenue) FROM sales) * 100
    ) AS revenue_percentage
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.category;

/*
5. Find products contributing to 80% of revenue
*/

--------------------------------------------------------

/*
6. Rank warehouses by inventory value
*/
SELECT
    i.warehouse_id,
    SUM(i.stock_on_hand * p.unit_cost) AS inventory_value
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY i.warehouse_id
ORDER BY inventory_value DESC;

/*
7. Find the top 5 products in each category by revenue
*/
SELECT
    p.product_name,
    p.category,
    SUM(s.revenue)
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY
    p.product_name,
    p.category
ORDER BY revenue DESC
LIMIT 0, 5;

/*
8. Compare actual delivery dates against expected
   delivery dates
*/
SELECT
    supplier_name,
    order_date,
    expected_delivery_date,
    actual_delivery_date,
    CASE
        WHEN actual_delivery_date <= expected_delivery_date
            THEN 'On Time'
        ELSE 'Late'
    END AS delivery_status
FROM purchase_orders;

/*
9. Create a supplier scorecard using multiple KPIs
*/
supplier_name,
COUNT(*) AS total_orders,
SUM(
    CASE
        WHEN actual_delivery_date <= expected_delivery_date
            THEN 1
        ELSE 0
    END
) * 100.0 / COUNT(*) AS on_time_delivery_percentage,
AVG(
    DATEDIFF(actual_delivery_date, expected_delivery_date)
) AS avg_delay_days
FROM purchase_orders
GROUP BY supplier_name;

/*
10. Build an ABC inventory classification model
*/
--------------------------------------------------------