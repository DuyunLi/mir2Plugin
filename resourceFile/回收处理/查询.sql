SELECT unit,
       group&ampconcat(i.name, '|') 
  FROM recoveryItems r
       JOIN
       stditems i ON i.idx = r.idx
 WHERE isactive = 1
 GROUP BY unit;