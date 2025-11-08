SELECT inventory_id,
       product_id,
       warehouse_id,
       quantity_in_stock,
       last_updated
FROM {{ source('ent', 'inventory') }}