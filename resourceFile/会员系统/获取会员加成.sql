SELECT vc.KillExpRate,
       vc.KillSpoilsRate
  FROM vipconfig vc
       JOIN
       vipuser vu ON vu.Level = vc.Level
 WHERE vu.AccountID = '{0}'
 LIMIT 1;
