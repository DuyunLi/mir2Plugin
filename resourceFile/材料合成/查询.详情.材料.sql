SELECT idx,
       resultIdx,
       synthesis.resultCount
  FROM synthesis
 WHERE synthesis.MarsterID = {0} AND 
       isactive = 1
 ORDER BY synthesis.extend1;
