SELECT group&ampconcat('<imgex:9:113:114:115:' || (5 + (sort - 1) * -146) || ':' || (60 + (sort - 1) * 35) || ':/@MoveMarster(' || id || ')><text:' || name || ':' || ( -70 + (sort - 1) * -146) || ':' || (72 + (sort - 1) * 35) || '{FCOLOR='||color||'}>','') txt
  FROM mapMoveService
 WHERE typeID = 0 AND 
       isActive = 1
       order by sort;
