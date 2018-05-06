SELECT CASE WHEN 120 - ifnull(sum(useSum), 0) + 1 < 30 THEN 30 ELSE 120 - ifnull(sum(useSum), 0) + 1 END useSum
  FROM (
           SELECT useSum
             FROM itemlimitedNumber
            WHERE userName = '{0}' AND 
                  useIdx = {1}
           UNION ALL
           SELECT 0
       );
