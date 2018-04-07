SELECT i.name,
       count
  FROM vipuser vu
       JOIN
       vipGift vg ON vg.type = {2} AND 
                     vg.level = {1} AND 
                     vg.isactive = 1 AND 
                     vg.IsTitle = 0
       JOIN
       stditems i ON i.idx = vg.srcIdx
       JOIN
       vipgiftLevelLog vgl ON vgl.AccountID = vu.AccountID AND 
                              vgl.level = {1}
 WHERE vu.level >= {1} AND 
       vu.accountID = '{0}' AND 
       vgl.AccountID IS NOT NULL;
