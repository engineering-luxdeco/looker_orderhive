view: contact_index {
  sql_table_name: luxdeco_prod.contactIndex ;;

  dimension: y0_ {
    type: number
    sql: ${TABLE}.y0_ ;;
  }

  dimension: y10_ {
    type: number
    sql: ${TABLE}.y10_ ;;
  }

  dimension: y11_ {
    type: number
    sql: ${TABLE}.y11_ ;;
  }

  dimension: y12_ {
    type: number
    sql: ${TABLE}.y12_ ;;
  }

  dimension: y13_ {
    type: string
    sql: ${TABLE}.y13_ ;;
  }

  dimension: y14_ {
    type: string
    sql: ${TABLE}.y14_ ;;
  }

  dimension: y15_ {
    type: string
    sql: ${TABLE}.y15_ ;;
  }

  dimension: y16_ {
    type: string
    sql: ${TABLE}.y16_ ;;
  }

  dimension: y17_ {
    type: string
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

  dimension: y1_ {
    type: string
    sql: ${TABLE}.y1_ ;;
  }

  dimension_group: y20_ {
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
    sql: ${TABLE}.y20_ ;;
  }

  dimension_group: y21_ {
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
    sql: ${TABLE}.y21_ ;;
  }

  dimension: y22_ {
    type: number
    sql: ${TABLE}.y22_ ;;
  }

  dimension: y23_ {
    type: string
    sql: ${TABLE}.y23_ ;;
  }

  dimension: y24_ {
    type: number
    sql: ${TABLE}.y24_ ;;
  }

  dimension: y25_ {
    type: string
    sql: ${TABLE}.y25_ ;;
  }

  dimension: y26_ {
    type: string
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

  dimension: y3_ {
    type: string
    sql: ${TABLE}.y3_ ;;
  }

  dimension: y4_ {
    type: string
    sql: ${TABLE}.y4_ ;;
  }

  dimension: y5_ {
    type: number
    sql: ${TABLE}.y5_ ;;
  }

  dimension: y6_ {
    type: number
    sql: ${TABLE}.y6_ ;;
  }

  dimension_group: y7_ {
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
    sql: ${TABLE}.y7_ ;;
  }

  dimension_group: y8_ {
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
    sql: ${TABLE}.y8_ ;;
  }

  dimension: y9_ {
    type: number
    sql: ${TABLE}.y9_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
