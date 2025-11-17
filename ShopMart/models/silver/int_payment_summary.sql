select
o.order_id,
o.customer_id,
o.product_id,
o.order_date,
o.quantity,
o.unit_price,
o.delivery_id,
o.return_id,
p.payment_id,
p.method,
p.payment_status,
p.payment_date,
p.amount
FROM {{ ref('orders') }} o
JOIN {{ ref('payments') }} p
  ON o.payment_id = p.payment_id