SELECT 
    C.customer_id,
    C.first_name,
    C.last_name,
    C.email,
    C.signup_date,
    C.country,
    O.order_id,
    O.order_date,
    O.quantity,
    O.unit_price,
    O.payment_id,
    O.delivery_id,
    O.return_id,
    P.product_name,
    P.category,
    p.subcategory,
    P.list_price,
    P.cost_price
FROM {{ ref('customers')}} AS C
INNER JOIN {{ ref('orders')}} AS O
    ON C.customer_id = O.customer_id
INNER JOIN {{ ref('products')}} AS P
    ON O.product_id = P.product_id
LIMIT 100