SELECT customer_id, COUNT(DISTINCT order_id) as total_orders, SUM(payment_value) as total_revenue, AVG(payment_value) as avg_order_value
FROM {{ ref('fct_orders') }}
GROUP BY customer_id