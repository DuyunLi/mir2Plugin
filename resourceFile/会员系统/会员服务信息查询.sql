SELECT Level,
       Icon,
       CASE WHEN v2Up - UpRechargeAmount < 0 THEN 99999 ELSE v2Up - UpRechargeAmount END,
       CASE WHEN v2Up - balance < 0 THEN 0 ELSE v2Up - balance END t1,
       CASE WHEN balance - UpRechargeAmount > v2Up - UpRechargeAmount THEN CASE WHEN v2Up - UpRechargeAmount < 0 THEN 99999 ELSE v2Up - UpRechargeAmount END ELSE balance - UpRechargeAmount END t2,
       ksr1,
       rr1,
       kr1,
       ksr2,
       rr2,
       kr2
  FROM (
           SELECT vu.Level,
                  vc.icon,
                  (
                      SELECT ifnull(sum(balance), 0) balance
                        FROM pointaudit
                       WHERE accountid = '{0}' AND 
                           typeid = 3 and balance > 0
                  )
                  balance,
                  CASE WHEN vu.level IS NULL THEN 0 ELSE vc.UpRechargeAmount END UpRechargeAmount,
                  ifnull(vc3.UpRechargeAmount, 0) v2Up,
                  vc.KillSpoilsRate ksr1,
                  vc.RecoveryRate rr1,
                  vc.KillExpRate kr1,
                  ifnull(vc3.KillSpoilsRate, 0) ksr2,
                  ifnull(vc3.RecoveryRate, 0) rr2,
                  ifnull(vc3.KillExpRate, 0) kr2
             FROM vipConfig vc
                  LEFT JOIN
                  vipUser vu ON vc.level = vu.level
                  LEFT JOIN
                  vipConfig vc3 ON vc3.level = (ifnull(vu.level, 0) + 1) 
            WHERE accountID = '{0}' OR 
                  vc.level = 1
            ORDER BY vu.UpdateOn DESC
            LIMIT 1
       );
