with raw_hosts AS
(
    select * from {{ source('airbnb_project', 'hosts') }}
)
SELECT
  id as host_id,
  name as host_name,
  is_superhost,
  created_at,
  updated_at
from raw_hosts