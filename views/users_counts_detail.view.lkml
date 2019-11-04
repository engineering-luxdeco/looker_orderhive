view: users_counts_detail {
  sql_table_name: luxdeco_prod.users_counts_detail ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accounting_integrations {
    type: number
    sql: ${TABLE}.accounting_integrations ;;
  }

  dimension: activity_history {
    type: string
    sql: ${TABLE}.activity_history ;;
  }

  dimension: amazon_mcf {
    type: yesno
    sql: ${TABLE}.amazon_mcf ;;
  }

  dimension: bundling_kitting {
    type: yesno
    sql: ${TABLE}.bundling_kitting ;;
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

  dimension: integrations {
    type: number
    sql: ${TABLE}.integrations ;;
  }

  dimension: integrations_addon {
    type: number
    sql: ${TABLE}.integrations_addon ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated_date ;;
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

  dimension: order_addon {
    type: number
    sql: ${TABLE}.order_addon ;;
  }

  dimension: orderhive_api {
    type: yesno
    sql: ${TABLE}.orderhive_api ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.orders ;;
  }

  dimension: shipment_addon {
    type: number
    sql: ${TABLE}.shipment_addon ;;
  }

  dimension: shipments {
    type: number
    sql: ${TABLE}.shipments ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: trackings {
    type: number
    sql: ${TABLE}.trackings ;;
  }

  dimension: update_activity {
    type: string
    sql: ${TABLE}.update_activity ;;
  }

  dimension: user_addon {
    type: number
    sql: ${TABLE}.user_addon ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  dimension: warehouse_addon {
    type: number
    sql: ${TABLE}.warehouse_addon ;;
  }

  dimension: warehouses {
    type: number
    sql: ${TABLE}.warehouses ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.username]
  }
}
