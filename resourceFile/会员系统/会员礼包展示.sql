WITH GiftLevel AS (
    SELECT *
      FROM (
               SELECT vg.Level,
                      1 type
                 FROM vipconfig vg
                      JOIN
                      vipUser vu ON vg.Level <= (vu.level + 1) AND 
                                    vu.AccountID = '{0}'
                      LEFT JOIN
                      vipgiftLevelLog vgl ON vgl.Level = vg.Level AND 
                                             vgl.AccountID = vu.accountID
                WHERE vgl.Level IS NULL AND 
                      vg.Level != 0
               UNION ALL
               SELECT CASE WHEN vu.Level + 1 > 10 THEN 10 ELSE vu.Level + 1 END Level,
                      2 type
                 FROM vipUser vu
                WHERE vu.AccountID = '{0}'
               UNION ALL
               SELECT 1,
                      3
           )
           t
     GROUP BY type,
              t.level
     ORDER BY type,
              t.level
     LIMIT 1
)
SELECT srcIdx,
       Count,
       vg.Level,
       gl.type
  FROM vipGift vg
       JOIN
       GiftLevel gl ON gl.level = vg.level AND 
                       vg.type = 1
 WHERE vg.IsActive = 1;
