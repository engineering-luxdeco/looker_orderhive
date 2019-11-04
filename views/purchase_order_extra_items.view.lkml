view: purchase_order_extra_items {
  sql_table_name: luxdeco_prod.purchase_order_extra_items ;;
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

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_order_id ;;
  }

  dimension: qty_ordered {
    type: number
    sql: ${TABLE}.qty_ordered ;;
  }

  dimension: qty_received {
    type: number
    sql: ${TABLE}.qty_received ;;
  }

  dimension: tax_calculated {
    type: number
    sql: ${TABLE}.tax_calculated ;;
  }

  dimension: tax_rule {
    type: number
    sql: ${TABLE}.tax_rule ;;
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
    drill_fields: [id, purchase_orders.id, purchase_orders.supplier_name]
  }
}
