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
          WHERE
          clarin_test_5mingroup_todayandawa.intervalo = (
          SELECT clarin_test_5mingroup_todayandawa_intervalo
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
          )
          GROUP BY
              1,
              2
          ORDER BY
              1 ASC
          )
          LIMIT 1
          ) ;;
  }

  measure: current_datetime_count_distinct_pages {
    type: number
    sql: (
          SELECT COUNT(DISTINCT clarin_test_5mingroup_todayandawa_page) AS count_distinct_pages
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

  measure: awa_currente_time_count_distinct_pages {
    type: number
    sql: (
          SELECT COUNT(DISTINCT clarin_test_5mingroup_todayandawa_page) AS count_distinct_pages
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
          WHERE clarin_test_5mingroup_todayandawa_intervalo = (SELECT clarin_test_5mingroup_todayandawa_intervalo
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
              clarin_test_5mingroup_todayandawa_dia DESC,
              clarin_test_5mingroup_todayandawa_intervalo DESC
              )
          ORDER BY
              clarin_test_5mingroup_todayandawa_dia DESC,
              clarin_test_5mingroup_todayandawa_intervalo DESC
          LIMIT 1
          )
          GROUP BY clarin_test_5mingroup_todayandawa_dia,
                  clarin_test_5mingroup_todayandawa_intervalo
          ORDER BY
              clarin_test_5mingroup_todayandawa_dia ASC
          limit 1
          ) ;;
  }

  set: detail {
    fields: [dia, intervalo]
  }
}
