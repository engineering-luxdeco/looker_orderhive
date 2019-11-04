view: combined_items {
  sql_table_name: luxdeco_prod.combined_items ;;
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

  dimension: from_item_id {
    type: number
    sql: ${TABLE}.from_item_id ;;
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

  dimension: to_item_id {
    type: number
    sql: ${TABLE}.to_item_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
