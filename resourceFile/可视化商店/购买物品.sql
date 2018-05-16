SELECT i.srcIdx,
       i.quantity,
       CAST (i.unit * ifnull(si.discount, 1) AS INT) unit,
       CASE i.shopType WHEN 1 THEN 'ShopGameGold' WHEN 2 THEN 'ShopGold' WHEN 3 THEN 'ShopRecharge' WHEN 4 THEN 'ShopBRecharge' ELSE '' END ps,
       it.name
  FROM ShopItem i
       JOIN
       stditems it ON it.idx = i.srcIdx
       LEFT JOIN
       shopitemdiscount si ON si.active = 1 AND 
                              si.itemidx = i.idx AND 
                              si.userName = '{1}'
 WHERE i.active = 1 AND 
       i.idx = {0};
