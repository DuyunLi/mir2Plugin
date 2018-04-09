SELECT mms.Code,
       mms.X,
       mms.Y,
       mms.[desc]
  FROM MapMoveService mms
 WHERE mms.id = {0} AND 
       mms.isactive = 1;
