view: section_from_concurrency {
  sql_table_name: `agea-mirta-sbx.agea_pixel_bi.section_from_concurrency`
    ;;

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: seccion {
    type: string
    sql: ${TABLE}.seccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
