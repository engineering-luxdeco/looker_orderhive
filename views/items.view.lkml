view: items {
  sql_table_name: luxdeco_prod.items ;;
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

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
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

  dimension: delivery_days {
    type: number
    sql: ${TABLE}.delivery_days ;;
  }

  dimension: description_id {
    type: number
    sql: ${TABLE}.description_id ;;
  }

  dimension_group: expiry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiry_date ;;
  }

  dimension: fulfill_by {
    type: yesno
    sql: ${TABLE}.fulfill_by ;;
  }

  dimension: master_id {
    type: number
    sql: ${TABLE}.master_id ;;
  }

  dimension: merged {
    type: yesno
    sql: ${TABLE}.merged ;;
  }

  dimension: mobile_visible {
    type: string
    sql: ${TABLE}.mobile_visible ;;
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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: publish_b2b {
    type: number
    sql: ${TABLE}.publish_b2b ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: secondary_sku {
    type: string
    sql: ${TABLE}.secondary_sku ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: supplier_cost_price {
    type: number
    sql: ${TABLE}.supplier_cost_price ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: supplier_sku {
    type: string
    sql: ${TABLE}.supplier_sku ;;
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
      supplier_name,
      suppliers.id,
      suppliers.store_head_name,
      suppliers.store_name,
      suppliers.bank_account_name,
      suppliers.bank_name,
      suppliers.brand_name,
      customs_items.count,
      inventoryprofit.count,
      inventoryprofit.count,
      itemlogs.count,
      items_merges.count,
      items_options.count,
      items_stores.count,
      items_suppliers.count,
      items_warehouses.count,
      item_bundles.count,
      item_images.count,
      item_locations.count,
      item_prices.count,
      purchase_order_items.count,
      record_references.count,
      returns_items.count,
      sales_order_items.count,
      stockevaluation.count,
      stock_transfer_items.count
    ]
  }
}
