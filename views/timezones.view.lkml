view: timezones {
  sql_table_name: luxdeco_prod.timezones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
