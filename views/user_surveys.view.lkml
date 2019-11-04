view: user_surveys {
  sql_table_name: luxdeco_prod.user_surveys ;;
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

  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
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

  dimension: monthly_orders {
    type: string
    sql: ${TABLE}.monthly_orders ;;
  }

  dimension: number_of_channels {
    type: string
    sql: ${TABLE}.number_of_channels ;;
  }

  dimension: number_of_skus {
    type: string
    sql: ${TABLE}.number_of_skus ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
