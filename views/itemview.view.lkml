view: itemview {
  sql_table_name: luxdeco_prod.itemview ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: article_no {
    type: string
    sql: ${TABLE}.article_no ;;
  }

  dimension: barcode {
    type: string
    sql: ${TABLE}.barcode ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_id {
    type: number
    sql: ${TABLE}.price_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
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

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}.threshold ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.weight_unit ;;
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
      category_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name
    ]
  }
}
