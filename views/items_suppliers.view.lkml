view: items_suppliers {
  sql_table_name: luxdeco_prod.items_suppliers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: buy_price {
    type: number
    sql: ${TABLE}.buy_price ;;
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

  dimension: default_value {
    type: number
    sql: ${TABLE}.default_value ;;
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

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
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
      suppliers.id,
      suppliers.store_head_name,
      suppliers.store_name,
      suppliers.bank_account_name,
      suppliers.bank_name,
      suppliers.brand_name
    ]
  }
}
