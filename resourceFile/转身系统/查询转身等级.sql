WITH tsource AS (
    SELECT acc.AccountID,
           ifnull(acc.Balance, 0) balance,
           ifnull(sum(exp.Value), 0) exp
      FROM Account acc
           LEFT JOIN
           humanNewLevel hnl ON hnl.userName = acc.accountid AND 
                                hnl.type = 0
           LEFT JOIN
           humanNewLevelExp exp ON exp.Level <= ifnull(hnl.Level, 0) AND 
                                   exp.Type = hnl.type
     WHERE acc.typeid = 8 AND 
           acc.AccountID = '{0}'
)
SELECT t.level,
       ifnull(sum(exp.value), 0) exp,
       ifnull(CASE WHEN tsource.balance - tsource.exp > ifnull(sum(exp.value), 0) THEN ifnull(sum(exp.value), 0) WHEN tsource.balance - tsource.exp < 0 THEN 0 ELSE tsource.balance - tsource.exp END, 0) cexp
  FROM (
           SELECT type,
                  sum(level) level
             FROM HumanNewLevel
            WHERE userName = '{0}' AND 
                  type = 0
           UNION ALL
           SELECT 0,
                  0
       )
       t
       LEFT JOIN
       HumanNewLevelExp exp ON exp.Level = t.level + 1 AND 
                               exp.type = t.type
       LEFT JOIN
       tsource ON tsource.accountid = '{0}'
 WHERE t.Type IS NOT NULL
 GROUP BY t.level
 ORDER BY t.level DESC
 LIMIT 1;
