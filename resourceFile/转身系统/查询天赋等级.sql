SELECT ifnull(sum(CASE WHEN hnl.type = 1 THEN level ELSE 0 END), 0) attr1,
       ifnull(sum(CASE WHEN hnl.type = 2 THEN level ELSE 0 END), 0) attr2,
       ifnull(sum(CASE WHEN hnl.type = 3 THEN level ELSE 0 END), 0) attr3,
       ifnull(sum(CASE WHEN hnl.type = 4 THEN level ELSE 0 END), 0) attr4,
       ifnull(sum(CASE WHEN hnl.type = 5 THEN level ELSE 0 END), 0) attr5,
       ifnull(sum(CASE WHEN hnl.type = 6 THEN level ELSE 0 END), 0) attr6,
       ifnull(sum(CASE WHEN hnl.type = 7 THEN level ELSE 0 END), 0) attr7,
       ifnull(sum(CASE WHEN hnl.type = 8 THEN level ELSE 0 END), 0) attr8,
       ifnull(sum(CASE WHEN hnl.type = 9 THEN level ELSE 0 END), 0) attr9,
       ifnull(sum(CASE WHEN hnl.type = 10 THEN level ELSE 0 END), 0) attr10,
       ifnull(sum(CASE WHEN hnl.type = 11 THEN level ELSE 0 END), 0) attr11,
       ifnull(sum(CASE WHEN hnl.type = 12 THEN level ELSE 0 END), 0) attr12,
       ifnull(sum(CASE WHEN hnl.type = 13 THEN level ELSE 0 END), 0) attr13,
       ifnull(sum(CASE WHEN hnl.type = 14 THEN level ELSE 0 END), 0) attr14,
       ifnull(sum(CASE WHEN hnl.type = 15 THEN level ELSE 0 END), 0) attr15
  FROM humanNewLevel hnl
 WHERE hnl.UserName = '{0}' AND 
       hnl.Type > 0 AND 
       hnl.type < 16;
