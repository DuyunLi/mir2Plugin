SELECT syn.idx,
       g.gameGold,
       g.point g,
       g.pointType
  FROM synthesis syn
       JOIN
       synthesisGrowth g ON g.synthesisID = syn.idx AND 
                            g.upLevel = {1}
 WHERE syn.MarsterID = 0 AND 
       syn.type = 2 AND 
       syn.isActive = 1 AND 
       srcIdx = {0}
UNION ALL
SELECT syn.idx,
       g.gameGold,
       g.point g,
       g.pointType
  FROM synthesis syn
       JOIN
       synthesisGrowth g ON g.synthesisID = syn.idx AND 
                            g.upLevel = {2}
 WHERE syn.MarsterID = 0 AND 
       syn.type = 3 AND 
       syn.isActive = 1 AND 
       srcIdx = {0};
