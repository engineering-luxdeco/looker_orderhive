view: shipment_batches {
  sql_table_name: luxdeco_prod.shipment_batches ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}.batch_id ;;
  }

  dimension: batch_status {
    type: string
    sql: ${TABLE}.batch_status ;;
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

  dimension: form_url {
    type: string
    sql: ${TABLE}.form_url ;;
  }

  dimension: manifest_id {
    type: string
    sql: ${TABLE}.manifest_id ;;
  }

  dimension: manifest_status {
    type: string
    sql: ${TABLE}.manifest_status ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
