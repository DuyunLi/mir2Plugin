REPLACE INTO FirstHuman SELECT t.k,
                               t.n,
                               t.v,
                               datetime(CURRENT_TIMESTAMP, 'localtime') 
                          FROM (
                                   SELECT '{0}' k,
                                          '{1}' n,
                                          {2} v
                               )
                               t
                               LEFT JOIN
                               firstHuman f ON f.firstKey = t.k AND 
                                               f.userName = t.n AND 
                                               f.Value < t.v
                         WHERE f.UserName IS NULL;
