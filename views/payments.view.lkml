view: payments {
  sql_table_name: luxdeco_prod.payments ;;
  drill_fields: [payment_id]

  dimension: payment_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.payment_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
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

  dimension: invoice_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: lastdigits {
    type: string
    sql: ${TABLE}.lastdigits ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
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

  dimension: payment_inc_id {
    type: number
    sql: ${TABLE}.payment_inc_id ;;
  }

  dimension: refund {
    type: yesno
    sql: ${TABLE}.refund ;;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}.remark ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension_group: sync_created {
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
    sql: ${TABLE}.sync_created ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: type {
    type: yesno
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      payment_id,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id,
      invoices.id,
      payment_stores.count
    ]
  }
}
