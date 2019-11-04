view: couriers_slug_list {
  sql_table_name: luxdeco_prod.couriers_slug_list ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: trackhive_flag {
    type: yesno
    sql: ${TABLE}.trackhive_flag ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
