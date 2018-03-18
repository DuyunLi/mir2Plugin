SELECT items.name AS name,
       det.srcCount * {2}
  FROM synthesisdetail AS det
       JOIN
       Synthesis syn ON syn.idx = det.synthesisID
       JOIN
       stditems AS items ON items.idx = det.srcIdx
 WHERE syn.idx = {1} AND 
       syn.isActive = 1 AND 
       syn.MarsterID = {0} AND 
       syn.type = 0;