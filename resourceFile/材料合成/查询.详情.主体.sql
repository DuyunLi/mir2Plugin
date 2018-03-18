SELECT resultIdx,
       resultCount,
       gameGold
  FROM synthesis syn
       JOIN
       stditems std ON std.idx = syn.resultIdx
 WHERE isactive = 1 AND 
       marsterID = {0} AND 
       syn.idx = {1}
