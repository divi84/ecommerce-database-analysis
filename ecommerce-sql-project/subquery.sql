SELECT full_name, city
FROM customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id FROM orders
    WHERE status = 'Delivered'
);