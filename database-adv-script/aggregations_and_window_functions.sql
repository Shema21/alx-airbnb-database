-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name;

-- 2. Window Function: Rank properties by the total number of bookings
WITH booking_counts AS (
    SELECT 
        p.property_id,
        p.name AS property_name,
        COUNT(b.booking_id) AS total_bookings
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.name
)
SELECT 
    property_id,
    property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_row_number,
    DENSE_RANK() OVER (ORDER BY total_bookings DESC) AS booking_dense_rank
FROM booking_counts;

-- 3. Additional Window Function Example: Number bookings per month
SELECT 
    property_id,
    DATE_TRUNC('month', start_date) AS month,
    COUNT(*) AS bookings_count,
    ROW_NUMBER() OVER (PARTITION BY property_id ORDER BY COUNT(*) DESC) AS monthly_rank
FROM bookings
GROUP BY property_id, DATE_TRUNC('month', start_date);
