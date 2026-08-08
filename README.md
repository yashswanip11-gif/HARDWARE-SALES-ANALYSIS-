HARDWARE SALES AND REVENUE ANALYSIS

An end-to-end data analysis project leveraging MySQL and Power BI to clean, model, and visualize hardware transactional data across regional market zones, enabling revenue optimization and data-driven inventory allocation.

EXECUTIVE SUMMARY

This project addresses limited operational visibility into regional sales performance, product profitability, and customer segmentation. By extracting, validating, and transforming raw transactional records using MySQL, and modeling the data in Power BI, the resulting dashboard provides interactive tracking of revenue trends, profit margins, and sales volumes across key market zones.

TECH STACK AND TOOLS

* Database Management: MySQL / MySQL Workbench
* Data Visualization: Power BI Desktop (.pbix)
* Data Extraction and Processing: SQL, Excel

KEY PROJECT WORKFLOWS

1. Data Cleaning and Exploratory Data Analysis (EDA)
* Anomaly Detection: Identified records with invalid or non-positive sales amounts (sales_amount <= 0).
* Currency Normalization: Standardized mixed currency formats (e.g., converting duplicate string records like 'USD\r' / 'INR\r' into clean 'USD' and 'INR' values).
* SQL Aggregation: Joined transactional tables with the date dimension to compute yearly revenue and market-specific breakdowns (e.g., performance in Delhi NCR for 2019).
2. Data Modeling and Reporting
* Star Schema Design: Built relationships connecting fact records (transactions) to dimension tables (date, customers, markets, products).
* Interactive Visualizations:
* Top-level KPIs for Total Revenue, Sales Quantity, and Profit Margins.
* Regional segmentation across North, Central, and South market zones.
* Revenue breakdown by customer type (Brick & Mortar vs. E-Commerce) and product categories (Own Brand vs. Distribution).


DATABASE ARCHITECTURE

The underlying sales_new database dump consists of five core tables:

* transactions: Core fact table storing sales metrics (sales_amount, sales_qty, currency, profit_margin, cost_price).
* customers: Customer dimension data (customer_code, custmer_name, customer_type).
* markets: Regional market mapping (markets_code, markets_name, zone).
* products: Product catalog (product_code, product_type).
* date: Date and time-series dimension (date, year, month_name, date_yy_mmm).

REPOSITORY STRUCTURE

├── db_dump_version_2.sql       # MySQL database dump containing tables and raw data
├── hardware_sql_analysis.sql   # SQL scripts for data cleaning, validation, and EDA
├── hardware_sales.pbix         # Interactive Power BI dashboard report
└── README.md                   # Documentation

SETUP AND INSTALLATION

1. Database Import:
* Open MySQL Workbench.
* Import and execute db_dump_version_2.sql to instantiate the database schema and load raw data.
2. Data Validation:
* Run the queries in hardware_sql_analysis.sql to execute currency normalization and verify transactional integrity.
3. Dashboard Access:
* Launch hardware_sales.pbix using Power BI Desktop to explore the interactive visual reports.
