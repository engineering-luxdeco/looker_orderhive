view: role_details {
  sql_table_name: luxdeco_prod.role_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _create {
    type: yesno
    sql: ${TABLE}._create ;;
  }

  dimension: _delete {
    type: yesno
    sql: ${TABLE}._delete ;;
  }

  dimension: _other {
    type: string
    sql: ${TABLE}._other ;;
  }

  dimension: _update {
    type: yesno
    sql: ${TABLE}._update ;;
  }

  dimension: _view {
    type: yesno
    sql: ${TABLE}._view ;;
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

  dimension: module {
    type: string
    sql: ${TABLE}.module ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, roles.id, roles.name]
  }
}
