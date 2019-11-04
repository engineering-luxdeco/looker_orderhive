view: amazon_feed_submission_result_errors {
  sql_table_name: luxdeco_prod.amazon_feed_submission_result_errors ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: amazon_order_id {
    type: string
    sql: ${TABLE}.amazon_order_id ;;
  }

  dimension: feed_submission_id {
    type: string
    sql: ${TABLE}.feed_submission_id ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: result_code {
    type: string
    sql: ${TABLE}.result_code ;;
  }

  dimension: result_description {
    type: string
    sql: ${TABLE}.result_description ;;
  }

  dimension: result_message_code {
    type: number
    sql: ${TABLE}.result_message_code ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
