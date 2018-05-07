REPLACE INTO HumanNewLevel (
                               userName,
                               type,
                               level
                           )
                           SELECT '{0}',
                                  {1},
                                  ifnull(sum(Level), 0) + 1
                             FROM (
                                      SELECT Level
                                        FROM humanNewLevel
                                       WHERE userName = '{0}' AND 
                                             type = {1}
                                      UNION ALL
                                      SELECT 0
                                  )
                                  t;
