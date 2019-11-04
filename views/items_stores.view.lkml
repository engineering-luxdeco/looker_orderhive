view: items_stores {
  sql_table_name: luxdeco_prod.items_stores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_primary_id {
    type: string
    sql: ${TABLE}.channel_primary_id ;;
  }

  dimension: channel_secondary_id {
    type: string
    sql: ${TABLE}.channel_secondary_id ;;
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

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: item_sku {
    type: string
    sql: ${TABLE}.item_sku ;;
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

  dimension: product_url {
    type: string
    sql: ${TABLE}.product_url ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
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
      item_name,
      items.id,
      items.name,
      items.supplier_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id
    ]
  }
}
