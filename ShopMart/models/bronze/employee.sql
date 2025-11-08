
select employee_id,
        name,
        department,
        role,
        hire_date,
        salary
from {{ source('ent', 'employee') }}