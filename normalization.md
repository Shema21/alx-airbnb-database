# Database Normalization to 3NF

## Objective

Ensure that the `alx-airbnb-database` schema complies with the Third Normal Form (3NF) to minimize redundancy and promote data integrity.

---

## Step 1: First Normal Form (1NF)

**1NF Requirements:**
- Eliminate repeating groups
- Ensure each field contains only atomic values

**Our schema complies with 1NF:**
- All tables have atomic column values (e.g., `first_name`, `last_name`)
- No multivalued or composite fields

✅ 1NF Achieved

---

## Step 2: Second Normal Form (2NF)

**2NF Requirements:**
- Be in 1NF
- No partial dependency (only applies to composite primary keys)

**Analysis:**
- All tables use single-column primary keys (UUID)
- No partial dependencies present

✅ 2NF Achieved

---

## Step 3: Third Normal Form (3NF)

**3NF Requirements:**
- Be in 2NF
- No transitive dependencies (non-key attributes must depend only on the key)

### 🔍 Identified Issue:
- `properties.location` stores location as a single VARCHAR field, which could lead to redundancy if many properties are located in the same city/state.

**Solution:**
- Decompose `location` into a separate `locations` table.

```sql
CREATE TABLE locations (
    location_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    city VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    country VARCHAR NOT NULL
);
