
var getPointName = function(type) {
    type=parseInt(type);
    switch (type) {
    case 0:
        return "攻击倍率";
    case 1:
        return "全属性加成";
    case 2:
        return "暴击几率";
    case 3:
        return "忽视防御";
    case 4:
        return "血量加成";
    case 5:
        return "物理减伤";
    case 6:
        return "魔法减伤";
    }
    return "";
}
var getPointType = function(type) {
    type=parseInt(type);
    switch (type) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 0;
    case 3:
        return 0;
    case 4:
        return 0;
    case 5:
        return 0;
    case 6:
        return 0;
    }
    return 0;
}
var formatMarster = function(data, ps, detail) {
    if (data.length == 0) {
        return "";
    } else if (data.length > 2) {
        return "";
    }
    var str = "";
    if (data.length > 0) {
        str += "<text:" + getPointName(data[0][3]) + ":55:0{FCOLOR=253}>";
    }
    if (data.length > 1) {
        str += "<text:" + getPointName(data[1][3]) + ":423:0{FCOLOR=253}>";
    }
    str += "\\\n";
    if (data.length > 0) {
        {
            str += formatDetail(data[0], detail, 10, 40,0);
        }
        if (data.length > 1) {
            str += formatDetail(data[1], detail, 425, -71,1);
        }
        return str;
    }
}
 var formatDetail = function(data, detail, x, y,t) {
     var str = "";
     // var name = getPointName(data[3]);
     str += "<text:增强" + (getPointName(data[3])) +(getPointType(data[3])==0?"(%)":"")+"：:" + (x) + ":" + (y) + "{FCOLOR=253}>\\\n";
     str += "<ImgNum:4:" + data[2] + ":0:" + (x + 30) + ":" + (y + 2) + ">\\\n";
     str += "<text:需要材料：:" + (x) + ":" + (y + 35) + "{FCOLOR=253}>\\\n";
     var index = 0;
     for (var i = 0; i < detail.length; i++) {
         if (detail[i][0] == data[0]) {
             switch (index) {
             case 0:
                 str += "<ItemShow:"+detail[i][1]+":"+detail[i][2]+":" + (x + 30) + ":" + (y + 40) + ":1>\n";
                 break;
             case 1:
                 str += "<ItemShow:"+detail[i][1]+":"+detail[i][2]+":" + (x + 40) + ":" + (y + 40) + ":1>\n";
                 break;
             case 2:
                 str += "<ItemShow:"+detail[i][1]+":"+detail[i][2]+":" + (x - 52) + ":" + (y + 90) + ":1>\n";
                 break;
             case 3:
                 str += "<ItemShow:"+detail[i][1]+":"+detail[i][2]+":" + (x - 62) + ":" + (y + 90) + ":1>\\\n";
                 break;
             }
             index++;
         }
     }
     str += "\\\n";
     str += "<text:需要元宝：:" + (x) + ":" + (y + 130) + "{FCOLOR=253}>\\\n";
     str += "<ImgNum:5:" + data[1] + ":0:" + (x + 30) + ":" + (y + 133) + ">\\\n";
     str += "<ImgEX:9:66:67:68:" + (x + 35) + ":" + (y + 150) + "/@upEquipItem(" + data[0] + ","+t+")>\\\n";
     return str;
 }
 var format = function(data, ps) {
     if (data[0].length == 0) {
         return "";
     }

     var mar = formatMarster(data[0], ps, data[1]);
     if (mar == "") {
         return "";
     } else {
         return mar;
     }
 }
 format(retSources, jsParams);