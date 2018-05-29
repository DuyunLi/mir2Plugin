WITH tsource AS (
    SELECT idx,
           imgidx,
           fromDate,
           toDate,
           movemap,
           movex,
           movey
      FROM CampaignItems
      where isactive = 1
),
tview AS (
    SELECT idx,
           movemap,
           movex,
           movey
      FROM tsource
     WHERE idx = {0} AND 
         
            ifnull(movemap,'') != '' AND
            ifnull(movex,'') != '' AND
            ifnull(movey,'') != ''  AND
           fromDate = 0 OR 
           (fromDate < CAST (strftime('%H%M', time(CURRENT&ampTIMESTAMP, 'localtime') ) AS INT) AND 
            toDate + fromDate >= CAST (strftime('%H%M', time(CURRENT&ampTIMESTAMP, 'localtime') ) AS INT) ) 
     LIMIT 1
)
SELECT *
  FROM tview;

;
