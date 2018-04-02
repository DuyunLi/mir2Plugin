SELECT idx,
       attr.probability * sc.probability probability,
       type ext1,
       value ext2,
       valueType ext3
  FROM soulAttribute attr
       JOIN
       soulConfig sc ON sc.level = attr.level
       JOIN
       soulConfig sc1 ON sc1.name = '{3}'
 WHERE attr.level <= {0} % 255 AND 
       attr.level <= sc1.level AND 
       (attr.stdmode = 0 OR 
        attr.stdmode = {1}) AND 
       (attr.srcIdx = 0 OR 
        attr.srcIdx = {2}) ;
