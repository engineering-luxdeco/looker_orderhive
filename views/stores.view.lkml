view: stores {
  sql_table_name: luxdeco_prod.stores ;;
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

  dimension: channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.channel_id ;;
  }

  dimension: channel_type {
    type: string
    sql: ${TABLE}.channel_type ;;
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

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension: external_warehouse_id {
    type: string
    sql: ${TABLE}.external_warehouse_id ;;
  }

  dimension: interval2 {
    type: number
    sql: ${TABLE}.interval2 ;;
  }

  dimension: inventory_sync_interval {
    type: number
    sql: ${TABLE}.inventory_sync_interval ;;
  }

  dimension: inventory_update {
    type: yesno
    sql: ${TABLE}.inventory_update ;;
  }

  dimension: key1 {
    type: string
    sql: ${TABLE}.key1 ;;
  }

  dimension: key2 {
    type: string
    sql: ${TABLE}.key2 ;;
  }

  dimension: key3 {
    type: string
    sql: ${TABLE}.key3 ;;
  }

  dimension: key4 {
    type: string
    sql: ${TABLE}.key4 ;;
  }

  dimension: key5 {
    type: string
    sql: ${TABLE}.key5 ;;
  }

  dimension: last_access_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.last_access_record_id ;;
  }

  dimension: last_accessed_record {
    type: string
    sql: ${TABLE}.last_accessed_record ;;
  }

  dimension_group: last_email_sent {
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
    sql: ${TABLE}.last_email_sent_time ;;
  }

  dimension_group: last_inventory_sync {
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
    sql: ${TABLE}.last_inventory_sync ;;
  }

  dimension_group: last_sync_time2 {
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
    sql: ${TABLE}.last_sync_time2 ;;
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

  dimension_group: order_from {
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
    sql: ${TABLE}.order_from_date ;;
  }

  dimension: order_notification_interval {
    type: number
    sql: ${TABLE}.order_notification_interval ;;
  }

  dimension: order_update {
    type: yesno
    sql: ${TABLE}.order_update ;;
  }

  dimension: resync {
    type: yesno
    sql: ${TABLE}.resync ;;
  }

  dimension: stock_policy {
    type: string
    sql: ${TABLE}.stock_policy ;;
  }

  dimension: store_config {
    type: string
    sql: ${TABLE}.store_config ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.warehouse_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      warehouse_name,
      name,
      channels.id,
      warehouses.id,
      warehouses.country_name,
      warehouses.name,
      last_access_records.id,
      addresses.count,
      amazon_feeds.count,
      amazon_feed_buffer.count,
      amazon_mcf_orders.count,
      amazon_submitted_feeds.count,
      amazon_submitted_feeds2.count,
      b2b_carts.count,
      clear_data_task.count,
      contacts_stores.count,
      inventoryprofit.count,
      inventorystatus.count,
      invoices_stores.count,
      items_stores.count,
      itemview.count,
      last_access_records.count,
      payments.count,
      payment_stores.count,
      purchase_orders_billings.count,
      purchase_orders_stores.count,
      return_orders.count,
      sales_orders.count,
      sales_orders_stores.count,
      shipments.count,
      store_stock_policies.count,
      taxes.count,
      transactions.count,
      user_resync_activities.count
    ]
  }
}
