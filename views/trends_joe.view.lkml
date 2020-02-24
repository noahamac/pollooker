view: trends_joe {
  sql_table_name: pollooker.trends_joe ;;

  measure: joe_biden {
    label: "Biden Traffic Index"
    type: number
    sql: ${TABLE}.`joe biden` ;;
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
