select o.order_id,
o.customer_id,
o.product_id,
o.order_date,
o.quantity,
o.unit_price,
o.payment_id,
o.delivery_id,
r.return_id,
r.reason,
r.return_date,
r.refund_amount

from {{ref('return')}} r
join {{ref('orders')}} o
    on r.order_id = o.order_id
