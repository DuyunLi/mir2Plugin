SELECT idx,
       resultIdx,
       resultCount
  FROM synthesis
 WHERE marsterID = {0} AND 
       isactive = 1
 ORDER BY extend1;
