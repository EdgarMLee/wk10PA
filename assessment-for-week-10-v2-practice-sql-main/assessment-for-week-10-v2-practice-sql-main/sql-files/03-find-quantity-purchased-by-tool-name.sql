-- Your code here
SELECT tool.name, tool.price, purchases.quantity
FROM tool
JOIN purchases ON (tool_id = tool.id)
WHERE tool.name LIKE 'Pipe%'
ORDER BY tool.name, quantity;
