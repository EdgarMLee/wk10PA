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
ORDER BY tools.name and quantity;
