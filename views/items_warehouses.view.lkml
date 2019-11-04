view: items_warehouses {
  sql_table_name: luxdeco_prod.items_warehouses ;;
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

  dimension: bin_place_barcode {
    type: string
    sql: ${TABLE}.bin_place_barcode ;;
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

  dimension: po_manage_qty {
    type: number
    sql: ${TABLE}.po_manage_qty ;;
  }

  dimension: purchase_qty {
    type: number
    sql: ${TABLE}.purchase_qty ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: reserve_qty {
    type: number
    sql: ${TABLE}.reserve_qty ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.warehouse_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      warehouse_name,
      items.id,
      items.name,
      items.supplier_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name
    ]
  }
}
