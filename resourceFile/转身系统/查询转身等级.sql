SELECT t.level,
       ifnull(sum(exp.value), 0) exp 
  FROM (
           SELECT type,
                  sum(level) level
             FROM HumanNewLevel
            WHERE userName = '{0}' AND 
                  type = {1}
           UNION ALL
           SELECT {1},
                  0
       )
       t
       LEFT JOIN
       HumanNewLevelExp exp ON exp.Level = t.level + 1 AND 
                               exp.type = t.type
 WHERE t.Type IS NOT NULL
 GROUP BY t.level
 ORDER BY t.level DESC
 LIMIT 1;
