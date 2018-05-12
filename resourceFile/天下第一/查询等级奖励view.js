
var format = function (data, ps) {
    if (data[0].length == 0) {
        return "";
    }
    var items = data[0];
    if (items[0].length == 0) {
        var str = "<text:你已经将所有奖励都领取完毕:30:55{FCOLOR=250}>\\";

        str += "<imgex:9:32:33:34:205:83:/@exit>\n";
        str += "<text:关闭:140:94{FCOLOR=251}> \\\n";
        return str;
    }
    var str = "";
    var currentLevel = ps[0];
    var level = parseInt(items[0][0]);

    var nextStr = "";
    var p = { x1: 0, x2: 0 };
    var nextLevel = 0;
    for (var i = 0; i < items.length; i++) {
        if (items[i][0] == level) {
            str += "<ItemShow:" + items[i][1] + ":" + items[i][2] + ":" + (40 + p.x1) + ":25:-1>\n";
            p.x1++;
        } else {
            nextLevel = items[i][0];
            nextStr += "<ItemShow:" + items[i][1] + ":" + items[i][2] + ":" + (40 + p.x1) + ":65:-1>\n";
            p.x1++;
        }
    }
    var tmp = "";
    if (level <= currentLevel) {
        tmp += "<text:恭喜你的等级达到了:30:15{FCOLOR=250}>\n";
        tmp += "<ImgNum:8:" + level + ":-5:30:3>\n";
        tmp += "<text:级:35:15{FCOLOR=250}>\n";
        tmp += "<text:可以领取下列物品：:35:15{FCOLOR=250}>\\\n";
    } else {
        tmp += "<text:如果你的等级达到了:30:15{FCOLOR=7}>\n";
        tmp += "<ImgNum:8:" + level + ":-5:30:3>\n";
        tmp += "<text:级:35:15{FCOLOR=7}>\n";
        tmp += "<text:可以领取下列物品：:35:15{FCOLOR=7}>\\\n";
    }
    str = tmp+ "\n"+str+"\\\n";
    if(level > currentLevel)
    {
        str += "<imgex:9:35:35:35:275:63:>\n";
        str += "<text:领取礼包:200:74{FCOLOR=251}> \\\n";
        return "\\ \\ \\"+str;
    }else if(nextLevel!=0)
    {
        str += "<imgex:9:32:33:34:275:13:/@领取礼包>\n";
        str += "<text:领取礼包:200:24{FCOLOR=251}> \\\n";
    }else{
        str += "<imgex:9:32:33:34:275:63:/@领取礼包>\n";
        str += "<text:领取礼包:200:74{FCOLOR=251}> \\\n";
        return "\\ \\ \\"+str;
    }

    if (nextStr.length > 0) {
     tmp = "";
        tmp += "<text:下一次领取升级奖励等级为：:30:58{FCOLOR=7}>\n";
        tmp += "<ImgNum:3:" + nextLevel + ":-3:25:50>\n";
        tmp += "<text:可以领取：:33:58{FCOLOR=7}>\\\n";
        nextStr = tmp + nextStr;
    }
    str += nextStr;
    return str;
}

format(retSources, jsParams);