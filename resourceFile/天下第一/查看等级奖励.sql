WITH tsource AS (
    SELECT vg.level
      FROM vipGift vg
           LEFT JOIN
           giftlevelLog gl ON gl.AccountID = '{0}' AND 
                              gl.level = vg.Level
     WHERE type = 3 AND 
           gl.Level IS NULL
     GROUP BY vg.level
     LIMIT {1}
)
SELECT vg.level,
       vg.srcIdx,
       vg.Count
  FROM tsource t
       JOIN
       vipGift vg ON t.level = vg.Level AND 
                     vg.type = 3
 ORDER BY vg.level;
