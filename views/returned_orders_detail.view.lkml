view: returned_orders_detail {
  sql_table_name: `Superstore_orders_sales_info.Returned_orders_detail`
    ;;

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
