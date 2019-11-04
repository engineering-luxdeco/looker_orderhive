view: couriers {
  sql_table_name: luxdeco_prod.couriers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: other_name {
    type: string
    sql: ${TABLE}.other_name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: web_url {
    type: string
    sql: ${TABLE}.web_url ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, other_name, courier_account_numbers.count]
  }
}
