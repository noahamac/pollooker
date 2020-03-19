- dashboard: spider
  title: Spider
  layout: newspaper
  elements:
  - title: Spider Sharp
    name: Spider Sharp
    model: playground
    explore: sample_data
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [sample_data.rand_true, sample_data.state, sample_data.line_trend, sample_data.expon_trend,
      sample_data.sin_trending, sample_data.cos_wave, sample_data.pos_sin_wave, sample_data.num_thru_10,
      sample_data.count, sample_data.sin_wave, sample_data.sum_thru_10, sample_data.avg_thru_10]
    pivots: [sample_data.state]
    filters:
      sample_data.state: CA,GA,AZ
    sorts: [sample_data.state]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 3
    label_factor: 1.2
    rounded_strokes: false
    independent: true
    negatives: false
    wrap_width: 30
    opacity_area: 47
    dot_radius: 41
    opacity_circles: 49
    background_color: ["#CDCDCD"]
    axis_color: ["#3d2082"]
    stroke_width: 2
    glow: 2
    negative_r: 0.95
    legend_side: none
    AZ_color: ["#4A80BC"]
    CA_color: ["#615894"]
    GA_color: ["#F0C733"]
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 11
  - title: New Tile
    name: New Tile
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.ia_polling_pct, primary.nh_polling_pct, primary.campaign, primary.polling_pct,
      primary.ca_polling_pct, primary.sc_polling_pct]
    pivots: [primary.campaign]
    filters:
      primary.created_at_week: 2 months
      primary.campaign: Buttigieg,Biden,Sanders,Warren
    sorts: [primary.campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 7
    label_factor: 78
    label_fine: 15
    rounded_strokes: true
    independent: false
    labelScale: true
    negatives: false
    wrap_width: 30
    opacity_area: 38
    dot_radius: 17
    opacity_circles: 0
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 0
    glow: 2
    axis_label_font: 12
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 20
    legend_side: left
    Biden_color: ["#ff6547"]
    Buttigieg_color: ["#fffd63"]
    Sanders_color: ["#3487ff"]
    Warren_color: ["#17ffc1"]
    negative_r: 1
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 11
  - title: Independent Axes
    name: Independent Axes
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.ia_polling_pct, primary.nh_polling_pct, primary.campaign, primary.polling_pct,
      primary.ca_polling_pct, primary.sc_polling_pct]
    pivots: [primary.campaign]
    filters:
      primary.created_at_week: 2 months
      primary.campaign: Buttigieg,Biden,Sanders,Warren
    sorts: [primary.campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 7
    label_factor: 78
    label_fine: 23
    domain_max: 100
    rounded_strokes: true
    independent: false
    labelScale: true
    negatives: false
    wrap_width: 30
    opacity_area: 9
    dot_radius: 4
    opacity_circles: 0
    stroke_width: 23
    glow: 42
    axis_label_font: 12
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 24
    legend_side: left
    Biden_color: ["#6cff5e"]
    Buttigieg_color: ["#ff7d68"]
    Sanders_color: ["#588eff"]
    Warren_color: ["#ed3eff"]
    negative_r: 1
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 11
    col: 0
    width: 13
    height: 9
  - title: Spider Rounded (copy 2)
    name: Spider Rounded (copy 2)
    model: playground
    explore: sample_data
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [sample_data.rand_true, sample_data.state, sample_data.line_trend, sample_data.expon_trend,
      sample_data.sin_wave]
    pivots: [sample_data.state]
    filters:
      sample_data.state: CA,GA,AZ
    sorts: [sample_data.state]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 4
    label_factor: 81
    label_fine: 28
    rounded_strokes: true
    independent: true
    labelScale: true
    negatives: false
    wrap_width: 30
    opacity_area: 14
    dot_radius: 35
    opacity_circles: 12
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 22
    glow: 23
    axis_label_font: 12
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 20
    legend_side: left
    AZ_color: ["#4d8744"]
    CA_color: ["#9e4a3f"]
    GA_color: ["#45349e"]
    negative_r: 1
    series_types: {}
    defaults_version: 0
    title_hidden: true
    listen: {}
    row: 27
    col: 13
    width: 9
    height: 9
  - title: Untitled
    name: Untitled
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.ca_polling_pct, primary.ia_polling_pct, primary.nh_polling_pct,
      primary.polling_pct, primary.campaign, primary.sc_polling_pct]
    pivots: [primary.campaign]
    filters:
      primary.campaign: Biden,Buttigieg,Warren,Sanders,Yang,Harris
    sorts: [primary.campaign]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 4
    label_factor: 1.35
    rounded_strokes: true
    independent: true
    negatives: false
    wrap_width: 30
    opacity_area: 9
    dot_radius: 7
    opacity_circles: 0
    stroke_width: 25
    glow: 0
    negative_r: 1
    legend_side: right
    Biden_color: ["#C2DD67"]
    Buttigieg_color: ["#3EB0D5"]
    Harris_color: ["#FBB555"]
    Sanders_color: ["#4276BE"]
    Warren_color: ["#72D16D"]
    Yang_color: ["#B32F37"]
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 11
  - title: New Tile (copy)
    name: New Tile (copy)
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.ia_polling_pct, primary.nh_polling_pct, primary.campaign, primary.polling_pct,
      primary.ca_polling_pct, primary.sc_polling_pct]
    pivots: [primary.campaign]
    filters:
      primary.created_at_week: 2 months
      primary.campaign: Buttigieg,Biden,Sanders,Warren
    sorts: [primary.campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 7
    label_factor: 81
    label_fine: 9
    rounded_strokes: false
    independent: false
    negatives: false
    wrap_width: 30
    opacity_area: 18
    dot_radius: 21
    opacity_circles: 0
    stroke_width: 11
    glow: 2
    axis_label_font: 12
    axis_scale_font: 20
    legend_font: 12
    legend_padding: 25
    legend_side: right
    Biden_color: ["#4A80BC"]
    Buttigieg_color: ["#615894"]
    Sanders_color: ["#F0C733"]
    Warren_color: ["#D13452"]
    background_color: ["#CDCDCD"]
    axis_color: ["#CDCDCD"]
    negative_r: 1
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 27
    col: 0
    width: 13
    height: 9
  - title: Growth using Spider!
    name: Growth using Spider!
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.start_date_month, primary.ca_polling_pct, primary.ia_polling_pct,
      primary.nh_polling_pct, primary.polling_pct, primary.sc_polling_pct, primary.ntl_polling_pct]
    pivots: [primary.start_date_month]
    fill_fields: [primary.start_date_month]
    filters:
      primary.start_date_month: 3 months
      primary.campaign: Buttigieg
    sorts: [primary.start_date_month desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 3
    label_factor: 79
    label_fine: 26
    rounded_strokes: true
    independent: false
    negatives: false
    wrap_width: 30
    opacity_area: 33
    dot_radius: 15
    opacity_circles: 15
    stroke_width: 5
    glow: 2
    axis_label_font: 12
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 50
    legend_side: left
    2020-02_color: "#4A80BC"
    2020-01_color: "#615894"
    2019-12_color: "#F0C733"
    background_color: ["#CDCDCD"]
    axis_color: ["#CDCDCD"]
    negative_r: 1
    2019-11_color: ["#615894"]
    2019-10_color: ["#8c7ecc"]
    2019-09_color: ["#a393f5"]
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 20
    col: 0
    width: 13
    height: 7
  - title: New Tile
    name: New Tile (2)
    model: pollooker
    explore: primary
    type: marketplace_git_github_com_looker_viz_spider_marketplace_git::spider-marketplace
    fields: [primary.campaign, primary.ca_polling_pct, primary.ia_polling_pct, primary.ntl_polling_pct,
      primary.nh_polling_pct, primary.sc_polling_pct]
    filters:
      primary.campaign: Biden,Buttigieg,Warren,Sanders,Harris,Yang
    sorts: [primary.campaign]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    levels: 3
    label_factor: 1.25
    rounded_strokes: false
    independent: true
    negatives: true
    wrap_width: 30
    opacity_area: 15
    dot_radius: 20
    opacity_circles: 16
    background_color: ["#CDCDCD"]
    axis_color: ["#CDCDCD"]
    stroke_width: 14
    glow: 14
    negative_r: 0.81
    legend_side: center
    Biden_color: ["#4A80BC"]
    Buttigieg_color: ["#615894"]
    Harris_color: ["#F0C733"]
    Sanders_color: ["#D13452"]
    Warren_color: ["#E48522"]
    Yang_color: ["#B977A9"]
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 11
    col: 13
    width: 11
    height: 16
