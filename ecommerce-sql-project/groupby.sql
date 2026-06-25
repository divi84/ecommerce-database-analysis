SELECT category, COUNT(*) AS total_products, AVG(price) AS avg_price
FROM products
GROUP BY category;