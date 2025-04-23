with src_listings as (
    SELECT * FROM {{ ref("src_listings") }}
)
SELECT 
    listing_id,
    listing_name,
    room_type,
    CASE
     WHEN minimum_nights = 0 THEN 1
     ELSE minimum_nights
    END AS minimum_nights, 
    host_id,
    price_str as price,
    created_at,
    updated_at
FROM
src_listings
