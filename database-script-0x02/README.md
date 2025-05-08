# ALX Airbnb Clone - Database Seed

## 📌 Objective

This project involves creating a script to populate the Airbnb clone database with sample data. The goal is to simulate real-world usage by adding multiple users, properties, bookings, payments, and other relevant data.

---

## 📁 Files

- `seed.sql` – Contains SQL `INSERT` statements to add sample data to the database.
- `README.md` – Provides an overview of the seed process and instructions.

---

## 🛠️ Sample Data Overview

The `seed.sql` file contains a series of SQL statements to insert sample data into the database. This data mimics real-world usage and ensures that the database can be tested with realistic values. Key components of the data include:

- **Users:** A set of users with varying roles (`guest`, `host`, `admin`), including different names, emails, and contact details.
- **Properties:** Several property listings belonging to different users, including names, descriptions, locations, and prices.
- **Bookings:** A variety of booking records linking users to properties, with start and end dates and associated costs.
- **Payments:** Payment details associated with bookings, simulating various payment methods.
- **Reviews:** Reviews for properties written by users, including ratings and comments.
- **Messages:** Simulated messaging conversations between users.

---

## ⚙️ Running the Script

To run the `seed.sql` script and populate the database with sample data, follow these steps:

1. **Ensure the Database is Set Up:**
   Make sure that your database schema has already been created (i.e., the tables defined in the `schema.sql` script).

2. **Connect to Your Database:**
   Use a PostgreSQL client (e.g., `psql`, PgAdmin, or DBeaver) to connect to your database.

3. **Run the `seed.sql` Script:**
   Execute the `seed.sql` script to insert the sample data. For example:
   ```bash
   psql -U your_username -d your_database -f seed.sql
