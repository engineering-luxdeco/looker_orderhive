view: sales_order_items {
  sql_table_name: luxdeco_prod.sales_order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  measure: discount {
    type: sum
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.discount_percent ;;
  }

  dimension: discount_type {
    type: yesno
    sql: ${TABLE}.discount_type ;;
  }

  dimension: item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_id ;;
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

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  measure: po_blocked_qty {
    type: sum
    sql: ${TABLE}.po_blocked_qty ;;
  }

  dimension: po_id {
    type: number
    sql: ${TABLE}.po_id ;;
  }

  measure: po_order_qty {
    type: sum
    sql: ${TABLE}.po_order_qty ;;
  }

  measure: po_received_qty {
    type: sum
    sql: ${TABLE}.po_received_qty ;;
  }

  measure: price {
    type: sum
    sql: ${TABLE}.price ;;
    value_format_name: gbp
  }

  measure: qty_available {
    type: sum
    sql: ${TABLE}.qty_available ;;
  }

  measure: qty_cancelled {
    type: sum
    sql: ${TABLE}.qty_cancelled ;;
  }

  measure: qty_delivered {
    type: sum
    sql: ${TABLE}.qty_delivered ;;
  }

  measure: qty_dropshipped {
    type: sum
    sql: ${TABLE}.qty_dropshipped ;;
  }

  measure: qty_invoiced {
    type: sum
    sql: ${TABLE}.qty_invoiced ;;
  }

  measure: qty_ordered {
    type: sum
    sql: ${TABLE}.qty_ordered ;;
  }

  measure: qty_packed {
    type: sum
    sql: ${TABLE}.qty_packed ;;
  }

  measure: qty_returned {
    type: sum
    sql: ${TABLE}.qty_returned ;;
  }

  measure: qty_shipped {
    type: sum
    sql: ${TABLE}.qty_shipped ;;
  }

  measure: rowtotal {
    type: sum
    sql: ${TABLE}.rowtotal ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension_group: sync_created {
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
    sql: ${TABLE}.sync_created ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  measure: tax_percent {
    type: sum
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      items.id,
      items.name,
      items.supplier_name,
      returns_items.count
    ]
  }
}
