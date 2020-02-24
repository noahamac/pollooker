view: trends_geo_pete {
  sql_table_name: pollooker.trends_geo_pete ;;

  measure: pete_buttigieg {
    label: "Buttigieg Traffic Index"
    type: number
    sql: ${TABLE}.`pete buttigieg(2/24/19 - 2/24/20)` ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
