view: sexo_from_concurrency {
  sql_table_name: `agea-mirta-sbx.agea_pixel_bi.sexo_from_concurrency`
    ;;

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: edad {
    type: number
    sql: ${TABLE}.edad ;;
  }

  dimension: sexo_procesado {
    type: string
    sql: ${TABLE}.sexo_procesado ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
