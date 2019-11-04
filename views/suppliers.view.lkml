view: suppliers {
  sql_table_name: luxdeco_prod.suppliers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bank_account {
    type: string
    sql: ${TABLE}.bank_account ;;
  }

  dimension: bank_account_name {
    type: string
    sql: ${TABLE}.bank_account_name ;;
  }

  dimension: bank_branch {
    type: string
    sql: ${TABLE}.bank_branch ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.bank_name ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.commission ;;
  }

  dimension: complete_store_address {
    type: string
    sql: ${TABLE}.complete_store_address ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
  }

  dimension: contract_period {
    type: string
    sql: ${TABLE}.contract_period ;;
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

  dimension: ifsc_code {
    type: string
    sql: ${TABLE}.ifsc_code ;;
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

  dimension: pan_number {
    type: string
    sql: ${TABLE}.pan_number ;;
  }

  dimension: store_head_designation {
    type: string
    sql: ${TABLE}.store_head_designation ;;
  }

  dimension: store_head_email {
    type: string
    sql: ${TABLE}.store_head_email ;;
  }

  dimension: store_head_name {
    type: string
    sql: ${TABLE}.store_head_name ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: vat_number {
    type: string
    sql: ${TABLE}.vat_number ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      store_head_name,
      store_name,
      bank_account_name,
      bank_name,
      brand_name,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      inventorystatus.count,
      items.count,
      items_suppliers.count
    ]
  }
}
