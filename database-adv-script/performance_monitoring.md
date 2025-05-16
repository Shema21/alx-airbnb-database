# 📊 Performance Monitoring and Refinement Report

## 🎯 Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 🧪 Monitored Queries and Execution Plans

### 1. Query: Fetch All Bookings with User and Property Details

```sql
EXPLAIN ANALYZE
SELECT b.*, u.first_name, u.last_name, p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id;
