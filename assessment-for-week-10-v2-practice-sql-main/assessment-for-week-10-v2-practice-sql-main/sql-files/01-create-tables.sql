-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS tool;
DROP TABLE IF EXISTS customers;

CREATE TABLE tool (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(20),
  price numeric(3,2),
  department text
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name text,
  last_name text,
  phone_number INTEGER
);

CREATE TABLE purchases (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name text,
  customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE,
  tool_id INTEGER REFERENCES tool(id) ON DELETE CASCADE,
  quantity INTEGER
);
