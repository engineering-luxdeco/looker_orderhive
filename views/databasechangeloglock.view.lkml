view: databasechangeloglock {
  sql_table_name: luxdeco_prod.DATABASECHANGELOGLOCK ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: locked {
    type: string
    sql: ${TABLE}.LOCKED ;;
  }

  dimension: lockedby {
    type: string
    sql: ${TABLE}.LOCKEDBY ;;
  }

  dimension_group: lockgranted {
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
    sql: ${TABLE}.LOCKGRANTED ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
