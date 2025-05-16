# Partitioning Performance Report

## Objective

To improve query performance on a large `bookings` table by implementing range-based partitioning on the `start_date` column.

---

## Strategy

- Replaced original `bookings` table with a partitioned version using `PARTITION BY RANGE (start_date)`.
- Created yearly partitions: `bookings_2022`, `bookings_2023`, `bookings_2024`.
- Indexed `user_id` and `property_id` columns on partition tables.

---

## Test Query

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';
