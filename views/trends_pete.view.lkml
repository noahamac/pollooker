view: trends_pete {
  sql_table_name: pollooker.trends_pete ;;

  measure: pete_buttigieg {
    label: "Buttigieg Traffic Index"
    type: number
    sql: ${TABLE}.`pete buttigieg` ;;
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
