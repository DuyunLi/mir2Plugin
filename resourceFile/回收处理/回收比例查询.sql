SELECT CASE WHEN {0} >= 10 AND {0} < 20 THEN '20,2,-1'/* 给百分之5 */ 
    WHEN {0} >= 20 AND {0} < 30 THEN '20,5,1-1'/* 给百分之10 */ 
    WHEN {0} >= 30 AND {0} < 40 THEN '30,8,3,1,-1'/* 给百分之15 */ 
    WHEN {0} >= 40 AND {0} < 46 THEN '40,8,3,1,1,-1'/* 给百分之20 */ 
    WHEN {0} >= 46 THEN '70,10,5,2,1,1,-1' /* 给百分之30 */ 
    ELSE '0,-1' END RecoverySum,
    case when (({1})/1000 +1) * 1000 < ({1}+{0}) then 10 else 0 end UserRecoverySum,
    case when (({2})/3000 +1) * 3000 < ({2}+{0}) then 1 else 0 end UserRecoverySum,
    case when vu.level is null then 0 else vip.RecoveryRate end RecoveryRate 
from vipConfig vip 
       LEFT JOIN
       vipuser vu ON vu.AccountID = '{3}' AND 
                     vu.level = vip.level
order by ifnull(vu.level,0) desc
limit 1