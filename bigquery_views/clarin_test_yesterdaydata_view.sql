SELECT *,


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
(IF
    ( (referrer IS NOT NULL
        AND rl IS NOT NULL
        AND dataSource IS NOT NULL),
      (
        CASE
          WHEN (dataSource='ia' OR referrer='twitter' OR referrer='whatsapp') THEN 'Social'
          WHEN ( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
            STRPOS(rl,'/')) ='-2') THEN 'Direct'
          WHEN (referrer='www_clarin_com' OR referrer='login_clarin_com') THEN 'Internal'
          WHEN (referrer=''
          AND  `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
            STRPOS(rl,'/'))='') THEN 'N/D'
        ELSE
        (
          CASE
            WHEN ( CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'facebook') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'t.co') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'twitter') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'youtube') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'pinterest') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'linkedin') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'instagram') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'com.google.android.gm') ) THEN 'Social'
            WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www.clarin.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'recetas.clarin.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'suscripcion.365.clarin.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'app.noticias.clarin.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'app-pase.clarin.com') ) THEN 'Internal'


            WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'www.google.') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'google.') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'duckduckgo.com') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'search.becovi.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'googlequicksearchbox') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'search.myway.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'yahoo.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'bing') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), '.ask.com') ) THEN 'Search'
            
            
            WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'news.google.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www.googleapis.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'classroom.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'docs.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'trends.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www-clarin-com.cdn.ampproject.org')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www.msn.com') ) THEN 'Links'
          ELSE
          'Links'
        END
          )
      END
        ),
    IF
      ( (rl IS NOT NULL),
        (CASE
          WHEN (CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'facebook') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'t.co') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'twitter') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'youtube') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'pinterest') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'instagram') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'linkedin') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'com.google.android.gm') ) THEN 'social'
          WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
              STRPOS(rl,'/')),'www.clarin.com')
          OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
              STRPOS(rl,'/')),'recetas.clarin.com')
          OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
              STRPOS(rl,'/')),'suscripcion.365.clarin.com')
          OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
              STRPOS(rl,'/')),'app.noticias.clarin.com')
          OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
              STRPOS(rl,'/')),'app-pase.clarin.com') ) THEN 'Internal'
          WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'www.google.') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'google.') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'duckduckgo.com') OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')),'search.becovi.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'googlequicksearchbox') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'search.myway.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'yahoo.com') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), 'bing') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl, STRPOS(rl,'/')), '.ask.com') ) THEN 'Search'
          WHEN (STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'news.google.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www.googleapis.com')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'classroom.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'docs.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'trends.google')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www-clarin-com.cdn.ampproject.org')
            OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,
                STRPOS(rl,'/')),'www.msn.com') ) THEN 'Links' 
            ELSE 'Links'
            END), 'Otros' ))) AS origen,
            
            
 
    
    (
  IF
    ( 
      (referrer IS NOT NULL
        AND rl IS NOT NULL
        AND dataSource IS NOT NULL),
      
      (CASE
        WHEN dataSource='ia' THEN 'Facebook | IA'
        WHEN referrer='facebook' OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'facebook') THEN 'Facebook'
        WHEN referrer='twitter' OR STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'t.co') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'twitter') THEN 'Twitter'
        WHEN referrer ='whatsapp' THEN 'Whatsapp'
        WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'youtube') THEN 'Youtube'
        WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'pinterest') THEN 'Pinterest'
        WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'instagram') THEN 'Instagram'
        WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'linkedin') THEN 'LinkedIn'
        WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'com.google.android.gm') THEN 'Gmail'
        ElSE 'NA'
        END),

    (IF
      (rl IS NOT NULL,
        CASE
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'facebook') THEN 'Facebook'
          WHEN STARTS_WITH( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'t.co') OR CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'twitter') THEN 'Twitter'
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'youtube') THEN 'Youtube'
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'pinterest') THEN 'Pinterest'
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'instagram') THEN 'Instagram'
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'linkedin') THEN 'LinkedIn'
          WHEN CONTAINS_SUBSTR( `agea-mirta-sbx.agea_pixel_bi.parse_rl`(rl,STRPOS(rl,'/')),'com.google.android.gm') THEN 'Gmail'
          ElSE 'NA'
      END
        ,
        'NA') ) ) ) AS origen_red_social, concat(dl,'-',timestamp,'-',uid) unique_key
            
            
             FROM `agea-mirta-sbx.agea_pixel.clarin_test` 
WHERE DATE(TIMESTAMP) = DATE_ADD(CURRENT_DATE('UTC-3'), INTERVAL -1 DAY)
