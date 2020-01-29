- dashboard: pollooker
  title: Pollooker
  layout: newspaper
  elements:
  - title: Biden
    name: Biden
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Biden
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 178bbb56-ea4a-365f-3401-85933e1377c0
        label: Custom
        type: discrete
        colors:
        - "#f56776"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 13
    col: 0
    width: 6
    height: 7
  - title: Warren
    name: Warren
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Warren
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 7f0718a0-cf6a-c0f8-e12e-c0a270339cbc
        label: Custom
        type: discrete
        colors:
        - "#9E7FD0"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 13
    col: 12
    width: 6
    height: 7
  - title: Sanders
    name: Sanders
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Sanders
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: c4d9bc6a-e889-59c2-645b-c690d1a9feba
        label: Custom
        type: discrete
        colors:
        - "#46b5e8"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 13
    col: 6
    width: 6
    height: 7
  - title: Buttigieg
    name: Buttigieg
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Buttigieg
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 2bae2596-b4db-9112-ad73-be6455fce698
        label: Custom
        type: discrete
        colors:
        - "#fcbe14"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 13
    col: 18
    width: 6
    height: 7
  - title: Klobuchar
    name: Klobuchar
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Klobuchar
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 4ea0eb02-dfc1-debb-ebf7-22f5c5b18be3
        label: Custom
        type: discrete
        colors:
        - "#FD9577"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 20
    col: 0
    width: 6
    height: 7
  - title: Yang
    name: Yang
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Yang
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 15a58506-9f9f-9f2c-c4eb-b49d004694b6
        label: Custom
        type: discrete
        colors:
        - "#64706c"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 20
    col: 6
    width: 6
    height: 7
  - title: Steyer
    name: Steyer
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Steyer
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: ba1040e1-7fda-0bec-8b4b-609da349beaf
        label: Custom
        type: discrete
        colors:
        - "#97d94c"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 20
    col: 12
    width: 6
    height: 7
  - title: Bloomberg
    name: Bloomberg
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.end_date_month]
    fill_fields: [primary.end_date_month]
    filters:
      primary.campaign: Bloomberg
      primary.end_date_month: 9 months
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 37007e6c-8b18-effb-aa4d-862c7bc1dcb5
        label: Custom
        type: discrete
        colors:
        - "#10C871"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      State (National is EMPTY): primary.state
    row: 20
    col: 18
    width: 6
    height: 7
  - title: Leaderboard
    name: Leaderboard
    model: pollooker
    explore: primary
    type: looker_boxplot
    fields: [primary.polling_pct_min, primary.polling_pct_first, primary.polling_pct_median,
      primary.polling_pct_fourth, primary.polling_pct_max, primary.campaign]
    sorts: [primary.polling_pct_median desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: list_of_polls, based_on: primary.pct, type: list, label: List
          of Polls, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: b41eb4ba-62f1-9867-ed24-06770bf0d308
        label: Custom
        type: discrete
        colors:
        - "#000000"
        - "#7CC8FA"
        - "#f56776"
        - "#10C871"
        - "#FD9577"
        - "#9E7FD0"
        - "#AEC8C1"
        - "#ACE9F5"
        - "#A5EF55"
        - "#C8A7F9"
        - "#F29ED2"
        - "#FDEC85"
      options:
        steps: 5
    y_axis_labels: [Polling Average]
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Campaign: primary.campaign
      Poll Close Date: primary.end_date_date
      State (National is EMPTY): primary.state
    row: 0
    col: 0
    width: 24
    height: 13
  filters:
  - name: State (National is EMPTY)
    title: State
    type: field_filter
    default_value: Iowa
    allow_multiple_values: true
    required: false
    model: pollooker
    explore: primary
    listens_to_filters: []
    field: primary.state
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: Biden,Buttigieg,Sanders,Warren
    allow_multiple_values: true
    required: false
    model: pollooker
    explore: primary
    listens_to_filters: []
    field: primary.campaign
  - name: Poll Close Date
    title: Poll Close Date
    type: field_filter
    default_value: 2020/01/01 to 2020/01/30
    allow_multiple_values: true
    required: false
    model: pollooker
    explore: primary
    listens_to_filters: []
    field: primary.end_date_date
