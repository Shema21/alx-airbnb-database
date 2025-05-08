# ALX Airbnb Clone - Database Schema

## 📌 Objective

This project defines the database schema for the ALX Airbnb Clone using SQL. The goal is to create normalized, efficient, and relational database tables to support core functionalities such as user management, property listings, bookings, payments, messaging, and reviews.

---

## 📁 Files

- `schema.sql` – Contains all SQL `CREATE TABLE` statements, constraints, and indexes.
- `README.md` – Describes the schema design and implementation.

---

## 🛠️ Schema Design Highlights

- **Relational Model:** Designed using PostgreSQL, with proper use of UUIDs as primary keys.
- **Constraints:**
  - Primary and foreign keys to maintain referential integrity.
  - `CHECK` constraints for field validation (e.g., user roles, booking status).
  - `UNIQUE` constraints to prevent duplicate emails.
- **Indexes:**
  - Indexes on frequently queried fields such as `email`, `host_id`, `user_id`, and `property_id` to optimize performance.

---

## 🧱 Tables Created

1. `users` – Stores guest, host, and admin information.
2. `properties` – Listings posted by hosts.
3. `bookings` – Reservation records linking users and properties.
4. `payments` – Payment details per booking.
5. `reviews` – User reviews for properties.
6. `messages` – Messaging system between users.

---

## ⚙️ Requirements

- PostgreSQL
- SQL-compatible environment (e.g., psql CLI or PgAdmin)

---

## ✅ Normalization

The schema is normalized up to **Third Normal Form (3NF)** to ensure data integrity and eliminate redundancy.

