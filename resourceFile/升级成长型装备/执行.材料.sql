SELECT item.name,
       d.srcCount
  FROM synthesis syn
       JOIN
       synthesisDetail d ON d.synthesisID = syn.idx
       JOIN
       stditems item ON item.idx = d.srcIDx
 WHERE syn.MarsterID = 0 AND 
       syn.type IN (2, 3) AND 
       syn.isActive = 1 AND 
       d.synthesisID = {0} AND 
       uplevel = {1};