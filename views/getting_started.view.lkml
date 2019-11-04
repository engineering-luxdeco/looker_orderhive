view: getting_started {
  sql_table_name: luxdeco_prod.getting_started ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: customer {
    type: number
    sql: ${TABLE}.customer ;;
  }

  dimension: demo {
    type: yesno
    sql: ${TABLE}.demo ;;
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

  dimension: product {
    type: number
    sql: ${TABLE}.product ;;
  }

  dimension: purchase_order {
    type: number
    sql: ${TABLE}.purchase_order ;;
  }

  dimension: roles {
    type: number
    sql: ${TABLE}.roles ;;
  }

  dimension: sales_order {
    type: number
    sql: ${TABLE}.sales_order ;;
  }

  dimension: shipping_channel {
    type: string
    sql: ${TABLE}.shipping_channel ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: supplier {
    type: number
    sql: ${TABLE}.supplier ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
