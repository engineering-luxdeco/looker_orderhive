view: dropshipments {
  sql_table_name: luxdeco_prod.dropshipments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: child_order_id {
    type: number
    sql: ${TABLE}.child_order_id ;;
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

  dimension: dropship_extra_items {
    type: string
    sql: ${TABLE}.dropship_extra_items ;;
  }

  dimension: dropship_inc_id {
    type: number
    sql: ${TABLE}.dropship_inc_id ;;
  }

  dimension: dropship_items {
    type: string
    sql: ${TABLE}.dropship_items ;;
  }

  dimension: dropship_status {
    type: yesno
    sql: ${TABLE}.dropship_status ;;
  }

  dimension: dropshipper_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dropshipper_id ;;
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

  dimension: parent_order_id {
    type: number
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: parent_order_items {
    type: string
    sql: ${TABLE}.parent_order_items ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dropshippers.id, dropshippers.name]
  }
}
