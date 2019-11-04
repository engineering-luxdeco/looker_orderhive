view: sales_order_extra_items {
  sql_table_name: luxdeco_prod.sales_order_extra_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel_label {
    type: string
    sql: ${TABLE}.channel_label ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
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

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: qty_available {
    type: number
    sql: ${TABLE}.qty_available ;;
  }

  dimension: qty_cancelled {
    type: number
    sql: ${TABLE}.qty_cancelled ;;
  }

  dimension: qty_dropshipped {
    type: number
    sql: ${TABLE}.qty_dropshipped ;;
  }

  dimension: qty_invoiced {
    type: number
    sql: ${TABLE}.qty_invoiced ;;
  }

  dimension: qty_packed {
    type: number
    sql: ${TABLE}.qty_packed ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.qty_shipped ;;
  }

  dimension: qty_used {
    type: number
    sql: ${TABLE}.qty_used ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: type {
    type: yesno
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, sales_orders.id, sales_orders.billing_name, sales_orders.shipping_name]
  }
}
