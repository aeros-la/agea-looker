- dashboard: clarin_dashboard
  title: clarin_dashboard_loolML
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 5 minutes
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      ![alt text][logo]

      [logo]: https://storage.googleapis.com/agea-mirta-sbx-bucket/logos/clarin.png
    row: 0
    col: 0
    width: 8
    height: 5
  - name: <p style="font-size:30px ">Tablero Real Time | Clarín</p>
    type: text
    title_text: <p style="font-size:30px ">Tablero Real Time | Clarín</p>
    subtitle_text: ''
    body_text: "\n<div class=\"vis-single-value\" style=\"font-size: 20px; text-align:center\"\
      \ > Powered by&nbsp; \n\n\n\n<b> Big Data & Analytics</b>\n\n\n      </div>"
    row: 0
    col: 8
    width: 8
    height: 5
  - title: Evolución de Usuarios Únicos | Hoy
    name: Evolución de Usuarios Únicos | Hoy
    model: agea_model
    explore: fiveminutesgrouping_todayandawa
    type: looker_area
    fields: [fiveminutesgrouping_todayandawa.dia, fiveminutesgrouping_todayandawa.intervalo,
      fiveminutesgrouping_todayandawa.count_distc]
    pivots: [fiveminutesgrouping_todayandawa.dia]
    sorts: [fiveminutesgrouping_todayandawa.dia, fiveminutesgrouping_todayandawa.intervalo]
    limit: 500
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: ''
    hide_legend: true
    series_types: {}
    series_colors:
      2022-04-04 - fiveminutesgrouping_todayandawa.count: "#80868B"
      2022-04-11 - fiveminutesgrouping_todayandawa.count: "#EA4335"
      2022-04-04 - fiveminutesgrouping_todayandawa.count_distc: "#80868B"
      2022-04-11 - fiveminutesgrouping_todayandawa.count_distc: "#80868B"
      2022-04-18 - fiveminutesgrouping_todayandawa.count_distc: "#EA4335"
    reference_lines: []
    swap_axes: false
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 5
    col: 0
    width: 16
    height: 6
  - title: Noticias más consultadas | Concurrentes
    name: Noticias más consultadas | Concurrentes
    model: agea_model
    explore: clarin_test_concurrency_view
    type: looker_grid
    fields: [clarin_test_concurrency_view.dt, clarin_test_concurrency_view.count]
    sorts: [clarin_test_concurrency_view.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 8
    height: 8
  - title: Origen | Concurrentes
    name: Origen | Concurrentes
    model: agea_model
    explore: origen_from_concurrency
    type: looker_pie
    fields: [origen_from_concurrency.count, origen_from_concurrency.origen]
    sorts: [origen_from_concurrency.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 20
    start_angle:
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 0
    width: 8
    height: 7
  - title: Secciones más consultadas | Concurrentes
    name: Secciones más consultadas | Concurrentes
    model: agea_model
    explore: section_from_concurrency
    type: looker_bar
    fields: [section_from_concurrency.seccion, section_from_concurrency.count]
    sorts: [section_from_concurrency.count desc]
    limit: 500
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 8
    width: 8
    height: 8
  - title: Red social | Concurrentes
    name: Red social | Concurrentes
    model: agea_model
    explore: origen_red_social_from_concurrency
    type: looker_pie
    fields: [origen_red_social_from_concurrency.origen_red_social, origen_red_social_from_concurrency.count]
    sorts: [origen_red_social_from_concurrency.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 20
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 8
    width: 8
    height: 7
  - title: Tipo de Lector | Concurrentes
    name: Tipo de Lector | Concurrentes
    model: agea_model
    explore: clarin_test_concurrency_view
    type: looker_pie
    fields: [clarin_test_concurrency_view.tipo_lector, clarin_test_concurrency_view.count]
    sorts: [clarin_test_concurrency_view.tipo_lector]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 20
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    listen: {}
    row: 11
    col: 16
    width: 8
    height: 8
  - title: Untitled
    name: Untitled
    model: agea_model
    explore: clarin_test_concurrency_view
    type: single_value
    fields: [clarin_test_concurrency_view.unique_users]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Usuarios Únicos | Concurrentes
    defaults_version: 1
    listen: {}
    row: 5
    col: 16
    width: 8
    height: 6
  - title: Untitled
    name: Untitled (2)
    model: agea_model
    explore: clarin_test_concurrency_view
    type: single_value
    fields: [clarin_test_concurrency_view.unique_pages]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Páginas unicas consultadas | Concurrentes
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 5
  - title: Distribución por Sexo | Concurrentes
    name: Distribución por Sexo | Concurrentes
    model: agea_model
    explore: sexo_from_concurrency
    type: looker_column
    fields: [sexo_from_concurrency.count, sexo_from_concurrency.edad, sexo_from_concurrency.sexo_procesado]
    pivots: [sexo_from_concurrency.sexo_procesado]
    sorts: [sexo_from_concurrency.edad, sexo_from_concurrency.sexo_procesado]
    limit: 500
    filter_expression: "${sexo_from_concurrency.edad}>16 \nAND\n${sexo_from_concurrency.edad}<95\n\
      AND \n${sexo_from_concurrency.sexo_procesado} != \"-2\""
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
    hide_legend: false
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 26
    col: 0
    width: 8
    height: 7
  filters:
  - name: Tipo de evento
    title: Tipo de evento
    type: field_filter
    default_value: pageload
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: agea_model
    explore: clarin_test_last14days_view
    listens_to_filters: []
    field: clarin_test_last14days_view.ev
