SELECT srcIdx,
       count,
       type
  FROM TreasureBox
 WHERE idx = {0} AND 
       type IN (1, 2) AND 
       isactive = 1
 ORDER BY idx,sort;