REPLACE INTO vipUser  SELECT '{0}',
       t.Level,
       datetime('now', 'localtime')
  FROM (
           SELECT '{0}' acc,
                  ifnull(sum(balance), 0) balance
             FROM pointaudit
            WHERE accountid = '{0}' AND 
                  typeid = 3 and balance > 0
       )
       acc
       LEFT JOIN
       (
           SELECT '{0}' acc,
                  vc.Level,
                  vc.UpRechargeAmount Amount
             FROM vipConfig vc
            ORDER BY vc.Level
       )
       t ON acc.acc = t.acc AND 
            t.Amount <= acc.balance
 ORDER BY t.Level DESC
 LIMIT 1;


SELECT Level
  FROM vipUser
 LIMIT 1;
