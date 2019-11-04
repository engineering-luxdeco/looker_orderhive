view: user_resync_activities {
  sql_table_name: luxdeco_prod.user_resync_activities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity {
    type: string
    sql: ${TABLE}.activity ;;
  }

  dimension_group: last_resync_attempt {
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
    sql: ${TABLE}.last_resync_attempt_date ;;
  }

  dimension: max_attempts {
    type: yesno
    sql: ${TABLE}.max_attempts ;;
  }

  dimension: resync_attempts {
    type: yesno
    sql: ${TABLE}.resync_attempts ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: time_interval {
    type: number
    sql: ${TABLE}.time_interval ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stores.id, stores.warehouse_name, stores.name]
  }
}
