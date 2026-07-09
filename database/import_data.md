# Importing Data into MySQL

This project uses MySQL and phpMyAdmin.

The dataset was imported from CSV files using the MySQL `LOAD DATA LOCAL INFILE` command.

Example:

```sql


LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/inventory.csv'
INTO TABLE inventory
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/sales.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/warehouses.csv'
INTO TABLE warehouses
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/purchase_orders.csv'
INTO TABLE purchase_orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;