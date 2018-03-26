SELECT CAST (round(item.Ac2 * det.proportion / 100, 0) AS INT) ac,
       CAST (round(det.proportion * item.MAc2 / 100, 0) AS INT) mac,
       CAST (round(item.Dc2 * det.proportion / 100, 0) AS INT) dc,
       CAST (round(item.Mc2 * det.proportion / 100, 0) AS INT) mc,
       CAST (round(item.Sc2 * det.proportion / 100, 0) AS INT) sc
  FROM upgradeDetail det
       JOIN
       upgradeMarster ms ON ms.upLevel = det.upLevel
       JOIN
       stditems item ON item.idx = {1}
 WHERE det.upLevel = {0} AND 
       (det.srcIdx = {1} OR 
        det.srcIdx = 0) AND 
       (det.stdmode = {2} OR 
        det.stdmode = 0) 
 ORDER BY CASE WHEN det.srcIdx > 0 THEN 0 WHEN det.stdmode > 0 THEN 1 ELSE 2 END
 LIMIT 1;
