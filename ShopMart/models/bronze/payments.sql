select payment_id,
       order_id,
       method,
       payment_status,
       payment_date,
       amount
from {{ source('ent', 'payments') }}