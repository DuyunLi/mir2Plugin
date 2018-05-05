SELECT UserName,
       value,
       time,
       t1,
       CAST (round(t.b1 + (CASE WHEN t.t1 > t.b3 THEN t.b3 ELSE t.t1 END) * t.b2, 2) AS DECIMAL (15, 2) ) t2
  FROM (
           SELECT UserName,
                  Value,
                  strftime('%Y,%m,%d,%H,%M,%S,', CreatedOn) time,
                  CAST ( (julianday(datetime(CURRENT&ampTIMESTAMP, 'localtime') ) - julianday(CreatedOn) ) * 24 AS INT) t1,
                  case when firstKey = 'manlevel' then 15 else 10 end b1,
                  case when firstKey = 'manlevel' then 1 else 0.5 end b2,
                  case when firstKey = 'manlevel' then 20 else 30 end b3
             FROM FirstHuman
            WHERE FirstKey = '{0}'
       )
       t;
