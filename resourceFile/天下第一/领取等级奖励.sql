insert into giftlevelLog(AccountID,Level)
SELECT 'try',vg.level
  FROM vipGift vg
       LEFT JOIN
       giftlevelLog gl ON gl.AccountID = '{0}' AND 
                          gl.level = vg.level
 WHERE type = 3 AND 
       gl.Level IS NULL
       and vg.level <= {1}
 LIMIT 1;