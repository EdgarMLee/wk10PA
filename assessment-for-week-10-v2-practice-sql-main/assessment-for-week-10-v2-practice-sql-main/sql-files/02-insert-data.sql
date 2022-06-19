-- INSERT INTO departments (name)
-- VALUES
--   ('Home & Garden')
--   ('Electrical'),
--   ('Plumbing');

-- INSERT INTO tool (name, price, department_id)
-- VALUES
-- ('Snow shovel', 16.50, 1),
-- ('Work light',  29.99, 2),
-- ('Wheelbarrow', 89.99, 1),
-- ('Pipe Wrench', 18.99, 3),
-- ('Pipe Cutter', 36.36, 3),
-- ('Rake',        15.45, 1);

-- INSERT INTO customers (first_name, last_name, phone_number)
-- VALUES
-- ('John', 'Smith', 1111111111),
-- ('Jane', 'Doe',   2222222222);

-- INSERT INTO purchases (customer_id, tool_id, quantity)
-- VALUES
--   --JOHN
--   (1, 2, 1),
--   (1, 5, 2),
--   --JANE
--   (2, 1, 3),
--   (2, 2, 1),
--   (2, 4, 1),
--   (2, 5, 1),
--   --JOHN
--   (1, 3, 3);

INSERT INTO tools (name, price, department)
VALUES
('Snow shovel', 16.50, 'Home & Garden'),
('Work light', 29.99, 'Electrical'),
('Wheelbarrow', 89.99, 'Home & Garden'),
('Pipe Wrench', 18.99, 'Plumbing'),
('Pipe Cutter', 36.36, 'Plumbing'),
('Rake', 15.45, 'Home & Garden');

INSERT INTO customers (first_name, last_name, phone_number)
VALUES
('John', 'Smith', 1111111111),
('Jane', 'Doe', 2222222222);

INSERT INTO purchases (customer_id, tool_id, quantity)
VALUES
--JOHN
(1, 2, 1),
(1, 5, 2),
--JANE
(2, 1, 3),
(2, 2, 1),
(2, 4, 1),
(2, 5, 1),
--JOHN
(1, 3, 3);
