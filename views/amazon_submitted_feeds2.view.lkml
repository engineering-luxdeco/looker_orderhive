view: amazon_submitted_feeds2 {
  sql_table_name: luxdeco_prod.amazon_submitted_feeds2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed_processing {
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
    sql: ${TABLE}.completed_processing_date ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: error_message_count {
    type: number
    sql: ${TABLE}.error_message_count ;;
  }

  dimension: feed_processing_status {
    type: string
    sql: ${TABLE}.feed_processing_status ;;
  }

  dimension: feed_submission_id {
    type: string
    sql: ${TABLE}.feed_submission_id ;;
  }

  dimension: feed_type {
    type: yesno
    sql: ${TABLE}.feed_type ;;
  }

  dimension: message_count {
    type: number
    sql: ${TABLE}.message_count ;;
  }

  dimension: processed_message_count {
    type: number
    sql: ${TABLE}.processed_message_count ;;
  }

  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
  }

  dimension_group: started_processing {
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
    sql: ${TABLE}.started_processing_date ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension_group: submitted {
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
    sql: ${TABLE}.submitted_date ;;
  }

  dimension: successful_message_count {
    type: number
    sql: ${TABLE}.successful_message_count ;;
  }

  dimension: warning_message_count {
    type: number
    sql: ${TABLE}.warning_message_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stores.id, stores.warehouse_name, stores.name]
  }
}
