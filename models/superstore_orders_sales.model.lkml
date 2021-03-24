connection: "superstore_order_sales_info"

# include all the views
include: "/views/**/*.view"

datagroup: superstore_orders_sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: superstore_orders_sales_default_datagroup

explore: returned_orders_detail {}

explore: superstore_orders_sales_detail {}
