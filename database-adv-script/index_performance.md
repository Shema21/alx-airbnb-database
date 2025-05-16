# Index Performance Report

## Objective

Improve query performance by adding indexes to frequently accessed columns in the `users`, `bookings`, and `properties` tables.

## High-Usage Columns

| Table       | Columns Indexed                  | Reason                                |
|-------------|----------------------------------|----------------------------------------|
| users       | user_id                          | Used in joins.                         |
| bookings    | user_id, property_id, status, start_date | Used in WHERE, JOIN, ORDER BY.       |
| properties  | host_id, pricepernight           | Used in filters and joins.             |

## Indexes Created

See `database_index.sql` for all index creation commands.

## Performance Test

### Query Example (Before Index)

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE status = 'confirmed' AND user_id = 'some-uuid';
