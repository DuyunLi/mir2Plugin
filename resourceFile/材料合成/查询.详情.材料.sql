SELECT det.srcIdx,
       srcCount
  FROM SynthesisDetail det
       JOIN
       Synthesis syn ON det.synthesisID = syn.idx
 WHERE isactive = 1 AND 
       marsterID = {0} AND 
       syn.idx = {1}
 ORDER BY det.extend1;
