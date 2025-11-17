select
*
from {{ ref('employee') }}
where salary < 30000