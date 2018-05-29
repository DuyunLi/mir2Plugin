
var init = function (data, ps) {
    if (data.length == 0) {
        return "";
    }
    var data = data[0];
    if (data.length == 0) {
        return "";
    }
    var left = (parseInt(ps[0]) - 160 * data.length) / 2 - 20;
    var top = parseInt(ps[1]) - 530;
    var imgStr = "";
    var footStr = "";
     for (var index = 0; index < data.length; index++) {
        var element = data[index];
        imgStr += "<Img:" + element[1] + ":9:" + left + ":" + top + ">\n";
        var tleft = left + 40;
        var ttop = top + 225;
        tleft += 160 * index;
        ttop -= 15 * index;
        if (element[3] == "1") {
            footStr += "<imgex:9:20:19:18:" + tleft + ":" + ttop + ":-1/@参与活动(" + element[0] + ")>";
            tleft -= 65;
            ttop += 7;
            footStr += "<text:参与活动:" + tleft + ":" + ttop + "{FCOLOR=251}>";
            tleft-=30;
            ttop -= 245;
            footStr +="<Img:43:9:" + tleft + ":" + ttop +">\\\n";
        } else {
            tleft +=  (element[2]>99?5:element[2]>9?7:10);
            ttop += 5;
            footStr += "<text:" + (element[2]>99?"99+":element[2]) + "分钟后开始:" + tleft + ":" + ttop + (element[2]>59?"{FCOLOR=7}>":"{FCOLOR=251}>")+"\\\n";
        }
        if(index==data.length-1)
        {
            tleft += 50;
            ttop += 15;
            footStr += "<text:关闭对话框:" + tleft + ":" + ttop + "/@exit>\\\n";
        }
     }
     return imgStr + (imgStr != "" ? "\\\n" : "") + footStr;
    
}
init(retSources, jsParams);