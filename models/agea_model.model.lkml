connection: "bigquery-agea-mirta-sbx"

# include all the views
include: "/views/**/*.view"

include: "/*.dashboard.lookml"

datagroup: dashboard_clarin_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dashboard_clarin_default_datagroup

explore: clarin_test_concurrency_view {}

explore: clarin_test_today_and_a_week_ago_view {}

explore: clarin_test_5mingroup_todayandawa {}

explore: clarin_test_todaydata_view {}

explore: clarin_test_yesterdaydata_view {}

explore: clarin_concurrency_test {
  join: clarin_test_5mingroup_todayandawa {
    type: full_outer
    sql_on: ${unique_key} = ${clarin_test_5mingroup_todayandawa.unique_key} ;;
    relationship: many_to_many
  }
}


explore: ole_test_concurrency_view {}

explore: ole_test_today_and_a_week_ago_view {}

explore: ole_test_5mingroup_todayandawa {}

explore: ole_test_todaydata_view {}

explore: ole_test_yesterdaydata_view {}

explore: ole_concurrency_test {
  join: ole_test_5mingroup_todayandawa {
    type: full_outer
    sql_on: ${unique_key} = ${ole_test_5mingroup_todayandawa.unique_key} ;;
    relationship: many_to_many
  }
}
