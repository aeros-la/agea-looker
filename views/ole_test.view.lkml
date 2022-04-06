view: ole_test {
  sql_table_name: `agea_pixel.ole_test`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anio_publicacion {
    type: string
    sql: ${TABLE}.anioPublicacion ;;
  }

  dimension: autorefresh {
    type: string
    sql: ${TABLE}.autorefresh ;;
  }

  dimension: bn {
    type: string
    sql: ${TABLE}.bn ;;
  }

  dimension: campania {
    type: string
    sql: ${TABLE}.campania ;;
  }

  dimension: canalvta {
    type: string
    sql: ${TABLE}.canalvta ;;
  }

  dimension: cd {
    type: string
    sql: ${TABLE}.cd ;;
  }

  dimension: choque {
    type: string
    sql: ${TABLE}.choque ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.dataSource ;;
  }

  dimension: de {
    type: string
    sql: ${TABLE}.de ;;
  }

  dimension: dia_publicacion {
    type: string
    sql: ${TABLE}.diaPublicacion ;;
  }

  dimension: dia_semana_publicacion {
    type: string
    sql: ${TABLE}.diaSemanaPublicacion ;;
  }

  dimension: dl {
    type: string
    sql: ${TABLE}.dl ;;
  }

  dimension: dt {
    type: string
    sql: ${TABLE}.dt ;;
  }

  dimension: ed {
    type: string
    sql: ${TABLE}.ed ;;
  }

  dimension: edad {
    type: string
    sql: ${TABLE}.edad ;;
  }

  dimension: ev {
    type: string
    sql: ${TABLE}.ev ;;
  }

  dimension: hora_publicacion {
    type: string
    sql: ${TABLE}.horaPublicacion ;;
  }

  dimension: md {
    type: string
    sql: ${TABLE}.md ;;
  }

  dimension: mes_publicacion {
    type: string
    sql: ${TABLE}.mesPublicacion ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nota_id {
    type: string
    sql: ${TABLE}.notaId ;;
  }

  dimension: nota_shared {
    type: string
    sql: ${TABLE}.notaShared ;;
  }

  dimension: ns_lista_tags {
    type: string
    sql: ${TABLE}.nsListaTags ;;
  }

  dimension: ns_site {
    type: string
    sql: ${TABLE}.nsSite ;;
  }

  dimension: pase_id {
    type: string
    sql: ${TABLE}.paseId ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: rl {
    type: string
    sql: ${TABLE}.rl ;;
  }

  dimension: sdc_application_id {
    type: string
    sql: ${TABLE}.sdcApplicationId ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }

  dimension: sr {
    type: string
    sql: ${TABLE}.sr ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tipo_lector {
    type: string
    sql: ${TABLE}.tipoLector ;;
  }

  dimension: tipo_pagina {
    type: string
    sql: ${TABLE}.tipoPagina ;;
  }

  dimension: titulo_nota {
    type: string
    sql: ${TABLE}.tituloNota ;;
  }

  dimension: ts {
    type: string
    sql: ${TABLE}.ts ;;
  }

  dimension: tz {
    type: number
    sql: ${TABLE}.tz ;;
  }

  dimension: ua {
    type: string
    sql: ${TABLE}.ua ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  dimension: v {
    type: string
    sql: ${TABLE}.v ;;
  }

  dimension: vp {
    type: string
    sql: ${TABLE}.vp ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
