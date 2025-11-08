select order_id,
       customer_id,
       product_id,
       order_date,
       quantity,
       unit_price,
       payment_id,
       delivery_id,
       return_id
from {{ source('ent', 'orders') }}