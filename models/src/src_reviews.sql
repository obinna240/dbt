with raw_reviews AS
(
    select * from `compute-1-367804.airbnb.reviewss`
)
SELECT
  listing_id,
  date,
  reviewer_name,
  comments,
  sentiment
from raw_reviews