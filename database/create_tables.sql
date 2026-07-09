CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_cost DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    reorder_point INT,
    safety_stock INT
);

CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY,
    warehouse_name VARCHAR(100),
    city VARCHAR(50),
    province VARCHAR(50)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    stock_on_hand INT,
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    sale_date DATE,
    quantity_sold INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);

CREATE TABLE purchase_orders (
    po_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    product_id INT,
    order_date DATE,
    expected_delivery_date DATE,
    actual_delivery_date DATE,
    quantity_ordered INT,
    quantity_received INT,
    purchase_cost DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);