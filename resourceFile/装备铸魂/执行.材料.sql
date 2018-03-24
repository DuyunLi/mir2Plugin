SELECT item.name,
       det.srcCount
  FROM SynthesisDetail det
       JOIN
       Synthesis syn ON syn.idx = det.synthesisID
       JOIN
       stditems item ON item.idx = det.srcIdx
 WHERE syn.srcIdx = {0} AND 
       syn.isActive = 1 AND 
       syn.type = 10
 ORDER BY det.extend1;
