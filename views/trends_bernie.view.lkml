view: trends_bernie {
  sql_table_name: pollooker.trends_bernie ;;

  measure: bernie_sanders {
    label: "Sanders Traffic Index"
    type: number
    sql: ${TABLE}.`bernie sanders` ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
