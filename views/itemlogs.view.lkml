view: itemlogs {
  sql_table_name: luxdeco_prod.itemlogs ;;
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

  dimension: logstatus {
    type: number
    sql: ${TABLE}.logstatus ;;
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

  dimension: po_id {
    type: string
    sql: ${TABLE}.po_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: received_qty {
    type: number
    sql: ${TABLE}.received_qty ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
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
      items.id,
      items.name,
      items.supplier_name
    ]
  }
}
