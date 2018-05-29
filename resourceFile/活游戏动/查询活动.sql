WITH tsource AS (
    SELECT idx,
           imgidx,
           0 fromDate,
           0 toDate
      FROM CampaignItems
     WHERE fromDate = 0 
      and isactive = 1
    UNION ALL
    SELECT idx,
           imgidx,
           fromDate,
           toDate
      FROM CampaignItems
     WHERE fromDate != 0
      and isactive = 1
    UNION ALL
    SELECT idx,
           imgidx,
           fromDate + 2400,
           9999
      FROM CampaignItems
     WHERE fromDate != 0
      and isactive = 1
),
tview AS (
    SELECT idx,
           imgidx,
           CASE WHEN toDate = 0 THEN 0 WHEN t - toDate > 0 THEN t - toDate ELSE toDate - t END value,
           CASE WHEN toDate = 0 THEN 1 WHEN t <= toDate and t < 2400 THEN 1 ELSE 0 END type
      FROM (
               SELECT idx,
                      imgidx,
                      (fromDate + todate) - CAST (strftime('%H%M', time(CURRENT&ampTIMESTAMP, 'localtime') ) AS INT) + ( (CAST (CAST (strftime('%H%M', time(CURRENT&ampTIMESTAMP, 'localtime') ) AS INT) / 100 AS INT) - CAST ( (fromDate + todate) / 100 AS INT) ) * 40) t,
                      toDate
                 FROM tsource
                WHERE (fromDate = 0 AND 
                       toDate = 0) OR 
                      (fromDate + todate) - CAST (strftime('%H%M', time(CURRENT&ampTIMESTAMP, 'localtime') ) AS INT) > 0
                ORDER BY fromDate,
                         idx
                LIMIT {0}
           )
           t
)
SELECT *
  FROM tview;
