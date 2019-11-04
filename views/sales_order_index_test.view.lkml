view: sales_order_index_test {
  sql_table_name: luxdeco_prod.sales_order_index_test ;;
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
    type: yesno
    sql: ${TABLE}.y10_ ;;
  }

  dimension: y11_ {
    type: number
    sql: ${TABLE}.y11_ ;;
  }

  dimension: y12_ {
    type: string
    sql: ${TABLE}.y12_ ;;
  }

  dimension_group: y13_ {
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
    sql: ${TABLE}.y13_ ;;
  }

  dimension_group: y14_ {
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

  dimension_group: y17_ {
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
    sql: ${TABLE}.y17_ ;;
  }

  dimension_group: y18_ {
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
    sql: ${TABLE}.y18_ ;;
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

  dimension: y22_ {
    type: number
    sql: ${TABLE}.y22_ ;;
  }

  dimension: y23_ {
    type: string
    sql: ${TABLE}.y23_ ;;
  }

  dimension: y24_ {
    type: string
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
    type: string
    sql: ${TABLE}.y27_ ;;
  }

  dimension: y28_ {
    type: string
    sql: ${TABLE}.y28_ ;;
  }

  dimension: y29_ {
    type: string
    sql: ${TABLE}.y29_ ;;
  }

  dimension: y2_ {
    type: number
    sql: ${TABLE}.y2_ ;;
  }

  dimension: y30_ {
    type: string
    sql: ${TABLE}.y30_ ;;
  }

  dimension: y31_ {
    type: string
    sql: ${TABLE}.y31_ ;;
  }

  dimension: y32_ {
    type: string
    sql: ${TABLE}.y32_ ;;
  }

  dimension: y33_ {
    type: string
    sql: ${TABLE}.y33_ ;;
  }

  dimension: y34_ {
    type: string
    sql: ${TABLE}.y34_ ;;
  }

  dimension: y35_ {
    type: string
    sql: ${TABLE}.y35_ ;;
  }

  dimension: y36_ {
    type: string
    sql: ${TABLE}.y36_ ;;
  }

  dimension: y37_ {
    type: string
    sql: ${TABLE}.y37_ ;;
  }

  dimension: y38_ {
    type: string
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
    type: string
    sql: ${TABLE}.y41_ ;;
  }

  dimension: y42_ {
    type: string
    sql: ${TABLE}.y42_ ;;
  }

  dimension: y43_ {
    type: string
    sql: ${TABLE}.y43_ ;;
  }

  dimension: y44_ {
    type: string
    sql: ${TABLE}.y44_ ;;
  }

  dimension: y45_ {
    type: string
    sql: ${TABLE}.y45_ ;;
  }

  dimension: y46_ {
    type: string
    sql: ${TABLE}.y46_ ;;
  }

  dimension: y47_ {
    type: string
    sql: ${TABLE}.y47_ ;;
  }

  dimension: y48_ {
    type: yesno
    sql: ${TABLE}.y48_ ;;
  }

  dimension: y49_ {
    type: string
    sql: ${TABLE}.y49_ ;;
  }

  dimension: y4_ {
    type: string
    sql: ${TABLE}.y4_ ;;
  }

  dimension: y50_ {
    type: number
    sql: ${TABLE}.y50_ ;;
  }

  dimension: y51_ {
    type: number
    sql: ${TABLE}.y51_ ;;
  }

  dimension: y52_ {
    type: number
    sql: ${TABLE}.y52_ ;;
  }

  dimension: y53_ {
    type: number
    sql: ${TABLE}.y53_ ;;
  }

  dimension: y54_ {
    type: number
    sql: ${TABLE}.y54_ ;;
  }

  dimension: y55_ {
    type: number
    sql: ${TABLE}.y55_ ;;
  }

  dimension: y56_ {
    type: string
    sql: ${TABLE}.y56_ ;;
  }

  dimension: y57_ {
    type: string
    sql: ${TABLE}.y57_ ;;
  }

  dimension: y58_ {
    type: number
    sql: ${TABLE}.y58_ ;;
  }

  dimension: y59_ {
    type: number
    sql: ${TABLE}.y59_ ;;
  }

  dimension: y5_ {
    type: string
    sql: ${TABLE}.y5_ ;;
  }

  dimension: y60_ {
    type: number
    sql: ${TABLE}.y60_ ;;
  }

  dimension: y61_ {
    type: number
    sql: ${TABLE}.y61_ ;;
  }

  dimension: y62_ {
    type: number
    sql: ${TABLE}.y62_ ;;
  }

  dimension: y63_ {
    type: number
    sql: ${TABLE}.y63_ ;;
  }

  dimension: y64_ {
    type: string
    sql: ${TABLE}.y64_ ;;
  }

  dimension: y65_ {
    type: number
    sql: ${TABLE}.y65_ ;;
  }

  dimension: y66_ {
    type: string
    sql: ${TABLE}.y66_ ;;
  }

  dimension: y67_ {
    type: number
    sql: ${TABLE}.y67_ ;;
  }

  dimension: y68_ {
    type: number
    sql: ${TABLE}.y68_ ;;
  }

  dimension: y69_ {
    type: number
    sql: ${TABLE}.y69_ ;;
  }

  dimension: y6_ {
    type: number
    sql: ${TABLE}.y6_ ;;
  }

  dimension: y70_ {
    type: number
    sql: ${TABLE}.y70_ ;;
  }

  dimension: y71_ {
    type: number
    sql: ${TABLE}.y71_ ;;
  }

  dimension: y72_ {
    type: number
    sql: ${TABLE}.y72_ ;;
  }

  dimension: y73_ {
    type: string
    sql: ${TABLE}.y73_ ;;
  }

  dimension: y74_ {
    type: string
    sql: ${TABLE}.y74_ ;;
  }

  dimension: y75 {
    type: yesno
    sql: ${TABLE}.y75 ;;
  }

  dimension: y76 {
    type: number
    sql: ${TABLE}.y76 ;;
  }

  dimension: y7_ {
    type: number
    sql: ${TABLE}.y7_ ;;
  }

  dimension: y8_ {
    type: string
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
