dbt run
dbt run --full-refresh

insert into `airbnb.reviewss`  values( 3176, CURRENT_TIMESTAMP(), "Simon", "Great place - loved it", "positive" )