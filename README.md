 # 🚖 Ola Rides Booking Analysis & Dashboard   

An end-to-end data analytics project examining **103,000+ Ola ride bookings** for July 2024. This project analyzes ride completion rates, cancellation drivers, customer/driver satisfaction, and revenue realization using **Excel, SQL, and Power BI**.

---

## 📌 Executive Summary & Key KPIs (July 2024)

* **Total Bookings:** 103,024 rides
* **Successful Bookings:** 63,967 (62.09% completion rate)
* **Total Cancellations:** 28,933 (28.08% cancellation rate)
  * *Cancelled by Driver:* 18,434 (17.89%)
  * *Cancelled by Customer:* 10,499 (10.19%)
* **Driver Not Found:** 10,124 (9.83%)
* **Net Realized Revenue (Success Rides):** ₹35.08M *(Gross Value: ₹56.53M)*
* **Top Payment Channels:** Cash (₹19.3M) & UPI (₹14.2M)

---

## 🛠️ Tech Stack & Architecture

* **Microsoft Excel:** Raw data cleaning, missing value handling, and schema validation.
* **SQL Server / MySQL:** Analytical queries, aggregations, and business logic views.
* **Power BI:** Data modeling, DAX KPIs, and 5-page interactive report dashboard.

```text
Excel (Data Cleaning) ──> SQL Database (Views & Queries) ──> Power BI (Data Modeling & UI)
├── Data/
│   └── Bookings.csv                      # Processed Ola booking dataset (103k rows)
├── SQL_Queries/
│   └── ola_analysis_queries.sql          # 10 business problem views
├── PowerBI/
│   ├── ola_power_bi.pbix                 # Multi-page Power BI Dashboard file
│   ├── ola_power_bi.pdf                  # Exported PDF report
│   └── screenshots/                      # Exported report views
│       ├── 01_overall_overview.png
│       ├── 02_vehicle_type.png
│       ├── 03_revenue_analysis.png
│       ├── 04_cancellation_analysis.png
│       └── 05_ratings_breakdown.png
└── README.md

📊 Power BI Dashboard Breakdown
1. Overall Overview
* Ride Volume Over Time: Daily trend of ride requests (averaging ~3.2k–3.4k bookings/day).
* Booking Status Distribution: Pie chart breaking down Success (62.09%), Driver Cancellations (17.89%), Customer Cancellations (10.19%), and Unmatched Drivers (9.83%).

2. Vehicle Type Performance
* Fleet Breakdown: Evaluates Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, and E-Bike.
* Distance & Value: Auto rides average ~10 km per trip, while 4-wheelers/bikes average ~25 km per trip.
* Top Revenue Contributor: Prime Sedan generated the highest gross value (₹8.30M gross / ₹5.22M success).

3. Revenue & Payment Analysis
* Payment Methods: Cash accounts for ~55% of realized revenue, followed closely by UPI (~40%). Credit and Debit cards account for <5%.
* Top Customer Value: Identifies high-value customers (Top: CID785112 with ₹8,025 in bookings).
* Daily Ride Distance: Total distance trends per day (peaking at ~50.6k km on peak days).

4. Cancellation Deep-Dive
* Customer Reasons: Leading cause is "Driver not moving towards pickup location" (30.24%), followed by "Driver asked to cancel" (25.43%).
* Driver Reasons: Major cause is "Personal & Car related issue" (35.49%), followed by "Customer related issues" (29.36%).

5. Ratings Breakdown
* Driver Ratings: Stable across categories, averaging ~3.98 to 4.01 out of 5.0.
* Customer Ratings: Stable satisfaction scores averaging ~3.99 to 4.01 across all vehicle types.

🔍 SQL Views & Business Queries (ola_analysis_queries.sql)
| # | SQL View Name | Business Objective |

| 1 | Successful_Bookings | Filter all rides with Booking_Status = 'Success' 
| 2 | Average_Ride_Distance | Compute average ride distance per vehicle type 
| 3 | Cancelled_Rides_by_Customers | Calculate total rides cancelled directly by customers 
| 4 | Top_5_customers_highest_number_of_rides | Rank top 5 customers with highest total bookings 
| 5 | rides_cancelled_by_drivers | Filter driver cancellations caused by car/personal issues 
| 6 | Max_and_Min_Driver_Rating | Find maximum and minimum driver ratings for Prime Sedan 
| 7 | Rides_Using_UPI | Extract all bookings settled via UPI payment 
| 8 | Average_Customer_Rating | Calculate average customer rating per vehicle category 
| 9 | Revenue_Success_Bookings | Calculate total booking revenue from completed rides 
| 10 | incomplete_ride_reason | List incomplete rides along with specific logged reasons

How to Set Up & Run
 * Clone this repository:
   git clone [ https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis ]

 * Execute SQL Views:
   * Import Data/Bookings.csv into SQL Server or MySQL.
   * Run SQL_Queries/ola_analysis_queries.sql to generate all views.

 * Open Dashboard:
   * Launch PowerBI/ola_power_bi.pbix in Power BI Desktop to interact with slicers and visual filters.
