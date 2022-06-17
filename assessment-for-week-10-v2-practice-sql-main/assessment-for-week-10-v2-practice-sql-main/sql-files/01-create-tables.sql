-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

CREATE TABLE store (
  name text,
  price numeric(3,2)
  department text
);

CREATE TABLE customers (
  first_name text,
  last_name text,
  phone_number INTEGER
)
