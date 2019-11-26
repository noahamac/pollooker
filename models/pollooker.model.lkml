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
  join: timeline {
    sql: ${timeline.date} = ${primary.start_date_raw};;
  }
}
