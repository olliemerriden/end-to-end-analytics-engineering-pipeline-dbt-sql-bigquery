SELECT product_id, COUNT(DISTINCT order_id) as total_orders, SUM(price) as product_revenue, SUM(freight_value) as total_freight
FROM {{ ref('fct_orders') }}
GROUP BY product_id