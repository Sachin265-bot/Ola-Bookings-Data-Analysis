# 🚖 Ola Rides Booking Analysis & Interactive Dashboard

An end-to-end data analytics project examining **103,024 Ola ride bookings** for July 2024 (Bengaluru)[span_0](start_span)[span_0](end_span)[span_1](start_span)[span_1](end_span). This repository includes raw data cleaning, business-level SQL queries/views, and an interactive 5-page Power BI dashboard to analyze ride completion rates, cancellation drivers, customer/driver satisfaction, and revenue realization[span_2](start_span)[span_2](end_span)[span_3](start_span)[span_3](end_span).

---

## 📌 Executive Summary & Key KPIs (July 2024)

* **Total Bookings:** 103,024 rides[span_4](start_span)[span_4](end_span)
* **Successful Rides:** 63,967 (62.09% completion rate)[span_5](start_span)[span_5](end_span)
* **Total Cancellations:** 28,933 (28.08% overall cancellation rate)[span_6](start_span)[span_6](end_span)
  * *Cancelled by Driver:* 18,434 (17.89%)[span_7](start_span)[span_7](end_span)
  * *Cancelled by Customer:* 10,499 (10.19%)[span_8](start_span)[span_8](end_span)
* **Driver Not Found:** 10,124 (9.83%)[span_9](start_span)[span_9](end_span)
* **Net Realized Revenue:** ₹35.08M *(Total Gross Booking Value: ₹56.53M)*
* **Top Payment Channels:** Cash (₹19.3M, ~55%) & UPI (₹14.2M, ~40%)[span_10](start_span)[span_10](end_span)

---

## 🛠️ Tech Stack & Architecture

* **Microsoft Excel / CSV (`Bookings.csv`):** Raw dataset handling, schema validation, and data cleaning[span_11](start_span)[span_11](end_span)[span_12](start_span)[span_12](end_span).
* **SQL Server / MySQL (`Ola_Analysis_Queries.sql`):** Analytical views, business KPI aggregations, and filtered subqueries[span_13](start_span)[span_13](end_span)[span_14](start_span)[span_14](end_span).
* **Power BI (`ola power bi.pbix`):** Data modeling, DAX measures, and a 5-page interactive dashboard[span_15](start_span)[span_15](end_span)[span_16](start_span)[span_16](end_span)[span_17](start_span)[span_17](end_span).

```text
Bookings.csv (Data Cleaning) ──> Ola_Analysis_Queries.sql (Views & Logic) ──> ola power bi.pbix (Interactive UI)

📊 Power BI Dashboard Breakdown & Questions Solved
The Power BI report (ola power bi.pbix) is organized into 5 interactive dashboard pages:
1. Overall View
 * Q1. Ride Volume Over Time: Time-series trend of daily bookings (~3.2k–3.4k rides/day).
 * Q2. Booking Status Breakdown: Donut chart showing distribution across Success, Driver Cancelled, Customer Cancelled, and Driver Not Found.
2. Vehicle Type View
 * Q3. Fleet Performance & Ride Distance: Performance breakdown across 7 vehicle types (Auto, Prime Sedan, Prime SUV, Prime Plus, Mini, Bike, E-Bike). Auto averages ~10 km/trip while 4-wheelers and bikes average ~25 km/trip. Prime Sedan leads total booking value.
3. Revenue View
 * Q6. Revenue by Payment Method: Realized revenue split across Cash (₹19.3M), UPI (₹14.2M), Credit Card (₹1.3M), and Debit Card (₹0.3M).
 * Q7. Top 5 Customers by Booking Value: Highest spenders ranked (led by CID785112 with ₹8,025).
 * Q8. Ride Distance Distribution Per Day: Day-wise total distance travelled across July 2024.
4. Cancellation Deep-Dive
 * Q5. Cancelled Rides Reasons:
   * Top Customer Reason: Driver is not moving towards pickup location (30.24%), followed by Driver asked to cancel (25.43%).
   * Top Driver Reason: Personal & Car related issues (35.49%), followed by Customer related issues (29.36%).
5. Ratings View
 * Q4, Q9 & Q10. Customer vs. Driver Ratings:
   * Average Customer Rating: 3.99 – 4.01 / 5.0 across all vehicle types.
   * Average Driver Rating: 3.98 – 4.01 / 5.0 across all vehicle types.

🔍 SQL Views & Business Queries (Ola_Analysis_Queries.sql)
| # | SQL View Name | Business Objective / Question Addressed |
|---|---|---|
| 1 | Successful_Bookings | Retrieve all successful bookings (Booking_Status = 'Success') |
| 2 | Average_Ride_Distance | Find the average ride distance for each vehicle category |
| 3 | Cancelled_Rides_by_Customers | Calculate total rides cancelled directly by customers |
| 4 | Top_5_customers_highest_number_of_rides | Rank top 5 customers with highest total bookings |
| 5 | rides_cancelled_by_drivers | Filter driver cancellations caused by car/personal issues |
| 6 | Max_and_Min_Driver_Rating | Find maximum and minimum driver ratings for Prime Sedan |
| 7 | Rides_Using_UPI | Extract all bookings settled via UPI payment |
| 8 | Average_Customer_Rating | Calculate average customer rating per vehicle type |
| 9 | Revenue_Success_Bookings | Calculate total booking revenue from completed rides |
| 10 | incomplete_ride_reason | List incomplete rides along with specific logged reasons |

🚀 How to Set Up & Run
 * Clone this repository:
   git clone [https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git](https://github.com/Sachin265-bot/Ola-Bookings-Data-Analysis.git)

 * Execute SQL Views:
   * Import Bookings.csv into SQL Server or MySQL.
   * Run the queries inside Ola_Analysis_Queries.sql to generate all views.
 * Open Dashboard:
   * Open ola power bi.pbix in Power BI Desktop to view and interact with all 5 pages and slicers.


