REPLACE INTO itemlimitedNumber SELECT '{0}',
                                      {1},
                                      ifnull(sum(UseSum), 0)+1 value
                                 FROM (
                                          SELECT n.UseSum
                                            FROM itemlimitedNumber n
                                           WHERE userName = '{0}' AND 
                                                 useIdx = {1}
                                          UNION ALL
                                          SELECT 0
                                      )
                                      t;
