with raw_hosts AS
(
    select * from `compute-1-367804.airbnb.hostss`
)
SELECT
  id as host_id,
  name as host_name,
  is_superhost,
  created_at,
  updated_at
from raw_hosts