view: trends_pete {
  sql_table_name: pollooker.trends_pete ;;

  measure: pete_buttigieg {
    view_label: "Primary"
    label: "Buttigieg Traffic Index"
    type: number
    sql: ${TABLE}.`pete buttigieg` ;;
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
