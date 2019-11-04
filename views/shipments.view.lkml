view: shipments {
  sql_table_name: luxdeco_prod.shipments ;;
  drill_fields: [parent_shipment_id]

  dimension: parent_shipment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.parent_shipment_id ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }

  dimension: channel_order_number {
    type: string
    sql: ${TABLE}.channel_order_number ;;
  }

  dimension: channel_shipment_id {
    type: string
    sql: ${TABLE}.channel_shipment_id ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}.courier_name ;;
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

  dimension_group: delivery {
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
    sql: ${TABLE}.delivery_date ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_date ;;
  }

  dimension: fulfillment_store_id {
    type: number
    sql: ${TABLE}.fulfillment_store_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_void {
    type: string
    sql: ${TABLE}.is_void ;;
  }

  dimension: label_url {
    type: string
    sql: ${TABLE}.label_url ;;
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

  dimension: other_shipping_method {
    type: string
    sql: ${TABLE}.other_shipping_method ;;
  }

  dimension: package_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.package_id ;;
  }

  dimension: refund_status {
    type: string
    sql: ${TABLE}.refund_status ;;
  }

  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }

  dimension: return_order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.return_order_id ;;
  }

  dimension: sales_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sales_order_id ;;
  }

  dimension: sales_order_store_id {
    type: number
    sql: ${TABLE}.sales_order_store_id ;;
  }

  dimension: shipment_data {
    type: string
    sql: ${TABLE}.shipment_data ;;
  }

  dimension: shipment_inc_id {
    type: number
    sql: ${TABLE}.shipment_inc_id ;;
  }

  dimension: shipment_status {
    type: yesno
    sql: ${TABLE}.shipment_status ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_address_2 {
    type: string
    sql: ${TABLE}.shipping_address_2 ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country ;;
  }

  dimension: shipping_country_code {
    type: string
    sql: ${TABLE}.shipping_country_code ;;
  }

  dimension_group: shipping {
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
    sql: ${TABLE}.shipping_date ;;
  }

  dimension: shipping_method {
    type: string
    sql: ${TABLE}.shipping_method ;;
  }

  dimension: shipping_name {
    type: string
    sql: ${TABLE}.shipping_name ;;
  }

  dimension: shipping_qty {
    type: number
    sql: ${TABLE}.shipping_qty ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_total {
    type: number
    sql: ${TABLE}.shipping_total ;;
  }

  dimension: shipping_zipcode {
    type: string
    sql: ${TABLE}.shipping_zipcode ;;
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

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: tracking_id {
    type: string
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.tracking_number ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      parent_shipment_id,
      courier_name,
      shipping_name,
      packages.id,
      sales_orders.id,
      sales_orders.billing_name,
      sales_orders.shipping_name,
      stores.id,
      stores.warehouse_name,
      stores.name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      return_orders.id,
      return_orders.courier_name,
      amazon_mcf_orders.count
    ]
  }
}
