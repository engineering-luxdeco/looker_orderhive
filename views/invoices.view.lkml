view: invoices {
  sql_table_name: luxdeco_prod.invoices ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
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

  dimension_group: duedate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.duedate ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_extra_items {
    type: string
    sql: ${TABLE}.invoice_extra_items ;;
  }

  dimension: invoice_inc_id {
    type: number
    sql: ${TABLE}.invoice_inc_id ;;
  }

  dimension: invoice_items {
    type: string
    sql: ${TABLE}.invoice_items ;;
  }

  dimension: invoice_total {
    type: number
    sql: ${TABLE}.invoice_total ;;
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

  dimension: payment_term {
    type: string
    sql: ${TABLE}.payment_term ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}.status ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      invoices_stores.count,
      payments.count
    ]
  }
}
