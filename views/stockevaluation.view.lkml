view: stockevaluation {
  sql_table_name: luxdeco_prod.stockevaluation ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: categoryname {
    type: string
    sql: ${TABLE}.categoryname ;;
  }

  dimension: itemid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.itemid ;;
  }

  dimension: itemname {
    type: string
    sql: ${TABLE}.itemname ;;
  }

  dimension: master_id {
    type: number
    sql: ${TABLE}.masterId ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: secondary_sku {
    type: string
    sql: ${TABLE}.secondary_sku ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: storename {
    type: string
    sql: ${TABLE}.storename ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
      storename,
      itemname,
      categoryname,
      items.id,
      items.name,
      items.supplier_name,
      warehouses.id,
      warehouses.country_name,
      warehouses.name
    ]
  }
}
