view: itemindex {
  sql_table_name: luxdeco_prod.itemindex ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: y10_ {
    type: number
    sql: ${TABLE}.y10_ ;;
  }

  dimension: y11_ {
    type: number
    sql: ${TABLE}.y11_ ;;
  }

  dimension_group: y12_ {
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
    sql: ${TABLE}.y12_ ;;
  }

  dimension_group: y13_ {
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
    sql: ${TABLE}.y13_ ;;
  }

  dimension: y15_ {
    type: number
    sql: ${TABLE}.y15_ ;;
  }

  dimension: y16_ {
    type: string
    sql: ${TABLE}.y16_ ;;
  }

  dimension: y17_ {
    type: number
    sql: ${TABLE}.y17_ ;;
  }

  dimension: y18_ {
    type: string
    sql: ${TABLE}.y18_ ;;
  }

  dimension: y19_ {
    type: string
    sql: ${TABLE}.y19_ ;;
  }

  dimension: y20_ {
    type: number
    sql: ${TABLE}.y20_ ;;
  }

  dimension: y22_ {
    type: number
    sql: ${TABLE}.y22_ ;;
  }

  dimension: y23_ {
    type: number
    sql: ${TABLE}.y23_ ;;
  }

  dimension: y25_ {
    type: number
    sql: ${TABLE}.y25_ ;;
  }

  dimension: y26_ {
    type: number
    sql: ${TABLE}.y26_ ;;
  }

  dimension: y27_ {
    type: number
    sql: ${TABLE}.y27_ ;;
  }

  dimension: y28_ {
    type: number
    sql: ${TABLE}.y28_ ;;
  }

  dimension: y29_ {
    type: number
    sql: ${TABLE}.y29_ ;;
  }

  dimension: y2_ {
    type: string
    sql: ${TABLE}.y2_ ;;
  }

  dimension: y30_ {
    type: number
    sql: ${TABLE}.y30_ ;;
  }

  dimension: y31_ {
    type: number
    sql: ${TABLE}.y31_ ;;
  }

  dimension: y32_ {
    type: number
    sql: ${TABLE}.y32_ ;;
  }

  dimension: y33_ {
    type: string
    sql: ${TABLE}.y33_ ;;
  }

  dimension: y35_ {
    type: string
    sql: ${TABLE}.y35_ ;;
  }

  dimension: y36_ {
    type: number
    sql: ${TABLE}.y36_ ;;
  }

  dimension: y37_ {
    type: string
    sql: ${TABLE}.y37_ ;;
  }

  dimension: y38_ {
    type: number
    sql: ${TABLE}.y38_ ;;
  }

  dimension: y39_ {
    type: string
    sql: ${TABLE}.y39_ ;;
  }

  dimension: y3_ {
    type: string
    sql: ${TABLE}.y3_ ;;
  }

  dimension: y40_ {
    type: string
    sql: ${TABLE}.y40_ ;;
  }

  dimension: y41_ {
    type: number
    sql: ${TABLE}.y41_ ;;
  }

  dimension: y42_ {
    type: number
    sql: ${TABLE}.y42_ ;;
  }

  dimension: y43_ {
    type: string
    sql: ${TABLE}.y43_ ;;
  }

  dimension: y4_ {
    type: string
    sql: ${TABLE}.y4_ ;;
  }

  dimension: y5_ {
    type: string
    sql: ${TABLE}.y5_ ;;
  }

  dimension: y6_ {
    type: number
    sql: ${TABLE}.y6_ ;;
  }

  dimension: y7_ {
    type: string
    sql: ${TABLE}.y7_ ;;
  }

  dimension: y8_ {
    type: number
    sql: ${TABLE}.y8_ ;;
  }

  dimension: y9_ {
    type: number
    sql: ${TABLE}.y9_ ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
