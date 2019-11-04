view: amazon_mcf_orders {
  sql_table_name: luxdeco_prod.amazon_mcf_orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amazon_response_id {
    type: string
    sql: ${TABLE}.amazon_response_id ;;
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

  dimension: shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.shipment_id ;;
  }

  dimension: shipment_items {
    type: string
    sql: ${TABLE}.shipment_items ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      stores.id,
      stores.warehouse_name,
      stores.name,
      shipments.parent_shipment_id,
      shipments.courier_name,
      shipments.shipping_name
    ]
  }
}
