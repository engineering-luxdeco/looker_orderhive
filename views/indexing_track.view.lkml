view: indexing_track {
  sql_table_name: luxdeco_prod.indexing_track ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: last_sync {
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
    sql: ${TABLE}.last_sync_time ;;
  }

  dimension: sync_interval {
    type: number
    sql: ${TABLE}.sync_interval ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
