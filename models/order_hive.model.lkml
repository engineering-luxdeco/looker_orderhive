connection: "orderhive"

# include all the views
include: "/views/**/*.view"

datagroup: order_hive_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: order_hive_default_datagroup

explore: _sequence {
  hidden: yes
}

explore: actiontypes {
  hidden: yes
  }

explore: addresses {
  hidden: yes

  join: contacts {
    type: left_outer
    sql_on: ${addresses.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${addresses.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: admins {
  hidden: yes
  }

explore: admins_users {
  hidden: yes

  join: admins {
    type: left_outer
    sql_on: ${admins_users.admin_id} = ${admins.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${admins_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: affix_settings {
  hidden: yes
  }

explore: ais_requests {
  hidden: yes
  }

explore: amazon_feed_buffer {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${amazon_feed_buffer.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: amazon_feed_submission_result_errors {
  hidden: yes
  }

explore: amazon_feeds {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${amazon_feeds.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: amazon_mcf_orders {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${amazon_mcf_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: shipments {
    type: left_outer
    sql_on: ${amazon_mcf_orders.shipment_id} = ${shipments.parent_shipment_id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: packages {
    type: left_outer
    sql_on: ${shipments.package_id} = ${packages.id} ;;
    relationship: many_to_one
  }

  join: sales_orders {
    type: left_outer
    sql_on: ${shipments.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: return_orders {
    type: left_outer
    sql_on: ${shipments.return_order_id} = ${return_orders.id} ;;
    relationship: many_to_one
  }

  join: package_types {
    type: left_outer
    sql_on: ${packages.package_type_id} = ${package_types.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: amazon_submitted_feeds {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${amazon_submitted_feeds.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: amazon_submitted_feeds2 {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${amazon_submitted_feeds2.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: automations {
  hidden: yes
  }

explore: b2b_carts {
  hidden: yes

  join: contacts {
    type: left_outer
    sql_on: ${b2b_carts.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${b2b_carts.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${b2b_carts.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: b2b_contacts_users {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${b2b_contacts_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${b2b_contacts_users.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: b2b_customers {
  hidden: yes

  join: plans {
    type: left_outer
    sql_on: ${b2b_customers.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${b2b_customers.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: categories {
  hidden: yes
  }

explore: channel_prerequisites {
  hidden: yes

  join: channels {
    type: left_outer
    sql_on: ${channel_prerequisites.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }
}

explore: channels {
  hidden: yes
  }

explore: clear_data_task {
  hidden: yes

  join: stores {
    type: left_outer
    sql_on: ${clear_data_task.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: combined_items {
  hidden: yes
  }

explore: comments {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${comments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${comments.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: purchase_orders {
    type: left_outer
    sql_on: ${comments.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: stock_transfers {
    type: left_outer
    sql_on: ${comments.stock_transfer_id} = ${stock_transfers.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: contact_index {
  hidden: yes
  }

explore: contacts {
  hidden: yes
  }

explore: contacts_stores {
  hidden: yes

  join: contacts {
    type: left_outer
    sql_on: ${contacts_stores.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${contacts_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${contacts_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: countries {

  }

explore: courier_account_numbers {
  hidden: yes

  join: couriers {
    type: left_outer
    sql_on: ${courier_account_numbers.courier_id} = ${couriers.id} ;;
    relationship: many_to_one
  }
}

explore: couriers {
  hidden: yes
  }

explore: couriers_old {
  hidden: yes
  }

explore: couriers_slug_list {
  hidden: yes
  }

explore: currencies {
  hidden: yes
  }

explore: custom_channels {
  hidden: yes
  }

explore: custom_pricing_tiers {
  hidden: yes
  }

explore: customs_informations {
  hidden: yes
  }

explore: customs_items {
  hidden: yes

  join: items {
    type: left_outer
    sql_on: ${customs_items.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: databasechangelog {
  hidden: yes
  }

explore: databasechangeloglock {
  hidden: yes
  }

explore: dropshipments {
  hidden: yes

  join: dropshippers {

    type: left_outer
    sql_on: ${dropshipments.dropshipper_id} = ${dropshippers.id} ;;
    relationship: many_to_one
  }
}

explore: dropshippers {
  hidden: yes
  }

explore: failed_attempt_stores {
  hidden: yes
  join: channels {
    type: left_outer
    sql_on: ${failed_attempt_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${failed_attempt_stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: getting_started {
  hidden: yes
  }

explore: indexing_track {
  hidden: yes
  }

explore: inventoryprofit {
  hidden: yes
  join: shipments {
    relationship: many_to_many
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
  }
  join: sales_orders {
    type: left_outer
    sql_on: ${inventoryprofit.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${inventoryprofit.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: items {
    type: left_outer
    sql_on: ${inventoryprofit.itemid} = ${items.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }
}

explore: inventorystatus {
  join: suppliers {
    type: left_outer
    sql_on: ${inventorystatus.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${inventorystatus.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${inventorystatus.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: item_locations {
    type: left_outer
    sql_on: ${inventorystatus.item_location_id} = ${item_locations.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: items {
    type: left_outer
    sql_on: ${inventorystatus.sku} = ${items.sku} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${item_locations.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }
}

explore: invoices {
  hidden: yes
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
  join: sales_orders {
    type: left_outer
    sql_on: ${invoices.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${invoices.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: invoices_stores {
  hidden: yes
  join: invoices {
    type: left_outer
    sql_on: ${invoices_stores.invoice_id} = ${invoices.id} ;;
    relationship: many_to_one
  }

  join: sales_orders {
    type: left_outer
    sql_on: ${invoices_stores.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${invoices_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${invoices_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${invoices.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: item_bundles {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${item_bundles.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: item_descriptions {
  hidden: yes
}

explore: item_images {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${item_images.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: item_locations {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${item_locations.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${item_locations.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: locations {
    type: left_outer
    sql_on: ${item_locations.location_id} = ${locations.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: item_prices {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${item_prices.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: item_reasons {
  hidden: yes
}

explore: itemindex {
  hidden: yes
}

explore: itemlogs {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${itemlogs.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: items {
    type: left_outer
    sql_on: ${itemlogs.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: items {
  hidden: yes
  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: items_merges {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${items_merges.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: items_options {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${items_options.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: options {
    type: left_outer
    sql_on: ${items_options.option_id} = ${options.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: items_stores {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${items_stores.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${items_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${items_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: items_suppliers {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${items_suppliers.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items_suppliers.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: items_warehouses {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${items_warehouses.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${items_warehouses.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: itemview {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${itemview.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${itemview.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: label_settings {
  hidden: yes
}

explore: last_access_records {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${last_access_records.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: locations {
#   hidden: yes
  join: warehouses {
    type: left_outer
    sql_on: ${locations.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: module_tabs {
  hidden: yes
}

explore: mongo_item_failed_logs {
  hidden: yes
}

explore: option_values {
  hidden: yes
  join: options {
    type: left_outer
    sql_on: ${option_values.option_id} = ${options.id} ;;
    relationship: many_to_one
  }
}

explore: options {
  hidden: yes
}

explore: orderlogs {
  hidden: yes
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
  join: sales_orders {
    type: left_outer
    sql_on: ${orderlogs.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${orderlogs.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: package_types {
  hidden: yes
}

explore: packages {
  hidden: yes
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
  join: sales_orders {
    type: left_outer
    sql_on: ${packages.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${packages.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: package_types {
    type: left_outer
    sql_on: ${packages.package_type_id} = ${package_types.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: partners {
  hidden: yes
}

explore: password_resets {
  hidden: yes
  join: users {
    type: left_outer
    sql_on: ${password_resets.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: passwords {
  hidden: yes
  join: users {
    type: left_outer
    sql_on: ${passwords.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: payment_methods {
  hidden: yes
}

explore: payment_stores {
  hidden: yes
  join: payments {
    type: left_outer
    sql_on: ${payment_stores.payment_id} = ${payments.payment_id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${payment_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${payment_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: sales_orders {
    type: left_outer
    sql_on: ${payments.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }

  join: invoices {
    type: left_outer
    sql_on: ${payments.invoice_id} = ${invoices.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: payment_terms {
  hidden: yes
}

explore: payments {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${payments.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }

  join: stores {
    type: left_outer
    sql_on: ${payments.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${payments.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: invoices {
    type: left_outer
    sql_on: ${payments.invoice_id} = ${invoices.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: plans {
  hidden: yes
}

explore: plans_old {
  hidden: yes
}

explore: pre_defined_customs_items {
  hidden: yes
}

explore: presets {
  hidden: yes
}

explore: printer_setups {
  hidden: yes
  join: printhive_accounts {
    type: left_outer
    sql_on: ${printer_setups.printhive_account_id} = ${printhive_accounts.id} ;;
    relationship: many_to_one
  }
}

explore: printhive_accounts {
  hidden: yes
}

explore: purchase_order_extra_items {
  hidden: yes
  join: purchase_orders {
    type: left_outer
    sql_on: ${purchase_order_extra_items.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_items {
  join: purchase_orders {
    type: left_outer
    sql_on: ${purchase_order_items.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: comments {
    sql: ${purchase_orders.id} = ${comments.purchase_order_id} ;;
    relationship: many_to_many
  }

  join: sales_order_items {
    type: left_outer
    sql_on: ${purchase_order_items.purchase_order_id} = ${sales_order_items.po_id} ;;
    relationship: many_to_one
  }

    join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_items.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: items {
    type: left_outer
    sql_on: ${purchase_order_items.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: purchase_orders {
  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: comments {
    sql: ${purchase_orders.id} = ${comments.purchase_order_id} ;;
    relationship: many_to_many
  }


  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
  join: tags_links {
    relationship: one_to_many
    sql_on: ${purchase_orders.id} = ${tags_links.linked_id} and ${tags_links.type} = 'purchase_order';;
    }
  join: tags {
    relationship: one_to_many
    sql_on: ${tags_links.tag_id} = ${tags.id} ;;
  }
}

explore: purchase_orders_billings {
  hidden: yes
  join: purchase_orders {
    type: left_outer
    sql_on: ${purchase_orders_billings.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${purchase_orders_billings.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${purchase_orders_billings.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: purchase_orders_stores {
  hidden: yes
  join: purchase_orders {
    type: left_outer
    sql_on: ${purchase_orders_stores.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${purchase_orders_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${purchase_orders_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: purchaselogs {
  hidden: yes
  join: purchase_orders {
    type: left_outer
    sql_on: ${purchaselogs.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${purchaselogs.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${purchase_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${purchase_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }
}

explore: record_references {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${record_references.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: return_orders {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${return_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${return_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: sales_orders {
    type: left_outer
    sql_on: ${return_orders.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${return_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one

  }
  join: shipments {
    relationship: one_to_many
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
  }
}

explore: returns_items {
  hidden: yes
  join: sales_order_items {
    type: left_outer
    sql_on: ${returns_items.sales_order_item_id} = ${sales_order_items.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    relationship: many_to_many
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
  }

  join: items {
    type: left_outer
    sql_on: ${returns_items.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: return_orders {
    type: left_outer
    sql_on: ${returns_items.return_order_id} = ${return_orders.id} ;;
    relationship: many_to_one

  }

  join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_items.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }
}

explore: returns_reasons {
  hidden: yes
}

explore: role_details {
  hidden: yes
  join: roles {
    type: left_outer
    sql_on: ${role_details.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: roles {
  hidden: yes
}

explore: sales_order_access_controls {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_access_controls.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${sales_order_access_controls.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: sales_order_extra_items {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_extra_items.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: sales_order_files {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_files.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
}

explore: sales_order_index {
  hidden: yes
}

explore: sales_order_index_test {
  hidden: yes
}

explore: sales_order_items {
  join: sales_orders {
    type: left_outer
    sql_on: ${sales_order_items.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }
  join: packages {
    relationship: one_to_many
    sql_on: trim('"' FROM json_extract(package_items, '$[0].item_id')) = sales_order_items.item_id
    and ${sales_orders.id} = ${packages.sales_order_id} ;;
  }
  join: shipments {
    sql_on: ${packages.id} = ${shipments.package_id}
      and ${shipments.is_void} is null;;
    relationship: one_to_many
  }

  join: items {
    type: left_outer
    sql_on: ${sales_order_items.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

#   join: contacts {
#     type: left_outer
#     sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
#     relationship: many_to_one
#   }
#
#   join: channels {
#     type: left_outer
#     sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
#     relationship: many_to_one
#   }
#
#   join: stores {
#     type: left_outer
#     sql_on: ${sales_orders.store_id} = ${stores.id} ;;
#     relationship: many_to_one
#   }
#
#   join: warehouses {
#     type: left_outer
#     sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
#     relationship: many_to_one
#   }
#
#   join: last_access_records {
#     type: left_outer
#     sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
#     relationship: many_to_one
#   }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }
  join: purchase_order_items {
    type: left_outer
    sql_on: ${purchase_order_items.purchase_order_id} = ${sales_order_items.po_id} and ${purchase_order_items.item_id} = ${sales_order_items.item_id} ;;
    relationship: many_to_many
  }
  join: purchase_orders {
    sql_on: ${purchase_order_items.purchase_order_id} = ${purchase_orders.id} ;;
    relationship: many_to_many
  }
  join: purchase_tag_links {
    from: tags_links
    relationship: one_to_many
    sql_on: ${purchase_orders.id} = ${purchase_tag_links.linked_id} and ${purchase_tag_links.type} = 'purchase_order';;
  }
  join: purchase_tags {
    from: tags
    relationship: one_to_many
    sql_on: ${purchase_tag_links.tag_id} = ${purchase_tags.id} ;;
  }
  join: sales_tag_links {
    from: tags_links
    relationship: one_to_many
    sql_on: ${sales_orders.id} = ${sales_tag_links.linked_id} and ${sales_tag_links.type} = 'sales_order';;
  }
  join: sales_tags {
    from: tags
    relationship: one_to_many
    sql_on: ${sales_tag_links.tag_id} = ${sales_tags.id} ;;
  }

}

explore: sales_orders {
  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }
  join: tags_links {
    relationship: one_to_many
    sql_on: ${sales_orders.id} = ${tags_links.linked_id} and ${tags_links.type} = 'sales_order';;
  }
  join: tags {
    relationship: one_to_many
    sql_on: ${tags_links.tag_id} = ${tags.id} ;;
  }
}

explore: sales_orders_stores {
  hidden: yes
  join: sales_orders {
    type: left_outer
    sql_on: ${sales_orders_stores.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${sales_orders_stores.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }
  join: shipments {
    sql_on: ${sales_orders.id} = ${shipments.sales_order_id} ;;
    relationship: one_to_many
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${sales_orders.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: shipment_batches {
  hidden: yes
}

explore: shipments {
  join: packages {
    type: left_outer
    sql_on: ${shipments.package_id} = ${packages.id} ;;
    relationship: many_to_one
  }

  join: sales_orders {
    type: left_outer
    sql_on: ${shipments.sales_order_id} = ${sales_orders.id} ;;
    relationship: many_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${shipments.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${shipments.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: return_orders {
    type: left_outer
    sql_on: ${shipments.return_order_id} = ${return_orders.id} ;;
    relationship: many_to_one
  }

  join: package_types {
    type: left_outer
    sql_on: ${packages.package_type_id} = ${package_types.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${sales_orders.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${sales_orders.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: shipping_methods {
  hidden: yes
}

explore: shipping_stores {
  hidden: yes
  join: channels {
    type: left_outer
    sql_on: ${shipping_stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }
}

explore: stock_transfer_items {
  hidden: yes
  join: stock_transfers {
    type: left_outer
    sql_on: ${stock_transfer_items.stock_transfer_id} = ${stock_transfers.id} ;;
    relationship: many_to_one
  }

  join: items {
    type: left_outer
    sql_on: ${stock_transfer_items.item_id} = ${items.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: stock_transfers {
  hidden: yes
}

explore: stockevaluation {
  hidden: yes
  join: items {
    type: left_outer
    sql_on: ${stockevaluation.itemid} = ${items.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stockevaluation.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${items.supplier_id} = ${suppliers.id} ;;
    relationship: many_to_one
  }

  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: store_stock_policies {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${store_stock_policies.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${store_stock_policies.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: stores {
  hidden: yes
  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: suppliers {
  hidden: yes
  join: contacts {
    type: left_outer
    sql_on: ${suppliers.contact_id} = ${contacts.id} ;;
    relationship: many_to_one
  }
}

explore: tab_settings {
  hidden: yes
  join: users {
    type: left_outer
    sql_on: ${tab_settings.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: tags {
  hidden: yes
}

explore: tags_links {
  hidden: yes
  join: tags {
    type: left_outer
    sql_on: ${tags_links.tag_id} = ${tags.id} ;;
    relationship: many_to_one
  }
}

explore: taxes {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${taxes.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${taxes.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: test_stores {
  hidden: yes
}

explore: timezones {
  hidden: yes
}

explore: transactions {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${transactions.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${transactions.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: user_check {
  hidden: yes
}

explore: user_details {
  hidden: yes
  join: users {
    type: left_outer
    sql_on: ${user_details.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: user_resync_activities {
  hidden: yes
  join: stores {
    type: left_outer
    sql_on: ${user_resync_activities.store_id} = ${stores.id} ;;
    relationship: many_to_one
  }

  join: channels {
    type: left_outer
    sql_on: ${stores.channel_id} = ${channels.id} ;;
    relationship: many_to_one
  }

  join: warehouses {
    type: left_outer
    sql_on: ${stores.warehouse_id} = ${warehouses.id} ;;
    relationship: many_to_one
  }

  join: last_access_records {
    type: left_outer
    sql_on: ${stores.last_access_record_id} = ${last_access_records.id} ;;
    relationship: many_to_one
  }
}

explore: user_surveys {
  hidden: yes
}

explore: user_tokens {
  hidden: yes
}

explore: users {
  hidden: yes
  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: users_counts_detail {
  hidden: yes
  join: users {
    type: left_outer
    sql_on: ${users_counts_detail.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${users.plan_id} = ${plans.plan_identifier} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: warehouses {
  hidden: yes
}
