view: printer_setups {
  sql_table_name: luxdeco_prod.printer_setups ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: configuration {
    type: string
    sql: ${TABLE}.configuration ;;
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

  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
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

  dimension: printer_id {
    type: string
    sql: ${TABLE}.printer_id ;;
  }

  dimension: printhive_account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.printhive_account_id ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, printhive_accounts.id]
  }
}
