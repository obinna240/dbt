Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

### Commands:
- Run dbt
dbt run

- Full refresh - forces re-creation of models
dbt run --full-refresh 

- inserts for tests
insert into `airbnb.reviewss`  values( 3176, CURRENT_TIMESTAMP(), "Simon", "Great place - loved it", "positive" )

- Load seeds into BQ
dbt seed

- Compile and check references and sources
dbt compile

- For freshness checks use
dbt source freshness

- To create snapshots
dbt snapshot

- Testing
use `dbt test` or do `dbt test --select name_of_test`
