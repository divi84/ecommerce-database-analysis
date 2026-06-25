SELECT o.order_id, c.full_name, c.city, o.order_date, o.status
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;