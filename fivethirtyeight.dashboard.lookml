- dashboard: '538'
  title: '538'
  layout: newspaper
  elements:
  - title: Better than Nate Silver
    name: Better than Nate Silver
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
      State: primary.state
      Campaign: primary.campaign
      Poll Close Date: primary.end_date_date
    row: 0
    col: 0
    width: 24
    height: 13
  filters:
  - name: State
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
