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
        WHEN fm.full_moon_date IS NULL THEN 'not full moon'
        ELSE 'full moon'
    END AS is_full_moon
FROM
    fct_reviews r
LEFT JOIN 
    full_moon_dates fm
ON DATE(r.date) = DATE_ADD(fm.full_moon_date, INTERVAL 1 DAY)



