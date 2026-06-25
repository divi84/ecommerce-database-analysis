SELECT 
    product_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;