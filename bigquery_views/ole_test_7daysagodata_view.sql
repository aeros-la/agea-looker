SELECT *,concat(dl,'-',timestamp,'-',uid) unique_key FROM `agea-mirta-sbx.agea_pixel.ole_test` 
WHERE DATE(TIMESTAMP) = DATE_SUB(CURRENT_DATE('UTC-3') , INTERVAL 7 DAY)