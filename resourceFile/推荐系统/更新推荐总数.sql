WITH pa AS (
    SELECT ifnull(sum(CASE ps.name WHEN 'RecommendGold' THEN balance ELSE 0 END), 0) Gold,
           ifnull(sum(CASE ps.name WHEN 'RecommendBindRC' THEN balance ELSE 0 END), 0) BindRC,
           pa.accountid UserName
      FROM pointaudit pa
           JOIN
           pointservice ps ON pa.ServiceID = ps.ID
     WHERE ps.Name IN ('RecommendGold', 'RecommendBindRC') 
     GROUP BY pa.accountid
)
UPDATE refereeUser
   SET gameGoldCount = (
           SELECT Gold
             FROM pa
            WHERE pa.UserName = refereeUser.UserName
       ),
       RechargeCount = (
           SELECT BindRC
             FROM pa
            WHERE pa.UserName = refereeUser.UserName
       )
 WHERE userName = '{0}';
