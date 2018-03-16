select box.srcIDx,std.name,box.count from treasureBox box
join stditems std on std.idx = srcIdx
where box.idx = {0} And box.type = 2 and box.isactive = 1
order by sort