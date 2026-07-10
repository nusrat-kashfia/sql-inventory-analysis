/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 02_aggregate_functions.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
Aggregate Functions
=========================================================
*/


/*
1. Calculate the average unit cost of all products
*/

SELECT
    AVG(unit_cost) AS average_unit_cost
FROM products;

/*
2. Find the highest product price
*/
SELECT
    MAX(unit_price) AS highest_product_price
FROM products;

/*
3. Find the lowest product price
*/
SELECT
    MIN(unit_price) AS lowest_product_price
FROM products;

/*
4. Calculate the total stock on hand across all warehouses
*/

SELECT
    SUM(stock_on_hand) AS total_stock_on_hand
FROM inventory;

/*
5. Count the total number of sales transactions
*/

SELECT
    COUNT(sale_id) AS total_sales_transactions
FROM sales;

/*
6. Calculate total sales revenue
*/
SELECT
    SUM(revenue) AS total_sales_revenue
FROM sales;


/*
7. Calculate the average revenue per sale
*/
SELECT
    AVG(revenue) AS average_revenue_per_sale
FROM sales;


/*
8. Find the total quantity sold
*/
SELECT
    SUM(quantity_sold) AS total_quantity_sold
FROM sales;


/*
9. Count the number of purchase orders
*/
SELECT
    COUNT(po_id) AS total_purchase_orders
FROM purchase_orders;