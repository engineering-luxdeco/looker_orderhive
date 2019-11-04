view: packages {
  sql_table_name: luxdeco_prod.packages ;;
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

  dimension: dimensions {
    type: string
    sql: ${TABLE}.dimensions ;;
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

  dimension: package_extra_items {
    type: string
    sql: ${TABLE}.package_extra_items ;;
  }

  dimension: package_inc_id {
    type: number
    sql: ${TABLE}.package_inc_id ;;
  }

  dimension: package_items {
    type: string
    sql: ${TABLE}.package_items ;;
  }

  dimension: package_qty {
    type: number
    sql: ${TABLE}.package_qty ;;
  }

  dimension: package_status {
    type: yesno
    sql: ${TABLE}.package_status ;;
  }

  dimension: package_total {
    type: number
    sql: ${TABLE}.package_total ;;
  }

  dimension: package_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.package_type_id ;;
  }

  dimension: package_weight {
    type: number
    sql: ${TABLE}.package_weight ;;
  }

  dimension: package_weight_unit {
    type: string
    sql: ${TABLE}.package_weight_unit ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
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
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      package_types.id,
      package_types.name,
      shipments.count
    ]
  }
}
