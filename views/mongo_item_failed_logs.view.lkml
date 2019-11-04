view: mongo_item_failed_logs {
  sql_table_name: luxdeco_prod.mongo_item_failed_logs ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: collection_name {
    type: string
    sql: ${TABLE}.collection_name ;;
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

  dimension: document_obj {
    type: string
    sql: ${TABLE}.document_obj ;;
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

  dimension: retry_count {
    type: number
    sql: ${TABLE}.retry_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id, collection_name]
  }
}
