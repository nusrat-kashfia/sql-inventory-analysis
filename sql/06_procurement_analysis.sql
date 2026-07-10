/*
=========================================================
Project : Inventory & Supply Chain SQL Analysis
File    : 06_procurement_analysis.sql
Author  : Nusrat Jahan Kashfia
Database: MySQL 8
=========================================================
*/

/*
=========================================================
Procurement & Supply Chain Analysis
=========================================================
*/

/*
1. Which supplier has the most purchase orders?
*/
SELECT
    po.supplier_name,
    COUNT(po.po_id) AS total_orders
FROM purchase_orders po
GROUP BY po.supplier_name;

/*
2. Which supplier has the highest total purchasing spend?
*/
SELECT
    po.supplier_name,
    SUM(po.purchase_cost) AS total_purchase_spend
FROM purchase_orders po
GROUP BY po.supplier_name
ORDER BY total_purchase_spend DESC;

/*
3. Which supplier has the longest average lead time?
*/
SELECT
    supplier_name,
    AVG(actual_delivery_date - expected_delivery_date) AS lead_time
FROM purchase_orders
GROUP BY supplier_name
ORDER BY lead_time DESC;

/*
4. Which supplier has the shortest average lead time?
*/
SELECT
    supplier_name,
    AVG(actual_delivery_date - expected_delivery_date) AS lead_time
FROM purchase_orders
GROUP BY supplier_name
ORDER BY lead_time ASC;

/*
5. How many late deliveries did each supplier have?
*/
SELECT
    supplier_name,
    COUNT(*) AS late_deliveries
FROM purchase_orders
WHERE actual_delivery_date > expected_delivery_date
GROUP BY supplier_name
ORDER BY late_deliveries DESC;

/*
6. Which supplier has the highest percentage of late deliveries?
*/

--------------------------------------------------------

/*
7. Which products are purchased most frequently?
*/
SELECT
    product_id,
    SUM(quantity_ordered) AS total_purchased
FROM purchase_orders
GROUP BY product_id
ORDER BY total_purchased DESC;


/*
8. Which products have the highest purchase cost?
*/

SELECT
    product_id,
    SUM(purchase_cost)
FROM purchase_orders
GROUP BY product_id
ORDER BY purchase_cost DESC;

/*
9. Which products have the largest gap between quantity ordered
   and quantity received?
*/


--------------------------------------------------------

/*
10. Which suppliers consistently deliver complete orders?
*/

--------------------------------------------------------