view: amazon_feeds {
  sql_table_name: luxdeco_prod.amazon_feeds ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: interval_in_minutes {
    type: number
    sql: ${TABLE}.interval_in_minutes ;;
  }

  dimension_group: last_feed_submitted {
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
    sql: ${TABLE}.last_feed_submitted_on ;;
  }

  dimension_group: last_message_updated {
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
    sql: ${TABLE}.last_message_updated_on ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stores.id, stores.warehouse_name, stores.name]
  }
}
