view: sales_order_files {
  sql_table_name: luxdeco_prod.sales_order_files ;;
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

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, file_name, sales_orders.id, sales_orders.billing_name, sales_orders.shipping_name]
  }
}
