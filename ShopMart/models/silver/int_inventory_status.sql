SELECT 
    p.product_id as product_id,
       p.category as category, 
       p.subcategory,
       p.product_name,
       p.cost_price,
       p.list_price,
       i.inventory_id,
       i.quantity_in_stock,
       i.last_updated,
       w.warehouse_id,
       w.city,
       w.region,
       w.manager_name
from {{ ref('products') }} p
JOIN {{ ref('inventory') }} i
  ON p.product_id = i.product_id
JOIN {{ ref('warehouse') }} w
  ON i.warehouse_id = w.warehouse_id