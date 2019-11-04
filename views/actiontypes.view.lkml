view: actiontypes {
  sql_table_name: luxdeco_prod.actiontypes ;;
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

  dimension: operations {
    type: string
    sql: ${TABLE}.operations ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
