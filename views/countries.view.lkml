view: countries {
  sql_table_name: luxdeco_prod.countries ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cents {
    type: string
    sql: ${TABLE}.cents ;;
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

  dimension: iso {
    type: string
    sql: ${TABLE}.iso ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: iso_numeric {
    type: number
    sql: ${TABLE}.iso_numeric ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: zero_currency {
    type: string
    sql: ${TABLE}.zero_currency ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, currency_name]
  }
}
