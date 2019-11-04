view: item_locations {
  sql_table_name: luxdeco_prod.item_locations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aisle_location {
    type: string
    sql: ${TABLE}.aisle_location ;;
  }

  dimension: bin_location {
    type: string
    sql: ${TABLE}.bin_location ;;
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

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
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

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
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
      items.id,
      items.name,
      items.supplier_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      locations.id,
      inventorystatus.count
    ]
  }
}
