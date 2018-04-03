SELECT ifnull(sum(CASE WHEN type = 1 THEN probability ELSE 0 END),0) countRate,
       ifnull(sum(CASE WHEN type = 2 THEN probability ELSE 0 END),0) qualityRate,
       {1} / 255 count,
       {1} % 255 level
  FROM (
           SELECT sm.probability,
                  type
             FROM soulMaterial sm
            WHERE srcIdx = {0} AND 
                  type = 1 AND 
                  isactive = 1 AND 
                  level = {1} / 255
           UNION ALL
           SELECT sm.probability,
                  type
             FROM soulMaterial sm
            WHERE srcIdx = {0} AND 
                  type = 2 AND 
                  isactive = 1 AND 
                  level = {1} % 255
       )
       t;

;
