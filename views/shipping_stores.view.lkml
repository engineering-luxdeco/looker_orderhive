view: shipping_stores {
  sql_table_name: luxdeco_prod.shipping_stores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
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

  dimension: key1 {
    type: string
    sql: ${TABLE}.key1 ;;
  }

  dimension: key2 {
    type: string
    sql: ${TABLE}.key2 ;;
  }

  dimension: key3 {
    type: string
    sql: ${TABLE}.key3 ;;
  }

  dimension: key4 {
    type: string
    sql: ${TABLE}.key4 ;;
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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: store_config {
    type: string
    sql: ${TABLE}.store_config ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, channels.id]
  }
}
