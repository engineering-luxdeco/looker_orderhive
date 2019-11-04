view: user_check {
  sql_table_name: luxdeco_prod.user_check ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
