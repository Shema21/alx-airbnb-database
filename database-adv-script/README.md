# Advanced SQL: JOIN Queries

This directory contains complex SQL queries using different types of JOINs for the ALX Airbnb clone database.

## Files

- `joins_queries.sql`: SQL file containing JOIN queries as specified in the task.
- `README.md`: Explanation of each query and JOIN type.

## Queries Included

1. **INNER JOIN** – Lists all bookings and the users who made them.
2. **LEFT JOIN** – Lists all properties and any associated reviews, even if some properties have none.
3. **FULL OUTER JOIN** – Lists all users and bookings, including those without a match in the other table.

## Notes

- Designed for a PostgreSQL database.
- Make sure UUID extensions are enabled in your environment.

# Advanced SQL: Subquery Practice

This file contains subqueries written for the ALX Airbnb database to practice both correlated and non-correlated types.

## Files

- `subqueries.sql`: SQL file containing two subqueries.
- `README.md`: Describes query objectives and logic.

## Queries Included

1. **Non-Correlated Subquery**
   - Retrieves all properties that have an **average review rating above 4.0**.
   - The subquery calculates the average rating per property using `GROUP BY` and `HAVING`.

2. **Correlated Subquery**
   - Finds users who have made **more than 3 bookings**.
   - The subquery runs once per user, counting how many bookings they’ve made.

## Notes

- Queries are compatible with PostgreSQL.
- Ensure your dataset includes review and booking records to test effectively.


# SQL Aggregations and Window Functions

This module demonstrates the use of aggregate functions and window functions in PostgreSQL to analyze Airbnb booking data.

## Files

- `aggregations_and_window_functions.sql`: SQL queries for aggregation and windowing.
- `README.md`: Explains the purpose and structure of the queries.

## Queries Included

1. **Aggregation with GROUP BY**
   - Calculates the total number of bookings each user has made.
   - Uses `COUNT()` with `GROUP BY` on the `users` and `bookings` tables.

2. **Window Function with RANK()**
   - Ranks properties by the total number of bookings.
   - Uses a CTE to count bookings per property, then applies the `RANK()` window function.

## Notes

- PostgreSQL syntax is used.
- Make sure to populate `bookings` and `properties` tables with test data for best results.
