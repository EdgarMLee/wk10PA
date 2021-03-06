-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- DROP TABLE IF EXISTS purchases;
-- DROP TABLE IF EXISTS tool;
-- DROP TABLE IF EXISTS customers;
-- DROP TABLE IF EXISTS departments;

-- CREATE TABLE tool (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name varchar(20),
--   price numeric(3,2) NOT NULL,
--   department_id INTEGER REFERENCES departments(id) ON DELETE SET NULL
-- );

-- CREATE TABLE departments (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name varchar NOT NULL
-- );

-- CREATE TABLE customers (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   first_name text NOT NULL,
--   last_name text NOT NULL,
--   phone_number INTEGER
-- );

-- CREATE TABLE purchases (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name text,
--   customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE,
--   tool_id INTEGER REFERENCES tool(id) ON DELETE CASCADE,
--   quantity INTEGER
-- );

DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS tools;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS departments;

CREATE TABLE tools (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  price DECIMAL(3,2),
  department_id TEXT REFERENCES departments(id) ON DELETE SET NULL
);

CREATE TABLE departments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT(20),
  last_name TEXT(20),
  phone_number INTEGER(10)
);

CREATE TABLE purchases (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  quantity INTEGER,
  customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE,
  tool_id INTEGER REFERENCES tools(id) ON DELETE CASCADE
);
