-- SELECT first_name, last_name, phone_number
-- FROM customers
-- JOIN purchases ON (customer_id = customers.id)
-- JOIN tool ON (tool_id = tool.id)
-- WHERE tool.name = 'Pipe Cutter'
-- ORDER BY purchases.id DESC
-- LIMIT 1;
SELECT customers.first_name, customers.last_name, customers.phone_number
FROM customers
JOIN purchases ON (customer_id = customers.id)
JOIN tools ON (tool_id = tools.id)
WHERE tools.name = 'Pipe Cutter'
ORDER BY purchases.id DESC
LIMIT 1;
