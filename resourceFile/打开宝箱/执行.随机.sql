SELECT box.idx,
       box.type,
       box.srcIDx,
       std.name,
       box.count,
       box.probability,
       box.luck,
       box.[fail],
       box.sort
  FROM treasureBox box
       JOIN
       stditems std ON std.idx = srcIdx
 WHERE box.idx = {0} AND 
       box.isactive = 1
 ORDER BY sort;
