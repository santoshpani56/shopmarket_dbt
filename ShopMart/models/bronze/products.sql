select product_id,
       category,
       subcategory,
       product_name,
       cost_price,
       list_price
from {{ source('ent', 'product') }}