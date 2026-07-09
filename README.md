# Inventory & Supply Chain SQL Analysis

A portfolio project demonstrating SQL skills for **Procurement**, **Supply Chain**, and **Operations Analyst** roles.

This project analyzes inventory, sales, warehouse, and procurement data using MySQL to answer real business questions related to inventory management, supplier performance, and operational decision-making.

---

## Project Overview

The project simulates the work of a Supply Chain Analyst in a retail distribution company.

Using SQL, the project explores:

- Product performance
- Inventory management
- Sales analysis
- Warehouse performance
- Procurement analysis
- Supplier performance
- Business recommendations

The analysis progresses from basic SQL queries to more advanced business-oriented analytical questions.

---

## Dataset

The project uses a simulated retail inventory dataset.

| Dataset         | Records |
|-----------------|---------:|
| Products        | 100 |
| Warehouses      | 05 |
| Inventory       | 200 |
| Sales           | 1,000 |
| Purchase Orders | 300 |

---

## Technologies Used

- MySQL 8
- phpMyAdmin
- SQL
- CSV
- GitHub

---

## Project Structure

```text
sql-inventory-analysis/
│
├── README.md
│
├── data/
│   ├── products.csv
│   ├── warehouses.csv
│   ├── inventory.csv
│   ├── sales.csv
│   └── purchase_orders.csv
│
├── database/
│   ├── create_tables.sql
│   ├── import_data.md
│   └── schema.png
│
├── sql/
│   ├── 01_basic_select.sql
│   ├── 02_aggregate_functions.sql
│   ├── 03_group_by.sql
│   ├── 04_joins.sql
│   ├── 05_business_questions.sql
│   ├── 06_procurement_analysis.sql
│   ├── 07_analyst_challenges.sql
│   ├── 08_advanced_sql.sql
│   └── 09_portfolio_case_study.sql
│
├── screenshots/
│
└── docs/
    └── business_recommendations.md
```

---

# Database Design

The project uses five relational tables.

- Products
- Warehouses
- Inventory
- Sales
- Purchase Orders

Relationships are created using Product ID and Warehouse ID.

---

# Skills Demonstrated

## SQL Fundamentals

- SELECT
- WHERE
- ORDER BY
- LIMIT

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## GROUP BY

- Business aggregation
- Category analysis
- Warehouse analysis
- Supplier analysis

## Joins

- INNER JOIN
- LEFT JOIN

## Business Analysis

- Inventory valuation
- Sales performance
- Procurement analysis
- Supplier analysis
- Warehouse analysis

---

# Business Questions Answered

The project answers business questions such as:

- Which products are below their reorder point?
- Which products generate the highest revenue?
- Which warehouses hold the most inventory?
- Which warehouse generates the highest revenue?
- Which categories sell the most units?
- Which supplier has the highest purchasing spend?
- Which supplier has the longest delivery lead time?
- Which products are slow-moving?
- Which products should be reordered?
- Which products are overstocked?

---

# Portfolio Case Study

The final section focuses on solving real business problems.

The analysis includes:

- Products at risk of stock-out
- Slow-moving inventory
- Inventory value analysis
- Warehouse inventory analysis
- Category revenue analysis
- Supplier delivery performance
- Purchasing recommendations
- Inventory optimization recommendations

---

# Sample SQL Concepts Used

- Filtering
- Sorting
- Aggregate Functions
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Date Functions
- CASE Statements
- Inventory KPIs

---

# Importing the Dataset

The dataset was imported into MySQL using CSV files.

Example:

```sql
LOAD DATA LOCAL INFILE 'C:/Users/Kashfia/Downloads/sql_inventory_project/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

Detailed instructions are available in:

```text
database/import_data.md
```

---

# Key Business Insights

Examples of insights generated during the analysis:

- Products below reorder point were identified for replenishment.
- High inventory value products were identified.
- Slow-moving inventory was detected.
- Warehouse inventory distribution was analyzed.
- Supplier purchasing trends were evaluated.
- Sales performance was analyzed across product categories.

---

# Future Improvements

Future enhancements could include:

- Window Functions
- Common Table Expressions (CTEs)
- Views
- Stored Procedures
- Inventory ABC Classification
- Power BI Dashboard
- Excel Dashboard

---

# About This Project

This project was created as part of a learning portfolio for entry-level Procurement, Supply Chain, and Operations Analyst roles.

The objective is to demonstrate the ability to:

- Analyze business data using SQL
- Solve operational business problems
- Generate meaningful business insights
- Present analytical findings through structured SQL queries

---

## Author

**Nusrat Jahan Kashfia**

Master of Engineering (Quality Systems Engineering)  
Concordia University

Interested in:

- Procurement
- Supply Chain
- Operations
- Business Analytics
