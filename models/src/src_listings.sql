with raw_listings AS
(
    select * from {{ source('airbnb_project', 'listings') }}
)
SELECT  
  id as listing_id,
  name as listing_name,
  listing_url,
  room_type,
  minimum_nights,
  host_id,
  price as price_str,
  created_at,
  updated_at
from raw_listings