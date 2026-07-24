# Sales Data Engineering Pipeline

End-to-end ETL pipeline built on the Online Retail dataset, demonstrating 
core data engineering concepts using Python, MySQL, and PySpark.

## Tech Stack
- Python (Pandas)
- MySQL
- PySpark
- SQLAlchemy

## Pipeline Flow
1. **Extract**: Raw sales data (500K+ records) loaded from CSV
2. **Transform**: Cleaned missing values, converted date formats, 
   engineered Revenue column using Pandas
3. **Load**: Transformed data loaded into MySQL database using SQLAlchemy
4. **Analyze**: Business insights (top products, monthly trends, top 
   customers) extracted using both SQL queries and PySpark DataFrame 
   operations

## Key Insights Generated
- Top 10 revenue-generating products
- Country-wise sales distribution
- Monthly sales trends
- Top customers by spend

## What I Learned
This project helped me understand how raw data moves through a 
pipeline into a queryable warehouse, and how the same transformation 
logic can be implemented in both SQL and distributed processing 
frameworks like PySpark.
