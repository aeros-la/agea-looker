view: origen_from_concurrency {
  sql_table_name: `agea-mirta-sbx.agea_pixel_bi.origen_from_concurrency`
    ;;

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
