view: trends_joe {
  sql_table_name: pollooker.trends_joe ;;

  measure: joe_biden {
    view_label: "Primary"
    label: "Biden Traffic Index"
    type: number
    sql: ${TABLE}.`joe biden` ;;
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
