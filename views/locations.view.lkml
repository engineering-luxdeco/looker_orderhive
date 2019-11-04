view: locations {
  sql_table_name: luxdeco_prod.locations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: is_default {
    type: string
    sql: ${TABLE}.is_default ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
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

  dimension: movable {
    type: yesno
    sql: ${TABLE}.movable ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: type {
    type: yesno
    sql: ${TABLE}.type ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, warehouses.id, warehouses.country_name, warehouses.name, item_locations.count]
  }
}
