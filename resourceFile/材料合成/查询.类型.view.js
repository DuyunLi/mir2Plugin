var formatType = function(data,ps)
{
  var str = "";
  
  
    var point = { x: 20, y: 115 };
    var step = { x: 15, y: 35 };
    var rowLeft = [-310, 0, 0, 0, 0, 0];
    var current = { x: point.x, y: point.y };
    var max = 5;
    var cellindex = 0;
    var rowIndex = 0;
    for (var i = 0; i < data.length; i++) {
        if (cellindex < max)
        {
            current.x += step.x;
            cellindex += 1;
        } else
        {
            current.x = rowLeft[rowIndex];
            current.y += step.y;
            rowIndex += 1;
            cellindex = 1;
        }
        str += "<ImgEx:9:56:57:58:" + parseInt(current.x) + ":" + parseInt(current.y) + ":0/@ClickSynthesisMarster("+data[i][0]+")>\n";
    }
    str+=" \\\n";
    point.x= 10;
    point.y=105;
    step.x= 36;
    rowLeft = [-195, 0, 0, 0, 0, 0];
    current = { x: point.x, y: point.y };
    cellindex = 0;
    rowIndex = 0;
    for (var i = 0; i < data.length; i++) {
        if (cellindex < max)
        {
            current.x += step.x;
            cellindex += 1;
        } else
        {
            current.x = rowLeft[rowIndex];
            current.y += step.y;
            rowIndex += 1;
            cellindex = 1;
        }
        str += "<text:"+data[i][1]+":" + parseInt(current.x) + ":" + parseInt(current.y) + "{FCOLOR=250}>\n";
    }
    str+=" \\\n";
    return str;
  
}
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  
  var type = formatType(data[0],ps);
  if(type=="")
  {
    return "";
  }else
  {
    return type;
  }
}
format(retSources,jsParams);