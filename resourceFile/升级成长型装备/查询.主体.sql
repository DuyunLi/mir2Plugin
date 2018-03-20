SELECT syn.idx,
       g1.gameGold,
       g.point g,
       g1.Point g1,
       g.pointType
  FROM synthesis syn
       JOIN
       synthesisGrowth g ON g.synthesisID = syn.idx AND 
                            g.upLevel = {1}
       LEFT JOIN
       synthesisGrowth g1 ON g1.synthesisID = syn.idx AND 
                             g1.upLevel = ({1} + 1) 
 WHERE syn.MarsterID = 0 AND 
       syn.type IN (2, 3) AND 
       syn.isActive = 1 AND 
       srcIdx = {0};
