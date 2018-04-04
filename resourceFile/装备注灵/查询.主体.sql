SELECT  ( CASE WHEN ect.description IS NULL
                    OR length(ect.description) = 0 THEN ect.name + ': +'
               ELSE ect.description
          END ) || attr.value
        || CASE WHEN attr.valueType = 0 THEN ''
               ELSE '%'
          END customName ,
        sc.color ,
        sc.name ,
        msc.color ,
        msc.name 
FROM    soulAttribute attr
        JOIN soulConfig sc ON sc.level = attr.level
        JOIN equipCustomType ect ON ect.idx = attr.type
        JOIN soulConfig msc ON msc.level = {0} % 255
WHERE   attr.isActive = 1
        AND sc.isActive = 1
        AND ect.isActive = 1
        and msc.level >= sc.level 
        and msc.level <= sc.level + 2
        AND {0} % 255 >= attr.level
        AND ( ( {0} / 255 > 0
                AND {1} = attr.type
                AND {2} = attr.value
                AND {3} = attr.valueType
              )
              OR ( {0} / 255 > 1
                   AND {4} = attr.type
                   AND {5} = attr.value
                   AND {6} = attr.valueType
                 )
              OR ( {0} / 255 > 2
                   AND {7} = attr.type
                   AND {8} = attr.value
                   AND {9} = attr.valueType
                 )
            )
            order by sc.level desc;