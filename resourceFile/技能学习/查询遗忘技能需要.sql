WITH tuserSkill AS (
    SELECT (
               SELECT COUNT(DISTINCT createdOn) 
                 FROM skillUser t2
                WHERE t2.createdOn <= t1.createdOn AND 
                      t2.userName = t1.userName
           )
           AS rowNum,
           srcIdx,
           userName
      FROM skillUser t1
     WHERE t1.userName = '{0}'
)
SELECT srcIdx,
       st.Name,
       cost1
  FROM (
           SELECT ts.srcIdx,
                  CASE WHEN ts.rowNum = 1 THEN sc.OblivionIdx1 WHEN ts.rowNum = 2 THEN sc.OblivionIdx2 WHEN ts.rowNum = 3 THEN sc.OblivionIdx3 ELSE 0 END idx1,
                  CASE WHEN ts.rowNum = 1 THEN sc.OblivionCost1 WHEN ts.rowNum = 2 THEN sc.OblivionCost2 WHEN ts.rowNum = 3 THEN sc.OblivionCost3 ELSE 0 END cost1,
                  ts.rowNum
             FROM tuserSkill ts
                  JOIN
                  skillConfig sc ON sc.SkillIdx = ts.srcIdx
            WHERE (0 = {1} OR 
                   sc.skillIdx = {1}) 
       )
       t
       JOIN
       stditems st ON st.Idx = t.idx1
 ORDER BY t.rowNum;
