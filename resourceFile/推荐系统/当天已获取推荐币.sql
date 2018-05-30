SELECT ifnull(sum(gameGold), 0) gameGold,
       ifnull(sum(Recharge), 0) Recharge
  FROM refereeItem
 WHERE userName = '{0}' AND 
       strftime('%Y-%m-%d', CURRENT&ampTIMESTAMP, 'localtime') = strftime('%Y-%m-%d', ReceiveDate) AND 
       Status = 1
 GROUP BY userName;
