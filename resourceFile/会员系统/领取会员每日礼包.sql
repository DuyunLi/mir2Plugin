SELECT i.name,
       count
  FROM vipuser vu
       JOIN
       vipGift vg ON vg.type = 2 AND 
                     vg.level = vu.level AND 
                     vg.isactive = 1 AND 
                     vg.IsTitle = 0
       JOIN
       stditems i ON i.idx = vg.srcIdx
       JOIN
       vipgiftDayLog vgl ON vgl.AccountID = vu.AccountID AND 
                            vgl.level = vu.level AND 
                            strftime('%Y%m%d', vgl.UpdateOn) = strftime('%Y%m%d', datetime('now', 'localtime') ) 
 WHERE vu.accountID = '{0}' AND 
       vgl.AccountID IS NOT NULL;
;
