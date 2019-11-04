view: plans {
  sql_table_name: luxdeco_prod.plans ;;
  drill_fields: [plan_identifier]

  dimension: plan_identifier {
    primary_key: yes
    type: number
    sql: ${TABLE}.plan_identifier ;;
  }

  dimension: accounting_channels {
    type: yesno
    sql: ${TABLE}.accounting_channels ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: add_on {
    type: string
    sql: ${TABLE}.add_on ;;
  }

  dimension: amazon_mcf {
    type: yesno
    sql: ${TABLE}.amazon_mcf ;;
  }

  dimension: billing_type {
    type: yesno
    sql: ${TABLE}.billing_type ;;
  }

  dimension: bundling_kitting {
    type: yesno
    sql: ${TABLE}.bundling_kitting ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: orderhive_api {
    type: yesno
    sql: ${TABLE}.orderhive_api ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: plan_handle {
    type: string
    sql: ${TABLE}.plan_handle ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: save_per {
    type: number
    sql: ${TABLE}.save_per ;;
  }

  dimension: shipments {
    type: number
    sql: ${TABLE}.shipments ;;
  }

  dimension: trackings {
    type: number
    sql: ${TABLE}.trackings ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: users {
    type: string
    sql: ${TABLE}.users ;;
  }

  dimension: warehouses {
    type: string
    sql: ${TABLE}.warehouses ;;
  }

  measure: count {
    type: count
    drill_fields: [plan_identifier, name, b2b_customers.count, users.count]
  }
}
