select return_id,
       order_id,
       reason,
       return_date,
       refund_amount
from {{ source('ent', 'return') }}