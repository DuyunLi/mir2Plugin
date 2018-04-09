SELECT group&ampconcat( '<imgex:9:120:121:122:' || (CASE WHEN (sort - 1) / 4 = 1 THEN 125 + (sort - 1) * -35 - 356 ELSE 125 + (sort - 1) * -35 END) || ':' || (CASE WHEN (sort - 1) / 4 = 1 THEN 80 ELSE 35 END) || ':/@MoveDetail(' || id || ')><text:' || name || ':'||(CASE WHEN (sort - 1) / 4 = 1 THEN 63 + (sort - 1) * -35 - 356 ELSE 63 + (sort - 1) * -35 END)||':'||(CASE WHEN (sort - 1) / 4 = 1 THEN 90 ELSE 45 END)||'&ltFCOLOR=' || color || '&gt>','') txt
  FROM mapMoveService
 WHERE typeID = {0} AND 
       isActive = 1
       order by sort;
