SELECT syn.idx,
       item.name,
       syn.gamegold
  FROM synthesis syn
       JOIN
       stditems item ON item.idx = syn.srcIdx
 WHERE syn.srcIdx = {0} AND 
       syn.type = 10 AND 
       syn.isActive = 1
 ORDER BY syn.extend1;
