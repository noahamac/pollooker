view: national_comp {
  sql_table_name: pollooker.national_comp ;;

  measure: biden {
    type: average
    view_label: "Primary"
    group_label: "National Comp Google Index"
    sql: ${TABLE}.Biden ;;
  }

  measure: buttigieg {
    type: average
    group_label: "National Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Buttigieg ;;
  }

  measure: klobuchar {
    type: average
    group_label: "National Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Klobuchar ;;
  }

  measure: sanders {
    type: average
    group_label: "National Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Sanders ;;
  }

  measure: warren {
    type: average
    group_label: "National Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Warren ;;
  }

  dimension: week {
    type: date
    hidden: yes
    sql: ${TABLE}.Week ;;
  }

}
