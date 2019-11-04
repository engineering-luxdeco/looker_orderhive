view: pre_defined_customs_items {
  sql_table_name: luxdeco_prod.pre_defined_customs_items ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hs_tariff_number {
    type: string
    sql: ${TABLE}.hs_tariff_number ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}.origin_country ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.weight_unit ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
