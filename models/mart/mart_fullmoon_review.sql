{{
    config(
        materialized = 'table',
    )
}}
with fct_reviews 
as 
(
    select * from {{ ref("fct_reviews") }}
),
full_moon_dates as 
(
    select * from {{ ref("seed_full_moon_dates") }}
)
select
    r.*,
    CASE
        WHEN 

