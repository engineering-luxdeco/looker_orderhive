view: comments {
  sql_table_name: luxdeco_prod.comments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_order_id ;;
  }

  dimension: stock_transfer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stock_transfer_id ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
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
      users.id,
      users.name,
      users.username,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      purchase_orders.id,
      purchase_orders.supplier_name,
      stock_transfers.id,
      stock_transfers.courier_name
    ]
  }
}
