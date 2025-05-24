-- Indexes for users table
CREATE INDEX idx_users_user_id ON users(user_id);

-- Indexes for bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_bookings_user_status ON bookings(user_id, status); -- Composite index

-- Indexes for properties table
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_properties_pricepernight ON properties(pricepernight);
