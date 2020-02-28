view: trends_bernie {
  sql_table_name: pollooker.trends_bernie ;;

  measure: bernie_sanders {
    view_label: "Primary"
    label: "Sanders Traffic Index"
    type: number
    sql: ${TABLE}.`bernie sanders` ;;
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
