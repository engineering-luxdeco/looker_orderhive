view: contacts {
  sql_table_name: luxdeco_prod.contacts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: price_id {
    type: number
    sql: ${TABLE}.price_id ;;
  }

  dimension: supplier_flag {
    type: yesno
    sql: ${TABLE}.supplier_flag ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: type {
    type: number
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
      name,
      first_name,
      last_name,
      addresses.count,
      b2b_carts.count,
      b2b_contacts_users.count,
      comments.count,
      contacts_stores.count,
      invoices.count,
      purchase_orders.count,
      sales_orders.count,
      suppliers.count
    ]
  }
}
