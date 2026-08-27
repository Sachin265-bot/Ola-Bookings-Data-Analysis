# Ola Bookings Data Analysis & Power BI Dashboard

## 1. Project Overview

This project analyzes one month (July 2024) of ride-booking data from Ola, covering over 103,000 bookings across multiple vehicle types. The dataset includes booking details, cancellation reasons, ride distances, payment methods, and customer/driver ratings.

The purpose of the analysis is to understand overall booking performance, identify patterns in ride cancellations, evaluate revenue across payment channels, and highlight customer and vehicle-type trends. The project demonstrates practical, end-to-end data analytics skills — from querying raw data with SQL to building an interactive Power BI dashboard for business reporting.

## 2. Business Problem / Objective

The analysis was designed to answer the following business questions:

- What is the overall booking volume and how does it trend over time?
- What proportion of bookings are successful versus cancelled (by customer, by driver, or due to driver unavailability)?
- What are the most common reasons rides get cancelled, from both the customer and driver side?
- How does booking value and ride distance vary across different vehicle types?
- Which payment methods generate the most revenue?
- Who are the top customers by total booking value?
- How do customer and driver ratings compare across vehicle types?

## 3. Tools & Technologies

| Tool | Purpose |
|---|---|
| Excel | Data preparation and analysis |
| SQL | Data querying and analysis |
| Power BI | Interactive dashboard and visualization |

## 4. Data Preparation & Cleaning

The raw dataset (`Bookings.csv`) contains 103,024 booking records with 19 fields, including booking status, cancellation reasons, ride distance, payment method, and ratings. Since several fields (such as cancellation reasons, VTAT/CTAT, and ratings) only apply depending on the booking outcome, a key part of the preparation involved:

- Identifying and handling missing/null values in fields that are conditional on booking status (e.g., cancellation reason fields are empty for successful rides, and rating/payment fields are empty for cancelled rides)
- Standardizing categorical fields such as `Booking_Status`, `Vehicle_Type`, and `Payment_Method` for consistent grouping and filtering
- Structuring the data so it could be queried directly with SQL and connected to Power BI for visualization

## 5. SQL Analysis

SQL was used to query the bookings dataset and build reusable views that power key business metrics. The queries were written to be easily reusable, with each analysis saved as a SQL `VIEW`.

**Key SQL Analysis:**

- Filtering successful bookings to isolate completed rides for revenue and performance analysis
- Aggregating average ride distance by vehicle type
- Counting cancelled rides by customers to quantify cancellation volume
- Ranking the top 5 customers by total number of rides booked
- Counting driver cancellations attributed to personal or vehicle-related issues
- Calculating minimum and maximum driver ratings for the Prime Sedan category
- Filtering all rides paid via UPI
- Calculating average customer rating per vehicle type
- Summing total booking value for successfully completed rides
- Listing incomplete rides along with their recorded reason

## 6. Power BI Dashboard

The Power BI dashboard is organized into five report pages, each focused on a specific area of the business: **Overall, Vehicle Type, Revenue, Cancellation, and Ratings.**

**Dashboard Highlights:**

- **Overall page** — KPI cards for Total Bookings (103,024) and Total Bookings Value, a date range slicer, a Booking Status Breakdown pie chart, and a Ride Volume Over Time line chart
- **Vehicle Type page** — A summary table comparing Total Booking Value, Success Booking Value, Average Distance Travelled, and Total Distance Travelled across all seven vehicle types (Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, E-Bike)
- **Revenue page** — A Revenue by Payment Method bar chart, a Top 5 Customers table ranked by total booking value, and a Ride Distance by Date bar chart
- **Cancellation page** — KPI cards for Total Bookings, Succeeded Bookings, Cancelled Bookings, and Cancellation Rate %, alongside two pie charts breaking down cancellation reasons by customer and by driver
- **Ratings page** — Comparison tables of average Customer Ratings and Driver Ratings across all vehicle types
- A consistent date range slicer (01-07-2024 to 31-07-2024) is used across report pages for filtering

## 7. Key Insights

- Out of 103,024 total bookings, 63,967 (62.09%) were successful, while the remaining bookings were cancelled by drivers (17.89%), cancelled by customers (10.19%), or resulted in a driver not being found (9.83%)
- The overall cancellation rate stood at 28.08%, with driver-side cancellations occurring at a notably higher rate than customer-side cancellations
- On the driver side, "Personal & car related issues" was the leading cause of cancellations (35.49%), followed by customer-related issues (29.36%)
- On the customer side, the top cancellation reason was the driver not moving toward the pickup location (30.24%), followed by the driver asking to cancel (25.43%)
- Cash and UPI were the dominant payment methods, generating ₹19.3M and ₹14.2M respectively, together accounting for the large majority of revenue, while credit and debit card usage was minimal (₹1.3M and ₹0.3M)
- Booking value was fairly evenly distributed across vehicle types (roughly ₹7.9M–₹8.3M each), indicating no single vehicle category dominated revenue
- Average ride distance was consistent across most 4-wheeler and 2-wheeler categories (~25 km), while Auto rides averaged a notably shorter distance (~10 km)
- Customer and driver ratings were consistently close to 4.0 across all vehicle types, showing stable service quality regardless of vehicle category

## 8. Project Workflow

**Raw Data → Excel/Data Preparation → SQL Analysis → Power BI → Insights**

- **Raw Data:** Ola bookings data for July 2024, collected at the individual ride level
- **Excel/Data Preparation:** Reviewing and organizing the dataset for consistency before analysis
- **SQL Analysis:** Writing structured queries and views to answer specific business questions around bookings, cancellations, and revenue
- **Power BI:** Building an interactive multi-page dashboard to visualize booking trends, cancellations, revenue, and ratings
- **Insights:** Translating the visualized data into business-relevant conclusions about performance and cancellation behavior

## 9. Skills Demonstrated

- Data Cleaning
- Data Analysis
- SQL Querying
- Data Visualization
- Dashboard Development
- KPI Analysis
- Business Intelligence
- Analytical Thinking

## 10. Project Files

- `Bookings.csv` — Raw Ola bookings dataset (103,024 records, July 2024)
- `Ola_Analysis_Queries.sql` — SQL queries and views used for data analysis
- `ola_power_bi.pbix` — Power BI dashboard file
- `ola_power_bi.pdf` — Exported view of the Power BI dashboard pages

## 11. Dashboard Preview

## Dashboard Preview

![Ola Bookings Dashboard](images/ola-dashboard.png)

Place the dashboard screenshot(s) inside an `images/` folder at the root of the repository (e.g., `images/ola-dashboard.png`) so the image renders correctly in this README.

## 12. How to Use

1. Download or clone the repository.
2. Open `Bookings.csv` to review the raw dataset.
3. Open `Ola_Analysis_Queries.sql` in your SQL environment to review the queries and views used for analysis.
4. Open `ola_power_bi.pbix` in Power BI Desktop to explore the interactive dashboard.
5. Refer to `ola_power_bi.pdf` for a quick visual preview of all dashboard pages without opening Power BI.

## 13. Conclusion

This project demonstrates the ability to take a raw, real-world-style dataset and carry it through a complete analytics workflow — from data preparation and SQL querying to building an interactive Power BI dashboard. It reflects a practical understanding of how booking, cancellation, revenue, and rating data can be structured and visualized to support business decision-making, forming a solid foundation for a Data Analyst role.

## 14. Author

**Sachin Kapoor**
Aspiring Data Analyst
Skills: Excel | SQL | Power BI | Tableau | Python
