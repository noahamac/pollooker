view: trends_geo_bernie {
  sql_table_name: pollooker.trends_geo_bernie ;;

  dimension: bernie_sanders22419__22420 {
    type: number
    sql: ${TABLE}.`bernie sanders(2/24/19 - 2/24/20)` ;;
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
