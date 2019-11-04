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

  dimension: discount {
    type: number
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

  dimension: po_blocked_qty {
    type: number
    sql: ${TABLE}.po_blocked_qty ;;
  }

  dimension: po_id {
    type: number
    sql: ${TABLE}.po_id ;;
  }

  dimension: po_order_qty {
    type: number
    sql: ${TABLE}.po_order_qty ;;
  }

  dimension: po_received_qty {
    type: number
    sql: ${TABLE}.po_received_qty ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: qty_available {
    type: number
    sql: ${TABLE}.qty_available ;;
  }

  dimension: qty_cancelled {
    type: number
    sql: ${TABLE}.qty_cancelled ;;
  }

  dimension: qty_delivered {
    type: number
    sql: ${TABLE}.qty_delivered ;;
  }

  dimension: qty_dropshipped {
    type: number
    sql: ${TABLE}.qty_dropshipped ;;
  }

  dimension: qty_invoiced {
    type: number
    sql: ${TABLE}.qty_invoiced ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.qty_ordered ;;
  }

  dimension: qty_packed {
    type: number
    sql: ${TABLE}.qty_packed ;;
  }

  dimension: qty_returned {
    type: number
    sql: ${TABLE}.qty_returned ;;
  }

  dimension: qty_shipped {
    type: number
    sql: ${TABLE}.qty_shipped ;;
  }

  dimension: rowtotal {
    type: number
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

  dimension: tax_percent {
    type: number
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
