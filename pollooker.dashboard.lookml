- dashboard: pollooker
  title: Pollooker
  layout: newspaper
  elements:
  - title: Incoming Polls
    name: Incoming Polls
    model: pollooker
    explore: primary
    type: looker_grid
    fields: [primary.created_at_date, primary.state, primary.pollster, primary.fte_grade,
      primary.sample_size, primary.population, primary.polling_pct, primary.campaign]
    pivots: [primary.campaign]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris,Yang
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: sample, label: Sample, expression: 'concat(to_string(${primary.sample_size}),
          " ", ${primary.population})', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      primary.polling_pct: "%"
      primary.population: _
      primary.fte_grade: Grade
    series_column_widths:
      primary.population: 50
      primary.sample_size: 56
      primary.fte_grade: 53
      primary.pollster: 160
      primary.state: 53
      primary.created_at_date: 103
    series_cell_visualizations:
      primary.polling_pct:
        is_active: true
        value_display: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      primary.population: {}
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format: {}
    hidden_fields: [primary.sample_size, primary.population]
    listen: {}
    row: 36
    col: 0
    width: 12
    height: 9
  - title: National 1-Week Rolling Average
    name: National 1-Week Rolling Average
    model: pollooker
    explore: primary
    type: looker_line
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: national_polling_avg, label: National Polling
          Avg, expression: 'mean(offset_list(${primary.ntl_polling_pct}, 0, 7))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: polling_pct, id: Biden
              - polling_pct, name: Biden}, {axisId: polling_pct, id: Buttigieg - polling_pct,
            name: Buttigieg}, {axisId: polling_pct, id: Harris - polling_pct, name: Harris},
          {axisId: polling_pct, id: Sanders - polling_pct, name: Sanders}, {axisId: polling_pct,
            id: Warren - polling_pct, name: Warren}, {axisId: polling_pct, id: Yang
              - polling_pct, name: Yang}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    point_style: none
    series_colors:
      Biden - polling_pct: "#EC1A21"
      Buttigieg - polling_pct: "#F4BB31"
      Harris - polling_pct: "#3E2B96"
      Warren - polling_pct: "#C0E1D0"
      Sanders - polling_pct: "#287FC4"
      Biden - national_polling_avg: "#EC1A21"
      Buttigieg - national_polling_avg: "#F4BB31"
      Harris - national_polling_avg: "#3E2B96"
      Warren - national_polling_avg: "#C0E1D0"
      Sanders - national_polling_avg: "#287FC4"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: false
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 0
    col: 14
    width: 10
    height: 8
  - title: National 1-Week Rolling Average
    name: National 1-Week Rolling Avg
    model: pollooker
    explore: primary
    type: looker_area
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden,Warren,Sanders,Buttigieg,Harris
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: polling_pct, label: Polling Pct, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Biden - polling_pct,
            id: Biden - polling_pct, name: Biden}, {axisId: Buttigieg - polling_pct,
            id: Buttigieg - polling_pct, name: Buttigieg}, {axisId: Harris - polling_pct,
            id: Harris - polling_pct, name: Harris}, {axisId: Sanders - polling_pct,
            id: Sanders - polling_pct, name: Sanders}, {axisId: Warren - polling_pct,
            id: Warren - polling_pct, name: Warren}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 8, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '120'
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      Biden - polling_pct: "#EC1A21"
      Warren - polling_pct: "#C0E1D0"
      Sanders - polling_pct: "#287FC4"
      Buttigieg - polling_pct: "#F4BB31"
      Harris - polling_pct: "#3E2B96"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 0
    col: 4
    width: 10
    height: 20
  - title: Biden Ticker
    name: Biden Ticker
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Biden
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Biden
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#EC1A21",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 16
    col: 0
    width: 4
    height: 4
  - title: Warren Ticker
    name: Warren Ticker
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Warren
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Warren
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#C0E1D0",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Sanders Ticker
    name: Sanders Ticker
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Sanders
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Sanders
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#287FC4",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 4
    col: 0
    width: 4
    height: 4
  - title: 1 week moving average Buttigieg
    name: 1 week moving average Buttigieg
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Buttigieg
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Buttigieg
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F4BB31",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 12
    col: 0
    width: 4
    height: 4
  - title: Harris Ticker
    name: Harris Ticker
    model: pollooker
    explore: primary
    type: single_value
    fields: [primary.created_at_date, primary.ntl_polling_pct, primary.campaign]
    pivots: [primary.campaign]
    fill_fields: [primary.created_at_date]
    filters:
      primary.campaign: Harris
    sorts: [primary.created_at_date desc, primary.campaign]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(offset_list(${primary.ntl_polling_pct},
          0, 7))/100', value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'offset(${calculation_1},0)-offset(${calculation_1},1)',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Harris
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: from yesterday
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#3E2B96",
        font_color: !!null '', color_application: {collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5,
          palette_id: ab3e6420-3e2f-42a2-802b-e4e9036b089f}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [Harris - primary.polling_pct, Yang - primary.polling_pct]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [primary.ntl_polling_pct]
    listen:
      State: primary.state
    row: 8
    col: 0
    width: 4
    height: 4
  - title: New Tile
    name: New Tile
    model: pollooker
    explore: primary
    type: looker_map
    fields: [primary.state, primary.polling_pct, primary.count_polls]
    filters:
      primary.state: "-EMPTY"
    sorts: [primary.polling_pct desc]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: traffic_day
    map_position: custom
    map_latitude: 37.64223791838213
    map_longitude: -97.83668518066408
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: ["#3F88C5", "#234B6C"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: [primary.polling_pct]
    title_hidden: true
    listen: {}
    row: 36
    col: 12
    width: 12
    height: 9
  - title: This Month in Early States
    name: This Month in Early States
    model: pollooker
    explore: primary
    type: spider-testing
    fields: [primary.ia_polling_pct, primary.ntl_polling_pct, primary.nh_polling_pct,
      primary.campaign, primary.ca_polling_pct, primary.sc_polling_pct]
    pivots: [primary.campaign]
    filters:
      primary.campaign: Buttigieg,Biden,Warren,Sanders,Harris
      primary.start_date_month: 1 months
    sorts: [primary.campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    levels: 2
    label_factor: 1.2
    rounded_strokes: true
    independent: true
    negatives: false
    wrap_width: 30
    opacity_area: 13
    dot_radius: 4
    opacity_circles: 0
    background_color: ["#CDCDCD"]
    axis_color: ["#CDCDCD"]
    stroke_width: 26
    glow: 12
    negative_r: 1
    legend_side: right
    Biden_color: ["#EC1A21"]
    Buttigieg_color: ["#F4BB31"]
    Harris_color: ["#3E2B96"]
    Sanders_color: ["#287FC4"]
    Warren_color: ["#C0E1D0"]
    value_colors: ["#3EB0D5", "#B1399E", "#C2DD67", "#592EC2", "#4276BE", "#72D16D",
      "#FFD95F", "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    color_range: ["#3EB0D5", "#B1399E", "#C2DD67", "#592EC2", "#4276BE", "#72D16D",
      "#FFD95F", "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    label_type: name
    show_null_points: true
    series_types: {}
    listen: {}
    row: 8
    col: 14
    width: 10
    height: 12
  - title: National Polling Averages
    name: National Polling Averages
    model: pollooker
    explore: primary
    type: looker_scatter
    fields: [primary.campaign, primary.ntl_polling_pct, primary.start_date_date]
    pivots: [primary.campaign]
    fill_fields: [primary.start_date_date]
    filters:
      primary.campaign: Harris,Buttigieg,Warren,Biden,Sanders
      primary.cycle: '2020'
      primary.party: DEM
      primary.start_date_date: 2019/06/01 to 2020/03/03
    sorts: [primary.campaign 0, primary.start_date_date desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: primary.avg_pct, id: Biden
              - primary.avg_pct, name: Biden}, {axisId: primary.avg_pct, id: Buttigieg
              - primary.avg_pct, name: Buttigieg}, {axisId: primary.avg_pct, id: Harris
              - primary.avg_pct, name: Harris}, {axisId: primary.avg_pct, id: Sanders
              - primary.avg_pct, name: Sanders}, {axisId: primary.avg_pct, id: Warren
              - primary.avg_pct, name: Warren}, {axisId: primary.avg_pct, id: Yang
              - primary.avg_pct, name: Yang}], showLabels: true, showValues: true,
        maxValue: 50, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Buttigieg - primary.avg_pct: "#3EB0D5"
      Biden - primary.avg_pct: "#12165C"
      Warren - primary.avg_pct: "#184EA0"
      Sanders - primary.avg_pct: "#1A81CE"
      Harris - primary.avg_pct: "#B4DED2"
      Yang - primary.avg_pct: "#a5c0f2"
      Harris - primary.polling_pct: "#3E2B96"
      Buttigieg - primary.polling_pct: "#F4BB31"
      Biden - primary.polling_pct: "#EC1A21"
      Warren - primary.polling_pct: "#C0E1D0"
      Sanders - primary.polling_pct: "#287FC4"
      Biden - primary.ntl_polling_pct: "#EC1A21"
      Buttigieg - primary.ntl_polling_pct: "#F4BB31"
      Harris - primary.ntl_polling_pct: "#3E2B96"
      Sanders - primary.ntl_polling_pct: "#287FC4"
      Warren - primary.ntl_polling_pct: "#C0E1D0"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#EC1A21", label_position: left, period: 7, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: Biden}, {color: "#C0E1D0",
        label_position: left, period: 7, regression_type: average, series_index: 5,
        show_label: true, label_type: string, label: Warren}, {color: "#287FC4", label_position: left,
        period: 7, regression_type: average, series_index: 4, show_label: true, label_type: string,
        label: Sanders}, {color: "#F4BB31", label_position: left, period: 7, regression_type: average,
        series_index: 2, show_label: true, label_type: string, label: Buttigieg},
      {color: "#3E2B96", label_position: left, period: 7, regression_type: average,
        series_index: 3, show_label: true, label_type: string, label: Harris}]
    show_null_points: false
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    listen:
      Date: primary.created_at_date
      State: primary.state
    row: 20
    col: 0
    width: 24
    height: 8
  - title: Iowa Polling Averages
    name: Iowa Polling Averages
    model: pollooker
    explore: primary
    type: looker_scatter
    fields: [primary.campaign, primary.start_date_date, primary.ia_polling_pct]
    pivots: [primary.campaign]
    fill_fields: [primary.start_date_date]
    filters:
      primary.campaign: Harris,Buttigieg,Warren,Biden,Sanders
      primary.start_date_date: 2019/06/01 to 2020/03/03
    sorts: [primary.campaign 0, primary.start_date_date desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: primary.avg_pct, id: Biden
              - primary.avg_pct, name: Biden}, {axisId: primary.avg_pct, id: Buttigieg
              - primary.avg_pct, name: Buttigieg}, {axisId: primary.avg_pct, id: Harris
              - primary.avg_pct, name: Harris}, {axisId: primary.avg_pct, id: Sanders
              - primary.avg_pct, name: Sanders}, {axisId: primary.avg_pct, id: Warren
              - primary.avg_pct, name: Warren}, {axisId: primary.avg_pct, id: Yang
              - primary.avg_pct, name: Yang}], showLabels: true, showValues: true,
        maxValue: 50, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Buttigieg - primary.avg_pct: "#3EB0D5"
      Biden - primary.avg_pct: "#12165C"
      Warren - primary.avg_pct: "#184EA0"
      Sanders - primary.avg_pct: "#1A81CE"
      Harris - primary.avg_pct: "#B4DED2"
      Yang - primary.avg_pct: "#a5c0f2"
      Harris - primary.polling_pct: "#3E2B96"
      Buttigieg - primary.polling_pct: "#F4BB31"
      Biden - primary.polling_pct: "#EC1A21"
      Warren - primary.polling_pct: "#C0E1D0"
      Sanders - primary.polling_pct: "#287FC4"
      Biden - primary.ntl_polling_pct: "#EC1A21"
      Buttigieg - primary.ntl_polling_pct: "#F4BB31"
      Harris - primary.ntl_polling_pct: "#3E2B96"
      Sanders - primary.ntl_polling_pct: "#287FC4"
      Warren - primary.ntl_polling_pct: "#C0E1D0"
      Biden - primary.ia_polling_pct: "#EC1A21"
      Buttigieg - primary.ia_polling_pct: "#F4BB31"
      Harris - primary.ia_polling_pct: "#3E2B96"
      Sanders - primary.ia_polling_pct: "#287FC4"
      Warren - primary.ia_polling_pct: "#C0E1D0"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#EC1A21", label_position: left, period: 7, regression_type: average,
        series_index: 1, show_label: true, label_type: string, label: Biden}, {color: "#C0E1D0",
        label_position: left, period: 7, regression_type: average, series_index: 5,
        show_label: true, label_type: string, label: Warren}, {color: "#287FC4", label_position: left,
        period: 7, regression_type: average, series_index: 4, show_label: true, label_type: string,
        label: Sanders}, {color: "#F4BB31", label_position: left, period: 7, regression_type: average,
        series_index: 2, show_label: true, label_type: string, label: Buttigieg},
      {color: "#3E2B96", label_position: left, period: 7, regression_type: average,
        series_index: 3, show_label: true, label_type: string, label: Harris}]
    show_null_points: false
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    listen:
      Date: primary.created_at_date
      State: primary.state
    row: 28
    col: 0
    width: 24
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 1 years
    allow_multiple_values: true
    required: false
  - name: State
    title: State
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
