view: amazon_submitted_feeds {
  sql_table_name: luxdeco_prod.amazon_submitted_feeds ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: feed_submission_id {
    type: string
    sql: ${TABLE}.feed_submission_id ;;
  }

  dimension: feed_type {
    type: yesno
    sql: ${TABLE}.feed_type ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.message_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.task_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stores.id, stores.warehouse_name, stores.name]
  }
}
