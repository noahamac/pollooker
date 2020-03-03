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
  # Weekly Google index
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
  join: trends_geo_bernie {
    type: left_outer
    sql_on: ${primary.state} = ${trends_geo_bernie.region} ;;
    relationship: one_to_one
  }
  join: trends_geo_pete {
    type: left_outer
    sql_on: ${primary.state} = ${trends_geo_pete.region} ;;
    relationship: one_to_one
  }
  join: trends_geo_joe {
    type: left_outer
    sql_on: ${primary.state} = ${trends_geo_joe.region} ;;
    relationship: one_to_one
  }
  join: trends_geo_liz {
    type: left_outer
    sql_on: ${primary.state} = ${trends_geo_liz.region} ;;
    relationship: one_to_one
  }
  join: sc_comp {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${sc_comp.week} ;;
    relationship: one_to_one
  }
  join: national_comp {
    type: left_outer
    sql_on: ${primary.start_date_week} = ${national_comp.week} ;;
    relationship: one_to_one
  }
}

explore: general {
  join: general_copy {
    sql_on: ${general.question_id} = ${general_copy.question_id} ;;
    relationship: one_to_one
    type: inner
  }
}

explore: result_mse {
  join: primary {
    sql_on: ${result_mse.campaign} = ${primary.campaign} AND ${result_mse.state} = ${primary.state};;
    relationship: one_to_one
  }
}

explore: general_rollup {}

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
