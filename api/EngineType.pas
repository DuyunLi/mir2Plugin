unit EngineType;

interface

const
  LibName = 'M2Server.exe';

  MAPNAMELEN = 30;                                          // 地图名长度
  ACTORNAMELEN = 14;                                        // 角色名长度
  ITEMNAMELEN = 30;                                         // 物品名称长度
  ACCOUNTLEN = 10;                                          // 账号长度
  IPADDRESSLEN = 15;                                        // IP地址长度
  DEFBLOCKSIZE = 16;                                        // 消息大小
  BUFFERSIZE = 102400;                                      // 缓冲区大小

///////////////////////角色8个方位常量值  2013-07-23/////////////////////
  DR_UP = 0;
  DR_UPRIGHT = 1;
  DR_RIGHT = 2;
  DR_DOWNRIGHT = 3;
  DR_DOWN = 4;
  DR_DOWNLEFT = 5;
  DR_LEFT = 6;
  DR_UPLEFT = 7;

// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
//////////////////////////角色装备常量值  2013-07-23/////////////////////
  U_DRESS = 0;                                                                                      // 衣服
  U_WEAPON = 1;                                                                                     // 武器
  U_RIGHTHAND = 2;                                                                                  // 照明物品
  U_NECKLACE = 3;                                                                                   // 项链
  U_HELMET = 4;                                                                                     // 头盔
  U_ARMRINGL = 5;                                                                                   // 左手镯
  U_ARMRINGR = 6;                                                                                   // 右手镯
  U_RINGL = 7;                                                                                      // 左戒指
  U_RINGR = 8;                                                                                      // 右戒指
  U_BUJUK = 9;                                                                                      // 符
  U_BELT = 10;                                                                                      // 腰带
  U_BOOTS = 11;                                                                                     // 鞋
  U_CHARM = 12;                                                                                     // 宝石
  U_HAT = 13;                                                                                       // 斗笠
  U_DRUM = 14;                                                                                      // 鼓
  U_HORSE = 15;                                                                                     // 马
  U_SHIELD = 16;                                                                                    // 盾牌  2013-09-16
  U_FASHIONDRESS = 17;                                                                              // 时装衣服  2013-10-23
  U_FASHIONWEAPON = 18;                                                                             // 时装武器  2013-10-23

  // 首饰盒 1 - 6
  U_JEWELRYITEM1 = 20;
  U_JEWELRYITEM2 = 21;
  U_JEWELRYITEM3 = 22;
  U_JEWELRYITEM4 = 23;
  U_JEWELRYITEM5 = 24;
  U_JEWELRYITEM6 = 25;

  // 神佑袋 1 - 12
  U_GODBLESSITEM1 = 26;
  U_GODBLESSITEM2 = 27;
  U_GODBLESSITEM3 = 28;
  U_GODBLESSITEM4 = 29;
  U_GODBLESSITEM5 = 30;
  U_GODBLESSITEM6 = 31;
  U_GODBLESSITEM7 = 32;
  U_GODBLESSITEM8 = 33;
  U_GODBLESSITEM9 = 34;
  U_GODBLESSITEM10 = 35;
  U_GODBLESSITEM11 = 36;
  U_GODBLESSITEM12 = 37;


// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
///////////////////////常用角色类型常量值  2013-07-23////////////////////
  RC_PLAYOBJECT = 0;                                        // 玩家
  RC_HEROOBJECT = 1;                                        // 英雄
  RC_PLAYMOSTER = 150;                                      // 人形怪物 JS-->60;
  RC_MOONOBJECT = 99;                                       // 月灵
  RC_GUARD = 11;                                            // 大刀守卫
  RC_PEACENPC = 15;                                         // 和平NPC
  RC_ANIMAL = 50;                                           // 攻击NPC
  RC_MONSTER = 80;                                          // 怪物
  RC_NPC = 10;                                              // 普通NPC
  RC_ARCHERGUARD = 112;                                     // 弓箭手
  RC_TRUCKOBJECT = 128;                                     // 押镖车

