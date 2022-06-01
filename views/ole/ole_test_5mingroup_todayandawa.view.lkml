view: ole_test_5mingroup_todayandawa {

    derived_table: {
      sql:SELECT dia,intervalo,user_id, origen_interval from (

          SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id, origen as origen_interval,
            (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
          FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view`
             AS t1


        union all

        SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id, NULL as origen_interval,
        (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
        FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_7daysagodata_view` as t2
        )  ;;
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

  dimension: origen_interval {
    type: string
    sql: ${TABLE}.origen_interval ;;
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
          SELECT ole_test_5mingroup_todayandawa_count_distc
          FROM(
          WITH ole_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_7daysagodata_view` as t2
          )  )
          SELECT
              ole_test_5mingroup_todayandawa.dia  AS ole_test_5mingroup_todayandawa_dia,
              ole_test_5mingroup_todayandawa.intervalo  AS ole_test_5mingroup_todayandawa_intervalo,
              COUNT(DISTINCT ole_test_5mingroup_todayandawa.user_id) AS ole_test_5mingroup_todayandawa_count_distc
          FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_concurrency_view`
               AS ole_concurrency_test
          FULL OUTER JOIN ole_test_5mingroup_todayandawa ON ole_concurrency_test.uid = ole_test_5mingroup_todayandawa.user_id
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
          SELECT ole_test_5mingroup_todayandawa_count_distc
          FROM(
          WITH ole_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_7daysagodata_view` as t2
          )  )
          SELECT
              ole_test_5mingroup_todayandawa.dia  AS ole_test_5mingroup_todayandawa_dia,
              ole_test_5mingroup_todayandawa.intervalo  AS ole_test_5mingroup_todayandawa_intervalo,
              COUNT(DISTINCT ole_test_5mingroup_todayandawa.user_id) AS ole_test_5mingroup_todayandawa_count_distc
          FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_concurrency_view`
               AS ole_concurrency_test
          FULL OUTER JOIN ole_test_5mingroup_todayandawa ON ole_concurrency_test.uid = ole_test_5mingroup_todayandawa.user_id
          WHERE
          ole_test_5mingroup_todayandawa.intervalo = (
          SELECT ole_test_5mingroup_todayandawa_intervalo
          FROM(
          WITH ole_test_5mingroup_todayandawa AS (SELECT dia,intervalo,user_id  from (

            SELECT EXTRACT(DATE from t1.timestamp) as dia, t1.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t1.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t1.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
            FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view`
               AS t1


          union all

          SELECT EXTRACT(DATE from t2.timestamp) as dia,t2.uid as user_id,
              (FORMAT_DATETIME('%H:%M', TIMESTAMP_TRUNC(DATETIME_SUB(t2.timestamp , INTERVAL MOD(EXTRACT(MINUTE FROM t2.timestamp ), 5) MINUTE), MINUTE))) AS intervalo,
              FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_7daysagodata_view` as t2
          )  )
          SELECT
              ole_test_5mingroup_todayandawa.dia  AS ole_test_5mingroup_todayandawa_dia,
              ole_test_5mingroup_todayandawa.intervalo  AS ole_test_5mingroup_todayandawa_intervalo,
              COUNT(DISTINCT ole_test_5mingroup_todayandawa.user_id) AS ole_test_5mingroup_todayandawa_count_distc
          FROM `agea-mirta-sbx.agea_pixel_bi.ole_test_concurrency_view`
               AS ole_concurrency_test
          FULL OUTER JOIN ole_test_5mingroup_todayandawa ON ole_concurrency_test.uid = ole_test_5mingroup_todayandawa.user_id
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

    set: detail {
      fields: [dia, intervalo]
    } }
