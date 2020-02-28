view: trends_geo_pete {
  sql_table_name: pollooker.trends_geo_pete ;;

  measure: pete_buttigieg {
    label: "Buttigieg State Google Index"
    view_label: "Primary"
    type: average
    sql: ${TABLE}.`pete buttigieg(2/24/19 - 2/24/20)` ;;
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
