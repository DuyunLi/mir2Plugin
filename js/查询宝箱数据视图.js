var dataSource = {0};
var ps ={1};
var format = function(data)
{
    var ret ="";
    ret+="<text:请放入需要打开的宝箱：:80:75{FCOLOR=253}>\\ \n";
    ret += "<ITEMBOX:0:9:42:235:45:50:50:40:>\\ \n";
    if (dataSource.length > 0) {
        ret += "<ImgEX:9:447:448:447:280:30/@打开按钮点击><text:开启宝箱:215:37{FCOLOR=251}>\\ \n";
    }
    var certainlyStr = "";
    var point = { x: 25, y: 60 };
    var step = { x: 7, y: 50 };
    var rowLeft = [-353, -731, -1084, 0, 0, 0];
    var current = { x: point.x, y: point.y };
    var titleTop = 55;
    var max = 9;
    var cellindex = 0;
    var rowIndex = 0;
    for (var i = 0; i < data.length; i++) {
        if(data[i].type==2)
        {
            if (cellindex < max)
            {
                current.x += step.x;
                cellindex += 1;
            } else
            {
                cellindex = 0;
                current.x = rowLeft[rowIndex];
                current.y += step.y;
                rowIndex += 1;
            }
            certainlyStr += "<ItemShow:" + data[i].idx + ":" + data[i].idx + ":" + current.x + ":" + current.y + ":1> \n";
        }
    }

    if (certainlyStr != "") {
        ret += "<text:以下物品必定获得一件：:20:" + titleTop + "{FCOLOR=203}>\\ \n";
        ret += certainlyStr;
        point.y = 105;
        titleTop = 103
    } else
    {
        point.y = 57;
        titleTop = 55
    }

    var extractStr = "";
    var current = { x: point.x, y: point.y };
    var cellindex = 0;
    var rowIndex = 0;
    for (var i = 0; i < data.length; i++) {
        if (data[i].type == 1) {
            if (cellindex < max) {
                current.x += step.x;
                cellindex += 1;
            } else {
                cellindex = 0;
                current.x = rowLeft[rowIndex];
                current.y += step.y;
                rowIndex += 1;
            }
            extractStr += "<ItemShow:" + data[i].idx + ":" + data[i].idx + ":" + current.x + ":" + current.y + ":1> \n";
        }
    }
    if (extractStr != "") {
        ret += "<text:以下物品随机获得一件：:20:" + titleTop + "{FCOLOR=209}>\\ \n";
        ret += extractStr;
    }
   return ret;
}
format(dataSource);