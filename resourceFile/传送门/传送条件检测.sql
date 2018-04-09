SELECT mms.Level,
       i.name,
       ifnull(mms.NeedCount, 0) 
  FROM MapMoveService mms
       LEFT JOIN
       stditems i ON i.Idx = mms.needidx
 WHERE mms.id = {0} AND 
       mms.isactive = 1;
