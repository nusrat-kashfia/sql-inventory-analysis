# Inventory & Supply Chain SQL Analysis

A portfolio project demonstrating practical SQL skills for **Supply Chain**, **Inventory Management**, and **Operations Analysis** using **MySQL**.

This project analyzes a simulated retail inventory dataset to answer real business questions related to inventory management, warehouse performance, sales analysis, purchase order analysis, and operational decision-making.

---

# Project Overview

This project simulates the work of a **Supply Chain Analyst** in a retail distribution company.

Using SQL, the project analyzes:

- Product performance
- Inventory management
- Sales performance
- Warehouse performance
- Purchase order analysis
- Supplier delivery analysis
- Business recommendations

The project progresses from fundamental SQL concepts to real-world business analysis.

---

# Project Highlights

- Solved **80+ SQL practice and business queries**
- Worked with **5 relational database tables**
- Analyzed inventory, sales, warehouse, and purchase order data
- Applied SQL to solve real business problems
- Generated business recommendations from analytical findings
- Built as part of a Supply Chain & Business Analytics portfolio

---

# Dataset

The project uses a simulated retail inventory dataset.

| Dataset | Records |
|----------|---------:|
| Products | 100 |
| Warehouses | 5 |
| Inventory | 200 |
| Sales | 1,000 |
| Purchase Orders | 300 |

---

# Technologies Used

- MySQL 8
- phpMyAdmin
- SQL
- CSV
- GitHub

---

# Project Structure

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

The project consists of five relational tables:

- Products
- Warehouses
- Inventory
- Sales
- Purchase Orders

Primary and foreign keys are used to connect product, warehouse, inventory, sales, and purchase order information.

> **Database Schema**

*(Add `database/schema.png` here once created.)*

```markdown
![Database Schema](database/schema.png)
```

---

# SQL Skills Demonstrated

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

## Data Analysis

- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Date Functions
- CASE Statements

## Business Analysis

- Inventory Analysis
- Sales Analysis
- Warehouse Analysis
- Purchase Order Analysis
- Inventory Valuation
- Business KPI Analysis

---

# Business Questions Answered

Examples of business questions solved in this project include:

- Which products are below their reorder point?
- Which products generate the highest revenue?
- Which warehouses hold the highest inventory?
- Which warehouse generates the highest revenue?
- Which product categories sell the most units?
- Which suppliers account for the highest purchasing spend?
- Which suppliers have the longest average delivery lead time?
- Which products are slow-moving?
- Which products should be reordered?
- Which products appear to be overstocked?

---

# Portfolio Case Study

The final section of the project focuses on solving practical business problems.

The analysis includes:

- Products at risk of stock-out
- Inventory value analysis
- Slow-moving inventory
- Warehouse inventory analysis
- Sales performance analysis
- Purchase order delivery analysis
- Purchasing recommendations
- Inventory optimization recommendations

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

Detailed import instructions are available in:

```text
database/import_data.md
```

---

# Key Business Insights

The SQL analysis identified several operational insights, including:

- Products below their reorder points requiring replenishment
- High-value inventory requiring closer monitoring
- Slow-moving products contributing to excess inventory
- Warehouse inventory distribution
- Supplier delivery performance trends
- Sales performance across different product categories

---

# Business Recommendations

Based on the analysis, the following recommendations were developed:

- Prioritize replenishment for products below reorder point.
- Reduce purchasing for slow-moving products.
- Monitor inventory value to reduce holding costs.
- Review supplier delivery performance regularly.
- Optimize warehouse inventory distribution.
- Use sales trends to improve purchasing decisions.

Detailed recommendations are available in:

```text
docs/business_recommendations.md
```

---

# Future Improvements

Future enhancements for this project include:

- Window Functions
- Common Table Expressions (CTEs)
- Views
- Stored Procedures
- Inventory ABC Classification
- Interactive Excel Dashboard
- Interactive Power BI Dashboard

---

# Related Projects

This repository is part of a complete Supply Chain Analytics portfolio.

- SQL Inventory & Supply Chain Analysis
- Excel Inventory Dashboard *(In Progress)*
- Power BI Inventory Dashboard *(Planned)*

---

# About This Project

This project was created to demonstrate practical SQL skills applied to inventory and supply chain business scenarios using a simulated retail dataset.

The objective is to demonstrate the ability to:

- Analyze business data using SQL
- Solve operational business problems
- Generate meaningful business insights
- Support business decision-making through data analysis

---

# Author

**Nusrat Jahan Kashfia**

**Master of Engineering (Quality Systems Engineering)**  
Concordia University

**Areas of Interest**

- Supply Chain Management
- Inventory Management
- Procurement
- Operations Analysis
- Business Analytics
- Data Analytics

---

⭐ *If you found this project interesting or helpful, feel free to explore the repository or connect with me on LinkedIn.*