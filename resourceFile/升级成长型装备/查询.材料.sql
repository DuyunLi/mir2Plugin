SELECT d.synthesisID,
       d.srcIdx,
       d.srcCount
  FROM synthesis syn
       JOIN
       synthesisDetail d ON d.synthesisID = syn.idx
 WHERE syn.MarsterID = 0 AND 
       syn.type = 2 AND 
       syn.isActive = 1 AND 
       syn.srcIdx = {0} AND 
       d.upLevel = {1}
UNION ALL
SELECT d.synthesisID,
       d.srcIdx,
       d.srcCount
  FROM synthesis syn
       JOIN
       synthesisDetail d ON d.synthesisID = syn.idx
 WHERE syn.MarsterID = 0 AND 
       syn.type = 3 AND 
       syn.isActive = 1 AND 
       syn.srcIdx = {0} AND 
       d.upLevel = {2};
