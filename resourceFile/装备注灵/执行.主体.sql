SELECT idx,
       attr.probability * sc.probability probability,
       type ext1,
       value ext2,
       valueType ext3,
       sc.color
  FROM soulAttribute attr
       JOIN
       soulConfig sc ON sc.level = attr.level
 WHERE ( ({1} IN (5, 6, 19, 20, 21, 23, 24) AND 
          type != 1 AND 
          type != 2) OR 
         ({1} NOT IN (5, 6, 19, 20, 21, 23, 24, 28, 30, 90, 63, 65, 12, 16) ) ) AND 
       attr.level >= ({0} % 255 - 2) AND 
       attr.level <= {0} % 255 AND 
       (attr.stdmode = 0 OR 
        attr.stdmode = {1}) AND 
       (attr.srcIdx = 0 OR 
        attr.srcIdx = {2}) 
 ORDER BY sc.level DESC;
