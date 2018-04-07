WITH LastDay AS (
    SELECT vgl.updateOn
      FROM VipGiftDayLog vgl
           JOIN
           vipuser vu ON vu.AccountID = '{0}' AND 
                         vu.level = vgl.level
     ORDER BY vgl.updateon DESC
     LIMIT 1
)
INSERT INTO vipGiftDayLog SELECT NULL,
                                 vu.AccountID,
                                 vu.Level,
                                 nt.d
                            FROM (
                                     SELECT datetime('now', 'localtime') d
                                 )
                                 nt
                                 JOIN
                                 vipuser vu ON vu.AccountID = '{0}'
                                 LEFT JOIN
                                 lastDay ld ON strftime('%Y%m%d', ld.updateOn) = strftime('%Y%m%d', nt.d) 
                           WHERE ld.updateOn IS NULL;
