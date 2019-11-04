view: purchase_orders_stores {
  sql_table_name: luxdeco_prod.purchase_orders_stores ;;
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

  dimension: channel_primary_id {
    type: string
    sql: ${TABLE}.channel_primary_id ;;
  }

  dimension: channel_secondary_id {
    type: string
    sql: ${TABLE}.channel_secondary_id ;;
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

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_order_id ;;
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
      purchase_orders.id,
      purchase_orders.supplier_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id
    ]
  }
}
