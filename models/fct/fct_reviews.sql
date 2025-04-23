
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
    date,
    reviewer_name,
    comments,
    sentiment
from 
    src_reviews
where 
    comments is not null
    {% if is_incremental() %}
        AND date > (select max(date) from {{ this }})
    {% endif %}


