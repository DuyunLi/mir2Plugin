WITH tuserCnt AS (
    SELECT userName,
           sum(cnt) cnt
      FROM (
               SELECT userName,
                      count( * ) cnt
                 FROM skillUser
                WHERE userName = '{0}'
                GROUP BY userName
               UNION ALL
               SELECT '{0}',
                      0
           )
     GROUP BY userName
)
select st.name,cost from (
SELECT CASE WHEN tc.cnt = 0 THEN sc.LearningIdx1 WHEN tc.cnt = 1 THEN sc.LearningIdx2 WHEN tc.cnt = 2 THEN sc.LearningIdx3 ELSE -1 END idx,
       CASE WHEN tc.cnt = 0 THEN sc.LearningCost1 WHEN tc.cnt = 1 THEN sc.LearningCost2 WHEN tc.cnt = 2 THEN sc.LearningCost3 ELSE -1 END cost
  FROM skillConfig sc
       JOIN
       tuserCnt tc ON 1 = 1
       JOIN
       stditems std ON std.idx = sc.LearningIdx1
 WHERE sc.skillIdx = {1}) t
 join stditems st on st.Idx = t.idx
