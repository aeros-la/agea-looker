view: clarin_test_today_and_a_week_ago_view {
  sql_table_name: `agea-mirta-sbx.agea_pixel_bi.clarin_test_today_and_a_week_ago_view`
    ;;

  dimension_group: dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dia ;;
  }

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: tiempo {
    type: string
    sql: ${TABLE}.tiempo ;;
  }

  dimension_group: tstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      minute5,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.tstamp ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
