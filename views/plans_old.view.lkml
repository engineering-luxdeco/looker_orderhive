view: plans_old {
  sql_table_name: luxdeco_prod.plans_old ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channels {
    type: string
    sql: ${TABLE}.channels ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plan_handle {
    type: string
    sql: ${TABLE}.plan_handle ;;
  }

  dimension: plan_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.plan_identifier ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: users {
    type: string
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
