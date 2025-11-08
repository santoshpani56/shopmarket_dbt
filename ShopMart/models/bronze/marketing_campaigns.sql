select campaign_Id,
       campaign_name,
       start_date,
       end_date,
       total_spent,
       total_clicks,
       total_conversions
from {{ source('ent', 'marketing_campaigns') }}