//==============================================================================
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_QUERYCHR = 100;                                        // 登录成功,客户端显出左右角色的那一瞬 3000;
  CM_NEWCHR = 101;                                          // 创建角色 3001;
  CM_DELCHR = 102;                                          // 删除角色 3002;
  CM_SELCHR = 103;                                          // 选择角色 3003;
  CM_SELECTSERVER = 104;                                    // 服务器,注意不是选区,盛大一区往往有(至多8个??group.dat中是这么写的)不止一个的服务器 3004;
  CM_QUERYDELCHR = 105;                                     // 查询删除过的角色信息 3005;
  CM_GETBACKDELCHR = 3006;
  CM_GETBACKPASSWORD = 2010;                                // 密码找回 3007;
  CM_PROTOCOL = 2000;                                       // 3008;
  CM_IDPASSWORD = 2001;                                     // 3009;
  CM_ADDNEWUSER = 2002;                                     // 3010;
  CM_CHANGEPASSWORD = 2003;                                 // 3011;
  CM_UPDATEUSER = 2004;                                     // 3012;
  CM_RANDOMCODE = 2006;                                     // 3013;
  CM_CHANGERANDOMCODE = 3014;
  CM_QUERYUSERNAME = 80;                                    // 进入游戏,服务器返回角色名到客户端 47;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_SPELL = 3017;                                                                                  // 施魔法
  CM_HORSERUN = 3009;                                                                               // 骑马
  CM_TURN = 3010;                                                                                   // 转身(方向改变)
  CM_WALK = 3011;                                                                                   // 走
  CM_SITDOWN = 3012;                                                                                // 挖(蹲下)
  CM_RUN = 3013;                                                                                    // 跑
  CM_HIT = 3014;                                                                                    // 普通物理近身攻击
  CM_HEAVYHIT = 3015;                                                                               // 跳起来打的动作
  CM_BIGHIT = 3016;                                                                                 // 强攻
  CM_POWERHIT = 3018;                                                                               // 攻杀
  CM_LONGHIT = 3019;                                                                                // 刺杀
  CM_WIDEHIT = 3024;                                                                                // 半月
  CM_FIREHIT = 3025;                                                                                // 烈火
  CM_CRSHIT = 3036;                                                                                 // 抱月刀 双龙斩 ID=40
  CM_TWNHIT = 3037;                                                                                 // 龙影剑法      ID=42

  // 下面开始是新技能
  CM_43HIT = 3043;                                                                                  // 雷霆剑法     ID=43
  CM_SWORDHIT = 3056;                                                                               // 逐日剑法     ID=56
  // CM_114HIT = 3114;  // 倚天劈地  ID = 3114

  // 这三个还需要测试。不知道有没有问题 2013-07-13
  CM_60HIT = 3060;                                                                                  // 18;                                //破魂斩
  CM_61HIT = 3061;                                                                                  // 19;                                //劈星斩
  CM_62HIT = 3062;                                                                                  // 20;                                //雷霆一击

  CM_66HIT = 3066;                                                                                  // 开天斩
  CM_66HIT1 = 3166;

  CM_100HIT = 3100;                                                                                 // 追心刺
  CM_101HIT = 3101;                                                                                 // 三绝杀
  CM_102HIT = 3102;                                                                                 // 断岳斩
  CM_103HIT = 3103;                                                                                 // 横扫千军

  CM_1000HIT = 26;
  CM_1001HIT = 27;
  CM_1002HIT = 28;
  CM_1003HIT = 29;
  CM_1004HIT = 30;
  CM_1005HIT = 31;
  CM_1006HIT = 32;
  CM_1007HIT = 33;
  CM_1008HIT = 34;
  CM_1009HIT = 35;
  CM_1010HIT = 36;
  CM_1011HIT = 37;
  CM_1012HIT = 38;
  CM_1013HIT = 39;
  CM_1014HIT = 40;
  CM_1015HIT = 41;
  CM_1016HIT = 42;
  CM_1017HIT = 43;
  CM_1018HIT = 44;
  CM_1019HIT = 45;
  CM_1020HIT = 46;
  CM_DROPITEM = 1000;                                                                               // 从包裹里扔出物品到地图,此时人物如果在安全区可能会提示安全区不允许扔东西 48;
  CM_PICKUP = 1001;                                                                                 // 捡东西 49;
  CM_TAKEONITEM = 1003;                                                                             // 装配装备到身上的装备位置 50;
  CM_TAKEOFFITEM = 1004;                                                                            // 从身上某个装备位置取下某个装备 51;
  CM_EAT = 1006;                                                                                    // 吃药 52;
  CM_BUTCH = 1007;                                                                                  // 挖 53;
  CM_MAGICKEYCHANGE = 1008;                                                                         // 魔法快捷键改变 54;

  // 与商店NPC交易相关
  CM_CLICKNPC = 1010;                                                                               // 用户点击了某个NPC进行交互 55;
  CM_MERCHANTDLGSELECT = 1011;                                                                      // 商品选择,大类 56;
  CM_MERCHANTQUERYSELLPRICE = 1012;                                                                 // 返回价格,标准价格,我们知道商店用户卖入的有些东西掉持久或有特殊 57;
  CM_USERSELLITEM = 1013;                                                                           // 用户卖东西 58;
  CM_USERBUYITEM = 1014;                                                                            // 用户买入东西 59;
  CM_USERGETDETAILITEM = 1015;                                                                      // 取得商品清单,比如点击"蛇眼戒指"大类,会出现一列蛇眼戒指供你选择 60;
  CM_DROPGOLD = 1016;                                                                               // 用户放下金钱到地上 61;
  CM_LOGINNOTICEOK = 1018;                                                                          // 健康游戏忠告点了确实,进入游戏 62;
  CM_GROUPMODE = 1019;                                                                              // 关组还是开组 63;
  CM_CREATEGROUP = 1020;                                                                            // 新建组队 64;
  CM_ADDGROUPMEMBER = 1021;                                                                         // 组内添人 65;
  CM_DELGROUPMEMBER = 1022;                                                                         // 组内删人 66;
  CM_USERREPAIRITEM = 1023;                                                                         // 用户修理东西 67;
  CM_MERCHANTQUERYREPAIRCOST = 1024;                                                                // 客户端向NPC取得修理费用 68;
  CM_DEALTRY = 1025;                                                                                // 开始交易,交易开始 69;
  CM_DEALADDITEM = 1026;                                                                            // 加东东到交易物品栏上 70;
  CM_DEALDELITEM = 1027;                                                                            // 从交易物品栏上撤回东东???好像不允许哦 71;
  CM_DEALCANCEL = 1028;                                                                             // 取消交易 72;
  CM_DEALCHGGOLD = 1029;                                                                            // 本来交易栏上金钱为0,,如有金钱交易,交易双方都会有这个消息 73;
  CM_DEALEND = 1030;                                                                                // 交易成功,完成交易 74;
  CM_USERSTORAGEITEM = 1031;                                                                        // 用户寄存东西 75;
  CM_USERTAKEBACKSTORAGEITEM = 1032;                                                                // 用户向保管员取回东西 76;
  CM_WANTMINMAP = 1033;                                                                             // 用户点击了"小地图"按钮 77;
  CM_USERMAKEDRUGITEM = 1034;                                                                       // 用户制造毒药(其它物品) 78;
  CM_OPENGUILDDLG = 1035;                                                                           // 用户点击了"行会"按钮 79;
  CM_GUILDHOME = 1036;                                                                              // 点击"行会主页" 80;
  CM_GUILDMEMBERLIST = 1037;                                                                        // 点击"成员列表" 81;
  CM_GUILDADDMEMBER = 1038;                                                                         // 增加成员 82;
  CM_GUILDDELMEMBER = 1039;                                                                         // 踢人出行会 83;
  CM_GUILDUPDATENOTICE = 1040;                                                                      // 修改行会公告 84;
  CM_GUILDUPDATERANKINFO = 1041;                                                                    // 更新联盟信息(取消或建立联盟) 85;
  CM_ADJUST_BONUS = 1043;                                                                           // 用户得到奖励??私服中比较明显,小号升级时会得出金钱声望等,不是很确定,//求经过测试的高手的验证 86;
  CM_PASSWORD = 1105;                                                                               // 87;
  CM_SAY = 3030;                                                                                    // 角色发言 88;
  CM_QUERYUSERSTATE = 82;                                                                           // 89;
  CM_QUERYBAGITEMS = 81;                                                                            // 查询包裹物品 90;
  CM_OPENDOOR = 1002;                                                                               // 开门,人物走到地图的某个过门点时 91;
  CM_SOFTCLOSE = 1009;                                                                              // 退出传奇(游戏程序,可能是游戏中大退,也可能时选人时退出) 92;
  CM_GUILDALLY = 1044;                                                                              // 93;
  CM_GUILDBREAKALLY = 1045;                                                                         // 94;
  // 商铺相关
  CM_GETSHOPITEMS = 95;
  CM_BUYSHOPITEM = 9002;                                                                            // 96;
  // 排行榜
  CM_GETRANKING = 97;
  CM_GETMYRANKING = 98;
  // 开宝箱
  CM_OPENBOX = 99;                                                                                  // 钥匙放入钥匙孔打开箱子
  CM_ROTATIONBOX = 100;                                                                             // 转动箱子
  CM_SENDGETSELBOXITEM = 101;                                                                       // 获取宝箱自己选择的物品
  CM_SENDSELLGAMEGOLDDALITEM = 102;                                                                 // 元宝交易装备
  CM_SENDBUYGAMEGOLDDALITEM = 103;                                                                  // 购买元宝交易装备
  CM_SENDCANCELGAMEGOLDDALITEM = 104;                                                               // 取消元宝交易装备
  CM_OVERLAPITEM = 105;                                                                             // 重叠物品
  CM_HEROOVERLAPITEM = 106;                                                                         // 英雄包裹重叠物品
  CM_PACKAGEITEM = 107;                                                                             // 分开重叠物品
  CM_HEROPACKAGEITEM = 108;                                                                         // 分开英雄包裹重叠物品
  CM_QUERYUSERSHOPS = 109;                                                                          // 搜索传奇店铺
  CM_GETUSERSHOPS = 110;                                                                            // 传奇店铺
  CM_QUERYUSERSHOPITEMS = 111;                                                                      // 搜索指定用户店铺物品
  CM_GETUSERSHOPITEMS = 112;                                                                        // 搜索指定用户店铺物品
  CM_SEARCHSHOPITEMS = 113;                                                                         // 搜索用户店铺物品
  CM_SEARCHGETSHOPITEMS = 114;                                                                      //
  CM_QUERYMYSHOPSELLINGITEMS = 115;                                                                 // 搜索我的店铺正在物品
  CM_QUERYMYSHOPSELLEDITEMS = 116;                                                                  // 搜索我的店铺已经物品
  CM_QUERYMYSHOPSTORAGEITEMS = 117;                                                                 // 搜索我的店铺仓库物品
  CM_GETMYSHOPITEMS = 118;                                                                          // 搜索我的店铺物品
  CM_SENDADDTOMYSHOP = 119;
  CM_SENDCHANGEMYSHOPITEM = 120;
  CM_SENDMOVEMYSHOPITEM = 121;
  CM_QUERYSELECTSHOPINFO = 122;
  CM_SENDSHOPSTALLSTATUS = 123;
  CM_SENDBUYUSERSHOPITEM = 124;
  CM_SENDDELETESELLEDITEM = 125;
  CM_SENDUSERSPEEDING = 126;                                                                        // 用户超速
  CM_UPGRADEDLGITEM = 127;                                                                          // OK对话框物品
  CM_CANCELUPGRADEDLGITEM = 128;                                                                    // 取消对话框物品
  CM_CHALLENGETRY = 129;                                                                            // 挑战
  CM_CHALLENGEADDITEM = 130;                                                                        // 增加挑战物品
  CM_CHALLENGEDELITEM = 131;                                                                        // 删除挑战物品
  CM_CHALLENGECANCEL = 132;                                                                         // 取消挑战
  CM_CHALLENGECHGGOLD = 133;                                                                        // 修改挑战金币
  CM_CHALLENGECHGGAMEDIAMOND = 134;                                                                 // 修改挑战金刚石
  CM_CHALLENGEEND = 135;                                                                            // 开始挑战
  CM_SENDUPGRADEDIALOG = 136;                                                                       // 包裹宝石装备升级
  CM_HELPBUTTONCLICK = 137;                                                                         // 点击帮助按钮
  CM_SENDPLEASEDRINK = 138;                                                                         // 发送请酒
  CM_SENDGIVENPCWINE = 139;                                                                         // 发送斗酒
  CM_SENDSELECTFINGER = 140;                                                                        // 发送选择的剪刀石头布
  CM_SENDDRINK = 141;                                                                               // 喝酒
  CM_SENDGETBACKHERO = 142;                                                                         // 用户取回寄存的英雄                                  //
  CM_ASSESSMENTHERO = 143;                                                                          // 评定英雄
  CM_SENDHEROAUTOPRACTICE = 144;                                                                    // 用确定英雄自动修炼
  CM_SENDACUPOINTCLICK = 145;                                                                       // 点击穴位 series=0 人物 series=1 英雄
  CM_SENDTRAININGMERIDIANCLICK = 146;                                                               // 修炼经络 series=0 人物 series=1 英雄
  CM_CONTINUOUSMAGIC = 147;                                                                         // 开始请求连击
  CM_CHANGECONTINUOUSMAGICORDER = 148;                                                              // 改变连击魔法顺序  连击顺序  series=0 人物 series=1 英雄
  CM_SENDMODULEMD5 = 149;                                                                           // 登录器上传的模块MD5
  CM_SENDSHOPNAME = 150;                                                                            // 摆摊商铺名称
  CM_HEROLOGON = 151;                                                                               // 召唤英雄
  CM_HEROLOGOUT = 152;                                                                              // 英雄退出
  CM_MASTERBAGTOHEROBAG = 153;                                                                      // 主人包裹物品放到英雄包裹
  CM_HEROBAGTOMASTERBAG = 154;                                                                      // 英雄包裹物品放到主人包裹
  CM_HEROTAKEONITEM = 155;                                                                          // 英雄穿装备
  CM_HEROTAKEOFFITEM = 156;                                                                         // 英雄脱装备
  CM_HEROEAT = 157;                                                                                 // 英雄吃药
  CM_HEROTARGET = 158;                                                                              // 锁定//Ident: 1105 Recog: 260806992 Param: 0 Tag: 32 Series: 0   Recog= 锁定对象   Param=X  Tag=Y
  CM_HERODROPITEM = 159;                                                                            // 英雄扔物品
  CM_HEROGROUPATTACK = 160;                                                                         // 合击
  CM_HEROMAGICKEYCHANGE = 161;
  CM_HEROPROTECT = 162;
  CM_HEROM2STARTSHOPSTALL = 163;                                                                    // 开始摆摊
  CM_HEROM2STOPSHOPSTALL = 164;                                                                     // 停止摆摊
  CM_HEROM2BUYUSERSHOPITEM = 165;                                                                   // 购买摆摊物品
  CM_HEROM2ADDUSERSHOPITEM = 166;                                                                   // 增加摆摊物品
  CM_HEROM2DELUSERSHOPITEM = 167;                                                                   // 删除摆摊物品
  CM_HEROM2SENDCLOSESHOP = 168;                                                                     // 关闭购买摆摊物品窗口

  // 双击取回宝箱
  CM_GETBACKBOX = 169;

  CM_AUTOEAT = 170;
  CM_BUTTONCLICK = 171;
  CM_CLIENTBUFFCLICK = 172;
  CM_AUTOFINDPATHINFO = 173;                                                                        // 自动寻路M2触发

  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 新加CM消息  2013-08-20 ★★★★★★★★★

  CM_PLUGINCONFIG = 5000;                                                                           // 向服务器发送内挂配置信息  2013-08-17
  CM_MACHINEID = 5001;                                                                              // 向登录服务器发送机器码  2013-09-05
  CM_TAKEHORSE = 5002;                                                                              // (骑马) 召唤/收回坐骑  2013-10-12
  CM_INVITEHORSE = 5003;                                                                            // (骑马) 邀请别人共骑  2013-10-13
  CM_RESPONSEINVITEHORSE = 5004;                                                                    // (骑马) 回应是否同意别人的邀请  2013-10-14

  CM_OPENJEWELRYBOX = 5005;                                                                         // 开启首饰盒  2013-10-22
  CM_HEROOPENJEWELRYBOX = 5006;

  CM_TAKEONJEWELRY = 5007;                                                                          // 包裹物品到首饰盒中  2013-10-20
  CM_TAKEOFFJEWELRY = 5008;                                                                         // 首饰盒到包裹  2013-10-21
  CM_SWAPJEWELRYITEM = 5009;                                                                        // 交换首饰盒中两个物品  2013-10-20

  CM_HEROTAKEONJEWELRY = 5010;                                                                      // 包裹物品到首饰盒中  2013-10-20
  CM_HEROTAKEOFFJEWELRY = 5011;                                                                     // 首饰盒到包裹  2013-10-21
  CM_HEROSWAPJEWELRYITEM = 5012;                                                                    // 交换首饰盒中两个物品  2013-10-20

  CM_SETSHOWFASHION = 5013;                                                                         // 向服务器发送显示时装设置  2013-10-23

  CM_MOVETOITEMBOX = 5014;                                                                          // 将包裹中的物品放到自定义OK框中  2013-10-31
  CM_MOVEITEMBOXTOBAG = 5015;                                                                       // 将自定义OK框中放到  2013-10-31

  CM_CLEARITEMBOX = 5016;                                                                           // 清空OK框中的物品  2013-10-31

  CM_UPGRADEMAGIC = 5017;                                                                           // 升级人物技能  2013-12-07
  CM_UPGRADEHEROMAGIC = 5018;                                                                       // 升级英雄技能  2013-12-07

  CM_GODBLESSITEMCLICK = 5109;
  CM_TAKEONGODBLESS = 5110;
  CM_TAKEOFFGODBLESS = 5111;

  CM_GODBLESSUPGRADECLICK = 5112;
  CM_DACTIONLOGCLICK = 5113;

  CM_UPDATACTIVEFENGHAO = 5114;

  CM_AUTOGJ = 5115;                                                                                 // 挂机  2014-11-26
  CM_GJ_CALLMON_MAGIC = 5116;                                                                       // 挂机 使用召唤技能 2014-11-30

  CM_BAGUSEITEM = 5117;                                                                             // 在包裹中使用物品（如镶嵌宝石)  2015-01-04

  CM_REMOVESTONE = 5118;                                                                            // 卸下宝石  2015-01-05

  CM_REQUESTSTDITEM = 5119;
  CM_CLIENTDATAFILE = 5120;                                                                         // 请求相关资源  2015-01-07

  CM_GETSAYITEM = 5121;

  CM_CLICKBOX = 5122;

  CM_TAKEBACKSTORAGEVIEWITEM = 5123;                                                                // 取下可视仓库物品  2015-01-26
  CM_USERSTORAGEVIEWITEM = 5124;                                                                    // 放入可视仓库物品  2015-01-26

  CM_GETBACKSTORAGEVIEWITEM = 5125;                                                                 // 请求可视仓库换页  2015-01-26

  CM_QUERYHEROBAGITEMS = 5126;                                                                      // 刷新英雄包裹  2015-03-06

  CM_CUSTOM_HIT1 = 5127;
  CM_CUSTOM_HIT2 = 5128;
  CM_CUSTOM_HIT3 = 5129;
  CM_CUSTOM_HIT4 = 5130;
  CM_CUSTOM_HIT5 = 5131;
  CM_CUSTOM_HIT6 = 5132;
  CM_CUSTOM_HIT7 = 5133;
  CM_CUSTOM_HIT8 = 5134;
  CM_CUSTOM_HIT9 = 5135;
  CM_CUSTOM_HIT10 = 5136;
  CM_CUSTOM_HIT11 = 5137;
  CM_CUSTOM_HIT12 = 5138;
  CM_CUSTOM_HIT13 = 5139;
  CM_CUSTOM_HIT14 = 5140;
  CM_CUSTOM_HIT15 = 5141;
  CM_CUSTOM_HIT16 = 5142;
  CM_CUSTOM_HIT17 = 5143;
  CM_CUSTOM_HIT18 = 5144;
  CM_CUSTOM_HIT19 = 5145;
  CM_CUSTOM_HIT20 = 5146;
  CM_CUSTOM_HIT21 = 5147;
  CM_CUSTOM_HIT22 = 5148;
  CM_CUSTOM_HIT23 = 5149;
  CM_CUSTOM_HIT24 = 5150;
  CM_CUSTOM_HIT25 = 5151;
  CM_CUSTOM_HIT26 = 5152;
  CM_CUSTOM_HIT27 = 5153;
  CM_CUSTOM_HIT28 = 5154;
  CM_CUSTOM_HIT29 = 5155;
  CM_CUSTOM_HIT30 = 5156;
  CM_CUSTOM_HIT31 = 5157;
  CM_CUSTOM_HIT32 = 5158;
  CM_CUSTOM_HIT33 = 5159;
  CM_CUSTOM_HIT34 = 5160;
  CM_CUSTOM_HIT35 = 5161;
  CM_CUSTOM_HIT36 = 5162;
  CM_CUSTOM_HIT37 = 5163;
  CM_CUSTOM_HIT38 = 5164;
  CM_CUSTOM_HIT39 = 5165;
  CM_CUSTOM_HIT40 = 5166;
  CM_CUSTOM_HIT41 = 5167;
  CM_CUSTOM_HIT42 = 5168;
  CM_CUSTOM_HIT43 = 5169;
  CM_CUSTOM_HIT44 = 5170;
  CM_CUSTOM_HIT45 = 5171;
  CM_CUSTOM_HIT46 = 5172;
  CM_CUSTOM_HIT47 = 5173;
  CM_CUSTOM_HIT48 = 5174;
  CM_CUSTOM_HIT49 = 5175;
  CM_CUSTOM_HIT50 = 5176;
  CM_CUSTOM_HIT51 = 5177;
  CM_CUSTOM_HIT52 = 5178;
  CM_CUSTOM_HIT53 = 5179;
  CM_CUSTOM_HIT54 = 5180;
  CM_CUSTOM_HIT55 = 5181;
  CM_CUSTOM_HIT56 = 5182;
  CM_CUSTOM_HIT57 = 5183;
  CM_CUSTOM_HIT58 = 5184;
  CM_CUSTOM_HIT59 = 5185;
  CM_CUSTOM_HIT60 = 5186;
  CM_CUSTOM_HIT61 = 5187;
  CM_CUSTOM_HIT62 = 5188;
  CM_CUSTOM_HIT63 = 5189;
  CM_CUSTOM_HIT64 = 5190;
  CM_CUSTOM_HIT65 = 5191;
  CM_CUSTOM_HIT66 = 5192;
  CM_CUSTOM_HIT67 = 5193;
  CM_CUSTOM_HIT68 = 5194;
  CM_CUSTOM_HIT69 = 5195;
  CM_CUSTOM_HIT70 = 5196;
  CM_CUSTOM_HIT71 = 5197;
  CM_CUSTOM_HIT72 = 5198;
  CM_CUSTOM_HIT73 = 5199;
  CM_CUSTOM_HIT74 = 5200;
  CM_CUSTOM_HIT75 = 5201;
  CM_CUSTOM_HIT76 = 5202;
  CM_CUSTOM_HIT77 = 5203;
  CM_CUSTOM_HIT78 = 5204;
  CM_CUSTOM_HIT79 = 5205;
  CM_CUSTOM_HIT80 = 5206;
  CM_CUSTOM_HIT81 = 5207;
  CM_CUSTOM_HIT82 = 5208;
  CM_CUSTOM_HIT83 = 5209;
  CM_CUSTOM_HIT84 = 5210;
  CM_CUSTOM_HIT85 = 5211;
  CM_CUSTOM_HIT86 = 5212;
  CM_CUSTOM_HIT87 = 5213;
  CM_CUSTOM_HIT88 = 5214;
  CM_CUSTOM_HIT89 = 5215;
  CM_CUSTOM_HIT90 = 5216;
  CM_CUSTOM_HIT91 = 5217;
  CM_CUSTOM_HIT92 = 5218;
  CM_CUSTOM_HIT93 = 5219;
  CM_CUSTOM_HIT94 = 5220;
  CM_CUSTOM_HIT95 = 5221;
  CM_CUSTOM_HIT96 = 5222;
  CM_CUSTOM_HIT97 = 5223;
  CM_CUSTOM_HIT98 = 5224;
  CM_CUSTOM_HIT99 = 5225;
  CM_CUSTOM_HIT100 = 5226;


  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
  RM_SPELL = 10007;                                                                                 // 300;
  RM_TURN = 10001;                                                                                  // 301;
  RM_WALK = 10002;                                                                                  // 302;
  RM_SITDOWN = 303;
  RM_RUN = 10003;                                                                                   // 304;
  RM_HORSERUN = 11000;                                                                              // 305;
  RM_HIT = 10004;                                                                                   // 306;
  RM_HEAVYHIT = 10005;                                                                              // 307;
  RM_BIGHIT = 10006;                                                                                // 308;
  RM_POWERHIT = 10009;                                                                              // 309;
  RM_LONGHIT = 10011;                                                                               // 310;
  RM_WIDEHIT = 10012;                                                                               // 311;
  RM_FIREHIT = 10014;                                                                               // 烈火312;
  RM_CRSHIT = 11014;                                                                                // 313; //抱月刀 双龙斩   ID=40

  RM_TWNHIT = 314;                                                                                  // 龙影剑法     ID=42
  RM_43HIT = 315;                                                                                   // 雷霆剑法    ID=43
  RM_SWORDHIT = 316;                                                                                // 逐日剑法
  RM_60HIT = 317;                                                                                   // 破魂斩
  RM_61HIT = 318;                                                                                   // 劈星斩
  RM_62HIT = 319;                                                                                   // 雷霆一击
  RM_66HIT = 320;                                                                                   // 开天斩
  RM_66HIT1 = 350;                                                                                  // 开天斩轻击  2013-08-24

  RM_100HIT = 321;                                                                                  // 追心刺
  RM_101HIT = 322;                                                                                  // 三绝杀
  RM_102HIT = 323;                                                                                  // 断岳斩
  RM_103HIT = 324;                                                                                  // 横扫千军

  RM_1000HIT = 325;
  RM_1001HIT = 326;
  RM_1002HIT = 327;
  RM_1003HIT = 328;
  RM_1004HIT = 329;
  RM_1005HIT = 330;
  RM_1006HIT = 331;
  RM_1007HIT = 332;
  RM_1008HIT = 333;
  RM_1009HIT = 334;
  RM_1010HIT = 335;
  RM_1011HIT = 336;
  RM_1012HIT = 337;
  RM_1013HIT = 338;
  RM_1014HIT = 339;
  RM_1015HIT = 340;
  RM_1016HIT = 341;
  RM_1017HIT = 342;
  RM_1018HIT = 343;
  RM_1019HIT = 344;
  RM_1020HIT = 345;
  RM_STRUCK = 10020;                                                                                // 受物理打击 346;
  RM_DEATH = 10021;                                                                                 // 347;
  RM_DISAPPEAR = 10022;                                                                             // 348;
  RM_STRUCK_MAG = 10027;                                                                            // 受魔法打击 349;
  RM_WINEXP = 10044;                                                                                // 350;
  RM_USERNAME = 10043;                                                                              // 351;
  RM_LEVELUP = 10045;                                                                               // 352;
  RM_CHANGENAMECOLOR = 10046;                                                                       // 353;
  RM_SPELL2 = 10008;                                                                                // 354;
  RM_SPELL3 = 355;
  RM_TURN2 = 356;
  RM_RUSH = 10015;                                                                                  // 357;
  RM_PUSH = 10047;                                                                                  // 358;
  RM_MOVEFAIL = 10010;                                                                              // 359;
  RM_RUSHKUNG = 11015;                                                                              // 360;
  RM_LOGON = 10050;                                                                                 // 361;
  RM_ABILITY = 10051;                                                                               // 362;
  RM_HEALTHSPELLCHANGED = 10052;                                                                    // 363;
  RM_DAYCHANGING = 10053;                                                                           // 364;
  RM_HEAR = 10030;                                                                                  // 公聊 365;
  RM_WHISPER = 10031;                                                                               // 366;
  RM_CRY = 10032;                                                                                   // 367;
  RM_SYSMESSAGE = 10100;                                                                            // 368;
  RM_GROUPMESSAGE = 10102;                                                                          // 369;
  RM_GUILDMESSAGE = 10104;                                                                          // 370;


  RM_DELAYMESSAGE = 371;
  RM_CENTERMESSAGE = 372;
  RM_TOPCHATBOARDMESSAGE = 373;
  RM_MOVEMESSAGE = 374;
  RM_MERCHANTSAY = 375;
  RM_SCREENMESSAGE = 376;
  // 仿盛大顶部渐隐消息  2013-08-01
  RM_SUPERMOVEMESSAGE = 377;
  // 换行消息  2013-08-03
  RM_NEWLINEMESSAGE = 378;

  RM_ITEMSHOW = 10110;                                                                              // 376;
  RM_ITEMHIDE = 10111;                                                                              // 377;
  RM_DOOROPEN = 10112;                                                                              // 378;
  RM_DOORCLOSE = 10113;                                                                             // 379;
  RM_SENDUSEITEMS = 10114;                                                                          // 发送使用的物品 380;
  RM_WEIGHTCHANGED = 10115;                                                                         // 381;
  RM_FEATURECHANGED = 10116;                                                                        // 382;
  RM_CLEAROBJECTS = 10117;                                                                          // 383;
  RM_CHANGEMAP = 10118;                                                                             // 384;
  RM_BUTCH = 10119;                                                                                 // 挖 385;
  RM_MAGICFIRE = 10120;                                                                             // 386;
  RM_SENDMYMAGIC = 10122;                                                                           // 发送使用的魔法 387;
  RM_MAGIC_LVEXP = 10123;                                                                           // 388;
  RM_SKELETON = 10024;                                                                              // 389;
  RM_DURACHANGE = 10125;                                                                            // 持久改变 390;
  RM_GOLDCHANGED = 10136;                                                                           // 391;
  RM_CHANGELIGHT = 10137;                                                                           // 392;
  RM_CHARSTATUSCHANGED = 10139;                                                                     // 393;
  RM_DIGUP = 10200;                                                                                 // 394;
  RM_DIGDOWN = 10201;                                                                               // 395;
  RM_FLYAXE = 10202;                                                                                // 396;
  RM_LIGHTING = 10204;                                                                              // 397;
  RM_SUBABILITY = 10302;                                                                            // 398;
  RM_SPACEMOVE_SHOW = 10331;                                                                        // 399;
  RM_RECONNECTION = 11332;                                                                          // 400;
  RM_SPACEMOVE_SHOW2 = 10332;                                                                       // ? 401; //?
  RM_HIDEEVENT = 10333;                                                                             // 隐藏烟花 402;
  RM_SHOWEVENT = 10334;                                                                             // 显示烟花 403;
  RM_ZEN_BEE = 10337;                                                                               // 404;
  RM_OPENHEALTH = 10410;                                                                            // 405;
  RM_CLOSEHEALTH = 10411;                                                                           // 406;
  RM_CHANGEFACE = 10415;                                                                            // 407;
  RM_MONMOVE = 21004;                                                                               // 408;
  RM_10205 = 10205;                                                                                 // 409;
  RM_ALIVE = 10153;                                                                                 // 复活 410;
  RM_CHANGEGUILDNAME = 10301;                                                                       // 411;
  RM_10414 = 10414;                                                                                 // 412;
  RM_MENU_OK = 10309;                                                                               // 菜单 413;
  RM_MERCHANTDLGCLOSE = 10127;                                                                      // 414;
  RM_SENDDELITEMLIST = 10148;                                                                       // 发送删除项目的名单 415;
  RM_SENDUSERSREPAIR = 10141;                                                                       // 发送用户修理 416;
  RM_SENDGOODSLIST = 10128;                                                                         // 发送商品名单 417;
  RM_SENDUSERSELL = 10129;                                                                          // 发送用户出售 418;
  RM_SENDUSERREPAIR = 11139;                                                                        // 发送用户修理 419;
  RM_USERMAKEDRUGITEMLIST = 10149;                                                                  // 用户做药品项目的名单 420;
  RM_USERSTORAGEITEM = 10146;                                                                       // 用户仓库项目 421;
  RM_USERGETBACKITEM = 10147;                                                                       // 用户获得回的仓库项目 422;
  RM_SPACEMOVE_FIRE2 = 11330;                                                                       // 空间移动 423;
  RM_SPACEMOVE_FIRE = 11331;                                                                        // 空间移动 424;
  RM_BUYITEM_SUCCESS = 10133;                                                                       // 购买项目成功 425;
  RM_BUYITEM_FAIL = 10134;                                                                          // 购买项目失败 426;
  RM_SENDDETAILGOODSLIST = 10135;                                                                   // 发送详细的商品名单 427;
  RM_SENDBUYPRICE = 10130;                                                                          // 发送购买价格 428;
  RM_USERSELLITEM_OK = 10131;                                                                       // 用户出售成功 429;
  RM_USERSELLITEM_FAIL = 10132;                                                                     // 用户出售失败 430;
  RM_MAKEDRUG_SUCCESS = 10150;                                                                      // 做药成功 431;
  RM_MAKEDRUG_FAIL = 10151;                                                                         // 做药失败 432;
  RM_SENDREPAIRCOST = 10142;                                                                        // 发送修理成本 433;
  RM_USERREPAIRITEM_OK = 10143;                                                                     // 用户修理项目成功 434;
  RM_USERREPAIRITEM_FAIL = 10144;                                                                   // 用户修理项目失败 435;
  RM_PLAYDICE = 10500;                                                                              // 436;
  RM_ADJUST_BONUS = 10400;                                                                          // 437;
  RM_BUILDGUILD_OK = 10303;                                                                         // 438;
  RM_BUILDGUILD_FAIL = 10304;                                                                       // 439;
  RM_DONATE_OK = 10305;                                                                             // 440;
  RM_GAMEGOLDCHANGED = 10666;                                                                       // 441;

  RM_GAMEPOINTCHANGED = 442;
  RM_GAMEGLORY = 443;

  RM_MYSTATUS = 10777;                                                                              // 444;
  RM_MAGICFIREFAIL = 10121;                                                                         // 445;
  RM_LAMPCHANGEDURA = 10138;                                                                        // 446;
  RM_GROUPCANCEL = 10140;                                                                           // 447;
  RM_DONATE_FAIL = 10306;                                                                           // 448;
  RM_BREAKWEAPON = 10413;                                                                           // 449;
  RM_PASSWORD = 10416;                                                                              // 450;
  RM_PASSWORDSTATUS = 10601;                                                                        // 451;
  RM_MAGICMOVE = 10602;                                                                             // 新增加一个RM常量，配合十步一杀用 --  2013-06-25

  RM_CLICKNPCLABEL = 452;
  RM_QUERYBAGITEMS = 453;
  RM_TAKEONITEM = 454;                                                                              // 自动穿装备
  RM_TAKEOFFITEM = 455;                                                                             // 自动脱装备
  RM_DELETEDELAYMESSAGE = 456;


  RM_HEROLOGOUT = 457;

  // ////////////////////////////////////////////////////
  RM_HEROLOGON = 458;
  RM_GETREGINFO = 459;
  RM_SENDGAMEGOLDDALITEM = 460;                                                                     // 元宝交易装备
  RM_QUERYDEALFAIL = 461;
  RM_PLAYSOUND = 462;
  RM_PLAYEFFECT = 463;                                                                              // 播放人物效果
  RM_SCREENEFFECT = 464;
  RM_CHANGESPEED = 465;
  RM_SERVERCONFIG = 466;
  RM_OPENUPGRADEDLG = 467;
  RM_SENDUSERICON = 468;
  RM_SENDWEBBROWSER = 469;
  RM_SENDUSEREFFECT = 470;
  RM_SENDSUPERSHILEDEFFECT = 471;
  RM_SENDBLASTHIT = 472;                                                                            // 暴击
  RM_WEATHER = 474;
  RM_HEARCOLOR = 475;
  // /////////////////////////////////////////////////////

  RM_PLAYDRINKSAY = 20075;                                                                          // 476; //酒馆NPC说话信息
  RM_OPENPLAYDRINK = 20078;                                                                         // 477; 打开窗口
  RM_CLOSEDRINK = 20086;                                                                            // 478; //关闭酒馆NPC对话框
  RM_DRINKUPDATEVALUE = 20084;                                                                      // 479; //返回喝酒
  RM_PLAYDRINKTODRINK = 20081;                                                                      // 480; //发送到客户端谁赢谁输
  RM_SENDUSERPLAYDRINK = 20070;                                                                     // 481; //出现请酒对话框

  // //////////////////////////////////////////////////////
  RM_SENDSTORAGEHEROINFO = 482;                                                                     // 英雄寄存信息 召唤寄存英雄
  RM_SENDSTORAGEHEROINFOEX = 483;                                                                   // 英雄寄存信息 评定英雄
  RM_SENDSHOWHEROAUTOPRACTICEDLG = 484;                                                             // 显示英雄自动修炼对话框
  RM_REFABILNG = 485;                                                                               // 刷新内力
  RM_ABILITYNG = 486;                                                                               // 内功属性
  RM_ABILITYALCOHOL = 487;                                                                          // 酒属性
  RM_ABILITYMERIDIANS = 488;                                                                        // 经脉
  RM_WINEXPNG = 489;
  RM_LEVELUPNG = 490;
  RM_OPENCOBWEBWINDING = 491;                                                                       // 蜘蛛网罩住  开启
  RM_CLOSECOBWEBWINDING = 492;                                                                      // 蜘蛛网罩住 打开
  RM_LIGHTINGEX = 493;
  RM_CONTINUOUSMAGICORDER = 494;                                                                    // 连击顺序
  RM_TRAININGNG = 495;                                                                              // 是否修炼内功心法 界面相应显示内功心法界面  series=0 人物 series=1 英雄
  RM_STOPCONTINUOUSMAGIC = 496;                                                                     // 停止连击
  RM_SENDSHOPNAME = 497;                                                                            // 摆摊商铺名称
  RM_HEROM2SENDDRESSEFFECT = 498;                                                                   //
  RM_NATIONMESSAGE = 499;

  RM_ADDBUTTON = 500;
  RM_DELBUTTON = 501;

  RM_SHOWPHANTOM = 502;                                                                             // 显示放大的虚影
  RM_CLOSEPHANTOM = 503;                                                                            // 关闭放大的虚影

  RM_SETCLIENTBUFF = 504;
  RM_CLOSECLIENTBUFF = 505;
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
  RM_MAGSTRUCK_MINE = 30001;                                                                        // 600;
  RM_MAGSTRUCK = 30002;                                                                             // 601;
  RM_MAGHEALING = 30003;                                                                            // 602;
  RM_DELAYMAGIC = 30004;                                                                            // 603;
  RM_10101 = 30005;                                                                                 // 604;
  RM_10155 = 30006;                                                                                 // 605;
  RM_POISON = 30007;                                                                                // 606;
  RM_DELAYPUSHED = 30008;                                                                           // 607;
  RM_TRANSPARENT = 30009;                                                                           // 608;
  RM_DOOPENHEALTH = 30040;                                                                          // 609;
  RM_GROUPITEMON = 30041;
  RM_GROUPITEMOFF = 30042;

 (* RM_MAGSTRUCK_MINE = 600;
  RM_MAGSTRUCK = 601;
  RM_MAGHEALING = 602;
  RM_DELAYMAGIC = 603;
  RM_10101 = 604;
  RM_10155 = 605;
  RM_POISON = 606;
  RM_DELAYPUSHED = 607;
  RM_TRANSPARENT = 608;
  RM_DOOPENHEALTH = 609;
  RM_GROUPITEMON = 610;
  RM_GROUPITEMOFF = 611;
*)
(*
  RM_MAGSTRUCK_MINE = 40000;
  RM_MAGSTRUCK = 40001;
  RM_MAGHEALING = 40002;
  RM_DELAYMAGIC = 40003;
  RM_10101 = 40004;
  RM_10155 = 40005;
  RM_POISON = 40006;
  RM_DELAYPUSHED = 40007;
  RM_TRANSPARENT = 40008;
  RM_DOOPENHEALTH = 40009;
  RM_GROUPITEMON = 40010;
  RM_GROUPITEMOFF = 40011;
 *)

  RM_MAKEGHOST = 620;                                                                               // 20012;
  RM_HEROLOGON_OK = 621;
  RM_REFANGRYVALUE = 622;
  RM_UPDATEJEWELRYBOX = 623;
  RM_TAKEONJEWELRY = 624;
  RM_TAKEOFFJEWELRY = 625;

  RM_UPDATEGODBLESS = 626;
  RM_FENGHAO = 627;

  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 新加RM消息  2013-08-20 ★★★★★★★★★

  // 卧龙  2013-08-20
  RM_OPENBOOKS = 900;

  RM_SCENESHAKE = 901;

  RM_INVITEHORSE = 902;

  RM_SYNCSCREEN = 903;

  RM_TAKEHORSE = 904;                                                                               // (骑马) 召唤/收回坐骑  2013-10-12

  RM_MYHEROLOGON = 905;                                                                             // 自己的英雄登录

  RM_UPDATECOLLECT = 906;                                                                           // 更新采集  2013-10-27

  RM_OPENTOXICSMOKE = 907;                                                                          // 中毒烟  2013-11-10
  RM_CLOSETOXICSMOKE = 908;                                                                         // 毒烟关  2013-11-10

  RM_OPENCONTINUOUSMAGICLOCK = 909;                                                                 // 连击锁定开  2013-11-10
  RM_CLOSECONTINUOUSMAGICLOCK = 910;                                                                // 连击锁定关  2013-11-10
  RM_SENDITEMDESCLIST = 911;                                                                        // 物品描述列表  2013-11-12
  RM_SENDTZITEMDESCLIST = 912;                                                                      // 套装备注列表  2013-11-12
  RM_SENDFILTERITEMLIST = 913;                                                                      // 内挂物品过滤列表

  RM_PLAYMAGICBALLEFFECT = 914;                                                                     // 播放界面的魔法球效果  2013-11-12
  RM_EFFECTSTEP = 915;                                                                              // 真狐月天珠  2013-12-03

  RM_MOVEMESSAGE_NEW = 916;                                                                         // 滚动消息  2014-04-17

  RM_INCHEALTH = 917;                                                                               // 加血加蓝 可延时  2014-05-20

  //RM_SENDCUSTOMMONSTERCONFIG = 918;                                                                 // 发送自定义怪物配置到客户端  2014-07-20

  RM_ATTACK01 = 919;                                                                                // 自定义攻击1
  RM_ATTACK02 = 920;                                                                                // 自定义攻击2
  RM_ATTACK03 = 921;                                                                                // 自定义攻击3
  RM_ATTACK04 = 922;                                                                                // 自定义攻击4
  RM_ATTACK05 = 923;                                                                                // 自定义攻击5
  RM_ATTACK06 = 924;                                                                                // 自定义攻击6

  RM_OPENGAMESHOP = 925;                                                                            // 打开商铺  2014-09-03

  RM_ARMREMOVESTONE = 926;                                                                          // 打开卸下宝石  2015-01-04

  RM_SETNPCIMAGE  = 927;                                                                            // NPC变外观  2015-01-16

  RM_USERBIGGETBACKITEM = 928;                                                                      // 无限仓库  2015-01-25

  RM_MAGICFIRE_EX = 929;

  RM_CUSTOM_HIT =  930;
  RM_CUSTOM_HIT_TARGET_EFF = 931;

  RM_CUSTOM_MAGICMOVE = 932;                                                                        // 新增加一个RM常量，配合十步一杀用 --  2013-06-25

  RM_CUSTOM_MAGIC_SELFKEEP_PLAY = 933;                        

  RM_THUNDERPALSY_EFF = 934;
  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
  SM_PASSWD_FAIL = 503;                                                                             // 验证失败,"服务器验证失败,需要重新登录"?? 1000;
  SM_NEWID_SUCCESS = 504;                                                                           // 创建新账号成功 1001;
  SM_NEWID_FAIL = 505;                                                                              // 创建新账号失败 1002;
  SM_CHGPASSWD_SUCCESS = 506;                                                                       // 修改密码成功 1003;
  SM_CHGPASSWD_FAIL = 507;                                                                          // 修改密码失败 1004;
  SM_GETBACKPASSWD_SUCCESS = 508;                                                                   // 密码找回成功 1005;
  SM_GETBACKPASSWD_FAIL = 509;                                                                      // 密码找回失败 1006;
  SM_QUERYCHR = 520;                                                                                // 返回角色信息到客户端 1007;
  SM_NEWCHR_SUCCESS = 521;                                                                          // 新建角色成功 1008;
  SM_NEWCHR_FAIL = 522;                                                                             // 新建角色失败 1009;
  SM_DELCHR_SUCCESS = 523;                                                                          // 删除角色成功 1010;
  SM_DELCHR_FAIL = 524;                                                                             // 删除角色失败 1011;
  SM_STARTPLAY = 525;                                                                               // 开始进入游戏世界(点了健康游戏忠告后进入游戏画面) 1012;
  SM_STARTFAIL = 526;                                                                               // 开始失败,玩传奇深有体会,有时选择角色,点健康游戏忠告后黑屏 1013; //SM_USERFULL
  SM_QUERYCHR_FAIL = 527;                                                                           // 返回角色信息到客户端失败1014;
  SM_OUTOFCONNECTION = 528;                                                                         // 超过最大连接数,强迫用户下线 1027;
  SM_PASSOK_SELECTSERVER = 529;                                                                     // 密码验证完成且密码正确,开始选服 1015;
  SM_SELECTSERVER_OK = 530;                                                                         // 选服成功 1016;
  SM_NEEDUPDATE_ACCOUNT = 531;                                                                      // 1017;
  SM_UPDATEID_SUCCESS = 532;                                                                        // 更新成功 1018;
  SM_UPDATEID_FAIL = 533;                                                                           // 更新失败 1019;
  SM_QUERYDELCHR = 534;                                                                             // 返回删除过的角色 1020;
  SM_GETBAKCHAR_SUCCESS = 1021;                                                                     // 找回人物成功
  SM_GETBAKCHAR_FAIL = 1022;                                                                        // 找回人物失败
  SM_RANDOMCODE = 2007;                                                                             // 1023; 随机验证码
  SM_NEEDPASSWORD = 8004;                                                                           // 1024; 需要密码
  SM_CERTIFICATION_SUCCESS = 500;                                                                   // 1025; 认证成功
  SM_CERTIFICATION_FAIL = 501;                                                                      // 1026; 认证失败

  SM_1028 = 1028;
  SM_1029 = 1029;
  SM_1030 = 1030;
  SM_1031 = 1031;
  SM_1032 = 1032;
  SM_1033 = 1033;
  SM_1034 = 1034;
  SM_1035 = 1035;
  SM_1036 = 1036;
  SM_1037 = 1037;
  SM_1038 = 1038;
  SM_1039 = 1039;
  SM_1040 = 1040;
  SM_1041 = 1041;
  SM_1042 = 1042;
  SM_1043 = 1043;
  SM_1044 = 1044;
  SM_1045 = 1045;
  SM_1046 = 1046;
  SM_1047 = 1047;
  SM_1048 = 1048;
  SM_1049 = 1049;
  SM_1050 = 1050;
  SM_1051 = 1051;
  SM_1052 = 1052;
  SM_1053 = 1053;
  SM_1054 = 1054;
  SM_1055 = 1055;
  SM_1056 = 1056;
  SM_1057 = 1057;
  SM_1058 = 1058;
  SM_1059 = 1059;
  SM_1060 = 1060;
  SM_1061 = 1061;
  SM_1062 = 1062;
  SM_1063 = 1063;
  SM_1064 = 1064;
  SM_1065 = 1065;
  SM_1066 = 1066;
  SM_1067 = 1067;
  SM_1068 = 1068;
  SM_1069 = 1069;
  SM_1070 = 1070;
  SM_1071 = 1071;
  SM_1072 = 1072;
  SM_1073 = 1073;
  SM_1074 = 1074;
  SM_1075 = 1075;
  SM_1076 = 1076;
  SM_1077 = 1077;
  SM_1078 = 1078;
  SM_1079 = 1079;
  SM_1080 = 1080;
  SM_1081 = 1081;
  SM_1082 = 1082;
  SM_1083 = 1083;
  SM_1084 = 1084;
  SM_1085 = 1085;
  SM_1086 = 1086;
  SM_1087 = 1087;
  SM_1088 = 1088;
  SM_1089 = 1089;
  SM_1090 = 1090;
  SM_1091 = 1091;
  SM_1092 = 1092;
  SM_1093 = 1093;
  SM_1094 = 1094;
  SM_1095 = 1095;
  SM_1096 = 1096;
  SM_1097 = 1097;
  SM_1098 = 1098;
  SM_1099 = 1099;
  SM_1100 = 1100;

  SM_HORSERUN = 5;                                                                                  // 1106;
  SM_TURN = 10;                                                                                     // 1102; //转向
  SM_WALK = 11;                                                                                     // 1103; //走
  SM_SITDOWN = 12;                                                                                  // 1104;
  SM_RUN = 13;                                                                                      // 1105; //跑
  SM_HIT = 14;                                                                                      // 1107; //砍
  SM_HEAVYHIT = 15;                                                                                 // 1108; //
  SM_BIGHIT = 16;                                                                                   // 1109; //
  SM_SPELL = 17;                                                                                    // 1101; //使用魔法
  SM_POWERHIT = 18;                                                                                 // 1110;
  SM_LONGHIT = 19;                                                                                  // 1111; //刺杀
  SM_WIDEHIT = 24;                                                                                  // 1112; //半月
  SM_FIREHIT = 8;                                                                                   // 1113; //烈火
  SM_CRSHIT = 25;                                                                                   // 1114; //抱月刀 双龙斩   ID=40
  SM_TWNHIT = 26;                                                                                   // 1115; //龙影剑法     ID=42

  //////战士//////
  SM_43HIT = 43;                                                                                    // 雷霆剑法    ID=43
  SM_SWORDHIT = 56;                                                                                 // 逐日剑法  ID=56
  ///////////////

  //////合击//////
  SM_60HIT = 1118;                                                                                  // 破魂斩
  SM_61HIT = 1119;                                                                                  // 劈星斩
  SM_62HIT = 1120;                                                                                  // 雷霆一击
  ////////////////

  SM_66HIT = 66;                                                                                    // 开天斩
  SM_66HIT1 = 166;                                                                                  // 开天斩轻击

  SM_100HIT = 9100;                                                                                 //1122;                                  // 追心刺
  SM_101HIT = 9101;                                                                                 // 三绝杀
  SM_102HIT = 9102;                                                                                 // 断岳斩
  SM_103HIT = 9103;                                                                                 // 横扫千军

  SM_1000HIT = 1126;
  SM_1001HIT = 1127;
  SM_1002HIT = 1128;
  SM_1003HIT = 1129;
  SM_1004HIT = 1130;
  SM_1005HIT = 1131;
  SM_1006HIT = 1132;
  SM_1007HIT = 1133;
  SM_1008HIT = 1134;
  SM_1009HIT = 1135;
  SM_1010HIT = 1136;
  SM_1011HIT = 1137;
  SM_1012HIT = 1138;
  SM_1013HIT = 1139;
  SM_1014HIT = 1140;
  SM_1015HIT = 1141;
  SM_1016HIT = 1142;
  SM_1017HIT = 1143;
  SM_1018HIT = 1144;
  SM_1019HIT = 1145;
  SM_1020HIT = 1146;


  SM_RUSH = 6;                                                                                      // 1147;
  SM_RUSHKUNG = 7;                                                                                  // 1148; //
  SM_BACKSTEP = 9;                                                                                  // 1149;
  SM_DIGUP = 20;                                                                                    // 挖是一"起"一"坐",这里是挖动作的"起" 1150;
  SM_DIGDOWN = 21;                                                                                  // 挖动作的"坐" 1151;
  SM_FLYAXE = 22;                                                                                   // 飞斧,半兽统领的攻击方式? 1152;
  SM_LIGHTING = 23;                                                                                 // 免蜡开关 1153;
  SM_ALIVE = 27;                                                                                    // 复活??复活戒指 1154; //
  SM_MOVEFAIL = 28;                                                                                 // 移动失败,走动或跑动 1155; //
  SM_HIDE = 29;                                                                                     // 隐身? 1156; //
  SM_DISAPPEAR = 30;                                                                                // 地上物品消失 1157;
  SM_STRUCK = 31;                                                                                   // 受攻击 1158; //弯腰
  SM_DEATH = 32;                                                                                    // 正常死亡 1159;
  SM_SKELETON = 33;                                                                                 // 尸体 1160;
  SM_NOWDEATH = 34;                                                                                 // 秒杀? 1161;
  SM_SPELL2 = 117;                                                                                  // 1162;
  SM_HEAR = 40;                                                                                     // 有人回你的话 1163;
  SM_FEATURECHANGED = 41;                                                                           // 1164;
  SM_USERNAME = 42;                                                                                 // 1165;
  SM_WINEXP = 44;                                                                                   // 获得经验 1166;
  SM_LEVELUP = 45;                                                                                  // 升级,左上角出现墨绿的升级字样 1167;
  SM_DAYCHANGING = 46;                                                                              // 传奇界面右下角的太阳星星月亮 1168;
  SM_LOGON = 50;                                                                                    // logon 1169;
  SM_NEWMAP = 51;                                                                                   // 新地图?? 1170;
  SM_ABILITY = 52;                                                                                  // 打开属性对话框,F11 1171;
  SM_HEALTHSPELLCHANGED = 53;                                                                       // 治愈术使你的体力增加 1172;
  SM_MAPDESCRIPTION = 54;                                                                           // 地图描述,行会战地图?攻城区域?安全区域? 1173;
  SM_SYSMESSAGE = 100;                                                                              // 系统消息,盛大一般红字,私服蓝字 1174;
  SM_GROUPMESSAGE = 101;                                                                            // 组内聊天!! 1175;
  SM_CRY = 102;                                                                                     // 喊话 1176;
  SM_WHISPER = 103;                                                                                 // 私聊 1177;
  SM_GUILDMESSAGE = 104;                                                                            // 行会聊天!~ 1178;
  SM_MOVEMESSAGE = 99;                                                                              // 1179;
  SM_SCREENMESSAGE = 98;                                                                            // 1179;
  SM_SUPERMOVEMESSAGE = 97;                                                                         // 仿盛大顶部渐隐消息  2013-08-01
  SM_NEWLINEMESSAGE = 96;                                                                           // 换行消息  2013-08-03

  SM_DELAYMESSAGE = 1180;
  SM_CENTERMESSAGE = 1181;
  SM_TOPCHATBOARDMESSAGE = 1182;
  SM_ADDITEM = 200;                                                                                 // 1183;
  SM_BAGITEMS = 201;                                                                                // 1184;
  SM_DELITEM = 202;                                                                                 // 1185;
  SM_UPDATEITEM = 203;                                                                              // 1186;
  SM_ADDMAGIC = 210;                                                                                // 1187;
  SM_SENDMYMAGIC = 211;                                                                             // 1188;
  SM_DELMAGIC = 212;                                                                                // 1189;
  SM_DROPITEM_SUCCESS = 600;                                                                        // 1190;
  SM_DROPITEM_FAIL = 601;                                                                           // 1191;
  SM_ITEMSHOW = 610;                                                                                // 1192;
  SM_ITEMHIDE = 611;                                                                                // 1193;
