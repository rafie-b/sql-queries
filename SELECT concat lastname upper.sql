SELECT 
  CONCAT(c.first_name, ' ', UPPER(c.last_name)) AS full_name,
  SUM(o.price) AS total_spent
FROM 
  customers c
JOIN 
  orders o ON c.id = o.id
GROUP BY 
  c.first_name, c.last_name
ORDER BY 
  total_spent DESC, full_name ASC;
