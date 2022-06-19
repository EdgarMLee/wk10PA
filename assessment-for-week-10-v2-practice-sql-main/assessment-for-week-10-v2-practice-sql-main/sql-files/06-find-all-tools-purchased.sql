-- Your code here
-- SELECT tools.name, purchases.quantity
-- FROM tools
-- JOIN purchases ON (tools.id = purchases.tool_id)
-- ORDER BY tools.name, purchases.quantity ASC;

SELECT tools.name, purchases.quantity
FROM tools
JOIN purchases ON (tool_id = tools.id)
ORDER BY tools.name, quantity ASC;
