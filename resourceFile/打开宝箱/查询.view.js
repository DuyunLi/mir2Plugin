
var format = function(data)
{
    var ret ="";
    if (data.length > 0) {
        ret += "<ImgEX:9:19:20:18:280:30/@打开按钮点击><text:开启宝箱:215:37{FCOLOR=251}>\\\n";
    }
    var type =-1;
    var point = {x:20,y:55};
    var index = 0;
    for (var i = 0; i < data.length; i++) {
      if(type!=data[i][2])
      {
        if(index==0)
        {
          point.y-=50;
        }
        
        type= data[i][2];
        //换行
        if(data[i][2]>=0 && data[i][2]<100)
        {
          point.y+=40;
          point.x=20;
          ret+="\\\n";
          ret+="<text:以下物品随机获得一件：:"+point.x+":" + point.y + "{FCOLOR=203}>\\\n";
          point.y+=5;
          point.x=24;
          index = 0;
        }else if(data[i][2]>=100 && data[i][2]<200)
        {
          point.y+=40;
          point.x=20;
          ret+="\\\n";
          ret+="<text:以下物品必定获得一件：:"+point.x+":" + point.y + "{FCOLOR=203}>\\\n";
          point.y+=5;
          point.x=24;
          index = 0;
        }else if(data[i][2]==200)
        {
          point.y+=40;
          point.x=20;
          ret+="\\\n";
          ret+="<text:以下物品可以选择获得一件后宝箱关闭：:"+point.x+":" + point.y + "{FCOLOR=203}>\\\n";
          point.y+=5;
          point.x=24;
          index = 0;
        }else if(data[i][2]>=201 && data[i][2]<300)
        {
          point.y+=40;
          point.x=20;
          ret+="\\\n";
          ret+="<text:以下物品可以选择获得一件：:"+point.x+":" + point.y + "{FCOLOR=203}>\\\n";
          point.x=24;
          point.y+=5;
          index = 0;
        }
      }
      ret+="<ItemShow:" + data[i][0] + ":" + data[i][1] + ":" + point.x + ":" + point.y + ":1>\n";;
      if(index>=8)
      {
        index=0;
        point.y+=50;
        point.x-=434;
      }else
      {
        index++;
        point.x +=7;
      }
    }
    
   return ret;
}
format(retSources[0]);