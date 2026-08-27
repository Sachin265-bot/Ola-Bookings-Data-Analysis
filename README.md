# 🚖 Ola Rides Booking Analysis & Interactive Dashboard

An end-to-end data analytics project examining **103,024 Ola ride bookings** for July 2024 (Bengaluru). This repository includes raw data cleaning, business-level SQL queries/views, and an interactive 5-page Power BI dashboard analyzing ride completion rates, cancellation drivers, customer/driver satisfaction, and revenue realization.

---

## 📌 Executive Summary & Key KPIs (July 2024)

| Metric | Value | Details / Share |
|---|---|---|
| **Total Bookings** | 103,024 rides | Full dataset for July 2024 |
| **Successful Bookings** | 63,967 rides | 62.09% completion rate |
| **Total Cancellations** | 28,933 rides | 28.08% overall cancellation rate |
| **Cancelled by Driver** | 18,434 rides | 17.89% of total bookings |
| **Cancelled by Customer** | 10,499 rides | 10.19% of total bookings |
| **Driver Not Found** | 10,124 rides | 9.83% of total bookings |
| **Net Realized Revenue** | ₹35.08M | Gross Booking Value: ₹56.53M |
| **Top Payment Methods** | Cash & UPI | Cash: ₹19.3M (~55%), UPI: ₹14.2M (~40%) |

---

## 🛠️ Tech Stack & Architecture

* **Microsoft Excel / CSV (`Bookings.csv`):** Raw dataset handling, schema validation, and data cleaning.
* **SQL Server / MySQL (`Ola_Analysis_Queries.sql`):** Analytical views, business KPI aggregations, and filtered subqueries.
* **Power BI (`ola power bi.pbix`):** Data modeling, DAX measures, and a 5-page interactive dashboard.

```text
Bookings.csv (Data Cleaning) ──> Ola_Analysis_Queries.sql (Views & Logic) ──> ola power bi.pbix (Interactive UI)

  
📊 Power BI Dashboard Breakdown & Questions Solved
| # | Power BI Question / Visual | Dashboard Page | Visual Type | Key Metric / Business Insight |
|---|---|---|---|---|
| Q1 | Ride Volume Over Time | Overall View | Line Chart | Daily booking volume trends (~3,200 to 3,400 rides/day) |
| Q2 | Booking Status Breakdown | Overall View | Donut Chart | Success (62.09%), Driver Cancelled (17.89%), Customer Cancelled (10.19%), Driver Not Found (9.83%) |
| Q3 | Fleet Performance & Distance | Vehicle Type View | Matrix / Table | Auto averages ~10 km/trip; 4-wheelers & bikes average ~25 km/trip; Prime Sedan leads total gross value |
| Q4 | Average Customer Ratings | Ratings View | Bar / Matrix | Customer ratings consistently average between 3.99 – 4.01 / 5.0 across all vehicle categories |
| Q5 | Cancelled Rides Reasons | Cancellation View | Pie / Donut Charts | Customer: Driver not moving (30.24%), Driver asked to cancel (25.43%)
Driver: Personal & Car issues (35.49%), Customer issues (29.36%) |
| Q6 | Revenue by Payment Method | Revenue View | Column Chart | Cash dominates with ₹19.3M (~55%), followed by UPI with ₹14.2M (~40%) |
| Q7 | Top 5 Customers by Booking Value | Revenue View | Table / Leaderboard | Top spenders ranked (Led by Customer CID785112 with ₹8,025) |
| Q8 | Ride Distance Distribution Per Day | Revenue View | Column Chart | Day-wise aggregate distance covered across July 2024 |
| Q9 | Driver Rating Distribution | Ratings View | Bar / Matrix | Driver ratings average between 3.98 – 4.01 / 5.0 across vehicle categories |
| Q10 | Customer vs. Driver Ratings | Ratings View | Comparative Visual | Uniform distribution of ratings across all 7 fleet types |
🔍 SQL Views & Business Queries (Ola_Analysis_Queries.sql)
| # | SQL View Name | Business Objective / Question Addressed |
|---|---|---|
| 1 | Successful_Bookings | Retrieve all successful bookings (Booking_Status = 'Success') |
| 2 | Average_Ride_Distance | Find the average ride distance for each vehicle category |
| 3 | Cancelled_Rides_by_Customers | Calculate total rides cancelled directly by customers |
| 4 | Top_5_customers_highest_number_of_rides | List top 5 customers with the highest total ride count |
| 5 | rides_cancelled_by_drivers | Filter driver cancellations caused by car/personal issues |
| 6 | Max_and_Min_Driver_Rating | Find maximum and minimum driver ratings for Prime Sedan bookings |
| 7 | Rides_Using_UPI | Extract all ride bookings completed using UPI payment |
| 8 | Average_Customer_Rating | Calculate the average customer rating per vehicle type |
| 9 | Revenue_Success_Bookings | Calculate total booking revenue generated from completed rides |
| 10 | incomplete_ride_reason | List all incomplete rides along with their specific logged reasons |
 

🚀 How to Set Up & Run
 * Clone the Repository:
   git clone [https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git](https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git)

 * Execute SQL Views:
   * Import Bookings.csv into SQL Server or MySQL.
   * Run the queries inside Ola_Analysis_Queries.sql to generate all views.
 * Open Dashboard:
   * Open ola power bi.pbix in Power BI Desktop to view and interact with all 5 pages and slicers.


