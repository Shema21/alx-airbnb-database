-- Step 1: Rename the original table
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create the partitioned parent table
CREATE TABLE bookings (
    booking_id UUID NOT NULL,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR NOT NULL CHECK (status IN ('pending', 'confirmed', 'canceled')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (booking_id, start_date)
) PARTITION BY RANGE (start_date);

-- Step 3: Create child partitions (e.g., by year)
CREATE TABLE bookings_2022 PARTITION OF bookings
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 4: (Optional) Create default partition for future data
CREATE TABLE bookings_default PARTITION OF bookings
    DEFAULT;

-- Step 5: Recreate indexes on partitioned tables if needed
CREATE INDEX idx_bookings_2023_user_id ON bookings_2023(user_id);
CREATE INDEX idx_bookings_2023_property_id ON bookings_2023(property_id);

-- Step 6: (Optional) Move data from old table into new partitioned table
INSERT INTO bookings (
    booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
)
SELECT 
    booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
FROM bookings_old;

-- Step 7: Drop old table (once confident)
-- DROP TABLE bookings_old;
