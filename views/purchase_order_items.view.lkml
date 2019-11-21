view: purchase_order_items {
  sql_table_name: luxdeco_prod.purchase_order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: addnotes {
    type: string
    sql: ${TABLE}.addnotes ;;
  }

  dimension: article_no {
    type: string
    sql: ${TABLE}.article_no ;;
  }

  dimension: buy_price {
    type: number
    sql: ${TABLE}.buy_price ;;
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

  dimension: item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_id ;;
  }

  dimension: margin {
    type: number
    sql: ${TABLE}.margin ;;
  }

  dimension: margin_percent {
    type: number
    sql: ${TABLE}.margin_percent ;;
  }

  dimension: meta_data {
    type: string
    sql: ${TABLE}.meta_data ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: net_margin {
    type: number
    sql: ${TABLE}.net_margin ;;
  }

  dimension: net_margin_percent {
    type: number
    sql: ${TABLE}.net_margin_percent ;;
  }

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_order_id ;;
  }

  measure: qty_damaged {
    type: sum
    sql: ${TABLE}.qty_damaged ;;
  }

  measure: qty_ordered {
    type: sum
    sql: ${TABLE}.qty_ordered ;;
  }

  measure: qty_received {
    type: sum
    sql: ${TABLE}.qty_received ;;
  }

  measure: received_total {
    type: sum
    sql: ${TABLE}.received_total ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sales_order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: tax_persent_id {
    type: number
    sql: ${TABLE}.tax_persent_id ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: qty_received_m {
    type: sum
    sql: ${TABLE}.qty_received ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      purchase_orders.id,
      purchase_orders.supplier_name,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      items.id,
      items.name,
      items.supplier_name
    ]
  }
}
