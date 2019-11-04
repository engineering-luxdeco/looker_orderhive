view: automations {
  sql_table_name: luxdeco_prod.automations ;;
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

  dimension: module_name {
    type: string
    sql: ${TABLE}.module_name ;;
  }

  dimension: module_parameter {
    type: string
    sql: ${TABLE}.module_parameter ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rule {
    type: string
    sql: ${TABLE}.rule ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: success_count {
    type: number
    sql: ${TABLE}.success_count ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, module_name]
  }
}
