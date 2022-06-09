SELECT
  *,


          (
  IF
    (nssite IS NOT NULL AND tipoPagina IS NOT NULL,
      CASE
          WHEN (nssite = 'clarin'AND tipoPagina ='home') THEN 'Home'
          WHEN (nssite = 'clarin'AND tipoPagina !='home') THEN 'N/D'
          WHEN (nssite = 'clarin-sociedad' OR nssite = 'clarin-ciudades' OR nssite = 'clarin-policiales') THEN 'Sociedad'
          WHEN (nssite = 'ieco') THEN 'Economia'
          WHEN (nssite = 'clarin-fama') THEN 'Fama'
          WHEN (nssite = 'clarin-politica') THEN 'Política'
          WHEN (nssite='clarin-internacional') THEN 'Internacional'
          WHEN (nssite='clarin-mundo') THEN 'Mundo'
          WHEN (nssite='clarin-deportes' OR nssite='mision-mundial' OR nssite='mision-america') THEN 'Deportes'
          WHEN (nssite='espectaculos') THEN 'Espectaculos'
          WHEN (nssite='clarin-viste') THEN 'Viste'
          WHEN (nssite='clarin-opinion') THEN 'Opinión'
          WHEN (nssite='clarin-mujer' OR nssite='entremujeres') THEN 'Entremujeres'
          WHEN (nssite='clarin-viajes') THEN 'Viajes'
          WHEN (nssite='zonalesclarin') THEN 'Zonales'
          WHEN (nssite='clarin-servicios') THEN 'Servicios'
          WHEN (nssite='clarin-buena-vida') THEN 'Buena Vida'
          WHEN (nssite='clarin-recetas') THEN 'Recetas'
          WHEN (nssite='revistaenie' OR nssite='clarin-cultura') THEN 'Cultura'
          WHEN (nssite='clarin-recetas') THEN 'Recetas'
          WHEN (nssite='clarin-next') THEN 'Tecnología'
          WHEN (nssite='clarin-gourmet') THEN 'Gourmet'
          WHEN (nssite='clarin-rural') THEN 'Rural'
          WHEN (nssite='clarin-arquitectura') THEN 'Arquitectura'
          WHEN (nssite='clarin-nyt') THEN 'The New York Times'
          WHEN (nssite='clarin-revistaviva') THEN 'Viva'
          WHEN (nssite='clarin-autos') THEN 'Autos'
          WHEN (nssite='clarin-cartas') THEN 'Cartas'
          WHEN (nssite='clarin-especiales') THEN 'Especiales'
          WHEN (nssite='grandt'
          OR nssite='grandt-movil') THEN 'Gran DT'
          WHEN (nssite='clarin-historias') THEN 'Historias'
          WHEN (nssite='seccion-servicios') THEN 'Servicios Editoriales'
        ELSE
        'Resto Clarin'
      END
        ,
      '-2')) AS seccion,

        



FROM
  `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view` AS t
WHERE
  t.timestamp >= CURRENT_DATETIME('UTC-3') - INTERVAL 5 MINUTE