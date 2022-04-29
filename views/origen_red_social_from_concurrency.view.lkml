view: origen_red_social_from_concurrency {
  sql_table_name: `agea-mirta-sbx.agea_pixel_bi.origen_red_social_from_concurrency`
    ;;

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: origen_red_social {
    type: string
    sql: ${TABLE}.origen_red_social ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
