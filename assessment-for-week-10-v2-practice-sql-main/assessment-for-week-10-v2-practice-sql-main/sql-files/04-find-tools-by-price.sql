-- Your code here
SELECT tool.name, tool.price
FROM tool
WHERE tool.price BETWEEN 14.67 AND 20.09
ORDER BY tool.name;
