view: ole_concurrency_test {
 sql_table_name: `agea-mirta-sbx.agea_pixel_bi.ole_test_concurrency_view`
  ;;
  drill_fields: [id]

  dimension: unique_key {
    primary_key: yes
    type: string
    sql: ${TABLE}.unique_key ;;
  }

  dimension: id {
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
    case: {
      when: {
        sql: ${TABLE}.dataSource  = "amp";;
        label: "AMP"
      }
      when: {
        sql: ${TABLE}.dataSource  = "ia";;
        label: "IA"
      }
      when: {
        sql: ${TABLE}.dataSource  = "-2";;
        label: "Standard"
      }
    }
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.uid ;;
  }

  dimension: edad {
    type: number
    sql: CAST (${TABLE}.edad as int64);;
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
    case: {
      when: {
        sql: ${TABLE}.md = 'true';;
        label: "Mobile"
      }
      when: {
        sql: ${TABLE}.md = 'false' ;;
        label: "Desktop"
      }
      else: "unknown"
    }
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

  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }

  dimension: origen_red_social {
    type: string
    sql: ${TABLE}.origen_red_social ;;
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

  dimension: seccion {
    type: string
    sql: ${TABLE}.seccion ;;
  }

  dimension: sexo {
    case: {
      when: {
        sql: ${TABLE}.sexo = "m" OR ${TABLE}.sexo = "M" OR ${TABLE}.sexo = "MASCULINO";;
        label: "Masculino"
      }
      when: {
        sql: ${TABLE}.sexo = "f" OR ${TABLE}.sexo = "F" OR ${TABLE}.sexo = "FEMENINO";;
        label: "Femenino"
      }
      else: "unknown"
    }
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
    case: {
      when: {
        sql: ${TABLE}.tipoLector = "loginwall";;
        label: "Registrado"
      }
      when: {
        sql: ${TABLE}.tipoLector = "paywall";;
        label: "Suscriptor"
      }
      when: {
        sql: ${TABLE}.tipoLector = "pendiente";;
        label: "pendiente"
      }
      when: {
        sql: ${TABLE}.tipoLector = "anonimo";;
        label: "Anónimo"
      }
      when: {
        sql: ${TABLE}.tipoLector = "-2";;
        label: "Anónimo"
      }
    }
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

  measure: unique_users {
    type: count_distinct
    sql: ${uid} ;;
  }

  measure: unique_pages {
    type: count_distinct
    sql: ${dl} ;;
  }

  measure: unique_pases {
    type: count_distinct
    sql: ${pase_id} ;;
  }

  measure: avg_edad {
    type: number
    sql: (
          SELECT
          avg((CAST (edad as int64))) as avg
          FROM (select distinct uid, edad from `agea-mirta-sbx.agea_pixel_bi.ole_test_concurrency_view` as t
          WHERE (CAST (edad as int64)) <> -2)
          );;
  }
}
