SELECT *,(IF
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
            
            
            
            
             FROM `agea-mirta-sbx.agea_pixel.ole_test` 
WHERE DATE(TIMESTAMP) = CURRENT_DATE('UTC-3')