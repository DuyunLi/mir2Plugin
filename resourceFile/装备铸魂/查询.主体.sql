SELECT syn.idx,
       syn.gamegold
  FROM synthesis syn
 WHERE syn.srcIdx = {0} AND 
       syn.type = 10 AND 
       syn.isActive = 1
 ORDER BY syn.extend1;
