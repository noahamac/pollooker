view: trends_geo_joe {
  sql_table_name: pollooker.trends_geo_joe ;;

  dimension: joe_biden_22419__22420 {
    type: number
    sql: ${TABLE}.`joe biden: (2/24/19 - 2/24/20)`
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
