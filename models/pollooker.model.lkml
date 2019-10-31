connection: "datapoint"

# include all the views
include: "/views/**/*.view"

datagroup: pollooker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pollooker_default_datagroup

explore: primary {

}
