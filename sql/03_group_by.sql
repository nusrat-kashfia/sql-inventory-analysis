/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 03_group_by.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
GROUP BY
=========================================================
*/

/*
1. Count products in each category
*/
SELECT
    category,
    COUNT(product_id) AS total_products
FROM products
GROUP BY category;


/*
2. Calculate the average product price by category
*/
SELECT
    category,
    AVG(unit_price) AS average_product_price
FROM products
GROUP BY category;


/*
3. Calculate the average product cost by category
*/
SELECT
    category,
    AVG(unit_cost) AS average_product_cost
FROM products
GROUP BY category;

/*
4. Find total inventory by warehouse
*/
SELECT
    warehouse_id,
    SUM(stock_on_hand) AS total_inventory
FROM inventory
GROUP BY warehouse_id;

/*
5. Find total inventory by product
*/
SELECT
    p.category,
    SUM(i.stock_on_hand) AS total_inventory
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
GROUP BY p.category;

/*
6. Calculate total sales revenue by warehouse
*/
SELECT
    warehouse_id,
    SUM(revenue) AS total_sales_revenue
FROM sales
GROUP BY warehouse_id;

/*
7. Calculate total units sold by warehouse
*/
SELECT
    warehouse_id,
    SUM(quantity_sold) AS total_units_sold
FROM sales
GROUP BY warehouse_id;

/*
8. Count purchase orders by supplier
*/
SELECT
    supplier_name,
    COUNT(po_id) AS total_purchase_orders
FROM purchase_orders
GROUP BY supplier_name;

/*
9. Calculate total purchase cost by supplier
*/
SELECT
    supplier_name,
    SUM(purchase_cost) AS total_purchase_cost
FROM purchase_orders
GROUP BY supplier_name;

/*
10. Calculate average supplier lead time by supplier
*/
SELECT
    supplier_name,
    AVG(DATEDIFF(actual_delivery_date, order_date)) AS average_lead_time_days
FROM purchase_orders
GROUP BY supplier_name;