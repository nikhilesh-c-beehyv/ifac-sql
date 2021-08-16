view: orders_header {
  sql_table_name: dbo.Orders_Header ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: freight {
    type: number
    sql: ${TABLE}.Freight ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderID ;;
  }

  dimension_group: required {
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
    sql: ${TABLE}.RequiredDate ;;
  }

  dimension: ship_address {
    type: string
    sql: ${TABLE}.ShipAddress ;;
  }

  dimension: ship_city {
    type: string
    sql: ${TABLE}.ShipCity ;;
  }

  dimension: ship_country {
    type: string
    sql: ${TABLE}.ShipCountry ;;
  }

  dimension: ship_name {
    type: string
    sql: ${TABLE}.ShipName ;;
  }

  dimension: ship_postal_code {
    type: string
    sql: ${TABLE}.ShipPostalCode ;;
  }

  dimension: ship_region {
    type: string
    sql: ${TABLE}.ShipRegion ;;
  }

  dimension: ship_via {
    type: string
    sql: ${TABLE}.ShipVia ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}.ShippedDate ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_name]
  }
}
