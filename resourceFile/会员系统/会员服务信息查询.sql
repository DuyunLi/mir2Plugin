SELECT Level,
       Icon,
       UpRechargeAmount - v2Up,
       UpRechargeAmount - balance,
       balance - v2Up
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
                  ifnull(vc2.UpRechargeAmount, 99999) v2Up
             FROM vipUser vu
                  JOIN
                  vipConfig vc ON vc.level = vu.level
                  JOIN
                  vipConfig vc2 ON vc2.level = (vu.level - 1) 
            WHERE accountID = '{0}'
            ORDER BY vu.UpdateOn DESC
            LIMIT 1
       );
