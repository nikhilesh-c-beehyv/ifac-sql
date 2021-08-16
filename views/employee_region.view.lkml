view: employee_region {
  sql_table_name: dbo.Employee_Region ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension_group: birth {
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
    sql: ${TABLE}.BirthDate ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.Extension ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension_group: hire {
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
    sql: ${TABLE}.HireDate ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}.HomePhone ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.Photo ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.RegionID ;;
  }

  dimension: territory_id {
    type: string
    sql: ${TABLE}.TerritoryID ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: title_of_courtesy {
    type: string
    sql: ${TABLE}.TitleOfCourtesy ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
