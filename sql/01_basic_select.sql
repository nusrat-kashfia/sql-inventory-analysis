/*
=========================================
Inventory & Supply Chain SQL Analysis
Section: Basic SELECT & Filtering
=========================================
*/

/*
1. Display all products
*/

SELECT *
FROM products;


/*
2. Show product names and categories
*/

SELECT
    product_name,
    category
FROM products;


/*
3. Find all products in the Electronics category
*/

SELECT *
FROM products
WHERE category = 'Electronics';


/*
4. Find products with a unit cost greater than $100
*/

SELECT *
FROM products
WHERE unit_cost > 100;


/*
5. Find products with a reorder point below 50
*/

SELECT *
FROM products
WHERE reorder_point < 50;

/*
6. Display the 10 most expensive products
*/

SELECT
    product_id,
    product_name,
    unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10;


/*
7. Display the 10 cheapest products
*/

SELECT
    product_id,
    product_name,
    unit_price
FROM products
ORDER BY unit_price ASC
LIMIT 10;


/*
8. Find products whose safety stock is greater than 50
*/

SELECT *
FROM products
WHERE safety_stock > 50;


/*
9. Sort products by category and then by price
*/

SELECT *
FROM products
ORDER BY category ASC,
         unit_price ASC;


/*
10. Count the total number of products
*/

SELECT COUNT(product_id) AS total_products
FROM products;