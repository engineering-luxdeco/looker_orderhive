view: inventoryprofit {
  sql_table_name: luxdeco_prod.inventoryprofit ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
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

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: itemid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.itemid ;;
  }

  dimension: order_status {
    type: number
    sql: ${TABLE}.order_status ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: qty_cancelled {
    type: number
    sql: ${TABLE}.qty_cancelled ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.qty_ordered ;;
  }

  dimension: qty_returned {
    type: number
    sql: ${TABLE}.qty_returned ;;
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

  dimension: secondary_sku {
    type: string
    sql: ${TABLE}.secondary_sku ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
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
      item_name,
      category_name,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      items.id,
      items.name,
      items.supplier_name,
      items.id,
      items.name,
      items.supplier_name
    ]
  }
}
