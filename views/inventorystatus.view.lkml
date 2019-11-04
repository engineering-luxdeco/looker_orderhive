view: inventorystatus {
  sql_table_name: luxdeco_prod.inventorystatus ;;
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

  dimension: article_no {
    type: string
    sql: ${TABLE}.article_no ;;
  }

  dimension: bin_location {
    type: string
    sql: ${TABLE}.bin_location ;;
  }

  dimension: bin_quantity {
    type: number
    sql: ${TABLE}.bin_quantity ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: concatcontact_first_name___contact_last_name {
    type: string
    sql: ${TABLE}.`concat(contact.first_name, ' ', contact.last_name)` ;;
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

  dimension: item_location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_location_id ;;
  }

  dimension: item_location_warehouse_id {
    type: number
    sql: ${TABLE}.item_location_warehouse_id ;;
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

  dimension: reserve_qty {
    type: number
    sql: ${TABLE}.reserve_qty ;;
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

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      concatcontact_first_name___contact_last_name,
      category_name,
      suppliers.id,
      suppliers.store_head_name,
      suppliers.store_name,
      suppliers.bank_account_name,
      suppliers.bank_name,
      suppliers.brand_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      item_locations.id
    ]
  }
}
