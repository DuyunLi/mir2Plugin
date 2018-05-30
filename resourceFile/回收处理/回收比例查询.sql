SELECT CASE WHEN {0} >= 10 AND 
                 {0} < 20 THEN '20,2,-1' WHEN {0} >= 20 AND 
                                              {0} < 30 THEN '20,5,1-1' WHEN {0} >= 30 AND 
                                                                            {0} < 40 THEN '30,8,3,1,-1' WHEN {0} >= 40 AND 
                                                                                                             {0} < 46 THEN '40,8,3,1,1,-1' WHEN {0} >= 46 THEN '70,10,5,2,1,1,-1' ELSE '0,-1' END RecoverySum,
       CASE WHEN ( ({1}) / 1000 + 1) * 1000 < ({1} + {0}) THEN 10 ELSE 0 END UserRecoverySum,
       CASE WHEN ( ({2}) / 3000 + 1) * 3000 < ({2} + {0}) THEN 1 ELSE 0 END UserRecoverySum,
       CASE WHEN vu.level IS NULL THEN 0 ELSE vip.RecoveryRate END RecoveryRate
  FROM vipConfig vip
       LEFT JOIN
       vipuser vu ON vu.AccountID = '{3}' AND 
                     vu.level = vip.level
 ORDER BY ifnull(vu.level, 0) DESC
 LIMIT 1;
