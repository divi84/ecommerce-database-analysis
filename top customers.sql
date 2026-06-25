SELECT 
    c.customer_id,
    c.full_name,
    c.city,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.full_name, c.city
ORDER BY total_spent DESC
LIMIT 5;