SELECT CASE WHEN mms.Level IS NULL AND 
                 mms.NeedIdx IS NULL AND 
                 mms.NeedCount IS NULL AND 
                 mms.BossDesc IS NULL AND 
                 mms.EliteDesc IS NULL AND 
                 t.txt IS NULL THEN 1 ELSE 0 END type,
       mms.Level,
       case when i.name is not null then '<text:'||i.name||'x'||mms.NeedCount||':360:98&ltFCOLOR=254&gt>' else '' end name,
       mms.BossDesc,
       mms.EliteDesc,
       t.txt,
       mms.ID
  FROM MapMoveService mms
       LEFT JOIN
       (
           SELECT {0} id, group&ampconcat(
                  '<ItemShow:' || srcIdx || ':0:' || (CASE WHEN (sort - 1) / 3 = 1 THEN 130 + (sort - 1) * 2 - 132 ELSE 130 + (sort - 1) * 2 END) || ':' || (CASE WHEN (sort - 1) / 3 = 1 THEN 175 ELSE 130 END) || ':-1>','') txt
             FROM MapMoveServiceItems
             where MapID={0}
            ORDER BY sort
       )
       t ON t.id = mms.id
       left join stditems i on i.idx=mms.NeedIdx
 WHERE mms.id = {0} AND 
       mms.isactive = 1;
