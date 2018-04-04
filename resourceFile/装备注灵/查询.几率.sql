SELECT ifnull(sum(CASE WHEN t.type = 1 THEN t.probability ELSE 0 END), -1) countRate,
       ifnull(sum(CASE WHEN t.type = 2 THEN t.probability ELSE 0 END), -1) qualityRate,
       {1} / 255 count,
       {1} % 255 level
  FROM (
           SELECT sm.probability,
                  type,
                  's' t
             FROM soulMaterial sm
            WHERE srcIdx = {0} AND 
                  type = 1 AND 
                  isactive = 1 AND 
                  level = {1} / 255
           UNION ALL
           SELECT sm.probability,
                  type,
                  's' t
             FROM soulMaterial sm
            WHERE srcIdx = {0} AND 
                  type = 2 AND 
                  isactive = 1 AND 
                  level = {1} % 255
       )
       t
 GROUP BY t.t
HAVING sum(t.type) = 3;

;
