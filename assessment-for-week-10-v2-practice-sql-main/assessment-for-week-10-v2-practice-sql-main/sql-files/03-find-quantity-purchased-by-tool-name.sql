-- Your code here
SELECT tool.name, tool.price, tool.quantity
FROM purchases
WHERE name LIKE 'Pipe%'
ORDER BY name AND quantity;
