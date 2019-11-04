view: last_access_records {
  sql_table_name: luxdeco_prod.last_access_records ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_order_id {
    type: string
    sql: ${TABLE}.last_order_id ;;
  }

  dimension: last_order_page {
    type: number
    sql: ${TABLE}.last_order_page ;;
  }

  dimension_group: last_order_to {
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
    sql: ${TABLE}.last_order_to_date ;;
  }

  dimension_group: last_token_generation {
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
    sql: ${TABLE}.last_token_generation_time ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stores.id, stores.warehouse_name, stores.name, stores.count]
  }
}
