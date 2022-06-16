SELECT
  *      
FROM
  `agea-mirta-sbx.agea_pixel_bi.ole_test_todaydata_view` AS t
WHERE
  t.timestamp >= CURRENT_DATETIME('UTC-3') - INTERVAL 5 MINUTE
