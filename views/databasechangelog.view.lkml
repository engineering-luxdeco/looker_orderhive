view: databasechangelog {
  sql_table_name: luxdeco_prod.DATABASECHANGELOG ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.AUTHOR ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contexts {
    type: string
    sql: ${TABLE}.CONTEXTS ;;
  }

  dimension_group: dateexecuted {
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
    sql: ${TABLE}.DATEEXECUTED ;;
  }

  dimension: deployment_id {
    type: string
    sql: ${TABLE}.DEPLOYMENT_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: exectype {
    type: string
    sql: ${TABLE}.EXECTYPE ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.FILENAME ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.LABELS ;;
  }

  dimension: liquibase {
    type: string
    sql: ${TABLE}.LIQUIBASE ;;
  }

  dimension: md5_sum {
    type: string
    sql: ${TABLE}.MD5SUM ;;
  }

  dimension: orderexecuted {
    type: number
    sql: ${TABLE}.ORDEREXECUTED ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}.TAG ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filename]
  }
}
