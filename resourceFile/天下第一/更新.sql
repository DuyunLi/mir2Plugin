REPLACE INTO FirstHuman SELECT FirstKey,
                               userName,
                               case when t.v > f.Value then t.v else f.Value end,
                               createdOn
                          FROM (
                                   SELECT '{0}' k,
                                          '{1}' n,
                                          {2} v
                               )
                               t
                               JOIN
                               firstHuman f ON f.firstKey = t.k AND 
                                               f.userName = t.n
;
