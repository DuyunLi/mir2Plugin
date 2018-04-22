INSERT INTO vipGiftLevelLog (
                                accountid,
                                level,
                                updateOn
                            )
                            SELECT vu.accountID,
                                   {1},
                                   datetime('now', 'localtime') 
                              FROM VipUser vu
                             WHERE vu.accountID = '{0}' AND 
                                   vu.Level >= {1};
