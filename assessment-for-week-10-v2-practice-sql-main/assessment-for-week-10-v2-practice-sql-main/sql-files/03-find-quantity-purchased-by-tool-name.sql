-- -- Your code here
-- SELECT tool.name, tool.price, purchases.quantity
-- FROM tool
-- JOIN purchases ON (tool_id = tool.id)
-- WHERE tool.name LIKE 'Pipe%'
-- ORDER BY tool.name, quantity;

SELECT tools.name, tools.price, purchases.quantity
FROM tools
JOIN purchases ON (tool_id = tools.id)
WHERE tools.name LIKE 'Pipe%'
ORDER BY tools.name, quantity;

SELECT tools.name, tools.price, purchases.quantity
FROM tools
JOIN purchases ON (tool_id = tools.id)
WHERE tools.name LIKE 'W%'
ORDER BY tools.name, quantity;

-- SELECT SUM (tools.name, tools.price, purchases.quantity)
-- AS total
-- FROM tools
-- JOIN purchases ON (tool_id = tools.id)
-- WHERE tools.name LIKE 'Pipe%';
SELECT tools.name, tools.price, SUM(purchases.quantity)
FROM tools JOIN purchases ON (tools.id = purchases.tool_id)
WHERE tools.name LIKE 'Pipe%'
GROUP BY tools.price
ORDER BY tools.name, purchases.quantity;
