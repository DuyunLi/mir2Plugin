SELECT count(idx),{1},{2}
  FROM synthesis
 WHERE marsterID = {0} AND 
       isactive = 1
 ORDER BY extend1;
