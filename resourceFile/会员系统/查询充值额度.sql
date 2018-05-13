SELECT sum(balance) balance
  FROM (
           SELECT ifnull(sum(balance), 0) balance
             FROM pointaudit
            WHERE accountid = '{0}' AND 
                  typeid = 3 AND 
                  balance > 0
           UNION ALL
           SELECT 0
       )
       t;
