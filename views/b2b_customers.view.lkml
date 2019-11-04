view: b2b_customers {
  sql_table_name: luxdeco_prod.b2b_customers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: billing_portal_url {
    type: string
    sql: ${TABLE}.billing_portal_url ;;
  }

  dimension_group: canceled {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.canceled_date ;;
  }

  dimension: chargify_customer_id {
    type: number
    sql: ${TABLE}.chargify_customer_id ;;
  }

  dimension: chargify_subscription_id {
    type: number
    sql: ${TABLE}.chargify_subscription_id ;;
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

  dimension: expired {
    type: yesno
    sql: ${TABLE}.expired ;;
  }

  dimension_group: expired {
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
    sql: ${TABLE}.expired_date ;;
  }

  dimension: extend {
    type: yesno
    sql: ${TABLE}.extend ;;
  }

  dimension: invite {
    type: yesno
    sql: ${TABLE}.invite ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.last_login ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.plan_id ;;
  }

  dimension: role {
    type: number
    sql: ${TABLE}.role ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension_group: url_expires {
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
    sql: ${TABLE}.url_expires_date ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      username,
      plans.name,
      plans.plan_identifier,
      roles.id,
      roles.name
    ]
  }
}
