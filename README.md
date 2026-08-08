Hardware Sales & Revenue Analysis
Overview
This repository contains an end-to-end data analysis project focused on evaluating hardware sales performance across various market zones in India. Using MySQL for data extraction, cleaning, and transformation, alongside Power BI for dynamic reporting, this project resolves transactional data anomalies (e.g., currency mismatches and invalid values) and delivers key business KPIs to drive strategic decision-making. 
Tech Stack & Tools
•	Database: MySQL / MySQL Workbench 
•	Visualization: Power BI Desktop (.pbix) 
•	Data Processing: SQL, Excel 
Key Features & Process
1. Data Extraction & Exploratory SQL Analysis
•	Dataset Exploration: Analyzed raw transactional tables (transactions, customers, products, markets, date). 
•	Data Cleaning & Normalization:
o	Identified and normalized currency string formatting inconsistencies (e.g., converting duplicate occurrences like 'USD\r' / 'INR\r' into standardized 'USD' / 'INR' records). 
o	Filtered out corrupted records with invalid or non-positive sales amounts (sales_amount <= 0). 
•	SQL Queries: Joined transactional tables with date dimensions to compute yearly performance and market-specific aggregation (e.g., revenue generated in Delhi NCR in 2019). 
2. Data Modeling & Power BI Visualization
•	Star Schema Data Model: Established relationships between central transaction facts and dimension tables (date, customers, markets, products). 
•	Interactive Dashboards:
o	Real-time tracking of Total Revenue, Sales Quantity, and Profit Margins. 
o	Regional performance segmentation by market zone (North, Central, South). 
o	Top-performing customers and products by revenue contribution. 
Database Schema Overview
The MySQL dump (sales_new) consists of five primary tables: 
•	transactions: Core facts table containing sales_amount, sales_qty, currency, profit_margin, and cost_price. 
•	customers: Dimension table tracking customer codes, names, and store types (Brick & Mortar vs. E-Commerce). 
•	markets: Regional dimension mapping market codes to city names and zones. 
•	products: Product catalog categorizing items as Own Brand or Distribution. 
•	date: Time-series dimension table supporting fiscal and calendar year aggregation. 
Project Structure
Plaintext
├── db_dump_version_2.sql       # MySQL database dump containing all tables and raw data
├── hardware_sql_analysis.sql   # SQL scripts for data cleaning, validation, and EDA
├── hardware_sales.pbix         # Power BI dashboard file with visual reports and measures
└── README.md                   # Project documentation
How to Run This Project
1.	Set Up the Database:
o	Open MySQL Workbench or your SQL terminal.
o	Import and execute db_dump_version_2.sql to instantiate the sales_new database. 
2.	Run Data Cleaning Queries:
o	Open hardware_sql_analysis.sql to execute the data validation and currency cleaning scripts. 
3.	Explore the Power BI Dashboard:
o	Open hardware_sales.pbix in Power BI Desktop. 
o	Ensure local database credentials are configured if refreshing the data sou

