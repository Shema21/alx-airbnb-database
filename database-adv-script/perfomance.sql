-- Optimized Query: Only fetch necessary fields and ensure indexes exist
-- Assumes indexes on: bookings.user_id, bookings.property_id, payments.booking_id

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    b.total_price,

    u.user_id,
    u.first_name,
    u.last_name,

    p.property_id,
    p.name AS property_name,

    pay.payment_id,
    pay.amount

FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
