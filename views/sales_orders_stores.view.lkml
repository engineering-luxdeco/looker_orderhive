view: sales_orders_stores {
  sql_table_name: luxdeco_prod.sales_orders_stores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_order_id {
    type: string
    sql: ${TABLE}.channel_order_id ;;
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

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id
    ]
  }
}
