view: trends_liz {
  sql_table_name: pollooker.trends_liz ;;

  measure: elizabeth_warren {
    label: "Warren Traffic Index"
    type: number
    sql: ${TABLE}.`elizabeth warren` ;;
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
