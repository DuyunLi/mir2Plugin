SELECT std2.name srcName,
       std.name toName,
       resultCount cnt,
       extend2
  FROM synthesis
       JOIN
       stditems std ON std.idx = resultIdx
       JOIN
       stditems std2 ON std2.idx = srcidx
 WHERE srcIdx = {0} AND 
       type = 1;
