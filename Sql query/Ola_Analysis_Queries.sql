create database ola;
use ola;
select * from Bookings;

--1. Retrieve all successful bookings: 
create view Successful_Bookings as
select * from Bookings
where Booking_Status = 'Success';
select * from Successful_Bookings;

--2. Find the average ride distance for each vehicle type: 
create view Average_Ride_Distance as
select Vehicle_Type, AVG(Ride_Distance) as Ride_Distance from Bookings
Group by Vehicle_Type;
select * from Average_Ride_Distance;

--3. Get the total number of cancelled rides by customers:
create view Cancelled_Rides_by_Customers as
select COUNT (*) as Cancelled_Bookings  from Bookings
where Booking_Status = 'Canceled by Customer';
select * from Cancelled_Rides_by_Customers;

--4. List the top 5 customers who booked the highest number of rides: 
create view Top_5_customers_highest_number_of_rides as
select Top 5 Customer_ID, Count (Booking_ID) as Total_Rides  from Bookings
group by Customer_ID
order by Total_Rides  desc;
select * from Top_5_customers_highest_number_of_rides;

--5. Get the number of rides cancelled by drivers due to personal and car-related issues: 
Create view rides_cancelled_by_drivers as
select * from Bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue'
select * from  rides_cancelled_by_drivers;

--6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
Create view Max_and_Min_Driver_Rating as 
select MIN(Driver_Ratings) as Min_Dri_Ratings, 
MAX(Driver_Ratings) as Max_Dri_Ratings from Bookings
where Vehicle_Type= 'Prime Sedan';
Select * from Max_and_Min_Driver_Rating;

--7. Retrieve all rides where payment was made using UPI:
Create view Rides_Using_UPI as 
select * from Bookings
where Payment_Method= 'UPI'
Select * from Rides_Using_UPI;

--8. Find the average customer rating per vehicle type: 
Create view Average_Customer_Rating as 
select vehicle_Type, AVG(Customer_Rating) as Avg_Customer_rating from Bookings
Group by vehicle_Type
Select * from Average_Customer_Rating;

--9. Calculate the total booking value of rides completed successfully: 
Create view Revenue_Success_Bookings as 
select sum (Booking_Value)as Total_Success_value from Bookings
where Booking_Status= 'success'
Select * from Revenue_Success_Bookings;

--10. List all incomplete rides along with the reason:
create view incomplete_ride_reason as
select Booking_Id,Incomplete_Rides_Reason
from Bookings
where Incomplete_Rides= 'Yes'

select * from  incomplete_ride_reason