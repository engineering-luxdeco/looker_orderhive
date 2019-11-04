view: tags_links {
  sql_table_name: luxdeco_prod.tags_links ;;
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

  dimension: linked_id {
    type: number
    sql: ${TABLE}.linked_id ;;
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

  dimension: tag_color {
    type: string
    sql: ${TABLE}.tag_color ;;
  }

  dimension: tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tag_id ;;
  }

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tag_name, tags.id, tags.name]
  }
}
