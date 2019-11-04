view: sales_orders {
  sql_table_name: luxdeco_prod.sales_orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: b2b_store_id {
    type: number
    sql: ${TABLE}.b2b_store_id ;;
  }

  dimension: backorderstatus {
    type: number
    sql: ${TABLE}.backorderstatus ;;
  }

  dimension: base_currency_rate {
    type: number
    sql: ${TABLE}.base_currency_rate ;;
  }

  dimension: billing_address {
    type: string
    sql: ${TABLE}.billing_address ;;
  }

  dimension: billing_address_2 {
    type: string
    sql: ${TABLE}.billing_address_2 ;;
  }

  dimension: billing_address_id {
    type: number
    sql: ${TABLE}.billing_address_id ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_company {
    type: string
    sql: ${TABLE}.billing_company ;;
  }

  dimension: billing_contact {
    type: string
    sql: ${TABLE}.billing_contact ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.billing_country ;;
  }

  dimension: billing_country_code {
    type: string
    sql: ${TABLE}.billing_country_code ;;
  }

  dimension: billing_email {
    type: string
    sql: ${TABLE}.billing_email ;;
  }

  dimension: billing_name {
    type: string
    sql: ${TABLE}.billing_name ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: billing_zipcode {
    type: string
    sql: ${TABLE}.billing_zipcode ;;
  }

  dimension: cancel_status {
    type: string
    sql: ${TABLE}.cancel_status ;;
  }

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_identifier {
    type: string
    sql: ${TABLE}.channel_identifier ;;
  }

  dimension: channel_order_id {
    type: string
    sql: ${TABLE}.channel_order_id ;;
  }

  dimension: channel_order_number {
    type: string
    sql: ${TABLE}.channel_order_number ;;
  }

  dimension: channel_shipping_address_id {
    type: string
    sql: ${TABLE}.channel_shipping_address_id ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: delivery {
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
    sql: ${TABLE}.delivery_date ;;
  }

  dimension: delivery_note {
    type: string
    sql: ${TABLE}.delivery_note ;;
  }

  dimension: delivery_preference {
    type: number
    sql: ${TABLE}.delivery_preference ;;
  }

  dimension: discount_codes {
    type: string
    sql: ${TABLE}.discount_codes ;;
  }

  dimension: export_type {
    type: yesno
    sql: ${TABLE}.export_type ;;
  }

  dimension: grand_total {
    type: number
    sql: ${TABLE}.grand_total ;;
  }

  dimension_group: hold {
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
    sql: ${TABLE}.hold_date ;;
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.invoice_status ;;
  }

  dimension: is_prime {
    type: string
    sql: ${TABLE}.is_prime ;;
  }

  dimension: mcf_status {
    type: yesno
    sql: ${TABLE}.mcf_status ;;
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

  dimension: order_status {
    type: number
    sql: ${TABLE}.order_status ;;
  }

  dimension: parent_order_id {
    type: number
    sql: ${TABLE}.parent_order_id ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.payment_method ;;
  }

  dimension: payment_status {
    type: number
    sql: ${TABLE}.payment_status ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: requested_method {
    type: string
    sql: ${TABLE}.requested_method ;;
  }

  dimension: requested_service {
    type: string
    sql: ${TABLE}.requested_service ;;
  }

  dimension: ship_addr_status {
    type: string
    sql: ${TABLE}.ship_addr_status ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_address_2 {
    type: string
    sql: ${TABLE}.shipping_address_2 ;;
  }

  dimension: shipping_address_id {
    type: number
    sql: ${TABLE}.shipping_address_id ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_company {
    type: string
    sql: ${TABLE}.shipping_company ;;
  }

  dimension: shipping_contact {
    type: string
    sql: ${TABLE}.shipping_contact ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country ;;
  }

  dimension: shipping_country_code {
    type: string
    sql: ${TABLE}.shipping_country_code ;;
  }

  dimension: shipping_email {
    type: string
    sql: ${TABLE}.shipping_email ;;
  }

  dimension: shipping_name {
    type: string
    sql: ${TABLE}.shipping_name ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_zipcode {
    type: string
    sql: ${TABLE}.shipping_zipcode ;;
  }

  dimension: shipstation_sync {
    type: string
    sql: ${TABLE}.shipstation_sync ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension_group: sync_created {
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
    sql: ${TABLE}.sync_created ;;
  }

  dimension_group: sync_modified {
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
    sql: ${TABLE}.sync_modified ;;
  }

  dimension: tax_calculation {
    type: number
    sql: ${TABLE}.tax_calculation ;;
  }

  dimension: tax_type {
    type: yesno
    sql: ${TABLE}.tax_type ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: xero_sync {
    type: string
    sql: ${TABLE}.xero_sync ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      billing_name,
      shipping_name,
      contacts.id,
      contacts.name,
      contacts.first_name,
      contacts.last_name,
      channels.id,
      stores.id,
      stores.warehouse_name,
      stores.name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      inventoryprofit.count,
      invoices.count,
      invoices_stores.count,
      itemlogs.count,
      orderlogs.count,
      packages.count,
      payments.count,
      purchase_order_items.count,
      return_orders.count,
      sales_orders_stores.count,
      sales_order_access_controls.count,
      sales_order_extra_items.count,
      sales_order_files.count,
      sales_order_items.count,
      shipments.count
    ]
  }
}
