connection: "bigquery-agea-mirta-sbx"

# include all the views
include: "/views/**/*.view"

datagroup: dashboard_clarin_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dashboard_clarin_default_datagroup

explore: clarin_test_concurrency_view {}

explore: clarin_test_today_and_a_week_ago_view {}

explore: clarin_test_5mingroup_todayandawa {}

explore: clarin_concurrency_test {}


explore: ole_test_concurrency_view {}

explore: ole_test_today_and_a_week_ago_view {}

explore: ole_test_5mingroup_todayandawa {}
