view: item_bundles {
  sql_table_name: luxdeco_prod.item_bundles ;;
  drill_fields: [item_bundle_id]

  dimension: item_bundle_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.item_bundle_id ;;
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

  dimension: item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_id ;;
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

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: count {
    type: count
    drill_fields: [item_bundle_id, items.id, items.name, items.supplier_name]
  }
}
