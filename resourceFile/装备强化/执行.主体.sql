SELECT CASE WHEN 1 = 0 THEN det.probability + det.luckRate ELSE det.probability END probability,
       ms.failLevel,
       ms.luckCnt,
       ms.protectCnt
  FROM upgradeDetail det
       JOIN
       upgradeMarster ms ON ms.upLevel = det.upLevel
 WHERE det.upLevel = {0} AND 
       (det.srcIdx = {1} OR 
        det.srcIdx = 0) AND 
       (det.stdmode = {2} OR 
        det.stdmode = 0) 
 ORDER BY CASE WHEN det.srcIdx > 0 THEN 0 WHEN det.stdmode > 0 THEN 1 ELSE 2 END
 LIMIT 1;
