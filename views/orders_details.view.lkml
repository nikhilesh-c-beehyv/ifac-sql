view: orders_details {
  sql_table_name: dbo.Orders_Details ;;

  dimension: discount {
    type: string
    sql: ${TABLE}.Discount ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderID ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
