SELECT attr.type,
       attr.ValueType,
       Sum(attr.Value) 
  FROM HumanNewLevel hul
       JOIN
       humanNewLevelAttr attr ON hul.Level >= attr.Level AND 
                                 hul.type = attr.LevelType
 WHERE userName = '{0}' AND 
       hul.Type >0 and hul.type < 16
 GROUP BY attr.type,
          attr.ValueType;
