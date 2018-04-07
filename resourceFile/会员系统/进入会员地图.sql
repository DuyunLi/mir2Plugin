SELECT CASE WHEN {1} = 1 THEN mapinfo1 WHEN {1} = 2 THEN mapinfo2 ELSE '3:333:333' END mapPoint,
       ':' [key]
  FROM vipuser vu
       JOIN
       vipConfig vc ON vc.level = vu.level
 WHERE vu.AccountID = '{0}';