// SM_DOOROPEN = 1194;
  SM_OPENDOOR_OK = 612;                                                                             // 通过过门点成功 //1195;
  SM_OPENDOOR_LOCK = 613;                                                                           // 发现过门口是封锁的,以前盛大秘密通道去赤月的门要5分钟开一次 1196;
  SM_CLOSEDOOR = 614;                                                                               // 用户过门,门自行关闭 1197;
  SM_TAKEON_OK = 615;                                                                               // 1198;
  SM_TAKEON_FAIL = 616;                                                                             // 1199;
  SM_TAKEOFF_OK = 619;                                                                              // 1200;
  SM_TAKEOFF_FAIL = 620;                                                                            // 1201;
  SM_SENDUSEITEMS = 621;                                                                            // 1202;
  SM_WEIGHTCHANGED = 622;                                                                           // 1203;
  SM_CLEAROBJECTS = 633;                                                                            // 1204;
  SM_CHANGEMAP = 634;                                                                               // 地图改变,进入新地图 1205;
  SM_EAT_OK = 635;                                                                                  // 1206;
  SM_EAT_FAIL = 636;                                                                                // 1207;
  SM_BUTCH = 637;                                                                                   // 野蛮? 1208;
  SM_MAGICFIRE = 638;                                                                               // 地狱火,火墙?? 1209;
  SM_MAGICFIRE_FAIL = 639;                                                                          // 1210;
  SM_MAGIC_LVEXP = 640;                                                                             // 1211;
  SM_DURACHANGE = 642;                                                                              // 1212;
  SM_MERCHANTSAY = 643;                                                                             // 1213;
  SM_MERCHANTDLGCLOSE = 644;                                                                        // 1214;
  SM_SENDGOODSLIST = 645;                                                                           // 1215;
  SM_SENDUSERSELL = 646;                                                                            // 1216;
  SM_SENDBUYPRICE = 647;                                                                            // 1217;
  SM_USERSELLITEM_OK = 648;                                                                         // 1218;
  SM_USERSELLITEM_FAIL = 649;                                                                       // 1219;
  SM_BUYITEM_SUCCESS = 650;                                                                         // ? 1220; //?
  SM_BUYITEM_FAIL = 651;                                                                            // ? 1221; //?
  SM_SENDDETAILGOODSLIST = 652;                                                                     // 1222;
  SM_GOLDCHANGED = 653;                                                                             // 1223;
  SM_CHANGELIGHT = 654;                                                                             // 负重改变 1224;
  SM_LAMPCHANGEDURA = 655;                                                                          // 蜡烛持久改变 1225;
  SM_CHANGENAMECOLOR = 656;                                                                         // 名字颜色改变,白名,灰名,红名,黄名 1226;
  SM_CHARSTATUSCHANGED = 657;                                                                       // 1227;
  SM_SENDNOTICE = 658;                                                                              // 发送健康游戏忠告(公告) 1228;
  SM_GROUPMODECHANGED = 659;                                                                        // 组队模式改变 1229;
  SM_CREATEGROUP_OK = 660;                                                                          // 1230;
  SM_CREATEGROUP_FAIL = 661;                                                                        // 1231;
  SM_GROUPADDMEM_OK = 662;                                                                          // 1232;
  SM_GROUPDELMEM_OK = 663;                                                                          // 1233;
  SM_GROUPADDMEM_FAIL = 664;                                                                        // 1234;
  SM_GROUPDELMEM_FAIL = 665;                                                                        // 1235;
  SM_GROUPCANCEL = 666;                                                                             // 1236;
  SM_GROUPMEMBERS = 667;                                                                            // 1237;
  SM_SENDUSERREPAIR = 668;                                                                          // 1238;
  SM_USERREPAIRITEM_OK = 669;                                                                       // 1239;
  SM_USERREPAIRITEM_FAIL = 670;                                                                     // 1240;
  SM_SENDREPAIRCOST = 671;                                                                          // 1241;
  SM_DEALMENU = 673;                                                                                // 1242;
  SM_DEALTRY_FAIL = 674;                                                                            // 1243;
  SM_DEALADDITEM_OK = 675;                                                                          // 1244;
  SM_DEALADDITEM_FAIL = 676;                                                                        // 1245;
  SM_DEALDELITEM_OK = 677;                                                                          // 1246;
  SM_DEALDELITEM_FAIL = 678;                                                                        // 1247;
  SM_DEALCANCEL = 681;                                                                              // 1248;
  SM_DEALREMOTEADDITEM = 682;                                                                       // 1249;
  SM_DEALREMOTEDELITEM = 683;                                                                       // 1250;
  SM_DEALCHGGOLD_OK = 684;                                                                          // 1251;
  SM_DEALCHGGOLD_FAIL = 685;                                                                        // 1252;
  SM_DEALREMOTECHGGOLD = 686;                                                                       // 1253;
  SM_DEALSUCCESS = 687;                                                                             // 1254;
  SM_SENDUSERSTORAGEITEM = 700;                                                                     // 1255;
  SM_STORAGE_OK = 701;                                                                              // 1256;
  SM_STORAGE_FULL = 702;                                                                            // 1257;   // 仓库已满
  SM_STORAGE_FAIL = 703;                                                                            // 1258;
  SM_SAVEITEMLIST = 704;                                                                            // 1259;
  SM_TAKEBACKSTORAGEITEM_OK = 705;                                                                  // 1260;
  SM_TAKEBACKSTORAGEITEM_FAIL = 706;                                                                // 1261;
  SM_TAKEBACKSTORAGEITEM_FULLBAG = 707;                                                             // 1262;
  SM_AREASTATE = 708;                                                                               // 周围状态 1263;
  SM_MYSTATUS = 766;                                                                                // 我的状态,最近一次下线状态,如是否被毒,挂了就强制回城 1264;
  SM_DELITEMS = 709;                                                                                // 1265;
  SM_READMINIMAP_OK = 710;                                                                          // 1266;
  SM_READMINIMAP_FAIL = 711;                                                                        // 1267;
  SM_SENDUSERMAKEDRUGITEMLIST = 712;                                                                // 1268;
  SM_MAKEDRUG_SUCCESS = 713;                                                                        // 1269;
  // 714
  // 716
  SM_MAKEDRUG_FAIL = 749;                                                                           // 65036; //1270;
  SM_CHANGEGUILDNAME = 750;                                                                         // 1271;
  SM_SENDUSERSTATE = 751;                                                                           // 1272; //
  SM_SUBABILITY = 752;                                                                              // 打开输助属性对话框 1273;
  SM_OPENGUILDDLG = 753;                                                                            // 1274; //
  SM_OPENGUILDDLG_FAIL = 754;                                                                       // 1275; //
  SM_SENDGUILDMEMBERLIST = 756;                                                                     // 1276; //
  SM_GUILDADDMEMBER_OK = 757;                                                                       // 1277; //
  SM_GUILDADDMEMBER_FAIL = 758;                                                                     // 1278;
  SM_GUILDDELMEMBER_OK = 759;                                                                       // 1279;
  SM_GUILDDELMEMBER_FAIL = 760;                                                                     // 1280;
  SM_GUILDRANKUPDATE_FAIL = 761;                                                                    // 1281;
  SM_BUILDGUILD_OK = 762;                                                                           // 1282;
  SM_BUILDGUILD_FAIL = 763;                                                                         // 1283;
  SM_DONATE_OK = 764;                                                                               // 1284;
  SM_DONATE_FAIL = 765;                                                                             // 1285;
  SM_MENU_OK = 767;                                                                                 // ? 1286; //?
  SM_GUILDMAKEALLY_OK = 768;                                                                        // 1287;
  SM_GUILDMAKEALLY_FAIL = 769;                                                                      // 1288;
  SM_GUILDBREAKALLY_OK = 770;                                                                       // 1289; //?
  SM_GUILDBREAKALLY_FAIL = 771;                                                                     // 1290; //?
  SM_DLGMSG = 772;                                                                                  // 1291; //Jacky
  SM_SPACEMOVE_HIDE = 800;                                                                          // 道士走一下隐身 1292;
  SM_SPACEMOVE_SHOW = 801;                                                                          // 道士走一下由隐身变为现身 1293;
  SM_RECONNECT = 802;                                                                               // 与服务器重连 1294;
  SM_GHOST = 803;                                                                                   // 尸体清除,虹魔教主死的效果? 1295;
  SM_SHOWEVENT = 804;                                                                               // 显示事件 1296;
  SM_HIDEEVENT = 805;                                                                               // 隐藏事件 1297;
  SM_SPACEMOVE_HIDE2 = 806;                                                                         // 1298;
  SM_SPACEMOVE_SHOW2 = 807;                                                                         // 1299;
  SM_TIMECHECK_MSG = 810;                                                                           // 时钟检测,以免客户端作弊 1300;
  SM_ADJUST_BONUS = 811;                                                                            // 1301; //?
  SM_OPENHEALTH = 1100;                                                                             // 1302;
  SM_CLOSEHEALTH = 1101;                                                                            // 1303;
  SM_BREAKWEAPON = 1102;                                                                            // 武器破碎 1304;
  SM_INSTANCEHEALGUAGE = 1103;                                                                      // 实时治愈 1305;
  SM_CHANGEFACE = 1104;                                                                             // 变脸,发型改变? 1306;
  SM_VERSION_FAIL = 1106;                                                                           // 客户端版本验证失败 1307;
  SM_ITEMUPDATE = 1500;                                                                             // 1308;
  SM_MONSTERSAY = 1501;                                                                             // 1309;
  SM_EXCHGTAKEON_OK = 65023;                                                                        // 1310;
  SM_EXCHGTAKEON_FAIL = 65024;                                                                      // 1311;
  SM_TEST = 65037;                                                                                  // 1312;
  SM_TESTHERO = 1313;
  SM_THROW = 65069;                                                                                 // 1314;
  SM_716 = 716;
  SM_PASSWORD = 1105;                                                                               // 3030; //1316;
  SM_PLAYDICE = 1200;                                                                               // 1317;
  SM_PASSWORDSTATUS = 8002;                                                                         // 20001; //1318;
  SM_GAMEGOLDNAME = 55;                                                                             // 向客户端发送游戏币名称,数量 1319;
  SM_GAMEPOINTNAME = 1320;                                                                          // 向客户端发送游戏币名称2 ,金刚石,灵符数量
  SM_GAMEGLORY = 1321;                                                                              // 游戏荣誉
  SM_SERVERCONFIG = 5007;                                                                           // 20002; //1322;
  SM_GETREGINFO = 8004;                                                                             // 20003; //1323;
  SM_MISSIONNPC = 1324;                                                                             // 发送任务NPC代码
  SM_ATTATCKMODE = 1325;                                                                            // 发送攻击模式
  SM_BUYSHOPITEM_SUCCESS = 9003;                                                                    // 1326;
  SM_BUYSHOPITEM_FAIL = 9004;                                                                       // 1327;
  SM_SENGSHOPITEMS = 9001;                                                                          // SERIES 7 每页的数量    wParam 总页数 1328;

  SM_AUTOGOTOXY = 20101;                                                                            // 1338; //自动寻路

  SM_REPAIRFIRDRAGON_OK = 5059;                                                                     // 修补火龙之心 成功 1367;
  SM_REPAIRFIRDRAGON_FAIL = 5060;                                                                   // 修补火龙之心 失败 1368;
  SM_MAGICMOVE = 5354;                                                                              // 新增加一个SM常量，配合十步一杀用 --  2013-06-25


  // ////////////////////没有找到老版本常量值/////////////////////////
  RM_SENGSHOPITEMS = 1329;
  SM_SENGRANKING = 1330;
  SM_SENGMYRANKING_FAIL = 1331;
  SM_SHOWBOX = 1332;                                                                                // 显示宝箱
  SM_OPENBOX_SUCCESS = 1333;                                                                        // 钥匙正确宝箱开启
  SM_OPENBOX_FAIL = 1334;
  SM_SENDGETBOXITEMINDEX = 1335;                                                                    // 获取转动后选择的物品序号
  SM_TAKEONITEM = 1336;                                                                             // 自动穿装备
  SM_TAKEOFFITEM = 1337;                                                                            // 自动脱装备

  SM_CLICKNPCLABEL = 1339;                                                                          //
  SM_SERVERNAME = 1340;
  SM_HEROTAKEONITEM = 1341;                                                                         // 英雄自动穿装备
  SM_HEROTAKEOFFITEM = 1342;                                                                        // 英雄自动脱装备
  SM_SENDGAMEGOLDDALITEM = 1343;                                                                    // 元宝交易装备
  SM_SELLGAMEGOLDDALITEM_OK = 1344;
  SM_SELLGAMEGOLDDALITEM_FAIL = 1345;
  SM_BUYGAMEGOLDDALITEM_OK = 1346;
  SM_BUYGAMEGOLDDALITEM_FAIL = 1347;
  SM_CANCELGAMEGOLDDEALITEM_OK = 1348;                                                              // 取消元宝交易装备
  SM_CANCELGAMEGOLDDEALITEM_FAIL = 1349;                                                            // 取消元宝交易装备
  SM_CANCELGAMEGOLDSELLITEM_OK = 1350;                                                              // 取消元宝交易装备
  SM_CANCELGAMEGOLDSELLITEM_FAIL = 1351;                                                            // 取消元宝交易装备
  SM_UNBINDLIST = 1352;
  SM_EFFECTIMAGELIST = 1353;                                                                        // WIL列表
  SM_PLAYEFFECT = 1354;                                                                             // 播放人物效果
  SM_SCREENEFFECT = 1355;
  SM_OVERLAPITEM_OK = 1356;                                                                         // 重叠物品 成功
  SM_OVERLAPITEM_FAIL = 1357;                                                                       // 重叠物品 失败
  SM_HEROOVERLAPITEM_OK = 1358;                                                                     // 英雄重叠物品 成功
  SM_HEROOVERLAPITEM_FAIL = 1359;                                                                   // 英雄重叠物品 失败
  SM_PACKAGEITEM_OK = 1360;                                                                         // 分开重叠物品 成功
  SM_PACKAGEITEM_FAIL = 1361;                                                                       // 分开重叠物品 失败
  SM_HEROPACKAGEITEM_OK = 1362;                                                                     // 英雄分开重叠物品 成功
  SM_HEROPACKAGEITEM_FAIL = 1363;                                                                   // 英雄分开重叠物品 失败
  SM_PLAYSOUND = 1364;
  SM_OPENBIGMERCHANTBIGDLG = 1365;
  SM_CLOSEBIGMERCHANTBIGDLG = 1366;
  SM_CHANGESPEED = 1369;                                                                            // 游戏速度
  SM_QUERYUSERSHOPS = 1370;                                                                         // 返回搜索传奇店铺结果
  SM_QUERYUSERSHOPITEMS = 1371;                                                                     // 返回指定用户店铺物品
  SM_SEARCHSHOPITEMS = 1372;                                                                        // 返回搜索传奇店铺物品结果
  SM_QUERYMYSHOPSELLINGITEMS = 1373;                                                                // 返回我的店铺正在物品
  SM_QUERYMYSHOPSELLEDITEMS = 1374;                                                                 // 返回我的店铺已经出售物品
  SM_QUERYMYSHOPSTORAGEITEMS = 1375;                                                                // 返回我的店铺仓库物品
  SM_SENDADDTOMYSHOP_OK = 1376;
  SM_SENDADDTOMYSHOP_FAIL = 1377;
  SM_SENDCHANGEMYSHOPITEM_OK = 1378;
  SM_SENDCHANGEMYSHOPITEM_FAIL = 1379;
  SM_SENDMOVEMYSHOPITEM_OK = 1380;
  SM_SENDMOVEMYSHOPITEM_FAIL = 1381;
  SM_QUERYSELECTSHOPINFO = 1382;
  SM_QUERYSELECTSHOPINFO_FAIL = 1383;
  SM_SENDBUYUSERSHOPITEM_OK = 1384;
  SM_SENDBUYUSERSHOPITEM_FAIL = 1385;
  SM_UPGRADEDLGITEM_TAKE = 1386;                                                                    // 升级成功
  SM_UPGRADEDLGITEM_GIVE = 1387;                                                                    // 升级成功
  SM_OPENUPGRADEDLG = 1388;                                                                         // 显示OK对话框
  SM_SENDUSERICON = 1389;
  SM_SENDWEBBROWSER = 1390;
  SM_SENDUSEREFFECT = 1391;
  SM_SENDSUPERSHILEDEFFECT = 1392;
  SM_SENDBLASTHIT = 1393;                                                                           // 暴击
  SM_SPECIALCMD = 1396;                                                                             // 特殊命令
  SM_WEATHER = 1397;

  /////////////////挑战相关消息常量  2013-07-22//////////////////////////
  SM_CHALLENGETRY_FAIL = 1399;                                                                      // 挑战失败
  SM_CHALLENGEMENU = 1398;                                                                          // 打开挑战抵押物品窗口;
  SM_CHALLENGEADDITEM_OK = 1400;                                                                    // 玩家增加抵押物品成功;
  SM_CHALLENGEADDITEM_FAIL = 1401;                                                                  // 玩家增加抵押物品失败;
  SM_CHALLENGEDELITEM_OK = 1402;                                                                    // 玩家删除抵押物品成功;
  SM_CHALLENGEDELITEM_FAIL = 1403;                                                                  // 玩家删除抵押物品失败;
  SM_CHALLENGECANCEL = 1404;                                                                        // 玩家取消挑战;
  SM_CHALLENGEREMOTEADDITEM = 1405;                                                                 // 发送增加抵押的物品后,给客户端显示;
  SM_CHALLENGEREMOTEDELITEM = 1406;                                                                 // 发送删除抵押的物品后,给客户端显示;
  SM_CHALLENGECHGGOLD_OK = 1407;                                                                    // 改变挑战金币成功
  SM_CHALLENGECHGGOLD_FAIL = 1408;                                                                  // 改变挑战金币失败
  SM_CHALLENGECHGGAMEDIAMOND_OK = 1409;                                                             // 修改挑战金刚石成功
  SM_CHALLENGECHGGAMEDIAMOND_FAIL = 1410;                                                           // 修改挑战金刚石失败
  SM_CHALLENGEREMOTECHGGOLD = 1411;                                                                 // 修改对方挑战金币
  SM_CHALLENGEREMOTECHGGAMEDIAMOND = 1412;                                                          // 修改对方挑战金刚石
  SM_CHALLENGESUCCESS = 1413;                                                                       // 挑战成功
  //////////////////////////////////////////////////////////////////////////////

  SM_OPENUPGRADEDIALOG = 1414;                                                                      // 打开包裹宝石装备升级对话框
  SM_SENDUPGRADEDIALOG_OK = 1415;                                                                   // 包裹宝石装备升级成功
  SM_SENDUPGRADEDIALOG_FAIl = 1416;                                                                 // 包裹宝石装备升级失败
  SM_HEARCOLOR = 1417;                                                                              // 人物喊话信息颜色
  SM_SOFTCLOSE = 1418;

  /////////////////////酒馆相关消息  2013-07-22//////////////////////////
  SM_PLAYDRINKSAY = 1419;                                                                           // 酒馆NPC对话框信息
  SM_USERPLAYDRINKITEM_OK = 1420;                                                                   // 请酒物品成功
  SM_USERPLAYDRINKITEM_FAIl = 1421;                                                                 // 请酒物品失败
  SM_USERPLAYDRINK_OK = 1422;                                                                       // 给NPC的酒正确 可以斗酒
  SM_USERPLAYDRINK_FAIL = 1423;                                                                     // 给NPC的酒错误
  SM_OPENPLAYDRINK = 1424;                                                                          // 打开窗口
  SM_CLOSEDRINK = 1425;                                                                             // 关闭酒馆NPC对话框
  SM_DRINKUPDATEVALUE = 1426;                                                                       // 返回喝酒
  SM_PLAYDRINKTODRINK = 1427;                                                                       // 发送到客户端谁赢谁输
  SM_SENDUSERPLAYDRINK = 1428;                                                                      // 出现请酒对话框

  SM_SENDSTORAGEHEROINFO = 1429;                                                                    // 英雄寄存信息   召回寄存的英雄
  SM_SENDSTORAGEHEROINFOEX = 1430;                                                                  // 英雄寄存信息 评定英雄
  SM_ASSESSMENTHERO_OK = 1431;                                                                      // 评定英雄车成功
  SM_ASSESSMENTHERO_FAIL = 1432;                                                                    // 评定英雄车失败
  SM_SENDSHOWHEROAUTOPRACTICEDLG = 1433;                                                            // 显示英雄自动修炼对话框
  SM_SENDHEROAUTOPRACTICE_OK = 1434;                                                                // 英雄自动修炼成功
  SM_SENDHEROAUTOPRACTICE_FAIL = 1435;                                                              // 英雄自动修炼失败
  SM_REFABILNG = 1436;                                                                              // 刷新内力
  SM_ABILITYNG = 1437;                                                                              // 内功属性
  SM_ABILITYALCOHOL = 1438;                                                                         // 酒属性
  SM_ABILITYMERIDIANS = 1439;                                                                       // 经脉
  SM_HEROABILITYNG = 1440;                                                                          // 英雄内功属性
  SM_HEROABILITYALCOHOL = 1441;                                                                     // 英雄酒属性
  SM_HEROABILITYMERIDIANS = 1442;                                                                   // 英雄经脉
  SM_OPENCOBWEBWINDING = 1443;                                                                      // 蜘蛛网罩住  开启
  SM_CLOSECOBWEBWINDING = 1444;                                                                     // 蜘蛛网罩住 打开
  SM_LIGHTINGEX = 1445;
  SM_CONTINUOUSMAGICORDER = 1446;                                                                   // 连击顺序  series=0 人物 series=1 英雄
  SM_CONTINUOUSMAGIC_OK = 1447;                                                                     // 请求开始开始连击成功
  SM_CONTINUOUSMAGIC_FAIL = 1448;                                                                   // 请求开始开始连击失败
  SM_CANCONTINUOUSMAGIC = 1449;                                                                     // 可以连击 界面连击图片闪烁显示
  SM_TRAININGNG = 1450;                                                                             // 是否修炼内功心法 界面相应显示内功心法界面  series=0 人物 series=1 英雄
  SM_LEVELUPNG = 1451;                                                                              // 内功升级
  SM_STOPCONTINUOUSMAGIC = 1452;                                                                    // 停止连击
  SM_MAPCANRUN = 1453;                                                                              // 穿人穿怪状态
  SM_PLUGFILE = 1454;                                                                               // 客户端插件MD5 M2发送过来进行检测
  SM_MODULEMD5 = 1455;                                                                              // 白名单模块MD5
  SM_BLACKMODULEMD5 = 1456;                                                                         // 黑名单模块MD5
  SM_SENDSHOPNAME = 1457;                                                                           // 摆摊商铺名称
  SM_MASTERBAGTOHEROBAG_OK = 1458;                                                                  // 主人包裹物品放到英雄包裹成功
  SM_MASTERBAGTOHEROBAG_FAIL = 1459;                                                                // 主人包裹物品放到英雄包裹失败
  SM_HEROBAGTOMASTERBAG_OK = 1460;                                                                  // 英雄包裹物品放到主人包裹成功
  SM_HEROBAGTOMASTERBAG_FAIL = 1461;                                                                // 英雄包裹物品放到主人包裹失败

  //////////////////////英雄相关消息常量  2013-07-23/////////////////////
  SM_HEROBAGCOUNT = 1462;                                                                           // 英雄包裹数量
  SM_HEROLOGON = 1464;                                                                              // 获取英雄 TMessageBodyWL 产生英雄登陆效果
  SM_HEROLOYAL = 1465;                                                                              // 获取英雄忠诚  10001(忠00.00%)
  SM_SENDMYHEROMAGIC = 1470;                                                                        // 获取英雄魔法
  SM_HEROANGERVALUE = 1481;                                                                         // 英雄怒值改变 Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
  SM_HEROLOGOUT_OK = 1482;                                                                          // 英雄退出OK
  SM_HEROCHANGEFACE = 1490;
  SM_HEROLOGON_OK = 1494;
  SM_HEROLOGOUT = 1463;                                                                             // 获取英雄 TMessageBodyWL 产生英雄退出效果
  SM_HEROABILITY = 1466;                                                                            // 获取英雄Abil
  SM_HEROSUBABILITY = 1467;                                                                         // 英雄SUBABILITY
  SM_HEROBAGITEMS = 1468;                                                                           // 获取英雄包裹     Tag:包裹物品数量 2 Series: 包裹总数量10
  SM_SENDHEROUSEITEMS = 1469;                                                                       // 获取英雄身上装备
  SM_HEROADDITEM = 1471;                                                                            // 英雄 Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
  SM_HERODELITEM = 1472;                                                                            // 英雄 Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
  SM_HEROTAKEON_OK = 1473;                                                                          // 英雄穿装备OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
  SM_HEROTAKEON_FAIL = 1474;                                                                        // 英雄穿装备FAIL
  SM_HEROTAKEOFF_OK = 1475;                                                                         // 英雄脱装备OK
  SM_HEROTAKEOFF_FAIL = 1476;                                                                       // 英雄脱装备FAIL
  SM_HEROEAT_OK = 1477;                                                                             // 英雄吃药OK
  SM_HEROEAT_FAIL = 1478;                                                                           // 英雄吃药FAIL
  SM_HEROADDMAGIC = 1479;                                                                           // 英雄增加魔法
  SM_HERODELMAGIC = 1480;                                                                           // 英雄删除魔法
  SM_HERODURACHANGE = 1483;                                                                         // 英雄物品持久改变
  SM_HERODROPITEM_SUCCESS = 1484;                                                                   // 英雄扔物品OK
  SM_HERODROPITEM_FAIL = 1485;                                                                      // 英雄扔物品FAIL
  SM_HEROLEVELUP = 1486;                                                                            // 英雄升级
  SM_HEROWINEXP = 1487;                                                                             // 英雄获取经验
  SM_HEROWEIGHTCHANGED = 1488;
  SM_HEROMAGIC_LVEXP = 1489;                                                                        // 英雄魔法经验
  SM_HEROUPDATEITEM = 1491;                                                                         // 更新英雄物品
  SM_HERODELITEMS = 1492;                                                                           // 删除英雄物品 1492;
  SM_HEROCHANGEITEM = 1493;                                                                         // 改变英雄物品


  SM_OPENMISSIONDLG = 1495;                                                                         // 打开任务日志对话框
  SM_DELETEDELAYMESSAGE = 1496;                                                                     // 删除延时消息

  /////////////////仿HeroM2摆摊相关常量值  2013-07-23////////////////////
  SM_HEROM2ADDUSERSHOPITEM_OK = 1497;                                                               // 增加摆摊物品成功
  SM_HEROM2ADDUSERSHOPITEM_FAIL = 1498;                                                             // 增加摆摊物品失败
  SM_HEROM2DELUSERSHOPITEM_OK = 1499;                                                               // 删除摆摊物品成功
  SM_HEROM2DELUSERSHOPITEM_FAIL = 1500;                                                             // 删除摆摊物品失败
  SM_HEROM2DELUSERSHOPITEM = 1501;                                                                  // 删除摆摊物品
  SM_HEROM2DELREMOTEUSERSHOPITEM = 1502;                                                            // 删除摆摊物品
  SM_HEROM2SENDSHOPITEM = 1503;                                                                     // 摆摊物品
  SM_HEROM2SENDCLOSESHOP = 1504;                                                                    // 关闭购买摆摊物品窗口
  SM_HEROM2SENDDRESSEFFECT = 1505;                                                                  // 摆摊物品衣服特效
  //////////////////////////////////////////////////////////////////////////////

  SM_SENDFILTERITEMLIST = 1506;                                                                     // 内挂捡取过滤物品列表
  SM_SENDITEMDESCLIST = 1507;                                                                       // 物品描述列表
  SM_SENDTZITEMDESCLIST = 1508;
  SM_SENDACTIONMSG = 1509;                                                                          // m_boCanHit m_boCanSpell m_boCanWalk  m_boCanRun
  SM_SENDOPENSKILLTIME = 1510;                                                                      // 战士技能开启的剩余时间

  SM_AUTOEAT_OK = 1511;                                                                             // 自动吃药成功
  SM_AUTOEAT_FAIL = 1512;                                                                           // 自动吃药失败

  SM_HEROAUTOEAT_OK = 1513;                                                                         // 英雄自动吃药成功
  SM_HEROAUTOEAT_FAIL = 1514;                                                                       // 英雄自动吃药失败
  SM_NATIONMESSAGE = 1515;

  SM_ADDBUTTON = 1516;                                                                              // 增加按钮
  SM_DELBUTTON = 1517;                                                                              // 删除按钮
  SM_SHOWPHANTOM = 1518;                                                                            // 显示放大的虚影
  SM_CLOSEPHANTOM = 1519;                                                                           // 关闭放大的虚影
  SM_STDITEMLIST = 1520;

  SM_SETCLIENTBUFF = 1521;
  SM_CLOSECLIENTBUFF = 1522;
  SM_SENDUSERMOVECMD = 1523;

  /////////////////////////////////////////////////////////////////////

  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ 新加SM消息  2013-08-20 ★★★★★★★★★

  SM_CHECKISMYSELFSERVER = 8889;                                                                    // 检测我们自己的GeeM2服务器，没有此消息则证明是别人的引擎
  SM_ACUPOINTLEVELS = 8890;                                                                         // 发送打通穴道需要的内功等级  2013-08-16
  SM_OPENBOOKS = 8891;                                                                              // 打开卧龙NPC  2013-08-20
  SM_CHANGEPOISON = 8899;                                                                           // 通知客户端将红毒/绿毒 装备 
  SM_FBTIME = 8900;                                                                                 // 副本到时通知  2013-09-09
  SM_SCENESHAKE = 8901;                                                                             // 屏幕震动消息  2013-09-14
  SM_INVITEHORSE = 8902;                                                                            // (骑马) 邀请别人共骑  2013-10-13
  SM_SYNCSCREEN = 8903;
  SM_TAKEHORSE = 8904;                                                                              // (骑马) 召唤/收回坐骑  2013-10-12
  SM_UPDATEJEWELRYBOX = 8905;                                                                       // 更新首饰盒  2013-10-20

  SM_TAKEONJEWELRY_OK = 8906;
  SM_TAKEONJEWELRY_FAIL = 8907;
  SM_TAKEOFFJEWELRY_OK = 8908;
  SM_TAKEOFFJEWELRY_FAIL = 8909;

  SM_MYHEROLOGON = 8910;
  SM_DISAPPEARMYHERO = 8911;                                                                        // 清理自己的英雄  2013-11-23

  SM_UPDATECOLLECT = 8912;

  SM_DELBOXITEM = 8913;                                                                             // 收回自定义OK框中物品  2013-11-01
  SM_RETURNBOXITEM = 8914;                                                                          // 自定义OK框 - 物品返回到包裹  2013-11-01
  SM_UPDATEBOXITEM = 8915;                                                                          // 自定义OK框刷新到客户端  2013-11-01

  SM_MOVETOITEMBOX_OK = 8916;                                                                       // 移动物品到自义定OK框成功  2013-10-31
  SM_MOVETOITEMBOX_FAIL = 8917;                                                                     // 移动物品到自义定OK框失败  2013-10-31

  SM_MOVEITEMBOXTOBAG_OK = 8918;                                                                    // 移动物品到自义定OK框成功  2013-10-31
  SM_MOVEITEMBOXTOBAG_FAIL = 8919;                                                                  // 移动物品到自义定OK框失败  2013-10-31

  SM_OPENTOXICSMOKE = 8920;                                                                         // 中毒烟  2013-11-10
  SM_CLOSETOXICSMOKE = 8921;                                                                        // 毒烟关  2013-11-10

  SM_OPENCONTINUOUSMAGICLOCK = 8922;                                                                // 连击锁定开  2013-11-10
  SM_CLOSECONTINUOUSMAGICLOCK = 8923;                                                               // 连击锁定关  2013-11-10

  SM_PLAYMAGICBALLEFFECT = 8924;                                                                    // 播放界面的魔法球效果  2013-11-12
  SM_EFFECTSTEP = 8925;                                                                             // 真狐月天珠  2013-12-03

  SM_GIVEBOXITEM = 8926;                                                                            // 将背包中指定物品放入指定OK框
  SM_TAKEBOXITEM = 8927;                                                                            // 将OK框中的物品放入背包中

  SM_FEATURECHANGED_NEW = 8928;                                                                     // 我们自己的 FEATURE 结构  2013-12-22
  SM_CHECKCLIENTVERSION_FAIL = 8929;                                                                // 客户端版本不匹配  2013-12-24

  SM_MOVEMESSAGE_NEW = 8930;                                                                        // 滚动消息  2014-04-17

  SM_UPDATEGODBLESS = 8931;                                                                         // 更新神佑袋  2014-04-18
  SM_UPDATEGODBLESSITEMS_STATE = 8932;                                                              // 神佑袋格子状态  2014-04-18
  SM_OPENGODBLESSITEM = 8933;                                                                       // 打开神佑袋某格  2014-04-18
  SM_CLOSEGODBLESSITEM = 8934;                                                                      // 关闭神佑袋某格  2014-04-18

  SM_TAKEONGODBLESSITEM_OK = 8935;
  SM_TAKEONGODBLESSITEM_FAIL = 8936;
  SM_TAKEOFFGODBLESSITEM_OK = 8937;
  SM_TAKEOFFGODBLESSITEM_FAIL = 8938;

  SM_UPDATEFENGHAOITEMS = 8939;
  SM_ADDFENGHAOITEM = 8940;                                                                         // 给予称号  2014-05-24
  SM_DELFENGHAOITEM = 8941;                                                                         // 回收称号  2014-05-24
  SM_CLEARFENGHAOITEM = 8942;                                                                       // 回收所有称号  2014-05-24
  SM_ACTIVEFENGHAOITEM = 8943;

  SM_SENDUSERSTATE_FENGHAO = 8944;

  SM_SENDCUSTOMMONSTERCONFIG = 8945;                                                                // 发送自定义怪物配置到客户端  2014-07-20
  SM_ATTACK01 = 8946;                                                                               // 自定义攻击1
  SM_ATTACK02 = 8947;                                                                               // 自定义攻击2
  SM_ATTACK03 = 8948;                                                                               // 自定义攻击3
  SM_ATTACK04 = 8949;                                                                               // 自定义攻击4
  SM_ATTACK05 = 8950;                                                                               // 自定义攻击5
  SM_ATTACK06 = 8951;                                                                               // 自定义攻击6

  SM_OPENGAMESHOP = 8952;                                                                           // 打开商铺  2014-09-03

  SM_ABILITY_NOBONUS = 8953;                                                                        // 未调整属性点前原始属性  2014-10-15

  SM_START_GJ = 8954;                                                                               // 开始挂机  2014-11-26
  SM_GJ_CALLMONMAGIC = 8955;                                                                        // 挂机使用召唤技能  2014-12-01

  SM_LOCK_USER = 8956;                                                                              // 锁定用户

  SM_BAGUSEITEM = 8958;                                                                             // 发送包裹中使用物品（如镶嵌宝石）
  SM_ARMREMOVESTONE = 8959;                                                                         // 卸下镶嵌宝石对话框
  SM_REMOVESTONE_BACK = 8960;                                                                       // 卸下镶嵌宝石结果

  SM_RESPONSESTDITEM = 8961;                                                                        // 服务器返回StdItem

  SM_SHOWPROGRESSBAR = 8962;
  SM_CLOSEPROGRESSBAR = 8963;

  SM_GETSAYITEM = 8964;

  SM_SETNPCIMAGE = 8965;                                                                            // 改变NPC外观 天下第一  2015-01-15

  SM_STORAGEVIEWITEMLIST = 8966;                                                                    // 可视仓库物品列表  2015-01-26

  SM_STORAGEVIEW_OK = 8967;

  SM_CLOSEBIGDIALOGBOX = 8968;

  SM_OPENGAMESHOPDLG = 8969;

  SM_SENDCUSTOMMAGICCONFIG = 8970;

  SM_MAGICFIRE_EX = 8971;

  SM_CUSTOM_HIT1 = 8972;
  SM_CUSTOM_HIT2 = 8973;
  SM_CUSTOM_HIT3 = 8974;
  SM_CUSTOM_HIT4 = 8975;
  SM_CUSTOM_HIT5 = 8976;
  SM_CUSTOM_HIT6 = 8977;
  SM_CUSTOM_HIT7 = 8978;
  SM_CUSTOM_HIT8 = 8979;
  SM_CUSTOM_HIT9 = 8980;
  SM_CUSTOM_HIT10 = 8981;
  SM_CUSTOM_HIT11 = 8982;
  SM_CUSTOM_HIT12 = 8983;
  SM_CUSTOM_HIT13 = 8984;
  SM_CUSTOM_HIT14 = 8985;
  SM_CUSTOM_HIT15 = 8986;
  SM_CUSTOM_HIT16 = 8987;
  SM_CUSTOM_HIT17 = 8988;
  SM_CUSTOM_HIT18 = 8989;
  SM_CUSTOM_HIT19 = 8990;
  SM_CUSTOM_HIT20 = 8991;
  SM_CUSTOM_HIT21 = 8992;
  SM_CUSTOM_HIT22 = 8993;
  SM_CUSTOM_HIT23 = 8994;
  SM_CUSTOM_HIT24 = 8995;
  SM_CUSTOM_HIT25 = 8996;
  SM_CUSTOM_HIT26 = 8997;
  SM_CUSTOM_HIT27 = 8998;
  SM_CUSTOM_HIT28 = 8999;
  SM_CUSTOM_HIT29 = 9000;
  SM_CUSTOM_HIT30 = 9001;
  SM_CUSTOM_HIT31 = 9002;
  SM_CUSTOM_HIT32 = 9003;
  SM_CUSTOM_HIT33 = 9004;
  SM_CUSTOM_HIT34 = 9005;
  SM_CUSTOM_HIT35 = 9006;
  SM_CUSTOM_HIT36 = 9007;
  SM_CUSTOM_HIT37 = 9008;
  SM_CUSTOM_HIT38 = 9009;
  SM_CUSTOM_HIT39 = 9010;
  SM_CUSTOM_HIT40 = 9011;
  SM_CUSTOM_HIT41 = 9012;
  SM_CUSTOM_HIT42 = 9013;
  SM_CUSTOM_HIT43 = 9014;
  SM_CUSTOM_HIT44 = 9015;
  SM_CUSTOM_HIT45 = 9016;
  SM_CUSTOM_HIT46 = 9017;
  SM_CUSTOM_HIT47 = 9018;
  SM_CUSTOM_HIT48 = 9019;
  SM_CUSTOM_HIT49 = 9020;
  SM_CUSTOM_HIT50 = 9021;
  SM_CUSTOM_HIT51 = 9022;
  SM_CUSTOM_HIT52 = 9023;
  SM_CUSTOM_HIT53 = 9024;
  SM_CUSTOM_HIT54 = 9025;
  SM_CUSTOM_HIT55 = 9026;
  SM_CUSTOM_HIT56 = 9027;
  SM_CUSTOM_HIT57 = 9028;
  SM_CUSTOM_HIT58 = 9029;
  SM_CUSTOM_HIT59 = 9030;
  SM_CUSTOM_HIT60 = 9031;
  SM_CUSTOM_HIT61 = 9032;
  SM_CUSTOM_HIT62 = 9033;
  SM_CUSTOM_HIT63 = 9034;
  SM_CUSTOM_HIT64 = 9035;
  SM_CUSTOM_HIT65 = 9036;
  SM_CUSTOM_HIT66 = 9037;
  SM_CUSTOM_HIT67 = 9038;
  SM_CUSTOM_HIT68 = 9039;
  SM_CUSTOM_HIT69 = 9040;
  SM_CUSTOM_HIT70 = 9041;
  SM_CUSTOM_HIT71 = 9042;
  SM_CUSTOM_HIT72 = 9043;
  SM_CUSTOM_HIT73 = 9044;
  SM_CUSTOM_HIT74 = 9045;
  SM_CUSTOM_HIT75 = 9046;
  SM_CUSTOM_HIT76 = 9047;
  SM_CUSTOM_HIT77 = 9048;
  SM_CUSTOM_HIT78 = 9049;
  SM_CUSTOM_HIT79 = 9050;
  SM_CUSTOM_HIT80 = 9051;
  SM_CUSTOM_HIT81 = 9052;
  SM_CUSTOM_HIT82 = 9053;
  SM_CUSTOM_HIT83 = 9054;
  SM_CUSTOM_HIT84 = 9055;
  SM_CUSTOM_HIT85 = 9056;
  SM_CUSTOM_HIT86 = 9057;
  SM_CUSTOM_HIT87 = 9058;
  SM_CUSTOM_HIT88 = 9059;
  SM_CUSTOM_HIT89 = 9060;
  SM_CUSTOM_HIT90 = 9061;
  SM_CUSTOM_HIT91 = 9062;
  SM_CUSTOM_HIT92 = 9063;
  SM_CUSTOM_HIT93 = 9064;
  SM_CUSTOM_HIT94 = 9065;
  SM_CUSTOM_HIT95 = 9066;
  SM_CUSTOM_HIT96 = 9067;
  SM_CUSTOM_HIT97 = 9068;
  SM_CUSTOM_HIT98 = 9069;
  SM_CUSTOM_HIT99 = 9070;
  SM_CUSTOM_HIT100 = 9071;

  SM_CUSTOM_HIT_TARGET_EFF = 9072;

  SM_CUSTOM_MAGICMOVE1 = 10000;
  SM_CUSTOM_MAGICMOVE2 = 10001;
  SM_CUSTOM_MAGICMOVE3 = 10002;
  SM_CUSTOM_MAGICMOVE4 = 10003;
  SM_CUSTOM_MAGICMOVE5 = 10004;
  SM_CUSTOM_MAGICMOVE6 = 10005;
  SM_CUSTOM_MAGICMOVE7 = 10006;
  SM_CUSTOM_MAGICMOVE8 = 10007;
  SM_CUSTOM_MAGICMOVE9 = 10008;
  SM_CUSTOM_MAGICMOVE10 = 10009;
  SM_CUSTOM_MAGICMOVE11 = 10010;
  SM_CUSTOM_MAGICMOVE12 = 10011;
  SM_CUSTOM_MAGICMOVE13 = 10012;
  SM_CUSTOM_MAGICMOVE14 = 10013;
  SM_CUSTOM_MAGICMOVE15 = 10014;
  SM_CUSTOM_MAGICMOVE16 = 10015;
  SM_CUSTOM_MAGICMOVE17 = 10016;
  SM_CUSTOM_MAGICMOVE18 = 10017;
  SM_CUSTOM_MAGICMOVE19 = 10018;
  SM_CUSTOM_MAGICMOVE20 = 10019;
  SM_CUSTOM_MAGICMOVE21 = 10020;
  SM_CUSTOM_MAGICMOVE22 = 10021;
  SM_CUSTOM_MAGICMOVE23 = 10022;
  SM_CUSTOM_MAGICMOVE24 = 10023;
  SM_CUSTOM_MAGICMOVE25 = 10024;
  SM_CUSTOM_MAGICMOVE26 = 10025;
  SM_CUSTOM_MAGICMOVE27 = 10026;
  SM_CUSTOM_MAGICMOVE28 = 10027;
  SM_CUSTOM_MAGICMOVE29 = 10028;
  SM_CUSTOM_MAGICMOVE30 = 10029;
  SM_CUSTOM_MAGICMOVE31 = 10030;
  SM_CUSTOM_MAGICMOVE32 = 10031;
  SM_CUSTOM_MAGICMOVE33 = 10032;
  SM_CUSTOM_MAGICMOVE34 = 10033;
  SM_CUSTOM_MAGICMOVE35 = 10034;
  SM_CUSTOM_MAGICMOVE36 = 10035;
  SM_CUSTOM_MAGICMOVE37 = 10036;
  SM_CUSTOM_MAGICMOVE38 = 10037;
  SM_CUSTOM_MAGICMOVE39 = 10038;
  SM_CUSTOM_MAGICMOVE40 = 10039;
  SM_CUSTOM_MAGICMOVE41 = 10040;
  SM_CUSTOM_MAGICMOVE42 = 10041;
  SM_CUSTOM_MAGICMOVE43 = 10042;
  SM_CUSTOM_MAGICMOVE44 = 10043;
  SM_CUSTOM_MAGICMOVE45 = 10044;
  SM_CUSTOM_MAGICMOVE46 = 10045;
  SM_CUSTOM_MAGICMOVE47 = 10046;
  SM_CUSTOM_MAGICMOVE48 = 10047;
  SM_CUSTOM_MAGICMOVE49 = 10048;
  SM_CUSTOM_MAGICMOVE50 = 10049;
  SM_CUSTOM_MAGICMOVE51 = 10050;
  SM_CUSTOM_MAGICMOVE52 = 10051;
  SM_CUSTOM_MAGICMOVE53 = 10052;
  SM_CUSTOM_MAGICMOVE54 = 10053;
  SM_CUSTOM_MAGICMOVE55 = 10054;
  SM_CUSTOM_MAGICMOVE56 = 10055;
  SM_CUSTOM_MAGICMOVE57 = 10056;
  SM_CUSTOM_MAGICMOVE58 = 10057;
  SM_CUSTOM_MAGICMOVE59 = 10058;
  SM_CUSTOM_MAGICMOVE60 = 10059;
  SM_CUSTOM_MAGICMOVE61 = 10060;
  SM_CUSTOM_MAGICMOVE62 = 10061;
  SM_CUSTOM_MAGICMOVE63 = 10062;
  SM_CUSTOM_MAGICMOVE64 = 10063;
  SM_CUSTOM_MAGICMOVE65 = 10064;
  SM_CUSTOM_MAGICMOVE66 = 10065;
  SM_CUSTOM_MAGICMOVE67 = 10066;
  SM_CUSTOM_MAGICMOVE68 = 10067;
  SM_CUSTOM_MAGICMOVE69 = 10068;
  SM_CUSTOM_MAGICMOVE70 = 10069;
  SM_CUSTOM_MAGICMOVE71 = 10070;
  SM_CUSTOM_MAGICMOVE72 = 10071;
  SM_CUSTOM_MAGICMOVE73 = 10072;
  SM_CUSTOM_MAGICMOVE74 = 10073;
  SM_CUSTOM_MAGICMOVE75 = 10074;
  SM_CUSTOM_MAGICMOVE76 = 10075;
  SM_CUSTOM_MAGICMOVE77 = 10076;
  SM_CUSTOM_MAGICMOVE78 = 10077;
  SM_CUSTOM_MAGICMOVE79 = 10078;
  SM_CUSTOM_MAGICMOVE80 = 10079;
  SM_CUSTOM_MAGICMOVE81 = 10080;
  SM_CUSTOM_MAGICMOVE82 = 10081;
  SM_CUSTOM_MAGICMOVE83 = 10082;
  SM_CUSTOM_MAGICMOVE84 = 10083;
  SM_CUSTOM_MAGICMOVE85 = 10084;
  SM_CUSTOM_MAGICMOVE86 = 10085;
  SM_CUSTOM_MAGICMOVE87 = 10086;
  SM_CUSTOM_MAGICMOVE88 = 10087;
  SM_CUSTOM_MAGICMOVE89 = 10088;
  SM_CUSTOM_MAGICMOVE90 = 10089;
  SM_CUSTOM_MAGICMOVE91 = 10090;
  SM_CUSTOM_MAGICMOVE92 = 10091;
  SM_CUSTOM_MAGICMOVE93 = 10092;
  SM_CUSTOM_MAGICMOVE94 = 10093;
  SM_CUSTOM_MAGICMOVE95 = 10094;
  SM_CUSTOM_MAGICMOVE96 = 10095;
  SM_CUSTOM_MAGICMOVE97 = 10096;
  SM_CUSTOM_MAGICMOVE98 = 10097;
  SM_CUSTOM_MAGICMOVE99 = 10098;
  SM_CUSTOM_MAGICMOVE100 = 10099;


  SM_CUSTOM_MAGIC_SELFKEEP_PLAY = 10100;
  SM_THUNDERPALSY_EFF = 10101;

  SM_DISABLE_PUBLICCHAT = 10102;
  SM_DISABLE_CRYCHAT = 10103;

  SM_MODULEMD5_CACHE                = 10104;
  SM_SENDCUSTOMMONSTERCONFIG_CACHE  = 10105;
  SM_STDITEMLIST_CACHE              = 10106;
  SM_SENDITEMDESCLIST_CACHE         = 10107;
  SM_SENDTZITEMDESCLIST_CACHE       = 10108;
  SM_SENDFILTERITEMLIST_CACHE       = 10109;
  SM_EFFECTIMAGELIST_CACHE          = 10110;
  SM_SPECIALCMD_CACHE               = 10111;
  SM_SENDCUSTOMMAGICCONFIG_CACHE    = 10112;
  SM_PLUGFILE_CACHE                 = 10113;
  SM_SERVERCONFIG_CACHE = 10114;
  // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★


  clBlack = LongWord($000000);
  clMaroon = LongWord($000080);
  clGreen = LongWord($008000);
  clOlive = LongWord($008080);
  clNavy = LongWord($800000);
  clPurple = LongWord($800080);
  clTeal = LongWord($808000);
  clGray = LongWord($808080);
  clSilver = LongWord($C0C0C0);
  clRed = LongWord($0000FF);
  clLime = LongWord($00FF00);
  clYellow = LongWord($00FFFF);
  clBlue = LongWord($FF0000);
  clFuchsia = LongWord($FF00FF);
  clAqua = LongWord($FFFF00);
  clLtGray = LongWord($C0C0C0);
  clDkGray = LongWord($808080);
  clWhite = LongWord($FFFFFF);
