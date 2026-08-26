# 🚖 Ola Rides Booking Analysis & Dashboard

An end-to-end data analytics project examining **103,000+ Ola ride bookings** for July 2024. This project analyzes ride completion rates, cancellation drivers, customer/driver satisfaction, and revenue realization using **Excel, SQL, and Power BI**[span_2](start_span)[span_2](end_span)[span_3](start_span)[span_3](end_span).

---

## 📌 Executive Summary & Key KPIs (July 2024)

* **Total Bookings:** 103,024 rides[span_4](start_span)[span_4](end_span)
* **Successful Bookings:** 63,967 (62.09% completion rate)[span_5](start_span)[span_5](end_span)
* **Total Cancellations:** 28,933 (28.08% cancellation rate)[span_6](start_span)[span_6](end_span)
  * *Cancelled by Driver:* 18,434 (17.89%)[span_7](start_span)[span_7](end_span)
  * *Cancelled by Customer:* 10,499 (10.19%)[span_8](start_span)[span_8](end_span)
* **Driver Not Found:** 10,124 (9.83%)[span_9](start_span)[span_9](end_span)
* **Net Realized Revenue (Success Rides):** ₹35.08M *(Gross Value: ₹56.53M)*[span_10](start_span)[span_10](end_span)
* **Top Payment Channels:** Cash (₹19.3M) & UPI (₹14.2M)[span_11](start_span)[span_11](end_span)

---

## 🛠️ Tech Stack & Architecture

* **Microsoft Excel:** Raw data cleaning, missing value handling, and schema validation.
* **SQL Server / MySQL:** Analytical queries, aggregations, and business logic views[span_12](start_span)[span_12](end_span).
* **Power BI:** Data modeling, DAX KPIs, and 5-page interactive report dashboard[span_13](start_span)[span_13](end_span)[span_14](start_span)[span_14](end_span).

```text
Excel (Data Cleaning) ──> SQL Database (Views & Queries) ──> Power BI (Data Modeling & UI)

📊 Power BI Dashboard Breakdown
 * 1. Overall Overview: Daily trend of ride requests (averaging ~3.2k–3.4k bookings/day) along with booking status distribution across completed and cancelled rides.
 * 2. Vehicle Type Performance: Fleet breakdown across 7 vehicle categories; Auto averages ~10 km/trip while 4-wheelers/bikes average ~25 km/trip. Prime Sedan leads total gross value.
 * 3. Revenue & Payment Analysis: Cash accounts for ~55% of realized revenue, followed by UPI (~40%). High-value customers and daily distance trends.
 * 4. Cancellation Deep-Dive: Primary customer reason is Driver not moving towards pickup (30.24%). Primary driver reason is Personal & Car related issues (35.49%).
 * 5. Ratings Breakdown: Driver ratings average 3.98–4.01/5.0 and customer ratings average 3.99–4.01/5.0 across all vehicle types.
🔍 SQL Views & Business Queries (Sql query/Ola_Analysis_Queries.sql)
| # | SQL View Name | Business Objective |
|---|---|---|
| 1 | Successful_Bookings | Filter all rides with Booking_Status = 'Success' |
| 2 | Average_Ride_Distance | Compute average ride distance per vehicle type |
| 3 | Cancelled_Rides_by_Customers | Calculate total rides cancelled directly by customers |
| 4 | Top_5_customers_highest_number_of_rides | Rank top 5 customers with highest total bookings |
| 5 | rides_cancelled_by_drivers | Filter driver cancellations caused by car/personal issues |
| 6 | Max_and_Min_Driver_Rating | Find maximum and minimum driver ratings for Prime Sedan |
| 7 | Rides_Using_UPI | Extract all bookings settled via UPI payment |
| 8 | Average_Customer_Rating | Calculate average customer rating per vehicle category |
| 9 | Revenue_Success_Bookings | Calculate total booking revenue from completed rides |
| 10 | incomplete_ride_reason | List incomplete rides along with specific logged reasons |

🚀 How to Set Up & Run
 * Clone this repository:
   git clone [https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git](https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git)

 * Execute SQL Views:
   * Import Bookings.csv into SQL Server or MySQL.
   * Run the script inside Sql query/Ola_Analysis_Queries.sql to generate all views.

 * Open Dashboard:
   * Launch Ola Power BI/ola power bi.pbix in Power BI Desktop to interact with visual filters.
