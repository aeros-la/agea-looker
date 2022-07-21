- dashboard: clarn
  title: Clarín
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: SsETOBjXkyR8GD5haUUlOh
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ![alt text][logo]

      [logo]: https://storage.googleapis.com/agea-mirta-sbx-bucket/logos/clarin.png
    row: 0
    col: 0
    width: 5
    height: 4
  - name: <p style="font-size:30px" >Tablero Real Time | Clarín</p>
    type: text
    title_text: <p style="font-size:30px" >Tablero Real Time | Clarín</p>
    subtitle_text: ''
    body_text: "\n<div class=\"vis-single-value\" style=\"font-size: 20px; text-align:center\"\
      \ > Powered by&nbsp; \n\n\n\n<b> Big Data & Analytics</b>\n\n\n      </div>"
    row: 0
    col: 5
    width: 9
    height: 4
  - name: <p style="font-size:30px ">Usuarios registrados y suscriptores</p>
    type: text
    title_text: <p style="font-size:30px ">Usuarios registrados y suscriptores</p>
    subtitle_text: ''
    body_text: ''
    row: 35
    col: 0
    width: 24
    height: 2
  - title: Usuarios únicos | Concurrentes
    name: Usuarios únicos | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.unique_users, clarin_test_5mingroup_todayandawa.awa_currente_time_count_distinct_users]
    filters:
      clarin_concurrency_test.ev: pageload
      clarin_test_5mingroup_todayandawa.ev: pageload
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: ''
    comparison_label: de la semana pasada
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 14
    width: 5
    height: 4
  - title: Evolución de usuarios únicos | Hoy
    name: Evolución de usuarios únicos | Hoy
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_area
    fields: [clarin_test_5mingroup_todayandawa.dia, clarin_test_5mingroup_todayandawa.intervalo,
      clarin_test_5mingroup_todayandawa.count_distc]
    pivots: [clarin_test_5mingroup_todayandawa.dia]
    filters:
      clarin_test_5mingroup_todayandawa.ev: pageload
    sorts: [clarin_test_5mingroup_todayandawa.dia, clarin_test_5mingroup_todayandawa.intervalo]
    limit: 500
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: 2022-05-23 - clarin_test_5mingroup_todayandawa.count_distc, name: '2022-05-23'},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: 2022-05-30 -
              clarin_test_5mingroup_todayandawa.count_distc, name: '2022-05-30'}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      2022-05-30 - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
      2022-05-23 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-05-25 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-06-01 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-05-26 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-06-02 - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
      2022-05-27 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-06-03 - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
      2022-06-08 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-06-15 - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
      2022-06-22 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-06-29 - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      2022-07-06 - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 24
    height: 6
  - title: Top secciones | Concurrentes
    name: Top secciones | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_bar
    fields: [clarin_concurrency_test.seccion, clarin_concurrency_test.unique_users]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.unique_users desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
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
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: clarin_concurrency_test.unique_users,
            id: clarin_concurrency_test.unique_users, name: Unique Users}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      clarin_concurrency_test.unique_users: "#E8710A"
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 9
    height: 7
  - title: Paginas vistas | Concurrentes
    name: Paginas vistas | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.count, clarin_test_5mingroup_todayandawa.awa_currente_time_count_pages]
    filters:
      clarin_concurrency_test.ev: pageload
      clarin_test_5mingroup_todayandawa.ev: pageload
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: de la semana pasada
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 4
  - title: Distribución por dispositivo | Concurrente
    name: Distribución por dispositivo | Concurrente
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_pie
    fields: [clarin_concurrency_test.md, clarin_concurrency_test.count]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.count desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 17
    col: 0
    width: 8
    height: 6
  - title: Top 10 páginas | Concurrentes
    name: Top 10 páginas | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_grid
    fields: [clarin_concurrency_test.dt, clarin_concurrency_test.unique_users]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.unique_users desc]
    limit: 10
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      clarin_concurrency_test.dt: Página
      clarin_concurrency_test.unique_users: Usuarios únicos
    series_cell_visualizations:
      clarin_concurrency_test.unique_users:
        is_active: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 9
    width: 15
    height: 7
  - title: Distribución por origen de entrada | Concurrentes
    name: Distribución por origen de entrada | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_bar
    fields: [clarin_concurrency_test.origen, clarin_concurrency_test.count]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: clarin_concurrency_test.count,
            id: clarin_concurrency_test.count, name: Clarin Concurrency Test}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 23
    col: 0
    width: 8
    height: 6
  - title: Distribución por tipo de lector | Concurrentes
    name: Distribución por tipo de lector | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_pie
    fields: [clarin_concurrency_test.count, clarin_concurrency_test.tipo_lector]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.count desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 17
    col: 16
    width: 8
    height: 6
  - title: Distribución por datasource | Concurrentes
    name: Distribución por datasource | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_pie
    fields: [clarin_concurrency_test.count, clarin_concurrency_test.data_source]
    filters:
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.count desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 17
    col: 8
    width: 8
    height: 6
  - title: Distribución por género | Concurrentes
    name: Distribución por género | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_pie
    fields: [clarin_concurrency_test.unique_users, clarin_concurrency_test.sexo]
    filters:
      clarin_concurrency_test.sexo: "-unknown"
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.unique_users desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 70
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 37
    col: 0
    width: 6
    height: 6
  - title: Edad Mediana | Concurrente
    name: Edad Mediana | Concurrente
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.avg_edad]
    filters:
      clarin_concurrency_test.edad: "[18, 90]"
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.avg_edad desc]
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
    value_format: '0'
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 37
    col: 18
    width: 6
    height: 6
  - title: Distribución por edad y género | Concurrentes
    name: Distribución por edad y género | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_column
    fields: [clarin_concurrency_test.sexo, clarin_concurrency_test.edad, clarin_concurrency_test.unique_pases]
    pivots: [clarin_concurrency_test.sexo]
    filters:
      clarin_concurrency_test.sexo: "-unknown"
      clarin_concurrency_test.edad: "[18, 90]"
      clarin_concurrency_test.ev: pageload
    sorts: [clarin_concurrency_test.edad, clarin_concurrency_test.sexo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    legend_position: right
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
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Pases únicos, orientation: left, series: [{axisId: Masculino
              - 0 - clarin_concurrency_test.unique_pases, id: Masculino - 0 - clarin_concurrency_test.unique_pases,
            name: Masculino}, {axisId: Femenino - 1 - clarin_concurrency_test.unique_pases,
            id: Femenino - 1 - clarin_concurrency_test.unique_pases, name: Femenino}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 37
    col: 6
    width: 12
    height: 6
  - title: Pases únicos | Registrados | Concurrentes
    name: Pases únicos | Registrados | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.unique_pases]
    filters:
      clarin_concurrency_test.tipo_lector: Registrado
      clarin_concurrency_test.ev: pageload
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
    defaults_version: 1
    listen: {}
    row: 43
    col: 0
    width: 6
    height: 4
  - title: Páginas vistas | Suscriptores | Concurrentes
    name: Páginas vistas | Suscriptores | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.count]
    filters:
      clarin_concurrency_test.tipo_lector: Suscriptor
      clarin_concurrency_test.ev: pageload
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
    defaults_version: 1
    listen: {}
    row: 43
    col: 18
    width: 6
    height: 4
  - title: Pases únicos | Suscriptores | Concurrentes
    name: Pases únicos | Suscriptores | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.unique_pases]
    filters:
      clarin_concurrency_test.tipo_lector: Suscriptor
      clarin_concurrency_test.ev: pageload
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
    defaults_version: 1
    listen: {}
    row: 43
    col: 12
    width: 6
    height: 4
  - title: Páginas vistas | Registrados | Concurrentes
    name: Páginas vistas | Registrados | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: single_value
    fields: [clarin_concurrency_test.count]
    filters:
      clarin_concurrency_test.tipo_lector: Registrado
      clarin_concurrency_test.ev: pageload
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
    defaults_version: 1
    listen: {}
    row: 43
    col: 6
    width: 6
    height: 4
  - title: Top 10 notas | Registrados | Concurrentes
    name: Top 10 notas | Registrados | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_grid
    fields: [clarin_concurrency_test.unique_pases, clarin_concurrency_test.dt]
    filters:
      clarin_concurrency_test.tipo_lector: Registrado
      clarin_concurrency_test.ev: pageload
      clarin_concurrency_test.tipo_pagina: nota
    sorts: [clarin_concurrency_test.unique_pases desc]
    limit: 10
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      clarin_concurrency_test.unique_users: Pases únicos
      clarin_concurrency_test.dt: Nota
      clarin_concurrency_test.unique_pases: Pases únicos
    series_cell_visualizations:
      clarin_concurrency_test.unique_users:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen: {}
    row: 47
    col: 0
    width: 12
    height: 6
  - title: Top 10 notas | Suscriptores | Concurrentes
    name: Top 10 notas | Suscriptores | Concurrentes
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_grid
    fields: [clarin_concurrency_test.unique_pases, clarin_concurrency_test.dt]
    filters:
      clarin_concurrency_test.tipo_lector: Suscriptor
      clarin_concurrency_test.ev: pageload
      clarin_concurrency_test.tipo_pagina: nota
    sorts: [clarin_concurrency_test.unique_pases desc]
    limit: 10
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      clarin_concurrency_test.unique_users: Pases únicos
      clarin_concurrency_test.unique_pases: Pases únicos
      clarin_concurrency_test.dt: Nota
    series_cell_visualizations:
      clarin_concurrency_test.unique_users:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen: {}
    row: 47
    col: 12
    width: 12
    height: 6
  - title: Evolución por origen de entrada
    name: Evolución por origen de entrada
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_area
    fields: [clarin_test_5mingroup_todayandawa.origen_interval, clarin_test_5mingroup_todayandawa.intervalo,
      clarin_test_5mingroup_todayandawa.count_distinct_users, clarin_test_5mingroup_todayandawa.dia]
    pivots: [clarin_test_5mingroup_todayandawa.origen_interval]
    filters:
      clarin_test_5mingroup_todayandawa.origen_interval: "-NULL"
      clarin_test_5mingroup_todayandawa.ev: pageload
    sorts: [clarin_test_5mingroup_todayandawa.origen_interval, clarin_test_5mingroup_todayandawa.intervalo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Usuarios únicos, orientation: left, series: [{axisId: clarin_concurrency_test.unique_users,
            id: Direct - clarin_concurrency_test.unique_users, name: Direct}, {axisId: clarin_concurrency_test.unique_users,
            id: Internal - clarin_concurrency_test.unique_users, name: Internal},
          {axisId: clarin_concurrency_test.unique_users, id: Links - clarin_concurrency_test.unique_users,
            name: Links}, {axisId: clarin_concurrency_test.unique_users, id: Search
              - clarin_concurrency_test.unique_users, name: Search}, {axisId: clarin_concurrency_test.unique_users,
            id: Social - clarin_concurrency_test.unique_users, name: Social}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Tiempo
    series_types: {}
    defaults_version: 1
    hidden_fields: [clarin_test_5mingroup_todayandawa.dia]
    listen: {}
    row: 23
    col: 8
    width: 16
    height: 6
  - title: Evolución por red social
    name: Evolución por red social
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_area
    fields: [clarin_test_5mingroup_todayandawa.count_distc, clarin_test_5mingroup_todayandawa.origen_red_social,
      clarin_test_5mingroup_todayandawa.intervalo, clarin_test_5mingroup_todayandawa.dia]
    pivots: [clarin_test_5mingroup_todayandawa.origen_red_social]
    filters:
      clarin_test_5mingroup_todayandawa.ev: pageload
      clarin_test_5mingroup_todayandawa.origen_red_social: "-NULL,-NA"
    sorts: [clarin_test_5mingroup_todayandawa.origen_red_social, clarin_test_5mingroup_todayandawa.intervalo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Usuarios únicos, orientation: left, series: [{axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: Facebook - clarin_test_5mingroup_todayandawa.count_distc, name: Facebook},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: Facebook | IA
              - clarin_test_5mingroup_todayandawa.count_distc, name: Facebook | IA},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: Gmail - clarin_test_5mingroup_todayandawa.count_distc,
            name: Gmail}, {axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: Instagram - clarin_test_5mingroup_todayandawa.count_distc, name: Instagram},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: LinkedIn - clarin_test_5mingroup_todayandawa.count_distc,
            name: LinkedIn}, {axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: NA - clarin_test_5mingroup_todayandawa.count_distc, name: NA}, {axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: Pinterest - clarin_test_5mingroup_todayandawa.count_distc, name: Pinterest},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: Twitter - clarin_test_5mingroup_todayandawa.count_distc,
            name: Twitter}, {axisId: clarin_test_5mingroup_todayandawa.count_distc,
            id: Whatsapp - clarin_test_5mingroup_todayandawa.count_distc, name: Whatsapp},
          {axisId: clarin_test_5mingroup_todayandawa.count_distc, id: Youtube - clarin_test_5mingroup_todayandawa.count_distc,
            name: Youtube}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Tiempo
    series_types: {}
    series_colors:
      Facebook | IA - clarin_test_5mingroup_todayandawa.count_distc: "#9334E6"
      Gmail - clarin_test_5mingroup_todayandawa.count_distc: "#faf220"
      Instagram - clarin_test_5mingroup_todayandawa.count_distc: "#E52592"
      Pinterest - clarin_test_5mingroup_todayandawa.count_distc: "#FF8168"
      Twitter - clarin_test_5mingroup_todayandawa.count_distc: "#12B5CB"
      Whatsapp - clarin_test_5mingroup_todayandawa.count_distc: "#7CB342"
      LinkedIn - clarin_test_5mingroup_todayandawa.count_distc: "#079c98"
      NA - clarin_test_5mingroup_todayandawa.count_distc: "#80868B"
      Youtube - clarin_test_5mingroup_todayandawa.count_distc: "#EA4335"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [clarin_test_5mingroup_todayandawa.dia]
    listen: {}
    row: 29
    col: 0
    width: 16
    height: 6
  - title: Distribución por red social | Concurrente
    name: Distribución por red social | Concurrente
    model: agea_model
    explore: clarin_concurrency_test
    type: looker_pie
    fields: [clarin_concurrency_test.origen_red_social, clarin_concurrency_test.unique_users]
    filters:
      clarin_concurrency_test.ev: pageload
      clarin_concurrency_test.origen_red_social: "-NA"
    sorts: [clarin_concurrency_test.unique_users desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 70
    series_colors:
      NA: "#80868B"
      Facebook | IA: "#9334E6"
      Facebook: "#1A73E8"
      Twitter: "#12B5CB"
      Instagram: "#E52592"
      Youtube: "#EA4335"
      LinkedIn: "#079c98"
      Whatsapp: "#7CB342"
      Gmail: "#faf220"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 29
    col: 16
    width: 8
    height: 6
