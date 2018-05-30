WITH paSource AS (
    SELECT ifnull(sum(CASE ps.name WHEN 'Recovery' THEN balance WHEN 'CDKGold' THEN balance ELSE 0 END), 0) Recovery,
           ifnull(sum(CASE ps.name WHEN 'Recharge' THEN balance WHEN 'CDKRC' THEN balance ELSE 0 END), 0) Recharge,
           u.userName,
           u.TargerUser target
      FROM refereeUser u
           JOIN
           pointaudit pa ON pa.AccountID = u.TargerUser
           JOIN
           pointservice ps ON ps.id = pa.ServiceID
     WHERE ps.Name IN ('Recovery', 'CDKGold', 'Recharge', 'CDKRC') AND 
           strftime('%Y-%m-%d', CURRENT_TIMESTAMP, 'localtime', '-1 day') = strftime('%Y-%m-%d', pa.CreatedOn) AND 
           pa.Balance > 0
     GROUP BY u.userName,
              u.TargerUser
),
tsource AS (
    SELECT pa.Recovery,
           pa.Recharge,
           pa.userName,
           pa.target,
           u.GameGoldRate + ifnull(vc.RefereeGoldRate, 0) GameGoldRate,
           u.RechargeRate + ifnull(vc.RefereeBindRCRate, 0) RechargeRate
      FROM paSource pa
           JOIN
           refereeUser u ON u.userName = pa.UserName
           LEFT JOIN
           vipUser v ON v.AccountID = pa.UserName
           LEFT JOIN
           vipConfig vc ON vc.Level = ifnull(v.Level, 0) 
),
tview AS (
    SELECT t.UserName,
           t.target,
           t.Recovery,
           ( (CASE WHEN GameGoldRate > 100 THEN 100 ELSE GameGoldRate END) ) GameGoldRate,
           t.Recharge,
           ( (CASE WHEN RechargeRate > 75 THEN 75 ELSE RechargeRate END) ) RechargeRate
      FROM tsource t
)
INSERT INTO refereeItem (
                            userName,
                            targerUser,
                            gameGold,
                            Recharge,
                            GenerateDate,
                            Status,
                            ReceiveDate,
                            remark
                        )
                        SELECT tview.UserName,
                               tview.target,
                               Recovery * GameGoldRate / 200,
                               Recharge * RechargeRate / 200,
                               datetime(CURRENT_TIMESTAMP, 'localtime'),
                               0,
                               NULL,
                               Recovery || ',' || GameGoldRate || ',' || Recharge || ',' || RechargeRate
                          FROM tview
                         WHERE GameGoldRate + RechargeRate != 0
                        UNION ALL
                        SELECT tview.target,
                               tview.UserName,
                               Recovery * GameGoldRate / 200,
                               Recharge * RechargeRate / 200,
                               datetime(CURRENT_TIMESTAMP, 'localtime'),
                               0,
                               NULL,
                               Recovery || ',' || GameGoldRate || ',' || Recharge || ',' || RechargeRate
                          FROM tview
                         WHERE GameGoldRate + RechargeRate != 0;
