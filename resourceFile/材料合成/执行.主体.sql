SELECT resultIdx,
       resultCount * {2},
       gameGold * {2},
       std.name,
       syn.extend2,
       CASE WHEN syn.extend3 = 0 THEN syn.resultCount ELSE (resultCount * {2}) END ext3
  FROM synthesis syn
       JOIN
       stditems std ON std.idx = syn.resultIdx
 WHERE isactive = 1 AND 
       marsterID = {0} AND 
       syn.idx = {1};