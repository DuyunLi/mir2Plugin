SELECT det.srcIdx,
       det.srcCount
  FROM SynthesisDetail det
       JOIN
       Synthesis syn ON syn.idx = det.synthesisID
 WHERE syn.srcIdx = {0} AND 
       syn.isActive = 1 AND 
       syn.type = 10
 ORDER BY det.extend1;
