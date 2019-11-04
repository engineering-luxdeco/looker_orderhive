view: stock_transfers {
  sql_table_name: luxdeco_prod.stock_transfers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}.courier_name ;;
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

  dimension: from_warehouse_id {
    type: number
    sql: ${TABLE}.from_warehouse_id ;;
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

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: to_warehouse_id {
    type: number
    sql: ${TABLE}.to_warehouse_id ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension_group: transfer {
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
    sql: ${TABLE}.transfer_date ;;
  }

  dimension: transfer_inc_id {
    type: number
    sql: ${TABLE}.transfer_inc_id ;;
  }

  dimension: transfer_quantity {
    type: number
    sql: ${TABLE}.transfer_quantity ;;
  }

  dimension: transfer_status {
    type: yesno
    sql: ${TABLE}.transfer_status ;;
  }

  dimension: transfer_total {
    type: number
    sql: ${TABLE}.transfer_total ;;
  }

  measure: count {
    type: count
    drill_fields: [id, courier_name, comments.count, stock_transfer_items.count]
  }
}
