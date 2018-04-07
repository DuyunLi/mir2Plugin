SELECT Level,
       Icon,
       v2Up - UpRechargeAmount,
       CASE WHEN v2Up - balance < 0 THEN 0 ELSE v2Up - balance END t1,
       CASE WHEN balance - UpRechargeAmount > v2Up - UpRechargeAmount THEN v2Up - UpRechargeAmount ELSE balance - UpRechargeAmount END t2,
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
                             serviceID = 13
                  )
                  balance,
                  vc.UpRechargeAmount,
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
                  vipConfig vc3 ON vc3.level = (vu.level + 1) 
            WHERE accountID = '{0}' OR 
                  vc.level = 1
            ORDER BY vu.UpdateOn DESC
            LIMIT 1
       );
