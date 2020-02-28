view: trends_liz {
  sql_table_name: pollooker.trends_liz ;;

  measure: elizabeth_warren {
    view_label: "Primary"
    label: "Warren Traffic Index"
    type: number
    sql: ${TABLE}.`elizabeth warren` ;;
  }

  dimension: week {
    hidden: yes
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
