-- -- Your code here
-- SELECT tool.name, tool.price
-- FROM tool
-- WHERE tool.price BETWEEN 14.67 AND 20.09
-- ORDER BY tool.name;
SELECT tools.name, tools.price
FROM tools
WHERE tools.price BETWEEN 14.67 AND 20.09
ORDER BY tools.name;

SELECT tools.name, tools.price
FROM tools
WHERE tools.price BETWEEN 60 AND 90
ORDER BY tools.name;
