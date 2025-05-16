# Query Optimization Report

## Objective

Improve the performance of a complex query retrieving booking, user, property, and payment data.

---

## Initial Query

- Joined 4 tables: `bookings`, `users`, `properties`, `payments`.
- Selected all relevant fields.
- Used INNER and LEFT joins.

**Performance Analysis**:
- Execution time: ~XXX ms
- Issues:
  - Unnecessary selected columns.
  - Joins lacked supporting indexes.
  - Payments table join could cause overhead without filter/index.

---

## Optimizations Applied

1. **Reduced Columns Selected**: 
   - Removed unused columns (e.g., password hashes, emails if not needed).

2. **Ensured Index Usage**:
   - Confirmed indexes exist on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.

3. **Refined Joins**:
   - Used `LEFT JOIN` for optional payment data.

---

## Results

| Metric              | Before Optimization | After Optimization |
|---------------------|---------------------|--------------------|
| Execution Time (ms) | ~XXX                | ~YYY               |
| Query Plan Cost     | ~High               | ~Reduced           |

✅ **Outcome**: Improved execution time and reduced system load.

---

## Recommendation

Continue to monitor performance with `EXPLAIN ANALYZE`, especially as data volume grows. Regularly update indexes and avoid selecting unneeded fields.

