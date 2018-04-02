SELECT srcIdx,
       count,
       type
  FROM TreasureBox
 WHERE idx = {0} AND  
       isactive = 1
 ORDER BY CASE WHEN type >= 100 THEN 0 ELSE 1 END,
          type,
          sort;