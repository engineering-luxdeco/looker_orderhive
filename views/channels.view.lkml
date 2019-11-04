view: channels {
  sql_table_name: luxdeco_prod.channels ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
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

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
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

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: small_logo {
    type: string
    sql: ${TABLE}.small_logo ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      channel_prerequisites.count,
      contacts_stores.count,
      failed_attempt_stores.count,
      invoices_stores.count,
      items_stores.count,
      orderlogs.count,
      payments.count,
      payment_stores.count,
      purchaselogs.count,
      purchase_orders_billings.count,
      purchase_orders_stores.count,
      return_orders.count,
      sales_orders.count,
      sales_orders_stores.count,
      shipping_stores.count,
      stores.count,
      taxes.count,
      transactions.count
    ]
  }
}
