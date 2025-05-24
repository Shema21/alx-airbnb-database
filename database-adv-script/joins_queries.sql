-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    b.booking_id,
    b.property_id,
    b.user_id,
    u.first_name,
    u.last_name,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
ORDER BY b.start_date DESC, u.last_name ASC;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment,
    r.created_at AS review_created
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id
ORDER BY p.name ASC, r.rating DESC NULLS LAST, r.created_at DESC;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.status
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id
ORDER BY 
    CASE WHEN u.user_id IS NULL THEN 1 ELSE 0 END,
    u.last_name ASC,
    b.start_date DESC;