type
  TMenuItem = TObject;
  TNotifyEvent = procedure(Sender: TObject) of object;

  pTBaseObject = ^TBaseObject;
  pTPlayObject = ^TPlayObject;
  pTEnvirnoment = ^TEnvirnoment;
  pTGuild = ^TGuild;
  pTUserCastle = ^TUserCastle;


  TList = TObject;
  TStringList = TObject;
  TMemoryStream = TObject;
  TBaseObject = TObject;
  TSmartObject = TObject;
  THeroObject = TObject;
  TPlayObject = TObject;
  TNormNpc = TObject;
  TMerchant = TObject;
  TEnvirnoment = TObject;
  TUserCastle = TObject;
  TGuild = TObject;

  TMsgType = (t_Notice, t_Hint, t_System, t_Say, t_Mon, t_GM, t_Cust, t_Castle, t_Char);
  _TDEFAULTMESSAGE = record
    nRecog: Integer;
    wIdent: word;
    wParam: word;
    wTag: word;
    wSeries: word;
  end;
  _LPTDEFAULTMESSAGE = ^_TDEFAULTMESSAGE;

  _TABILITY = packed record
    Level: LongWord;                                                                                 // 0x198  //0x34  0x00
    AC1: Integer;                                                                                   // 0x19A  //0x36  0x02
    AC2: Integer;                                                                                   // 0x19A  //0x36  0x02
    MAC1: Integer;                                                                                   // 0x19C  //0x38  0x04
    MAC2: Integer;                                                                                   // 0x19C  //0x38  0x04
    DC1: Integer;                                                                                    // 0x19E  //0x3A  0x06
    DC2: Integer;                                                                                    // 0x19E  //0x3A  0x06
    MC1: Integer;                                                                                    // 0x1A0  //0x3C  0x08
    MC2: Integer;                                                                                    // 0x1A0  //0x3C  0x08
    SC1: Integer;                                                                                    // 0x1A2  //0x3E  0x0A
    SC2: Integer;                                                                                    // 0x1A2  //0x3E  0x0A
    HP: LongWord;                                                                                    // 0x1A4  //0x40  0x0C
    MP: LongWord;                                                                                    // 0x1A6  //0x42  0x0E
    MaxHP: LongWord;                                                                                // 0x1A8  //0x44  0x10
    MaxMP: LongWord;                                                                                // 0x1AA  //0x46  0x12
    Exp: LongWord;                                                                                  // 0x1B0  //0x4C 0x18
    MaxExp: LongWord;                                                                               // 0x1B4  //0x50 0x1C
    Weight: LongInt;                                                                                // 0x1B8   //0x54 0x20
    MaxWeight: LongInt;                                                                             // 0x1BA   //0x56 0x22  背包
    WearWeight: LongInt;                                                                            // 0x1BC   //0x58 0x24
    MaxWearWeight: LongInt;                                                                         // 0x1BD   //0x59 0x25  负重
    HandWeight: LongInt;                                                                            // 0x1BE   //0x5A 0x26
    MaxHandWeight: LongInt;                                                                         // 0x1BF   //0x5B 0x27  腕力
    CreditPoint: Integer;                                                                           // 声望
    NewValue: array[0..30 - 1] of LongWord;
    // 0暴击几率增加 1增加攻击伤害  2物理伤害减少 3魔法伤害减少  4忽视目标防御
    // 5所有伤害反弹 6增加目标暴率 7人物体力增加  8人物魔力增加 9怒气恢复增加
    // 10合击攻击增加 11 怪物暴率 12 防暴几率
  end;
  _LPTABILITY = ^_TABILITY;

  _TSTDITEM = packed record
    Name: string[ITEMNAMELEN];
    DBName: string[ITEMNAMELEN];
    StdMode: Byte;
    Shape: Word;
    Weight: Byte;
    AniCount: Word;
    Source: Integer;
    Reserved: Byte;
    NeedIdentify: Byte;
    Looks: Word;
    DuraMax: Word;
    Reserved1: Word;
    HP: Integer;
    MP: Integer;
    AC1: Integer;
    AC2: Integer;
    MAC1: Integer;
    MAC2: Integer;
    DC1: Integer;
    DC2: Integer;
    MC1: Integer;
    MC2: Integer;
    SC1: Integer;
    SC2: Integer;
    Need: Integer;
    NeedLevel: Integer;
    Price: Integer;
    OverLap: Word;                                                                                  // 是否是重叠物品
    Color: Byte;                                                                                    // 物品名称颜色
    Stock: Integer;
    Light: Integer;                                                                                 // 数据库增加Light字段 piaoyun 2013-08-01
    btValue: array[0..13] of Integer;                                                               // 附加属性

    btUpgradeCount: Byte;                                                                           // 升级次数
    btHeroM2Light: Byte;                                                                            // HeroM2 SetItemsLight
    NewValue: array[0..30 - 1] of Word;

    IsBind: Boolean;                                                                                // 是否绑定

    EffectFileIndex: SmallInt;                                                                      // 包裹中的物品发光效果 文件编号 0
    EffectStartOffSet: Word;                                                                        // 包裹中的物品发光效果 读取位置
    EffectImageCount: Byte;                                                                         // 包裹中的物品发光效果 读取张数
    EffectOffsetX: SmallInt;                                                                        // 包裹中的物品发光效果 微调X
    EffectOffsetY: SmallInt;                                                                        // 包裹中的物品发光效果 微调Y
    EffectTime: Word;                                                                               // 播放速度
    EffectDrawCenter: Boolean;
    
    BodyEffectFileIndex: SmallInt;                                                                  // 内观物品发光效果 文件编号 0
    BodyEffectStartOffSet: Word;                                                                    // 内观物品发光效果 读取位置
    BodyEffectImageCount: Byte;                                                                     // 内观物品发光效果 读取张数
    BodyEffectOffsetX: SmallInt;                                                                    // 内观物品发光效果 微调X
    BodyEffectOffsetY: SmallInt;                                                                    // 内观物品发光效果 微调Y
    BodyEffectTime: Word;                                                                           // 播放速度
    BodyEffectDrawCenter: Boolean;

    Horse: Integer;
    Element: Integer;
    Expand1: Integer;
    Expand2: Integer;
    Expand3: Integer;

    Effect: Pointer;
  end;
  _LPTSTDITEM = ^_TSTDITEM;

  _TCLIENTITEM = record
    s: _TSTDITEM;
    MakeIndex: Integer;
    Dura: Word;
    DuraMax: Word;

    // 装备凹槽 chongchong 2015-01-03
    btFluteCount: Byte;                                                                             // 凹槽数量         1
    wFlute: array[0..8 - 1] of Word;                                                                // 凹槽宝石信息     16
  end;
  _LPTCLIENTITEM = ^_TCLIENTITEM;

  _TUSERITEM = packed record
    MakeIndex: Integer;
    wIndex: Word;                                                                                   // 物品id
    Name: string[ITEMNAMELEN];
    Dura: Word;                                                                                     // 当前持久值
    DuraMax: Word;                                                                                  // 最大持久值
    btValue: array[0..13] of Integer;
    btEffect: Byte;                                                                                 // 特效编号 旧
    btUpgradeCount: Byte;                                                                           // 升级次数
    boStartTime: Boolean;                                                                           // 是否开始计时
    nLimitTime: Integer;                                                                            // 限时物品 分钟
    btHeroM2Light: Byte;                                                                            // HeroM2 SetItemsLight
    btNewValue: array[0..30 - 1] of Word;
    // 0 暴击几率增加   1 增加攻击伤害   2 物理伤害减少  3 魔法伤害减少  4 忽视目标防御
    // 5 所有伤害反弹   6 增加目标暴率   7 人物体力增加  8 人物魔力增加  9 怒气恢复增加
    // 10合击攻击增加
    btColor: Byte;
    boIsBind: Boolean;                                                                              // 是否绑定

    boCanotUserDropBindItem: Boolean;                                                               // 禁止扔                  ]
    boCanotUserDealBindItem: Boolean;                                                               // 禁止交易
    boCanotUserStorageBindItem: Boolean;                                                            // 禁止存
    boCanotUserRepairBindItem: Boolean;                                                             // 禁止修
    boCanotUserSellBindItem: Boolean;                                                               // 禁止出售
    boCanotUserScatterBindItem: Boolean;                                                            // 禁止爆出
    boBindItemDropDelete: Boolean;                                                                  // 丢弃消失 chongchong 2015-01-29

    wEffect: Word;                                                                                  // 特效编号 新

    // 装备凹槽 chongchong 2015-01-02
    btFluteCount: Byte;                                                                             // 凹槽数量         1
    wFlute: array[0..8 - 1] of Word;                                                                // 凹槽宝石信息     16
  end;
  _LPTUSERITEM = ^_TUSERITEM;

  _TUSEITEMS = array[0..15] of _TUSERITEM;                  //身上装备
  _LPTUSEITEMS = ^_TUSEITEMS;

                 //人物技能 英雄技能 连击技能 内功技能增加防御 内功技能增加攻击
  TMagicAttr = (mtHum, mtHero, mtContinuous, mtDefense, mtAttack);

  _TMAGIC = record
    MagicAttr: TMagicAttr;
    wMagicId: Word;
    sMagicName: string[ITEMNAMELEN];
    btEffectType: Byte;
    btEffect: Byte;
    bt11: Byte;
    wSpell: Word;
    wPower: Word;
    TrainLevel: array[0..15] of Byte;
    w02: Word;
    MaxTrain: array[0..15] of Integer;
    btTrainLv: Byte;                                                                                // 最高可升级等级
    btJob: Byte;
    wMagicIdx: Word;
    dwDelayTime: LongWord;
    btDefSpell: Byte;
    btDefPower: Byte;
    wMaxPower: Word;
    btDefMaxPower: Byte;
    sDescr: string[18];
    CanUpgrade: Integer;                                                                            // 是否允许升级 chongchong 2013-12-06
    MaxUpgradeLevel: Integer;                                                                       // 最高
  end;
  _LPTMAGIC = ^_TMAGIC;

  _TUSERMAGIC = record                                      //用户魔法
    MagicInfo: _LPTMAGIC;
    MagicAttr: TMagicAttr;
    wMagIdx: Word;
    btLevel: Byte;
    btNewLevel: Byte;
    btKey: Byte;
    nTranPoint: Integer;
  end;
  _LPTUSERMAGIC = ^_TUSERMAGIC;

  _TCLIENTMAGIC = record                                    //发送客户端的魔法结构
    Key: Char;
    Level: Byte;
    NewLevel: Byte;                                                                                 // 九重
    CurTrain: Integer;
    Def: _TMagic;
  end;
  _LPTCLIENTMAGIC = ^_TCLIENTMAGIC;


  _TACTORICON = record                                      //顶戴花翎
    nFileIndex: SmallInt;                                                                           // WIL资源编号
    nIconIndex: Word;
    nIconCount: Byte;
    nX: SmallInt;
    nY: SmallInt;
    boBlend: Boolean;
    btDrawOrder: Byte;                              // 绘制顺序
    nPlayTime: SmallInt;                            // 播放速度
  end;
  _LPTACTORICON = ^_TACTORICON;
  _TACTORICONARRAY = array[0..9] of _TACTORICON;
  _LPTACTORICONARRAY = ^_TACTORICONARRAY;


  TShareMemoryManage = record
    GetMem: function(Size: Integer): Pointer; stdcall;
    FreeMem: procedure(P: Pointer); stdcall;
    AllocMem: function(Size: Integer): Pointer; stdcall;
    ReallocMem: function(P: Pointer; Size: Integer): Pointer; stdcall;
  end;
  pTShareMemoryManage = ^TShareMemoryManage;

  TStart = procedure(); stdcall;
  TObjectAction = procedure(PlayObject: TObject); stdcall;
  TObjectActionEx = function(PlayObject: TObject): Boolean; stdcall;
  TObjectActionXY = procedure(AObject, BObject: TObject; nX, nY: Integer); stdcall;
  TObjectActionXYD = procedure(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte); stdcall;
  TObjectActionXYDM = procedure(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte; wMagicID: Word); stdcall;
  TObjectActionXYDMEx = function(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte; wMagicID: Word; nDamage: Integer): Integer; stdcall;
  TObjectActionIndex = procedure(BaseObject: TObject; Index: Integer); stdcall;
  TObjectControl = procedure(BaseObject: TObject; var Value: Integer); stdcall; // Value需要申请的内存大小
  TObjectUserSelect = procedure(Merchant: TMerchant; PlayObject: TPlayObject; pszLabel, pszData: PChar); stdcall;
  TProcessUserCmd = function(AObject: TObject; pszCmd, pszParam1, pszParam2, pszParam3, pszParam4, pszParam5, pszParam6, pszParam7: PChar): Boolean; stdcall;

  TLoadScriptCmd = function(pszCmd: PChar): Integer; stdcall;
  TLoadScriptFile = function(sFileName: PChar; Stream: TMemoryStream): Boolean; stdcall; //数据需要使用ZIP压缩然后使用M2Server_EncryBuffer加密后才能写入Stream
  TScriptProcess = function(Npc: TObject;
    PlayObject: TObject;
    BaseObject: TObject;
    nCMDCode: Integer;
    sRawParam1: PChar;
    sRawParam2: PChar;
    sRawParam3: PChar;
    sRawParam4: PChar;
    sRawParam5: PChar;
    sRawParam6: PChar;
    sRawParam7: PChar;
    sRawParam8: PChar;
    sRawParam9: PChar;
    sRawParam10: PChar;

    sParam1: PChar;
    nParam1: Integer;
    sParam2: PChar;
    nParam2: Integer;
    sParam3: PChar;
    nParam3: Integer;
    sParam4: PChar;
    nParam4: Integer;
    sParam5: PChar;
    nParam5: Integer;
    sParam6: PChar;
    nParam6: Integer;
    sParam7: PChar;
    nParam7: Integer;
    sParam8: PChar;
    nParam8: Integer;
    sParam9: PChar;
    nParam9: Integer;
    sParam10: PChar;
    nParam10: Integer
    ): Boolean; stdcall;

  TGetVariableText = function(NPC: TNormNpc; PlayObject: TPlayObject; sVariable: PChar; sValue: PChar; var nLen: Integer): Boolean; stdcall;

  TObjectOperateMessage = function(BaseObject: TObject;
    wIdent: Word;
    wParam: Integer;
    nParam1: Integer;
    nParam2: Integer;
    nParam3: Integer;
    MsgObject: TObject;
    dwDeliveryTime: LongWord;
    pszMsg: PChar;
    var boReturn: Boolean): Boolean; stdcall;

  TDoSpell = function(BaseObject: TSmartObject;
    UserMagic: _LPTUSERMAGIC; nTargetX, nTargetY: Integer;
    var TargeTBaseObject: TBaseObject; var boSpellFail: Boolean): Boolean; stdcall;

  TEncodeBuffer = procedure(buf: PChar; bufsize: Integer; OutBuf: PChar); stdcall;
  TDecodeBuffer = procedure(Str, buf: PChar; bufsize: Integer); stdcall;

implementation

end.

