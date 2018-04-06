REPLACE INTO vipUser SELECT '{0}',
                            t.Level,
                            datetime('now', 'localtime') 
                       FROM (
                                SELECT vc.Level,
                                       vc.UpRechargeAmount Amount
                                  FROM vipConfig vc
                                 ORDER BY vc.Level
                            )
                            t
                            JOIN
                            (
                                SELECT ifnull(sum(balance), 0) balance
                                  FROM pointaudit
                                 WHERE accountid = '{0}' AND 
                                       serviceID = 13
                            )
                            acc
                      WHERE t.Amount >= acc.balance
                      ORDER BY t.Level ASC
                      LIMIT 1;

SELECT Level
  FROM vipUser
 LIMIT 1;
