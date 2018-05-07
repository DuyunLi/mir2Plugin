WITH tsource AS (
    SELECT t1.Type,
           sum(t2.value) value
      FROM humanNewLevel t1
           JOIN
           humanNewLevelAttr t2 ON t1.Level >= t2.Level AND 
                                   t1.type = t2.leveltype AND 
           (t1.type != 7 OR 
            t1.type = 7 AND 
            t2.type = 13) 
     WHERE t1.userName = '{0}' AND 
           t1.type = {1}
     GROUP BY t1.Type
)
SELECT hnl.level,
       ifnull(tsource.Value, 0) at1,
       ifnull(attr2.Value, 0) at2,
       ifnull(exp.Value, 0) exp,
       acc.Balance
  FROM (
           SELECT type,
                  Level
             FROM humanNewLevel hnl
            WHERE hnl.type = {1} AND 
                  hnl.userName = '{0}'
           UNION ALL
           SELECT {1},
                  0
            ORDER BY Level DESC
            LIMIT 1
       )
       hnl
       LEFT JOIN
       tsource ON tsource.Type = hnl.Type
       LEFT JOIN
       HumanNewLevelAttr attr2 ON attr2.LevelType = hnl.Type AND 
                                  hnl.Level + 1 = attr2.Level AND 
                                  (hnl.type != 7 OR 
                                   hnl.type = 7 AND 
                                   attr2.type = 13) 
       LEFT JOIN
       HumanNewLevelExp exp ON exp.Type = hnl.Type AND 
                               hnl.Level + 1 = exp.Level
       LEFT JOIN
       (
           SELECT Balance
             FROM account
            WHERE accountid = '{0}' AND 
                  typeid = 9
       )
       acc ON 1 = 1;
