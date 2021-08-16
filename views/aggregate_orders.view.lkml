view: aggregate_orders {
  sql_table_name: dbo.Aggregate_Orders ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.TotalPrice ;;
  }

  dimension: total_quantity {
    type: number
    sql: ${TABLE}.TotalQuantity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
