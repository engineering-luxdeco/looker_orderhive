view: returns_items {
  sql_table_name: luxdeco_prod.returns_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: qty_returned {
    type: number
    sql: ${TABLE}.qty_returned ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  dimension: refund {
    type: yesno
    sql: ${TABLE}.refund ;;
  }

  dimension: restock {
    type: yesno
    sql: ${TABLE}.restock ;;
  }

  dimension: return_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.return_order_id ;;
  }

  dimension: sales_order_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_item_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
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
      sales_order_items.id,
      sales_order_items.name,
      items.id,
      items.name,
      items.supplier_name,
      return_orders.id,
      return_orders.courier_name
    ]
  }
}
