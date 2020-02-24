view: trends_geo_liz {
  sql_table_name: pollooker.trends_geo_liz ;;

  dimension: elizabeth_warren_22419__22420 {
    type: number
    sql: ${TABLE}.`elizabeth warren: (2/24/19 - 2/24/20)`
      ;;
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
