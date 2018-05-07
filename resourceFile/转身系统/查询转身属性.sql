WITH tsource AS (
    SELECT attr.type,
           attr.valueType,
           max(attr.level) level,
           attr.LevelType
      FROM HumanNewLevel hul
           JOIN
           humanNewLevelAttr attr ON hul.Level >= attr.Level AND 
                                     hul.type = attr.LevelType
     WHERE userName = '{0}' AND 
           hul.Type= 0
     GROUP BY attr.type,
              attr.valueType,
              attr.LevelType
)
SELECT attr.type,
       attr.ValueType,
       sum(value) value
  FROM tsource t
       JOIN
       humanNewLevelAttr attr ON t.type = attr.type AND 
                                 t.valueType = attr.valueType AND 
                                 t.LevelType = attr.LevelType AND 
                                 t.Level >= attr.Level
 GROUP BY attr.type,
          attr.ValueType;
