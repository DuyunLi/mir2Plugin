SELECT g.gameGold,
       g.point g,
       g.pointType
  FROM synthesis syn
       JOIN
       synthesisGrowth g ON g.synthesisID = syn.idx AND 
                            g.upLevel = {1}
 WHERE syn.MarsterID = 0 AND 
       syn.type IN (2, 3) AND 
       syn.isActive = 1 AND 
       syn.idx = {0};
