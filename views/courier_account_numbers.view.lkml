view: courier_account_numbers {
  sql_table_name: luxdeco_prod.courier_account_numbers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: courier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.courier_id ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}.courier_name ;;
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

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courier_name, couriers.id, couriers.name, couriers.other_name]
  }
}
