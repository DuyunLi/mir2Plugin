SELECT box.srcIDx,
       std.name,
       box.count
  FROM treasureBox box
       JOIN
       stditems std ON std.idx = srcIdx
 WHERE box.idx = {0} AND 
       box.type = 2 AND 
       box.isactive = 1
 ORDER BY sort;
