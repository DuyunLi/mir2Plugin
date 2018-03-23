SELECT items.name AS name,
       det.srcCount
  FROM synthesisdetail AS det
       JOIN
       Synthesis syn ON syn.idx = det.synthesisID
       JOIN
       stditems AS items ON items.idx = det.srcIdx
WHERE syn.srcIdx = {0} AND 
       syn.isActive = 1 AND 
       syn.type = 1;