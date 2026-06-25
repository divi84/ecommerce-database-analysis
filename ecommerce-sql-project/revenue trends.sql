WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS month,
        COUNT(DISTINCT o.order_id)         AS total_orders,
        SUM(oi.quantity * oi.unit_price)   AS revenue
    FROM orders o
    INNER JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT 
    month,
    total_orders,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM monthly_revenue
ORDER BY month;