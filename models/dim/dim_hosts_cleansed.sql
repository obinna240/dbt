with src_hosts as (
    SELECT * FROM {{ ref("src_hosts") }}
)
SELECT
 host_id,
 IF(host_name IS NULL OR host_name = '', 'ANONYMOUS', host_name) AS host_name,
 is_superhost,
 created_at,
 updated_at
from src_hosts