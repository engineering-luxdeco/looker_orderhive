view: currencies {
  sql_table_name: luxdeco_prod.currencies ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base {
    type: yesno
    sql: ${TABLE}.base ;;
  }

  dimension: base_iso {
    type: string
    sql: ${TABLE}.base_iso ;;
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

  dimension: currency_iso {
    type: string
    sql: ${TABLE}.currency_iso ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.currency_name ;;
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.currency_symbol ;;
  }

  dimension: manually {
    type: yesno
    sql: ${TABLE}.manually ;;
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

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, currency_name]
  }
}
