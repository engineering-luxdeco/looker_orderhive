view: user_details {
  sql_table_name: luxdeco_prod.user_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: auto_invoice {
    type: yesno
    sql: ${TABLE}.auto_invoice ;;
  }

  dimension: auto_recharge {
    type: yesno
    sql: ${TABLE}.auto_recharge ;;
  }

  dimension: backorder {
    type: number
    sql: ${TABLE}.backorder ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

  dimension: card_id {
    type: string
    sql: ${TABLE}.card_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: contact_no {
    type: string
    sql: ${TABLE}.contact_no ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
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

  dimension: credit_number {
    type: string
    sql: ${TABLE}.credit_number ;;
  }

  dimension: cst_no {
    type: string
    sql: ${TABLE}.cst_no ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension: custom_template {
    type: string
    sql: ${TABLE}.custom_template ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customs_info_template {
    type: string
    sql: ${TABLE}.customs_info_template ;;
  }

  dimension: date_format {
    type: string
    sql: ${TABLE}.date_format ;;
  }

  dimension: default_store_id {
    type: number
    sql: ${TABLE}.default_store_id ;;
  }

  dimension: demo_data {
    type: yesno
    sql: ${TABLE}.demo_data ;;
  }

  dimension: dropship {
    type: number
    sql: ${TABLE}.dropship ;;
  }

  dimension: dropship_template {
    type: string
    sql: ${TABLE}.dropship_template ;;
  }

  dimension: easypost_userid {
    type: string
    sql: ${TABLE}.easypost_userid ;;
  }

  dimension: enable_amazonfba {
    type: number
    sql: ${TABLE}.enable_amazonfba ;;
  }

  dimension: enable_b2b {
    type: number
    sql: ${TABLE}.enable_b2b ;;
  }

  dimension: enable_barcode {
    type: yesno
    sql: ${TABLE}.enable_barcode ;;
  }

  dimension: enable_deliverydate {
    type: number
    sql: ${TABLE}.enable_deliverydate ;;
  }

  dimension: enable_location {
    type: yesno
    sql: ${TABLE}.enable_location ;;
  }

  dimension: enable_printhive {
    type: yesno
    sql: ${TABLE}.enable_printhive ;;
  }

  dimension: enable_tracking {
    type: number
    sql: ${TABLE}.enable_tracking ;;
  }

  dimension: fiscal_month {
    type: string
    sql: ${TABLE}.fiscal_month ;;
  }

  dimension: invoice_template {
    type: string
    sql: ${TABLE}.invoice_template ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
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

  dimension: order_summary {
    type: yesno
    sql: ${TABLE}.order_summary ;;
  }

  dimension: package_template {
    type: string
    sql: ${TABLE}.package_template ;;
  }

  dimension: packing_option {
    type: string
    sql: ${TABLE}.packing_option ;;
  }

  dimension: packing_weight {
    type: string
    sql: ${TABLE}.packing_weight ;;
  }

  dimension: payment_template {
    type: string
    sql: ${TABLE}.payment_template ;;
  }

  dimension: po_template {
    type: string
    sql: ${TABLE}.po_template ;;
  }

  dimension: record_limit {
    type: string
    sql: ${TABLE}.record_limit ;;
  }

  dimension: return_order {
    type: number
    sql: ${TABLE}.return_order ;;
  }

  dimension: setting_switch {
    type: string
    sql: ${TABLE}.setting_switch ;;
  }

  dimension: shipment_template {
    type: string
    sql: ${TABLE}.shipment_template ;;
  }

  dimension: shopify_review {
    type: number
    sql: ${TABLE}.shopify_review ;;
  }

  dimension: show_canceled_orders {
    type: number
    sql: ${TABLE}.show_canceled_orders ;;
  }

  dimension: show_delivered_orders {
    type: number
    sql: ${TABLE}.show_delivered_orders ;;
  }

  dimension: show_returned_orders {
    type: number
    sql: ${TABLE}.show_returned_orders ;;
  }

  dimension: so_template {
    type: string
    sql: ${TABLE}.so_template ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: store_setup {
    type: number
    sql: ${TABLE}.store_setup ;;
  }

  dimension: stripe_amount {
    type: number
    sql: ${TABLE}.stripe_amount ;;
  }

  dimension: stripe_recharge {
    type: number
    sql: ${TABLE}.stripe_recharge ;;
  }

  dimension: stripe_threshold {
    type: number
    sql: ${TABLE}.stripe_threshold ;;
  }

  dimension: tax_calculation {
    type: number
    sql: ${TABLE}.tax_calculation ;;
  }

  dimension: tax_label {
    type: string
    sql: ${TABLE}.tax_label ;;
  }

  dimension: tax_label_value {
    type: string
    sql: ${TABLE}.tax_label_value ;;
  }

  dimension: tax_option {
    type: string
    sql: ${TABLE}.tax_option ;;
  }

  dimension: tax_type {
    type: number
    sql: ${TABLE}.tax_type ;;
  }

  dimension: thermal_slip_template {
    type: string
    sql: ${TABLE}.thermal_slip_template ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}.threshold ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: vat_tin {
    type: string
    sql: ${TABLE}.vat_tin ;;
  }

  dimension: wallet_limit {
    type: number
    sql: ${TABLE}.wallet_limit ;;
  }

  dimension: wallet_total {
    type: number
    sql: ${TABLE}.wallet_total ;;
  }

  dimension: website_url {
    type: string
    sql: ${TABLE}.website_url ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      country_name,
      company_name,
      users.id,
      users.name,
      users.username
    ]
  }
}
