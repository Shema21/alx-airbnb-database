-- Index creation commands
CREATE INDEX idx_users_user_id ON users(user_id);

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_bookings_user_status ON bookings(user_id, status);

CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_properties_pricepernight ON properties(pricepernight);

-- Performance measurement commands
-- Query 1: Find user bookings
EXPLAIN ANALYZE
SELECT * FROM bookings 
WHERE user_id = '123e4567-e89b-12d3-a456-426614174000';

-- Query 2: Find properties by price range
EXPLAIN ANALYZE
SELECT * FROM properties
WHERE pricepernight BETWEEN 50 AND 150
ORDER BY pricepernight;

-- Query 3: Find confirmed bookings for a property
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE property_id = '456e4567-e89b-12d3-a456-426614174000'
AND status = 'confirmed';
