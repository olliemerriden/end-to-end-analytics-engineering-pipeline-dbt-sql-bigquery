SELECT DATE_TRUNC(DATE(order_purchase_timestamp), MONTH) as revenue_month, COUNT(DISTINCT order_id) as total_orders, SUM(payment_value) as total_revenue
FROM {{ ref('fct_orders') }}
GROUP BY revenue_month
ORDER BY revenue_month