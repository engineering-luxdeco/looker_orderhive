view: purchaselogs {
  sql_table_name: luxdeco_prod.purchaselogs ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.action_type_id ;;
  }

  dimension: actual_user_id {
    type: number
    sql: ${TABLE}.actual_user_id ;;
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

  dimension: purchase_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.purchase_order_id ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, purchase_orders.id, purchase_orders.supplier_name, channels.id]
  }
}
