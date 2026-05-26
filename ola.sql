-- retrieve all successful bookings
select *
from ride_data
where booking_status = 'success';

-- find the average ride distance for each vehicle type
select
vehicle_type,
avg(ride_distance) as avg_ride_distance
from ride_data
group by vehicle_type;

-- get the total number of cancelled rides by customers
select
count(*) as total_cancelled_by_customers
from ride_data
where booking_status = 'canceled by customer';

-- list the top 5 customers who booked the highest number of rides
select
customer_id,
count(booking_id) as total_bookings
from ride_data
group by customer_id
order by total_bookings desc
limit 5;

-- get the number of rides cancelled by drivers due to personal and car-related issues
select
count(*) as total_driver_cancellations
from ride_data
where canceled_rides_by_driver = 'personal & car related issue';

-- find the maximum and minimum driver ratings for prime sedan bookings
select
max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating
from ride_data
where vehicle_type = 'prime sedan';

-- retrieve all rides where payment was made using upi
select *
from ride_data
where payment_method = 'upi';

-- find the average customer rating per vehicle type
select
vehicle_type,
avg(customer_rating) as avg_customer_rating
from ride_data
group by vehicle_type;

-- calculate the total booking value of rides completed successfully
select
sum(booking_value) as total_booking_value
from ride_data
where booking_status = 'success';

-- list all incomplete rides along with the reason
select
booking_id,
incomplete_rides,
incomplete_rides_reason
from ride_data
where incomplete_rides = 'yes';