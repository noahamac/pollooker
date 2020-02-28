view: trends_geo_liz {
  sql_table_name: pollooker.trends_geo_liz ;;

  measure: elizabeth_warren_22419__22420 {
    label: "Warren State Google Index"
    view_label: "Primary"
    type: average
    sql: ${TABLE}.`elizabeth warren: (2/24/19 - 2/24/20)`
      ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
