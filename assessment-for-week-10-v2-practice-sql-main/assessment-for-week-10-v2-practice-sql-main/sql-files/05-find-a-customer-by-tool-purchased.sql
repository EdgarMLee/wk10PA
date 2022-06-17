SELECT first_name, last_name, phone_number
FROM customers
JOIN purchases ON (customer_id = customers.id)
JOIN tool ON (tool_id = tool.id)
WHERE tool.name = 'Pipe Cutter'
ORDER BY purchases.id DESC
LIMIT 1;
