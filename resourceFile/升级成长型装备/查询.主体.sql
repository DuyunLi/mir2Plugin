SELECT g.gameGold,
       point,
       pointType
  FROM synthesis syn
       JOIN
       synthesisGrowth g ON g.synthesisID = syn.idx
 WHERE syn.MarsterID = 0 AND 
       syn.type IN (2, 3) AND 
       syn.isActive = 1 AND 
       srcIdx = {0} AND 
       upLevel = {1};