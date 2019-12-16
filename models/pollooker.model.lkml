connection: "datapoint"

# include all the views
include: "/views/**/*.view"
include: "/*.dashboard"

datagroup: pollooker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FRO M etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pollooker_default_datagroup

explore: primary {
}

explore: contributions {
  join: committees {
    type: left_outer
    sql: ${contributions.cmte_id} = ${committees.cmte_id} ;;
    relationship: many_to_one
  }
  join: candidates {
    type: left_outer
    sql: ${committees.cand_id} = ${candidates.cand_id} ;;
    relationship: many_to_one
  }
}
