SELECT sum(u.HumanCount) HumanCount,
       sum(u.GameGoldCount) GameGoldCount,
       sum(u.RechargeCount) RechargeCount,
       sum(u.GameGoldRate+ ifnull(vc.RefereeGoldRate, 0)) GameGoldRate,
       sum(u.RechargeRate+ ifnull(vc.RefereeBindRCRate, 0)) RechargeRate,
       sum(ifnull(i.GameGold, 0)) GameGold,
       sum(ifnull(i.Recharge, 0)) Recharge,
       sum(CASE WHEN i.Status = 0 AND 
                     i.ReceiveDate IS NULL THEN 0 ELSE 1 END) type
  FROM refereeUser u
       LEFT JOIN
       vipUser v ON v.AccountID = u.UserName
       LEFT JOIN
       vipConfig vc ON vc.Level = ifnull(v.Level, 0) 
       LEFT JOIN
       refereeItem i ON i.UserName = u.UserName AND 
                        strftime('%Y-%m-%d', CURRENT&ampTIMESTAMP, 'localtime') = strftime('%Y-%m-%d', i.GenerateDate) 
 WHERE u.userName = '{0}'
 GROUP BY u.UserName;
