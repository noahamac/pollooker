view: sc_comp {
  sql_table_name: pollooker.sc_comp ;;

  measure: biden {
    type: average
    group_label: "South Carolina Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Biden ;;
  }

  measure: buttigieg {
    type: average
    group_label: "South Carolina Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Buttigieg ;;
  }

  measure: klobuchar {
    type: average
    group_label: "South Carolina Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Klobuchar ;;
  }

  measure: sanders {
    type: average
    group_label: "South Carolina Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Sanders ;;
  }

  measure: warren {
    type: average
    group_label: "South Carolina Comp Google Index"
    view_label: "Primary"
    sql: ${TABLE}.Warren ;;
  }

  dimension: week {
    type: string
    hidden: yes
    sql: ${TABLE}.Week ;;
  }

}
