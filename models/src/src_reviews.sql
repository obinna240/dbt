with raw_reviews AS
(
    select * from {{ source('airbnb_project', 'reviews') }}
)
SELECT
  listing_id,
  date,
  reviewer_name,
  comments,
  sentiment
from raw_reviews