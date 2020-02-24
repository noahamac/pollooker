connection: "datapoint"

# include all the views
include: "/views/**/*.view"
include: "/*.dashboard"

datagroup: pollooker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FRO M etl_log;;
  max_cache_age: "1 hour"
}

map_layer: iowa {
  format: topojson
  label: "Iowa"
  url: "https://raw.githubusercontent.com/yooper/open-model/master/geodata/topojson/united_states/Iowa.topo.json" # or use the file subparameter
}
week_start_day: sunday
persist_with: pollooker_default_datagroup

explore: primary {
  join: trends_bernie {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${trends_bernie.week} ;;
    relationship: one_to_one
  }
  join: trends_pete {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${trends_pete.week} ;;
    relationship: one_to_one
  }
  join: trends_joe {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${trends_joe.week} ;;
    relationship: one_to_one
  }
  join: trends_liz {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${trends_liz.week} ;;
    relationship: one_to_one
  }
}

explore: general {}

explore: contributions {
  join: committees {
    type: left_outer
    sql_on: ${contributions.cmte_id} = ${committees.cmte_id} ;;
    relationship: many_to_one
  }
  join: candidates {
    type: left_outer
    sql_on: ${committees.cand_id} = ${candidates.cand_id} ;;
    relationship: many_to_one
  }
}

explore: results {}
explore: iowa_final {
  join: primary {
    type: left_outer
    sql_on: ${iowa_final.candidate} = ${primary.campaign} ;;
    relationship: many_to_one
  }
}
