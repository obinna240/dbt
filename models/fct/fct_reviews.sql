
{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

WITH src_reviews as (
    SELECT * FROM {{ ref("src_reviews") }}
)
select 
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment
from 
    src_reviews
where 
    comments is not null
    {% if is_incremental() %}
        AND review_date > (select max(review_date) from {{ this }})
    {% endif %}


