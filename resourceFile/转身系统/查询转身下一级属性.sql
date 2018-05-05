SELECT t.ot,
       sum(CASE WHEN type = 1 THEN t.value ELSE 0 END) hp,
       sum(CASE WHEN type = 3 THEN t.value ELSE 0 END) mp,
       sum(CASE WHEN type = 4 THEN t.value ELSE 0 END) ac,
       sum(CASE WHEN type = 5 THEN t.value ELSE 0 END) ac2,
       sum(CASE WHEN type = 6 THEN t.value ELSE 0 END) mac,
       sum(CASE WHEN type = 7 THEN t.value ELSE 0 END) mac2,
       sum(CASE WHEN type = 8 THEN t.value ELSE 0 END) dc,
       sum(CASE WHEN type = 9 THEN t.value ELSE 0 END) dc2,
       sum(CASE WHEN type = 10 THEN t.value ELSE 0 END) mc,
       sum(CASE WHEN type = 11 THEN t.value ELSE 0 END) mc2,
       sum(CASE WHEN type = 12 THEN t.value ELSE 0 END) sc,
       sum(CASE WHEN type = 13 THEN t.value ELSE 0 END) sc2
  FROM (
           SELECT attr.type,
                  attr.ValueType,
                  Sum(attr.Value) value,
                  1 ot
             FROM HumanNewLevel hul
                  JOIN
                  humanNewLevelAttr attr ON hul.Level >= attr.Level AND 
                                            hul.type = attr.LevelType
            WHERE userName = '{0}' AND 
                  hul.Type = 0
            GROUP BY attr.type,
                     attr.ValueType
           UNION ALL
           SELECT 0,
                  0,
                  0,
                  1
           UNION ALL
           SELECT 0,
                  0,
                  0,
                  2
           UNION ALL
           SELECT attr.type,
                  attr.ValueType,
                  Sum(attr.Value) value,
                  2 ot
             FROM HumanNewLevel hul
                  JOIN
                  humanNewLevelAttr attr ON (hul.Level + 1) = attr.Level AND 
                                            hul.type = attr.LevelType
            WHERE userName = '{0}' AND 
                  hul.Type = 0
            GROUP BY attr.type,
                     attr.ValueType
       )
       t
 GROUP BY t.ot;
