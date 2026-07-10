/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 04_joins.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
JOINS
=========================================================
*/

/*
1. Show product names with their stock levels
*/
SELECT
    p.product_name,
    SUM(i.stock_on_hand)
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY p.product_name;

/* Alternative Solution */
SELECT
    p.product_name
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY p.product_name;


/*
2. Show warehouse names with inventory levels
*/

SELECT
    w.warehouse_name
FROM warehouses w
JOIN inventory i
    ON w.warehouse_id = i.warehouse_id
GROUP BY w.warehouse_name;

/*
3. Show product names and warehouse names for all inventory records
*/

SELECT
    p.product_name,
    w.warehouse_name
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id
JOIN warehouses w
    ON i.warehouse_id = w.warehouse_id;

/*
4. Show all sales transactions with product names
*/

SELECT
    p.product_name,
    s.sale_id
FROM sales s
JOIN products p
    ON s.product_id = p.product_id;

/*
5. Show all sales transactions with warehouse names
*/
SELECT
    w.warehouse_name,
    s.sale_id
FROM sales s
JOIN warehouses w
    ON s.warehouse_id = w.warehouse_id;

/*
6. Show purchase orders with product names
*/
SELECT
    p.product_name,
    po.po_id
FROM purchase_orders po
JOIN products p
    ON po.product_id = p.product_id;

/*
7. Show purchase orders with supplier names and product names
*/
SELECT
    po.po_id,
    po.supplier_name,
    p.product_name
FROM purchase_orders po
JOIN products p
    ON po.product_id = p.product_id;

/*
8. Display inventory value for each inventory record
*/
SELECT
    i.inventory_id,
    p.product_name,
    i.stock_on_hand,
    p.unit_cost
FROM inventory i
JOIN products p
    ON i.product_id = p.product_id;

/*
9. Show product category for every sales transaction
*/

SELECT
    p.category,
    s.sale_id
FROM sales s
JOIN products p
    ON s.product_id = p.product_id;

/*
10. Show warehouse location for every sales transaction
*/
SELECT
    w.warehouse_id,
    w.city,
    w.province,
    s.sale_id
FROM sales s
JOIN warehouses w
    ON s.warehouse_id = w.warehouse_id;