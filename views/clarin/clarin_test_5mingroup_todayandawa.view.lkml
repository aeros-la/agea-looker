view: clarin_test_5mingroup_todayandawa {
  derived_table: {
    sql:SELECT unique_key, ev, origen_red_social, dia,intervalo,user_id, origen_interval  from (

  SELECT unique_key, ev, origen_red_social, EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id, origen as origen_interval,
    (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
  FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view`
     AS t1


union all

SELECT unique_key, ev, NULL as origen_red_social, EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id, NULL as origen_interval,
    (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
    FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` as t2
)  ;;
  }

  dimension: unique_key {
    primary_key: yes
    type: string
    sql: ${TABLE}.unique_key ;;
  }

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: origen_red_social {
    type: string
    sql: ${TABLE}.origen_red_social ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id;;
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.dia ;;
  }

  dimension: origen_interval {
    type: string
    sql: ${TABLE}.origen_interval ;;
  }

  dimension: intervalo {
    type: string
    sql: ${TABLE}.intervalo ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_distc {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: current_datetime_count_distinct_users {
    type: number
    sql: (
          SELECT clarin_test_5mingroup_todayandawa_count_distc
          FROM(
          WITH clarin_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` as t2
          )  )
          SELECT
              clarin_test_5mingroup_todayandawa.dia  AS clarin_test_5mingroup_todayandawa_dia,
              clarin_test_5mingroup_todayandawa.intervalo  AS clarin_test_5mingroup_todayandawa_intervalo,
              COUNT(DISTINCT clarin_test_5mingroup_todayandawa.user_id) AS clarin_test_5mingroup_todayandawa_count_distc
          FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_concurrency_view`
               AS clarin_concurrency_test
          FULL OUTER JOIN clarin_test_5mingroup_todayandawa ON clarin_concurrency_test.uid = clarin_test_5mingroup_todayandawa.user_id
          GROUP BY
              1,
              2
          ORDER BY
              1 DESC, 2 DESC
          )
          limit 1

          ) ;;
  }

  measure: awa_currente_time_count_distinct_users {
    type: number
    sql: (
          WITH clarin_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` as t2
          )  )
          SELECT
              COUNT(DISTINCT clarin_test_5mingroup_todayandawa.user_id) AS clarin_test_5mingroup_todayandawa_count_distc
          FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_concurrency_view`
               AS clarin_concurrency_test
          FULL OUTER JOIN clarin_test_5mingroup_todayandawa ON clarin_concurrency_test.uid = clarin_test_5mingroup_todayandawa.user_id
          WHERE
          clarin_test_5mingroup_todayandawa.intervalo = (SELECT (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo
            FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view` AS t1
            ORDER BY intervalo DESC
            LIMIT 1)
           GROUP BY
              clarin_test_5mingroup_todayandawa.dia,
              clarin_test_5mingroup_todayandawa.intervalo
          ORDER BY
              clarin_test_5mingroup_todayandawa.dia ASC
              LIMIT 1
          ) ;;
  }

  measure: current_datetime_count_pages {
    type: number
    sql: (
          SELECT COUNT(clarin_test_5mingroup_todayandawa_page) AS count_pages
          FROM (WITH clarin_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id, page  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,t1.dl as page,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id, t2.dl as page,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` as t2
          )  )
          SELECT
              clarin_test_5mingroup_todayandawa.dia  AS clarin_test_5mingroup_todayandawa_dia,
              clarin_test_5mingroup_todayandawa.intervalo  AS clarin_test_5mingroup_todayandawa_intervalo,
              clarin_test_5mingroup_todayandawa.page as clarin_test_5mingroup_todayandawa_page
          FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_concurrency_view`
               AS clarin_concurrency_test
          FULL OUTER JOIN clarin_test_5mingroup_todayandawa ON clarin_concurrency_test.uid = clarin_test_5mingroup_todayandawa.user_id
          GROUP BY
              1,
              2,
              3
          ORDER BY
              1 DESC,
              2 DESC
              )
          GROUP BY clarin_test_5mingroup_todayandawa_dia, clarin_test_5mingroup_todayandawa_intervalo
          ORDER BY
              clarin_test_5mingroup_todayandawa_dia DESC,
              clarin_test_5mingroup_todayandawa_intervalo DESC
          LIMIT 1

          ) ;;
  }

  measure: awa_currente_time_count_pages {
    type: number
    sql: (
          SELECT count_pages
FROM(
SELECT
(FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo
,count(*) as count_pages
FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_7daysagodata_view` AS t2
GROUP BY intervalo
)
WHERE intervalo = (SELECT (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo
                  FROM `agea-mirta-sbx.agea_pixel_bi.clarin_test_todaydata_view` AS t1
                  ORDER BY 1 DESC
                  LIMIT 1
                  )
          ) ;;
  }

  measure: count_distinct_users {
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }

  set: detail {
    fields: [dia, intervalo]
  }
}
