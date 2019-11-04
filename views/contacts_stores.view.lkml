view: contacts_stores {
  sql_table_name: luxdeco_prod.contacts_stores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: channel_data {
    type: string
    sql: ${TABLE}.channel_data ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
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

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
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

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      channels.id
    ]
  }
}
