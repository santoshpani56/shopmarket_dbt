
{{ config(
    materialized = 'table',
    schema = 'dbt'
) }}

select delivery_id,
       order_id,
       courier,
       delivery_date,
       status,
       delivery_cost
from {{ source('ent', 'deliveries') }}

