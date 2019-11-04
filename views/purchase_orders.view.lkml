view: purchase_orders {
  sql_table_name: luxdeco_prod.purchase_orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attention {
    type: string
    sql: ${TABLE}.attention ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: delivery_address {
    type: string
    sql: ${TABLE}.delivery_address ;;
  }

  dimension: delivery_instruction {
    type: string
    sql: ${TABLE}.delivery_instruction ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_date ;;
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

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension_group: paid_podate {
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
    sql: ${TABLE}.paid_podate ;;
  }

  dimension: payment_status {
    type: number
    sql: ${TABLE}.payment_status ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.payment_term ;;
  }

  dimension: po_status {
    type: number
    sql: ${TABLE}.po_status ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: purchase_inc_id {
    type: string
    sql: ${TABLE}.purchase_inc_id ;;
  }

  dimension_group: raise_podate {
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
    sql: ${TABLE}.raise_podate ;;
  }

  dimension_group: received_podate {
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
    sql: ${TABLE}.received_podate ;;
  }

  dimension: received_total {
    type: number
    sql: ${TABLE}.received_total ;;
  }

  dimension: returnpolicy {
    type: string
    sql: ${TABLE}.returnpolicy ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: days_expected_to_delivered {
    type: number
    sql: datediff(${received_podate_date}, ${expected_delivery_date}) ;;
  }

  measure: num_orders {
    type: count_distinct
    sql: ${id} ;;
  }

  measure: num_delivered_on_time {
    type: count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: days_expected_to_delivered
      value: ">= 0"
    }
  }

  measure: avg_expected_to_delivered {
    type: average
    sql: ${days_expected_to_delivered} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      supplier_name,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      comments.count,
      purchaselogs.count,
      purchase_orders_billings.count,
      purchase_orders_stores.count,
      purchase_order_extra_items.count,
      purchase_order_items.count
    ]
  }
}
