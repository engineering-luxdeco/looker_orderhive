view: return_orders {
  sql_table_name: luxdeco_prod.return_orders ;;
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

  dimension: courier_name {
    type: string
    sql: ${TABLE}.courier_name ;;
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

  dimension: refund_status {
    type: yesno
    sql: ${TABLE}.refund_status ;;
  }

  dimension: restock_status {
    type: yesno
    sql: ${TABLE}.restock_status ;;
  }

  dimension: return_amount {
    type: number
    sql: ${TABLE}.return_amount ;;
  }

  dimension_group: return {
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
    sql: ${TABLE}.return_date ;;
  }

  dimension: return_inc_id {
    type: number
    sql: ${TABLE}.return_inc_id ;;
  }

  dimension: return_items {
    type: string
    sql: ${TABLE}.return_items ;;
  }

  dimension: return_status {
    type: number
    sql: ${TABLE}.return_status ;;
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

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: total_return_qty {
    type: number
    sql: ${TABLE}.total_return_qty ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      courier_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      returns_items.count,
      shipments.count
    ]
  }
}
