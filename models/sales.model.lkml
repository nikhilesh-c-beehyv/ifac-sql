connection: "ifac-sql"

# include all the views
include: "/views/**/*.view"

datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup

explore: aggregate_orders {}

explore: customer_order_detail {}

explore: customer_orders {}

explore: customers_europe {}

explore: customers_usa {}

explore: employee_region {}

explore: orders_details {}

explore: orders_header {}
