select warehouse_id,
       city,
       region,
       manager_name
from {{ source('ent', 'warehouse') }}