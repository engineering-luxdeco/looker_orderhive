view: customs_informations {
  sql_table_name: luxdeco_prod.customs_informations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aes_itn {
    type: string
    sql: ${TABLE}.aes_itn ;;
  }

  dimension: content_description {
    type: string
    sql: ${TABLE}.content_description ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
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

  dimension: customs_declaration {
    type: yesno
    sql: ${TABLE}.customs_declaration ;;
  }

  dimension: eel_pfc {
    type: string
    sql: ${TABLE}.eel_pfc ;;
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

  dimension: non_delivery_option {
    type: string
    sql: ${TABLE}.non_delivery_option ;;
  }

  dimension: signer {
    type: string
    sql: ${TABLE}.signer ;;
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
