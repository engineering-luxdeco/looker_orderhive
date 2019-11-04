view: _sequence {
  sql_table_name: luxdeco_prod._sequence ;;

  dimension: seq_group {
    type: string
    sql: ${TABLE}.seq_group ;;
  }

  dimension: seq_name {
    type: string
    sql: ${TABLE}.seq_name ;;
  }

  dimension: seq_val {
    type: number
    sql: ${TABLE}.seq_val ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  measure: count {
    type: count
    drill_fields: [seq_name]
  }
}
