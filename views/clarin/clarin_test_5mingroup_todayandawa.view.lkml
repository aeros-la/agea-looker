view: clarin_test_5mingroup_todayandawa {
  derived_table: {
    sql:SELECT dia,intervalo,user_id  from (

  SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
    (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
  FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view`
     AS t1


union all

SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
    (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
    FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` as t2
)  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_distc {
    type: count_distinct
    sql: ${user_id} ;;
  }

  dimension: user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.user_id;;
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.dia ;;
  }

  dimension: intervalo {
    type: string
    sql: ${TABLE}.intervalo ;;
  }

  set: detail {
    fields: [dia, intervalo]
  }
}
