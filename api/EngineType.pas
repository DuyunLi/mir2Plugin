unit EngineType;

interface

const
  LibName = 'M2Server.exe';

  MAPNAMELEN = 30;                                          // ��ͼ������
  ACTORNAMELEN = 14;                                        // ��ɫ������
  ITEMNAMELEN = 30;                                         // ��Ʒ���Ƴ���
  ACCOUNTLEN = 10;                                          // �˺ų���
  IPADDRESSLEN = 15;                                        // IP��ַ����
  DEFBLOCKSIZE = 16;                                        // ��Ϣ��С
  BUFFERSIZE = 102400;                                      // ��������С

///////////////////////��ɫ8����λ����ֵ  2013-07-23/////////////////////
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
//////////////////////////��ɫװ������ֵ  2013-07-23/////////////////////
  U_DRESS = 0;                                                                                      // �·�
  U_WEAPON = 1;                                                                                     // ����
  U_RIGHTHAND = 2;                                                                                  // ������Ʒ
  U_NECKLACE = 3;                                                                                   // ����
  U_HELMET = 4;                                                                                     // ͷ��
  U_ARMRINGL = 5;                                                                                   // ������
  U_ARMRINGR = 6;                                                                                   // ������
  U_RINGL = 7;                                                                                      // ���ָ
  U_RINGR = 8;                                                                                      // �ҽ�ָ
  U_BUJUK = 9;                                                                                      // ��
  U_BELT = 10;                                                                                      // ����
  U_BOOTS = 11;                                                                                     // Ь
  U_CHARM = 12;                                                                                     // ��ʯ
  U_HAT = 13;                                                                                       // ����
  U_DRUM = 14;                                                                                      // ��
  U_HORSE = 15;                                                                                     // ��
  U_SHIELD = 16;                                                                                    // ����  2013-09-16
  U_FASHIONDRESS = 17;                                                                              // ʱװ�·�  2013-10-23
  U_FASHIONWEAPON = 18;                                                                             // ʱװ����  2013-10-23

  // ���κ� 1 - 6
  U_JEWELRYITEM1 = 20;
  U_JEWELRYITEM2 = 21;
  U_JEWELRYITEM3 = 22;
  U_JEWELRYITEM4 = 23;
  U_JEWELRYITEM5 = 24;
  U_JEWELRYITEM6 = 25;

  // ���Ӵ� 1 - 12
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
///////////////////////���ý�ɫ���ͳ���ֵ  2013-07-23////////////////////
  RC_PLAYOBJECT = 0;                                        // ���
  RC_HEROOBJECT = 1;                                        // Ӣ��
  RC_PLAYMOSTER = 150;                                      // ���ι��� JS-->60;
  RC_MOONOBJECT = 99;                                       // ����
  RC_GUARD = 11;                                            // ������
  RC_PEACENPC = 15;                                         // ��ƽNPC
  RC_ANIMAL = 50;                                           // ����NPC
  RC_MONSTER = 80;                                          // ����
  RC_NPC = 10;                                              // ��ͨNPC
  RC_ARCHERGUARD = 112;                                     // ������
  RC_TRUCKOBJECT = 128;                                     // Ѻ�ڳ�

//==============================================================================
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_QUERYCHR = 100;                                        // ��¼�ɹ�,�ͻ����Գ����ҽ�ɫ����һ˲ 3000;
  CM_NEWCHR = 101;                                          // ������ɫ 3001;
  CM_DELCHR = 102;                                          // ɾ����ɫ 3002;
  CM_SELCHR = 103;                                          // ѡ���ɫ 3003;
  CM_SELECTSERVER = 104;                                    // ������,ע�ⲻ��ѡ��,ʢ��һ��������(����8��??group.dat������ôд��)��ֹһ���ķ����� 3004;
  CM_QUERYDELCHR = 105;                                     // ��ѯɾ�����Ľ�ɫ��Ϣ 3005;
  CM_GETBACKDELCHR = 3006;
  CM_GETBACKPASSWORD = 2010;                                // �����һ� 3007;
  CM_PROTOCOL = 2000;                                       // 3008;
  CM_IDPASSWORD = 2001;                                     // 3009;
  CM_ADDNEWUSER = 2002;                                     // 3010;
  CM_CHANGEPASSWORD = 2003;                                 // 3011;
  CM_UPDATEUSER = 2004;                                     // 3012;
  CM_RANDOMCODE = 2006;                                     // 3013;
  CM_CHANGERANDOMCODE = 3014;
  CM_QUERYUSERNAME = 80;                                    // ������Ϸ,���������ؽ�ɫ�����ͻ��� 47;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_SPELL = 3017;                                                                                  // ʩħ��
  CM_HORSERUN = 3009;                                                                               // ����
  CM_TURN = 3010;                                                                                   // ת��(����ı�)
  CM_WALK = 3011;                                                                                   // ��
  CM_SITDOWN = 3012;                                                                                // ��(����)
  CM_RUN = 3013;                                                                                    // ��
  CM_HIT = 3014;                                                                                    // ��ͨ���������
  CM_HEAVYHIT = 3015;                                                                               // ��������Ķ���
  CM_BIGHIT = 3016;                                                                                 // ǿ��
  CM_POWERHIT = 3018;                                                                               // ��ɱ
  CM_LONGHIT = 3019;                                                                                // ��ɱ
  CM_WIDEHIT = 3024;                                                                                // ����
  CM_FIREHIT = 3025;                                                                                // �һ�
  CM_CRSHIT = 3036;                                                                                 // ���µ� ˫��ն ID=40
  CM_TWNHIT = 3037;                                                                                 // ��Ӱ����      ID=42

  // ���濪ʼ���¼���
  CM_43HIT = 3043;                                                                                  // ��������     ID=43
  CM_SWORDHIT = 3056;                                                                               // ���ս���     ID=56
  // CM_114HIT = 3114;  // ��������  ID = 3114

  // ����������Ҫ���ԡ���֪����û������ 2013-07-13
  CM_60HIT = 3060;                                                                                  // 18;                                //�ƻ�ն
  CM_61HIT = 3061;                                                                                  // 19;                                //����ն
  CM_62HIT = 3062;                                                                                  // 20;                                //����һ��

  CM_66HIT = 3066;                                                                                  // ����ն
  CM_66HIT1 = 3166;

  CM_100HIT = 3100;                                                                                 // ׷�Ĵ�
  CM_101HIT = 3101;                                                                                 // ����ɱ
  CM_102HIT = 3102;                                                                                 // ����ն
  CM_103HIT = 3103;                                                                                 // ��ɨǧ��

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
  CM_DROPITEM = 1000;                                                                               // �Ӱ������ӳ���Ʒ����ͼ,��ʱ��������ڰ�ȫ�����ܻ���ʾ��ȫ���������Ӷ��� 48;
  CM_PICKUP = 1001;                                                                                 // ���� 49;
  CM_TAKEONITEM = 1003;                                                                             // װ��װ�������ϵ�װ��λ�� 50;
  CM_TAKEOFFITEM = 1004;                                                                            // ������ĳ��װ��λ��ȡ��ĳ��װ�� 51;
  CM_EAT = 1006;                                                                                    // ��ҩ 52;
  CM_BUTCH = 1007;                                                                                  // �� 53;
  CM_MAGICKEYCHANGE = 1008;                                                                         // ħ����ݼ��ı� 54;

  // ���̵�NPC�������
  CM_CLICKNPC = 1010;                                                                               // �û������ĳ��NPC���н��� 55;
  CM_MERCHANTDLGSELECT = 1011;                                                                      // ��Ʒѡ��,���� 56;
  CM_MERCHANTQUERYSELLPRICE = 1012;                                                                 // ���ؼ۸�,��׼�۸�,����֪���̵��û��������Щ�������־û������� 57;
  CM_USERSELLITEM = 1013;                                                                           // �û������� 58;
  CM_USERBUYITEM = 1014;                                                                            // �û����붫�� 59;
  CM_USERGETDETAILITEM = 1015;                                                                      // ȡ����Ʒ�嵥,������"���۽�ָ"����,�����һ�����۽�ָ����ѡ�� 60;
  CM_DROPGOLD = 1016;                                                                               // �û����½�Ǯ������ 61;
  CM_LOGINNOTICEOK = 1018;                                                                          // ������Ϸ�Ҹ����ȷʵ,������Ϸ 62;
  CM_GROUPMODE = 1019;                                                                              // ���黹�ǿ��� 63;
  CM_CREATEGROUP = 1020;                                                                            // �½���� 64;
  CM_ADDGROUPMEMBER = 1021;                                                                         // �������� 65;
  CM_DELGROUPMEMBER = 1022;                                                                         // ����ɾ�� 66;
  CM_USERREPAIRITEM = 1023;                                                                         // �û������� 67;
  CM_MERCHANTQUERYREPAIRCOST = 1024;                                                                // �ͻ�����NPCȡ��������� 68;
  CM_DEALTRY = 1025;                                                                                // ��ʼ����,���׿�ʼ 69;
  CM_DEALADDITEM = 1026;                                                                            // �Ӷ�����������Ʒ���� 70;
  CM_DEALDELITEM = 1027;                                                                            // �ӽ�����Ʒ���ϳ��ض���???��������Ŷ 71;
  CM_DEALCANCEL = 1028;                                                                             // ȡ������ 72;
  CM_DEALCHGGOLD = 1029;                                                                            // �����������Ͻ�ǮΪ0,,���н�Ǯ����,����˫�������������Ϣ 73;
  CM_DEALEND = 1030;                                                                                // ���׳ɹ�,��ɽ��� 74;
  CM_USERSTORAGEITEM = 1031;                                                                        // �û��Ĵ涫�� 75;
  CM_USERTAKEBACKSTORAGEITEM = 1032;                                                                // �û��򱣹�Աȡ�ض��� 76;
  CM_WANTMINMAP = 1033;                                                                             // �û������"С��ͼ"��ť 77;
  CM_USERMAKEDRUGITEM = 1034;                                                                       // �û����춾ҩ(������Ʒ) 78;
  CM_OPENGUILDDLG = 1035;                                                                           // �û������"�л�"��ť 79;
  CM_GUILDHOME = 1036;                                                                              // ���"�л���ҳ" 80;
  CM_GUILDMEMBERLIST = 1037;                                                                        // ���"��Ա�б�" 81;
  CM_GUILDADDMEMBER = 1038;                                                                         // ���ӳ�Ա 82;
  CM_GUILDDELMEMBER = 1039;                                                                         // ���˳��л� 83;
  CM_GUILDUPDATENOTICE = 1040;                                                                      // �޸��лṫ�� 84;
  CM_GUILDUPDATERANKINFO = 1041;                                                                    // ����������Ϣ(ȡ����������) 85;
  CM_ADJUST_BONUS = 1043;                                                                           // �û��õ�����??˽���бȽ�����,С������ʱ��ó���Ǯ������,���Ǻ�ȷ��,//�󾭹����Եĸ��ֵ���֤ 86;
  CM_PASSWORD = 1105;                                                                               // 87;
  CM_SAY = 3030;                                                                                    // ��ɫ���� 88;
  CM_QUERYUSERSTATE = 82;                                                                           // 89;
  CM_QUERYBAGITEMS = 81;                                                                            // ��ѯ������Ʒ 90;
  CM_OPENDOOR = 1002;                                                                               // ����,�����ߵ���ͼ��ĳ�����ŵ�ʱ 91;
  CM_SOFTCLOSE = 1009;                                                                              // �˳�����(��Ϸ����,��������Ϸ�д���,Ҳ����ʱѡ��ʱ�˳�) 92;
  CM_GUILDALLY = 1044;                                                                              // 93;
  CM_GUILDBREAKALLY = 1045;                                                                         // 94;
  // �������
  CM_GETSHOPITEMS = 95;
  CM_BUYSHOPITEM = 9002;                                                                            // 96;
  // ���а�
  CM_GETRANKING = 97;
  CM_GETMYRANKING = 98;
  // ������
  CM_OPENBOX = 99;                                                                                  // Կ�׷���Կ�׿״�����
  CM_ROTATIONBOX = 100;                                                                             // ת������
  CM_SENDGETSELBOXITEM = 101;                                                                       // ��ȡ�����Լ�ѡ�����Ʒ
  CM_SENDSELLGAMEGOLDDALITEM = 102;                                                                 // Ԫ������װ��
  CM_SENDBUYGAMEGOLDDALITEM = 103;                                                                  // ����Ԫ������װ��
  CM_SENDCANCELGAMEGOLDDALITEM = 104;                                                               // ȡ��Ԫ������װ��
  CM_OVERLAPITEM = 105;                                                                             // �ص���Ʒ
  CM_HEROOVERLAPITEM = 106;                                                                         // Ӣ�۰����ص���Ʒ
  CM_PACKAGEITEM = 107;                                                                             // �ֿ��ص���Ʒ
  CM_HEROPACKAGEITEM = 108;                                                                         // �ֿ�Ӣ�۰����ص���Ʒ
  CM_QUERYUSERSHOPS = 109;                                                                          // �����������
  CM_GETUSERSHOPS = 110;                                                                            // �������
  CM_QUERYUSERSHOPITEMS = 111;                                                                      // ����ָ���û�������Ʒ
  CM_GETUSERSHOPITEMS = 112;                                                                        // ����ָ���û�������Ʒ
  CM_SEARCHSHOPITEMS = 113;                                                                         // �����û�������Ʒ
  CM_SEARCHGETSHOPITEMS = 114;                                                                      //
  CM_QUERYMYSHOPSELLINGITEMS = 115;                                                                 // �����ҵĵ���������Ʒ
  CM_QUERYMYSHOPSELLEDITEMS = 116;                                                                  // �����ҵĵ����Ѿ���Ʒ
  CM_QUERYMYSHOPSTORAGEITEMS = 117;                                                                 // �����ҵĵ��ֿ̲���Ʒ
  CM_GETMYSHOPITEMS = 118;                                                                          // �����ҵĵ�����Ʒ
  CM_SENDADDTOMYSHOP = 119;
  CM_SENDCHANGEMYSHOPITEM = 120;
  CM_SENDMOVEMYSHOPITEM = 121;
  CM_QUERYSELECTSHOPINFO = 122;
  CM_SENDSHOPSTALLSTATUS = 123;
  CM_SENDBUYUSERSHOPITEM = 124;
  CM_SENDDELETESELLEDITEM = 125;
  CM_SENDUSERSPEEDING = 126;                                                                        // �û�����
  CM_UPGRADEDLGITEM = 127;                                                                          // OK�Ի�����Ʒ
  CM_CANCELUPGRADEDLGITEM = 128;                                                                    // ȡ���Ի�����Ʒ
  CM_CHALLENGETRY = 129;                                                                            // ��ս
  CM_CHALLENGEADDITEM = 130;                                                                        // ������ս��Ʒ
  CM_CHALLENGEDELITEM = 131;                                                                        // ɾ����ս��Ʒ
  CM_CHALLENGECANCEL = 132;                                                                         // ȡ����ս
  CM_CHALLENGECHGGOLD = 133;                                                                        // �޸���ս���
  CM_CHALLENGECHGGAMEDIAMOND = 134;                                                                 // �޸���ս���ʯ
  CM_CHALLENGEEND = 135;                                                                            // ��ʼ��ս
  CM_SENDUPGRADEDIALOG = 136;                                                                       // ������ʯװ������
  CM_HELPBUTTONCLICK = 137;                                                                         // ���������ť
  CM_SENDPLEASEDRINK = 138;                                                                         // �������
  CM_SENDGIVENPCWINE = 139;                                                                         // ���Ͷ���
  CM_SENDSELECTFINGER = 140;                                                                        // ����ѡ��ļ���ʯͷ��
  CM_SENDDRINK = 141;                                                                               // �Ⱦ�
  CM_SENDGETBACKHERO = 142;                                                                         // �û�ȡ�ؼĴ��Ӣ��                                  //
  CM_ASSESSMENTHERO = 143;                                                                          // ����Ӣ��
  CM_SENDHEROAUTOPRACTICE = 144;                                                                    // ��ȷ��Ӣ���Զ�����
  CM_SENDACUPOINTCLICK = 145;                                                                       // ���Ѩλ series=0 ���� series=1 Ӣ��
  CM_SENDTRAININGMERIDIANCLICK = 146;                                                               // �������� series=0 ���� series=1 Ӣ��
  CM_CONTINUOUSMAGIC = 147;                                                                         // ��ʼ��������
  CM_CHANGECONTINUOUSMAGICORDER = 148;                                                              // �ı�����ħ��˳��  ����˳��  series=0 ���� series=1 Ӣ��
  CM_SENDMODULEMD5 = 149;                                                                           // ��¼���ϴ���ģ��MD5
  CM_SENDSHOPNAME = 150;                                                                            // ��̯��������
  CM_HEROLOGON = 151;                                                                               // �ٻ�Ӣ��
  CM_HEROLOGOUT = 152;                                                                              // Ӣ���˳�
  CM_MASTERBAGTOHEROBAG = 153;                                                                      // ���˰�����Ʒ�ŵ�Ӣ�۰���
  CM_HEROBAGTOMASTERBAG = 154;                                                                      // Ӣ�۰�����Ʒ�ŵ����˰���
  CM_HEROTAKEONITEM = 155;                                                                          // Ӣ�۴�װ��
  CM_HEROTAKEOFFITEM = 156;                                                                         // Ӣ����װ��
  CM_HEROEAT = 157;                                                                                 // Ӣ�۳�ҩ
  CM_HEROTARGET = 158;                                                                              // ����//Ident: 1105 Recog: 260806992 Param: 0 Tag: 32 Series: 0   Recog= ��������   Param=X  Tag=Y
  CM_HERODROPITEM = 159;                                                                            // Ӣ������Ʒ
  CM_HEROGROUPATTACK = 160;                                                                         // �ϻ�
  CM_HEROMAGICKEYCHANGE = 161;
  CM_HEROPROTECT = 162;
  CM_HEROM2STARTSHOPSTALL = 163;                                                                    // ��ʼ��̯
  CM_HEROM2STOPSHOPSTALL = 164;                                                                     // ֹͣ��̯
  CM_HEROM2BUYUSERSHOPITEM = 165;                                                                   // �����̯��Ʒ
  CM_HEROM2ADDUSERSHOPITEM = 166;                                                                   // ���Ӱ�̯��Ʒ
  CM_HEROM2DELUSERSHOPITEM = 167;                                                                   // ɾ����̯��Ʒ
  CM_HEROM2SENDCLOSESHOP = 168;                                                                     // �رչ����̯��Ʒ����

  // ˫��ȡ�ر���
  CM_GETBACKBOX = 169;

  CM_AUTOEAT = 170;
  CM_BUTTONCLICK = 171;
  CM_CLIENTBUFFCLICK = 172;
  CM_AUTOFINDPATHINFO = 173;                                                                        // �Զ�Ѱ·M2����

  // ����������������������������������� �¼�CM��Ϣ  2013-08-20 ����������

  CM_PLUGINCONFIG = 5000;                                                                           // ������������ڹ�������Ϣ  2013-08-17
  CM_MACHINEID = 5001;                                                                              // ���¼���������ͻ�����  2013-09-05
  CM_TAKEHORSE = 5002;                                                                              // (����) �ٻ�/�ջ�����  2013-10-12
  CM_INVITEHORSE = 5003;                                                                            // (����) ������˹���  2013-10-13
  CM_RESPONSEINVITEHORSE = 5004;                                                                    // (����) ��Ӧ�Ƿ�ͬ����˵�����  2013-10-14

  CM_OPENJEWELRYBOX = 5005;                                                                         // �������κ�  2013-10-22
  CM_HEROOPENJEWELRYBOX = 5006;

  CM_TAKEONJEWELRY = 5007;                                                                          // ������Ʒ�����κ���  2013-10-20
  CM_TAKEOFFJEWELRY = 5008;                                                                         // ���κе�����  2013-10-21
  CM_SWAPJEWELRYITEM = 5009;                                                                        // �������κ���������Ʒ  2013-10-20

  CM_HEROTAKEONJEWELRY = 5010;                                                                      // ������Ʒ�����κ���  2013-10-20
  CM_HEROTAKEOFFJEWELRY = 5011;                                                                     // ���κе�����  2013-10-21
  CM_HEROSWAPJEWELRYITEM = 5012;                                                                    // �������κ���������Ʒ  2013-10-20

  CM_SETSHOWFASHION = 5013;                                                                         // �������������ʾʱװ����  2013-10-23

  CM_MOVETOITEMBOX = 5014;                                                                          // �������е���Ʒ�ŵ��Զ���OK����  2013-10-31
  CM_MOVEITEMBOXTOBAG = 5015;                                                                       // ���Զ���OK���зŵ�  2013-10-31

  CM_CLEARITEMBOX = 5016;                                                                           // ���OK���е���Ʒ  2013-10-31

  CM_UPGRADEMAGIC = 5017;                                                                           // �������＼��  2013-12-07
  CM_UPGRADEHEROMAGIC = 5018;                                                                       // ����Ӣ�ۼ���  2013-12-07

  CM_GODBLESSITEMCLICK = 5109;
  CM_TAKEONGODBLESS = 5110;
  CM_TAKEOFFGODBLESS = 5111;

  CM_GODBLESSUPGRADECLICK = 5112;
  CM_DACTIONLOGCLICK = 5113;

  CM_UPDATACTIVEFENGHAO = 5114;

  CM_AUTOGJ = 5115;                                                                                 // �һ�  2014-11-26
  CM_GJ_CALLMON_MAGIC = 5116;                                                                       // �һ� ʹ���ٻ����� 2014-11-30

  CM_BAGUSEITEM = 5117;                                                                             // �ڰ�����ʹ����Ʒ������Ƕ��ʯ)  2015-01-04

  CM_REMOVESTONE = 5118;                                                                            // ж�±�ʯ  2015-01-05

  CM_REQUESTSTDITEM = 5119;
  CM_CLIENTDATAFILE = 5120;                                                                         // ���������Դ  2015-01-07

  CM_GETSAYITEM = 5121;

  CM_CLICKBOX = 5122;

  CM_TAKEBACKSTORAGEVIEWITEM = 5123;                                                                // ȡ�¿��Ӳֿ���Ʒ  2015-01-26
  CM_USERSTORAGEVIEWITEM = 5124;                                                                    // ������Ӳֿ���Ʒ  2015-01-26

  CM_GETBACKSTORAGEVIEWITEM = 5125;                                                                 // ������Ӳֿ⻻ҳ  2015-01-26

  CM_QUERYHEROBAGITEMS = 5126;                                                                      // ˢ��Ӣ�۰���  2015-03-06

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


  // �����������������������������������������������������


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
  RM_FIREHIT = 10014;                                                                               // �һ�312;
  RM_CRSHIT = 11014;                                                                                // 313; //���µ� ˫��ն   ID=40

  RM_TWNHIT = 314;                                                                                  // ��Ӱ����     ID=42
  RM_43HIT = 315;                                                                                   // ��������    ID=43
  RM_SWORDHIT = 316;                                                                                // ���ս���
  RM_60HIT = 317;                                                                                   // �ƻ�ն
  RM_61HIT = 318;                                                                                   // ����ն
  RM_62HIT = 319;                                                                                   // ����һ��
  RM_66HIT = 320;                                                                                   // ����ն
  RM_66HIT1 = 350;                                                                                  // ����ն���  2013-08-24

  RM_100HIT = 321;                                                                                  // ׷�Ĵ�
  RM_101HIT = 322;                                                                                  // ����ɱ
  RM_102HIT = 323;                                                                                  // ����ն
  RM_103HIT = 324;                                                                                  // ��ɨǧ��

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
  RM_STRUCK = 10020;                                                                                // �������� 346;
  RM_DEATH = 10021;                                                                                 // 347;
  RM_DISAPPEAR = 10022;                                                                             // 348;
  RM_STRUCK_MAG = 10027;                                                                            // ��ħ����� 349;
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
  RM_HEAR = 10030;                                                                                  // ���� 365;
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
  // ��ʢ�󶥲�������Ϣ  2013-08-01
  RM_SUPERMOVEMESSAGE = 377;
  // ������Ϣ  2013-08-03
  RM_NEWLINEMESSAGE = 378;

  RM_ITEMSHOW = 10110;                                                                              // 376;
  RM_ITEMHIDE = 10111;                                                                              // 377;
  RM_DOOROPEN = 10112;                                                                              // 378;
  RM_DOORCLOSE = 10113;                                                                             // 379;
  RM_SENDUSEITEMS = 10114;                                                                          // ����ʹ�õ���Ʒ 380;
  RM_WEIGHTCHANGED = 10115;                                                                         // 381;
  RM_FEATURECHANGED = 10116;                                                                        // 382;
  RM_CLEAROBJECTS = 10117;                                                                          // 383;
  RM_CHANGEMAP = 10118;                                                                             // 384;
  RM_BUTCH = 10119;                                                                                 // �� 385;
  RM_MAGICFIRE = 10120;                                                                             // 386;
  RM_SENDMYMAGIC = 10122;                                                                           // ����ʹ�õ�ħ�� 387;
  RM_MAGIC_LVEXP = 10123;                                                                           // 388;
  RM_SKELETON = 10024;                                                                              // 389;
  RM_DURACHANGE = 10125;                                                                            // �־øı� 390;
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
  RM_HIDEEVENT = 10333;                                                                             // �����̻� 402;
  RM_SHOWEVENT = 10334;                                                                             // ��ʾ�̻� 403;
  RM_ZEN_BEE = 10337;                                                                               // 404;
  RM_OPENHEALTH = 10410;                                                                            // 405;
  RM_CLOSEHEALTH = 10411;                                                                           // 406;
  RM_CHANGEFACE = 10415;                                                                            // 407;
  RM_MONMOVE = 21004;                                                                               // 408;
  RM_10205 = 10205;                                                                                 // 409;
  RM_ALIVE = 10153;                                                                                 // ���� 410;
  RM_CHANGEGUILDNAME = 10301;                                                                       // 411;
  RM_10414 = 10414;                                                                                 // 412;
  RM_MENU_OK = 10309;                                                                               // �˵� 413;
  RM_MERCHANTDLGCLOSE = 10127;                                                                      // 414;
  RM_SENDDELITEMLIST = 10148;                                                                       // ����ɾ����Ŀ������ 415;
  RM_SENDUSERSREPAIR = 10141;                                                                       // �����û����� 416;
  RM_SENDGOODSLIST = 10128;                                                                         // ������Ʒ���� 417;
  RM_SENDUSERSELL = 10129;                                                                          // �����û����� 418;
  RM_SENDUSERREPAIR = 11139;                                                                        // �����û����� 419;
  RM_USERMAKEDRUGITEMLIST = 10149;                                                                  // �û���ҩƷ��Ŀ������ 420;
  RM_USERSTORAGEITEM = 10146;                                                                       // �û��ֿ���Ŀ 421;
  RM_USERGETBACKITEM = 10147;                                                                       // �û���ûصĲֿ���Ŀ 422;
  RM_SPACEMOVE_FIRE2 = 11330;                                                                       // �ռ��ƶ� 423;
  RM_SPACEMOVE_FIRE = 11331;                                                                        // �ռ��ƶ� 424;
  RM_BUYITEM_SUCCESS = 10133;                                                                       // ������Ŀ�ɹ� 425;
  RM_BUYITEM_FAIL = 10134;                                                                          // ������Ŀʧ�� 426;
  RM_SENDDETAILGOODSLIST = 10135;                                                                   // ������ϸ����Ʒ���� 427;
  RM_SENDBUYPRICE = 10130;                                                                          // ���͹���۸� 428;
  RM_USERSELLITEM_OK = 10131;                                                                       // �û����۳ɹ� 429;
  RM_USERSELLITEM_FAIL = 10132;                                                                     // �û�����ʧ�� 430;
  RM_MAKEDRUG_SUCCESS = 10150;                                                                      // ��ҩ�ɹ� 431;
  RM_MAKEDRUG_FAIL = 10151;                                                                         // ��ҩʧ�� 432;
  RM_SENDREPAIRCOST = 10142;                                                                        // ��������ɱ� 433;
  RM_USERREPAIRITEM_OK = 10143;                                                                     // �û�������Ŀ�ɹ� 434;
  RM_USERREPAIRITEM_FAIL = 10144;                                                                   // �û�������Ŀʧ�� 435;
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
  RM_MAGICMOVE = 10602;                                                                             // ������һ��RM���������ʮ��һɱ�� --  2013-06-25

  RM_CLICKNPCLABEL = 452;
  RM_QUERYBAGITEMS = 453;
  RM_TAKEONITEM = 454;                                                                              // �Զ���װ��
  RM_TAKEOFFITEM = 455;                                                                             // �Զ���װ��
  RM_DELETEDELAYMESSAGE = 456;


  RM_HEROLOGOUT = 457;

  // ////////////////////////////////////////////////////
  RM_HEROLOGON = 458;
  RM_GETREGINFO = 459;
  RM_SENDGAMEGOLDDALITEM = 460;                                                                     // Ԫ������װ��
  RM_QUERYDEALFAIL = 461;
  RM_PLAYSOUND = 462;
  RM_PLAYEFFECT = 463;                                                                              // ��������Ч��
  RM_SCREENEFFECT = 464;
  RM_CHANGESPEED = 465;
  RM_SERVERCONFIG = 466;
  RM_OPENUPGRADEDLG = 467;
  RM_SENDUSERICON = 468;
  RM_SENDWEBBROWSER = 469;
  RM_SENDUSEREFFECT = 470;
  RM_SENDSUPERSHILEDEFFECT = 471;
  RM_SENDBLASTHIT = 472;                                                                            // ����
  RM_WEATHER = 474;
  RM_HEARCOLOR = 475;
  // /////////////////////////////////////////////////////

  RM_PLAYDRINKSAY = 20075;                                                                          // 476; //�ƹ�NPC˵����Ϣ
  RM_OPENPLAYDRINK = 20078;                                                                         // 477; �򿪴���
  RM_CLOSEDRINK = 20086;                                                                            // 478; //�رվƹ�NPC�Ի���
  RM_DRINKUPDATEVALUE = 20084;                                                                      // 479; //���غȾ�
  RM_PLAYDRINKTODRINK = 20081;                                                                      // 480; //���͵��ͻ���˭Ӯ˭��
  RM_SENDUSERPLAYDRINK = 20070;                                                                     // 481; //������ƶԻ���

  // //////////////////////////////////////////////////////
  RM_SENDSTORAGEHEROINFO = 482;                                                                     // Ӣ�ۼĴ���Ϣ �ٻ��Ĵ�Ӣ��
  RM_SENDSTORAGEHEROINFOEX = 483;                                                                   // Ӣ�ۼĴ���Ϣ ����Ӣ��
  RM_SENDSHOWHEROAUTOPRACTICEDLG = 484;                                                             // ��ʾӢ���Զ������Ի���
  RM_REFABILNG = 485;                                                                               // ˢ������
  RM_ABILITYNG = 486;                                                                               // �ڹ�����
  RM_ABILITYALCOHOL = 487;                                                                          // ������
  RM_ABILITYMERIDIANS = 488;                                                                        // ����
  RM_WINEXPNG = 489;
  RM_LEVELUPNG = 490;
  RM_OPENCOBWEBWINDING = 491;                                                                       // ֩������ס  ����
  RM_CLOSECOBWEBWINDING = 492;                                                                      // ֩������ס ��
  RM_LIGHTINGEX = 493;
  RM_CONTINUOUSMAGICORDER = 494;                                                                    // ����˳��
  RM_TRAININGNG = 495;                                                                              // �Ƿ������ڹ��ķ� ������Ӧ��ʾ�ڹ��ķ�����  series=0 ���� series=1 Ӣ��
  RM_STOPCONTINUOUSMAGIC = 496;                                                                     // ֹͣ����
  RM_SENDSHOPNAME = 497;                                                                            // ��̯��������
  RM_HEROM2SENDDRESSEFFECT = 498;                                                                   //
  RM_NATIONMESSAGE = 499;

  RM_ADDBUTTON = 500;
  RM_DELBUTTON = 501;

  RM_SHOWPHANTOM = 502;                                                                             // ��ʾ�Ŵ����Ӱ
  RM_CLOSEPHANTOM = 503;                                                                            // �رշŴ����Ӱ

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

  // ����������������������������������� �¼�RM��Ϣ  2013-08-20 ����������

  // ����  2013-08-20
  RM_OPENBOOKS = 900;

  RM_SCENESHAKE = 901;

  RM_INVITEHORSE = 902;

  RM_SYNCSCREEN = 903;

  RM_TAKEHORSE = 904;                                                                               // (����) �ٻ�/�ջ�����  2013-10-12

  RM_MYHEROLOGON = 905;                                                                             // �Լ���Ӣ�۵�¼

  RM_UPDATECOLLECT = 906;                                                                           // ���²ɼ�  2013-10-27

  RM_OPENTOXICSMOKE = 907;                                                                          // �ж���  2013-11-10
  RM_CLOSETOXICSMOKE = 908;                                                                         // ���̹�  2013-11-10

  RM_OPENCONTINUOUSMAGICLOCK = 909;                                                                 // ����������  2013-11-10
  RM_CLOSECONTINUOUSMAGICLOCK = 910;                                                                // ����������  2013-11-10
  RM_SENDITEMDESCLIST = 911;                                                                        // ��Ʒ�����б�  2013-11-12
  RM_SENDTZITEMDESCLIST = 912;                                                                      // ��װ��ע�б�  2013-11-12
  RM_SENDFILTERITEMLIST = 913;                                                                      // �ڹ���Ʒ�����б�

  RM_PLAYMAGICBALLEFFECT = 914;                                                                     // ���Ž����ħ����Ч��  2013-11-12
  RM_EFFECTSTEP = 915;                                                                              // ���������  2013-12-03

  RM_MOVEMESSAGE_NEW = 916;                                                                         // ������Ϣ  2014-04-17

  RM_INCHEALTH = 917;                                                                               // ��Ѫ���� ����ʱ  2014-05-20

  //RM_SENDCUSTOMMONSTERCONFIG = 918;                                                                 // �����Զ���������õ��ͻ���  2014-07-20

  RM_ATTACK01 = 919;                                                                                // �Զ��幥��1
  RM_ATTACK02 = 920;                                                                                // �Զ��幥��2
  RM_ATTACK03 = 921;                                                                                // �Զ��幥��3
  RM_ATTACK04 = 922;                                                                                // �Զ��幥��4
  RM_ATTACK05 = 923;                                                                                // �Զ��幥��5
  RM_ATTACK06 = 924;                                                                                // �Զ��幥��6

  RM_OPENGAMESHOP = 925;                                                                            // ������  2014-09-03

  RM_ARMREMOVESTONE = 926;                                                                          // ��ж�±�ʯ  2015-01-04

  RM_SETNPCIMAGE  = 927;                                                                            // NPC�����  2015-01-16

  RM_USERBIGGETBACKITEM = 928;                                                                      // ���޲ֿ�  2015-01-25

  RM_MAGICFIRE_EX = 929;

  RM_CUSTOM_HIT =  930;
  RM_CUSTOM_HIT_TARGET_EFF = 931;

  RM_CUSTOM_MAGICMOVE = 932;                                                                        // ������һ��RM���������ʮ��һɱ�� --  2013-06-25

  RM_CUSTOM_MAGIC_SELFKEEP_PLAY = 933;                        

  RM_THUNDERPALSY_EFF = 934;
  // �����������������������������������������������������


// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
  SM_PASSWD_FAIL = 503;                                                                             // ��֤ʧ��,"��������֤ʧ��,��Ҫ���µ�¼"?? 1000;
  SM_NEWID_SUCCESS = 504;                                                                           // �������˺ųɹ� 1001;
  SM_NEWID_FAIL = 505;                                                                              // �������˺�ʧ�� 1002;
  SM_CHGPASSWD_SUCCESS = 506;                                                                       // �޸�����ɹ� 1003;
  SM_CHGPASSWD_FAIL = 507;                                                                          // �޸�����ʧ�� 1004;
  SM_GETBACKPASSWD_SUCCESS = 508;                                                                   // �����һسɹ� 1005;
  SM_GETBACKPASSWD_FAIL = 509;                                                                      // �����һ�ʧ�� 1006;
  SM_QUERYCHR = 520;                                                                                // ���ؽ�ɫ��Ϣ���ͻ��� 1007;
  SM_NEWCHR_SUCCESS = 521;                                                                          // �½���ɫ�ɹ� 1008;
  SM_NEWCHR_FAIL = 522;                                                                             // �½���ɫʧ�� 1009;
  SM_DELCHR_SUCCESS = 523;                                                                          // ɾ����ɫ�ɹ� 1010;
  SM_DELCHR_FAIL = 524;                                                                             // ɾ����ɫʧ�� 1011;
  SM_STARTPLAY = 525;                                                                               // ��ʼ������Ϸ����(���˽�����Ϸ�Ҹ�������Ϸ����) 1012;
  SM_STARTFAIL = 526;                                                                               // ��ʼʧ��,�洫���������,��ʱѡ���ɫ,�㽡����Ϸ�Ҹ����� 1013; //SM_USERFULL
  SM_QUERYCHR_FAIL = 527;                                                                           // ���ؽ�ɫ��Ϣ���ͻ���ʧ��1014;
  SM_OUTOFCONNECTION = 528;                                                                         // �������������,ǿ���û����� 1027;
  SM_PASSOK_SELECTSERVER = 529;                                                                     // ������֤�����������ȷ,��ʼѡ�� 1015;
  SM_SELECTSERVER_OK = 530;                                                                         // ѡ���ɹ� 1016;
  SM_NEEDUPDATE_ACCOUNT = 531;                                                                      // 1017;
  SM_UPDATEID_SUCCESS = 532;                                                                        // ���³ɹ� 1018;
  SM_UPDATEID_FAIL = 533;                                                                           // ����ʧ�� 1019;
  SM_QUERYDELCHR = 534;                                                                             // ����ɾ�����Ľ�ɫ 1020;
  SM_GETBAKCHAR_SUCCESS = 1021;                                                                     // �һ�����ɹ�
  SM_GETBAKCHAR_FAIL = 1022;                                                                        // �һ�����ʧ��
  SM_RANDOMCODE = 2007;                                                                             // 1023; �����֤��
  SM_NEEDPASSWORD = 8004;                                                                           // 1024; ��Ҫ����
  SM_CERTIFICATION_SUCCESS = 500;                                                                   // 1025; ��֤�ɹ�
  SM_CERTIFICATION_FAIL = 501;                                                                      // 1026; ��֤ʧ��

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
  SM_TURN = 10;                                                                                     // 1102; //ת��
  SM_WALK = 11;                                                                                     // 1103; //��
  SM_SITDOWN = 12;                                                                                  // 1104;
  SM_RUN = 13;                                                                                      // 1105; //��
  SM_HIT = 14;                                                                                      // 1107; //��
  SM_HEAVYHIT = 15;                                                                                 // 1108; //
  SM_BIGHIT = 16;                                                                                   // 1109; //
  SM_SPELL = 17;                                                                                    // 1101; //ʹ��ħ��
  SM_POWERHIT = 18;                                                                                 // 1110;
  SM_LONGHIT = 19;                                                                                  // 1111; //��ɱ
  SM_WIDEHIT = 24;                                                                                  // 1112; //����
  SM_FIREHIT = 8;                                                                                   // 1113; //�һ�
  SM_CRSHIT = 25;                                                                                   // 1114; //���µ� ˫��ն   ID=40
  SM_TWNHIT = 26;                                                                                   // 1115; //��Ӱ����     ID=42

  //////սʿ//////
  SM_43HIT = 43;                                                                                    // ��������    ID=43
  SM_SWORDHIT = 56;                                                                                 // ���ս���  ID=56
  ///////////////

  //////�ϻ�//////
  SM_60HIT = 1118;                                                                                  // �ƻ�ն
  SM_61HIT = 1119;                                                                                  // ����ն
  SM_62HIT = 1120;                                                                                  // ����һ��
  ////////////////

  SM_66HIT = 66;                                                                                    // ����ն
  SM_66HIT1 = 166;                                                                                  // ����ն���

  SM_100HIT = 9100;                                                                                 //1122;                                  // ׷�Ĵ�
  SM_101HIT = 9101;                                                                                 // ����ɱ
  SM_102HIT = 9102;                                                                                 // ����ն
  SM_103HIT = 9103;                                                                                 // ��ɨǧ��

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
  SM_DIGUP = 20;                                                                                    // ����һ"��"һ"��",�������ڶ�����"��" 1150;
  SM_DIGDOWN = 21;                                                                                  // �ڶ�����"��" 1151;
  SM_FLYAXE = 22;                                                                                   // �ɸ�,����ͳ��Ĺ�����ʽ? 1152;
  SM_LIGHTING = 23;                                                                                 // �������� 1153;
  SM_ALIVE = 27;                                                                                    // ����??�����ָ 1154; //
  SM_MOVEFAIL = 28;                                                                                 // �ƶ�ʧ��,�߶����ܶ� 1155; //
  SM_HIDE = 29;                                                                                     // ����? 1156; //
  SM_DISAPPEAR = 30;                                                                                // ������Ʒ��ʧ 1157;
  SM_STRUCK = 31;                                                                                   // �ܹ��� 1158; //����
  SM_DEATH = 32;                                                                                    // �������� 1159;
  SM_SKELETON = 33;                                                                                 // ʬ�� 1160;
  SM_NOWDEATH = 34;                                                                                 // ��ɱ? 1161;
  SM_SPELL2 = 117;                                                                                  // 1162;
  SM_HEAR = 40;                                                                                     // ���˻���Ļ� 1163;
  SM_FEATURECHANGED = 41;                                                                           // 1164;
  SM_USERNAME = 42;                                                                                 // 1165;
  SM_WINEXP = 44;                                                                                   // ��þ��� 1166;
  SM_LEVELUP = 45;                                                                                  // ����,���Ͻǳ���ī�̵��������� 1167;
  SM_DAYCHANGING = 46;                                                                              // ����������½ǵ�̫���������� 1168;
  SM_LOGON = 50;                                                                                    // logon 1169;
  SM_NEWMAP = 51;                                                                                   // �µ�ͼ?? 1170;
  SM_ABILITY = 52;                                                                                  // �����ԶԻ���,F11 1171;
  SM_HEALTHSPELLCHANGED = 53;                                                                       // ������ʹ����������� 1172;
  SM_MAPDESCRIPTION = 54;                                                                           // ��ͼ����,�л�ս��ͼ?��������?��ȫ����? 1173;
  SM_SYSMESSAGE = 100;                                                                              // ϵͳ��Ϣ,ʢ��һ�����,˽������ 1174;
  SM_GROUPMESSAGE = 101;                                                                            // ��������!! 1175;
  SM_CRY = 102;                                                                                     // ���� 1176;
  SM_WHISPER = 103;                                                                                 // ˽�� 1177;
  SM_GUILDMESSAGE = 104;                                                                            // �л�����!~ 1178;
  SM_MOVEMESSAGE = 99;                                                                              // 1179;
  SM_SCREENMESSAGE = 98;                                                                            // 1179;
  SM_SUPERMOVEMESSAGE = 97;                                                                         // ��ʢ�󶥲�������Ϣ  2013-08-01
  SM_NEWLINEMESSAGE = 96;                                                                           // ������Ϣ  2013-08-03

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
  SM_OPENDOOR_OK = 612;                                                                             // ͨ�����ŵ�ɹ� //1195;
  SM_OPENDOOR_LOCK = 613;                                                                           // ���ֹ��ſ��Ƿ�����,��ǰʢ������ͨ��ȥ���µ���Ҫ5���ӿ�һ�� 1196;
  SM_CLOSEDOOR = 614;                                                                               // �û�����,�����йر� 1197;
  SM_TAKEON_OK = 615;                                                                               // 1198;
  SM_TAKEON_FAIL = 616;                                                                             // 1199;
  SM_TAKEOFF_OK = 619;                                                                              // 1200;
  SM_TAKEOFF_FAIL = 620;                                                                            // 1201;
  SM_SENDUSEITEMS = 621;                                                                            // 1202;
  SM_WEIGHTCHANGED = 622;                                                                           // 1203;
  SM_CLEAROBJECTS = 633;                                                                            // 1204;
  SM_CHANGEMAP = 634;                                                                               // ��ͼ�ı�,�����µ�ͼ 1205;
  SM_EAT_OK = 635;                                                                                  // 1206;
  SM_EAT_FAIL = 636;                                                                                // 1207;
  SM_BUTCH = 637;                                                                                   // Ұ��? 1208;
  SM_MAGICFIRE = 638;                                                                               // ������,��ǽ?? 1209;
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
  SM_CHANGELIGHT = 654;                                                                             // ���ظı� 1224;
  SM_LAMPCHANGEDURA = 655;                                                                          // ����־øı� 1225;
  SM_CHANGENAMECOLOR = 656;                                                                         // ������ɫ�ı�,����,����,����,���� 1226;
  SM_CHARSTATUSCHANGED = 657;                                                                       // 1227;
  SM_SENDNOTICE = 658;                                                                              // ���ͽ�����Ϸ�Ҹ�(����) 1228;
  SM_GROUPMODECHANGED = 659;                                                                        // ���ģʽ�ı� 1229;
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
  SM_STORAGE_FULL = 702;                                                                            // 1257;   // �ֿ�����
  SM_STORAGE_FAIL = 703;                                                                            // 1258;
  SM_SAVEITEMLIST = 704;                                                                            // 1259;
  SM_TAKEBACKSTORAGEITEM_OK = 705;                                                                  // 1260;
  SM_TAKEBACKSTORAGEITEM_FAIL = 706;                                                                // 1261;
  SM_TAKEBACKSTORAGEITEM_FULLBAG = 707;                                                             // 1262;
  SM_AREASTATE = 708;                                                                               // ��Χ״̬ 1263;
  SM_MYSTATUS = 766;                                                                                // �ҵ�״̬,���һ������״̬,���Ƿ񱻶�,���˾�ǿ�ƻس� 1264;
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
  SM_SUBABILITY = 752;                                                                              // ���������ԶԻ��� 1273;
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
  SM_SPACEMOVE_HIDE = 800;                                                                          // ��ʿ��һ������ 1292;
  SM_SPACEMOVE_SHOW = 801;                                                                          // ��ʿ��һ���������Ϊ���� 1293;
  SM_RECONNECT = 802;                                                                               // ����������� 1294;
  SM_GHOST = 803;                                                                                   // ʬ�����,��ħ��������Ч��? 1295;
  SM_SHOWEVENT = 804;                                                                               // ��ʾ�¼� 1296;
  SM_HIDEEVENT = 805;                                                                               // �����¼� 1297;
  SM_SPACEMOVE_HIDE2 = 806;                                                                         // 1298;
  SM_SPACEMOVE_SHOW2 = 807;                                                                         // 1299;
  SM_TIMECHECK_MSG = 810;                                                                           // ʱ�Ӽ��,����ͻ������� 1300;
  SM_ADJUST_BONUS = 811;                                                                            // 1301; //?
  SM_OPENHEALTH = 1100;                                                                             // 1302;
  SM_CLOSEHEALTH = 1101;                                                                            // 1303;
  SM_BREAKWEAPON = 1102;                                                                            // �������� 1304;
  SM_INSTANCEHEALGUAGE = 1103;                                                                      // ʵʱ���� 1305;
  SM_CHANGEFACE = 1104;                                                                             // ����,���͸ı�? 1306;
  SM_VERSION_FAIL = 1106;                                                                           // �ͻ��˰汾��֤ʧ�� 1307;
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
  SM_GAMEGOLDNAME = 55;                                                                             // ��ͻ��˷�����Ϸ������,���� 1319;
  SM_GAMEPOINTNAME = 1320;                                                                          // ��ͻ��˷�����Ϸ������2 ,���ʯ,�������
  SM_GAMEGLORY = 1321;                                                                              // ��Ϸ����
  SM_SERVERCONFIG = 5007;                                                                           // 20002; //1322;
  SM_GETREGINFO = 8004;                                                                             // 20003; //1323;
  SM_MISSIONNPC = 1324;                                                                             // ��������NPC����
  SM_ATTATCKMODE = 1325;                                                                            // ���͹���ģʽ
  SM_BUYSHOPITEM_SUCCESS = 9003;                                                                    // 1326;
  SM_BUYSHOPITEM_FAIL = 9004;                                                                       // 1327;
  SM_SENGSHOPITEMS = 9001;                                                                          // SERIES 7 ÿҳ������    wParam ��ҳ�� 1328;

  SM_AUTOGOTOXY = 20101;                                                                            // 1338; //�Զ�Ѱ·

  SM_REPAIRFIRDRAGON_OK = 5059;                                                                     // �޲�����֮�� �ɹ� 1367;
  SM_REPAIRFIRDRAGON_FAIL = 5060;                                                                   // �޲�����֮�� ʧ�� 1368;
  SM_MAGICMOVE = 5354;                                                                              // ������һ��SM���������ʮ��һɱ�� --  2013-06-25


  // ////////////////////û���ҵ��ϰ汾����ֵ/////////////////////////
  RM_SENGSHOPITEMS = 1329;
  SM_SENGRANKING = 1330;
  SM_SENGMYRANKING_FAIL = 1331;
  SM_SHOWBOX = 1332;                                                                                // ��ʾ����
  SM_OPENBOX_SUCCESS = 1333;                                                                        // Կ����ȷ���俪��
  SM_OPENBOX_FAIL = 1334;
  SM_SENDGETBOXITEMINDEX = 1335;                                                                    // ��ȡת����ѡ�����Ʒ���
  SM_TAKEONITEM = 1336;                                                                             // �Զ���װ��
  SM_TAKEOFFITEM = 1337;                                                                            // �Զ���װ��

  SM_CLICKNPCLABEL = 1339;                                                                          //
  SM_SERVERNAME = 1340;
  SM_HEROTAKEONITEM = 1341;                                                                         // Ӣ���Զ���װ��
  SM_HEROTAKEOFFITEM = 1342;                                                                        // Ӣ���Զ���װ��
  SM_SENDGAMEGOLDDALITEM = 1343;                                                                    // Ԫ������װ��
  SM_SELLGAMEGOLDDALITEM_OK = 1344;
  SM_SELLGAMEGOLDDALITEM_FAIL = 1345;
  SM_BUYGAMEGOLDDALITEM_OK = 1346;
  SM_BUYGAMEGOLDDALITEM_FAIL = 1347;
  SM_CANCELGAMEGOLDDEALITEM_OK = 1348;                                                              // ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDDEALITEM_FAIL = 1349;                                                            // ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDSELLITEM_OK = 1350;                                                              // ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDSELLITEM_FAIL = 1351;                                                            // ȡ��Ԫ������װ��
  SM_UNBINDLIST = 1352;
  SM_EFFECTIMAGELIST = 1353;                                                                        // WIL�б�
  SM_PLAYEFFECT = 1354;                                                                             // ��������Ч��
  SM_SCREENEFFECT = 1355;
  SM_OVERLAPITEM_OK = 1356;                                                                         // �ص���Ʒ �ɹ�
  SM_OVERLAPITEM_FAIL = 1357;                                                                       // �ص���Ʒ ʧ��
  SM_HEROOVERLAPITEM_OK = 1358;                                                                     // Ӣ���ص���Ʒ �ɹ�
  SM_HEROOVERLAPITEM_FAIL = 1359;                                                                   // Ӣ���ص���Ʒ ʧ��
  SM_PACKAGEITEM_OK = 1360;                                                                         // �ֿ��ص���Ʒ �ɹ�
  SM_PACKAGEITEM_FAIL = 1361;                                                                       // �ֿ��ص���Ʒ ʧ��
  SM_HEROPACKAGEITEM_OK = 1362;                                                                     // Ӣ�۷ֿ��ص���Ʒ �ɹ�
  SM_HEROPACKAGEITEM_FAIL = 1363;                                                                   // Ӣ�۷ֿ��ص���Ʒ ʧ��
  SM_PLAYSOUND = 1364;
  SM_OPENBIGMERCHANTBIGDLG = 1365;
  SM_CLOSEBIGMERCHANTBIGDLG = 1366;
  SM_CHANGESPEED = 1369;                                                                            // ��Ϸ�ٶ�
  SM_QUERYUSERSHOPS = 1370;                                                                         // ��������������̽��
  SM_QUERYUSERSHOPITEMS = 1371;                                                                     // ����ָ���û�������Ʒ
  SM_SEARCHSHOPITEMS = 1372;                                                                        // �����������������Ʒ���
  SM_QUERYMYSHOPSELLINGITEMS = 1373;                                                                // �����ҵĵ���������Ʒ
  SM_QUERYMYSHOPSELLEDITEMS = 1374;                                                                 // �����ҵĵ����Ѿ�������Ʒ
  SM_QUERYMYSHOPSTORAGEITEMS = 1375;                                                                // �����ҵĵ��ֿ̲���Ʒ
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
  SM_UPGRADEDLGITEM_TAKE = 1386;                                                                    // �����ɹ�
  SM_UPGRADEDLGITEM_GIVE = 1387;                                                                    // �����ɹ�
  SM_OPENUPGRADEDLG = 1388;                                                                         // ��ʾOK�Ի���
  SM_SENDUSERICON = 1389;
  SM_SENDWEBBROWSER = 1390;
  SM_SENDUSEREFFECT = 1391;
  SM_SENDSUPERSHILEDEFFECT = 1392;
  SM_SENDBLASTHIT = 1393;                                                                           // ����
  SM_SPECIALCMD = 1396;                                                                             // ��������
  SM_WEATHER = 1397;

  /////////////////��ս�����Ϣ����  2013-07-22//////////////////////////
  SM_CHALLENGETRY_FAIL = 1399;                                                                      // ��սʧ��
  SM_CHALLENGEMENU = 1398;                                                                          // ����ս��Ѻ��Ʒ����;
  SM_CHALLENGEADDITEM_OK = 1400;                                                                    // ������ӵ�Ѻ��Ʒ�ɹ�;
  SM_CHALLENGEADDITEM_FAIL = 1401;                                                                  // ������ӵ�Ѻ��Ʒʧ��;
  SM_CHALLENGEDELITEM_OK = 1402;                                                                    // ���ɾ����Ѻ��Ʒ�ɹ�;
  SM_CHALLENGEDELITEM_FAIL = 1403;                                                                  // ���ɾ����Ѻ��Ʒʧ��;
  SM_CHALLENGECANCEL = 1404;                                                                        // ���ȡ����ս;
  SM_CHALLENGEREMOTEADDITEM = 1405;                                                                 // �������ӵ�Ѻ����Ʒ��,���ͻ�����ʾ;
  SM_CHALLENGEREMOTEDELITEM = 1406;                                                                 // ����ɾ����Ѻ����Ʒ��,���ͻ�����ʾ;
  SM_CHALLENGECHGGOLD_OK = 1407;                                                                    // �ı���ս��ҳɹ�
  SM_CHALLENGECHGGOLD_FAIL = 1408;                                                                  // �ı���ս���ʧ��
  SM_CHALLENGECHGGAMEDIAMOND_OK = 1409;                                                             // �޸���ս���ʯ�ɹ�
  SM_CHALLENGECHGGAMEDIAMOND_FAIL = 1410;                                                           // �޸���ս���ʯʧ��
  SM_CHALLENGEREMOTECHGGOLD = 1411;                                                                 // �޸ĶԷ���ս���
  SM_CHALLENGEREMOTECHGGAMEDIAMOND = 1412;                                                          // �޸ĶԷ���ս���ʯ
  SM_CHALLENGESUCCESS = 1413;                                                                       // ��ս�ɹ�
  //////////////////////////////////////////////////////////////////////////////

  SM_OPENUPGRADEDIALOG = 1414;                                                                      // �򿪰�����ʯװ�������Ի���
  SM_SENDUPGRADEDIALOG_OK = 1415;                                                                   // ������ʯװ�������ɹ�
  SM_SENDUPGRADEDIALOG_FAIl = 1416;                                                                 // ������ʯװ������ʧ��
  SM_HEARCOLOR = 1417;                                                                              // ���ﺰ����Ϣ��ɫ
  SM_SOFTCLOSE = 1418;

  /////////////////////�ƹ������Ϣ  2013-07-22//////////////////////////
  SM_PLAYDRINKSAY = 1419;                                                                           // �ƹ�NPC�Ի�����Ϣ
  SM_USERPLAYDRINKITEM_OK = 1420;                                                                   // �����Ʒ�ɹ�
  SM_USERPLAYDRINKITEM_FAIl = 1421;                                                                 // �����Ʒʧ��
  SM_USERPLAYDRINK_OK = 1422;                                                                       // ��NPC�ľ���ȷ ���Զ���
  SM_USERPLAYDRINK_FAIL = 1423;                                                                     // ��NPC�ľƴ���
  SM_OPENPLAYDRINK = 1424;                                                                          // �򿪴���
  SM_CLOSEDRINK = 1425;                                                                             // �رվƹ�NPC�Ի���
  SM_DRINKUPDATEVALUE = 1426;                                                                       // ���غȾ�
  SM_PLAYDRINKTODRINK = 1427;                                                                       // ���͵��ͻ���˭Ӯ˭��
  SM_SENDUSERPLAYDRINK = 1428;                                                                      // ������ƶԻ���

  SM_SENDSTORAGEHEROINFO = 1429;                                                                    // Ӣ�ۼĴ���Ϣ   �ٻؼĴ��Ӣ��
  SM_SENDSTORAGEHEROINFOEX = 1430;                                                                  // Ӣ�ۼĴ���Ϣ ����Ӣ��
  SM_ASSESSMENTHERO_OK = 1431;                                                                      // ����Ӣ�۳��ɹ�
  SM_ASSESSMENTHERO_FAIL = 1432;                                                                    // ����Ӣ�۳�ʧ��
  SM_SENDSHOWHEROAUTOPRACTICEDLG = 1433;                                                            // ��ʾӢ���Զ������Ի���
  SM_SENDHEROAUTOPRACTICE_OK = 1434;                                                                // Ӣ���Զ������ɹ�
  SM_SENDHEROAUTOPRACTICE_FAIL = 1435;                                                              // Ӣ���Զ�����ʧ��
  SM_REFABILNG = 1436;                                                                              // ˢ������
  SM_ABILITYNG = 1437;                                                                              // �ڹ�����
  SM_ABILITYALCOHOL = 1438;                                                                         // ������
  SM_ABILITYMERIDIANS = 1439;                                                                       // ����
  SM_HEROABILITYNG = 1440;                                                                          // Ӣ���ڹ�����
  SM_HEROABILITYALCOHOL = 1441;                                                                     // Ӣ�۾�����
  SM_HEROABILITYMERIDIANS = 1442;                                                                   // Ӣ�۾���
  SM_OPENCOBWEBWINDING = 1443;                                                                      // ֩������ס  ����
  SM_CLOSECOBWEBWINDING = 1444;                                                                     // ֩������ס ��
  SM_LIGHTINGEX = 1445;
  SM_CONTINUOUSMAGICORDER = 1446;                                                                   // ����˳��  series=0 ���� series=1 Ӣ��
  SM_CONTINUOUSMAGIC_OK = 1447;                                                                     // ����ʼ��ʼ�����ɹ�
  SM_CONTINUOUSMAGIC_FAIL = 1448;                                                                   // ����ʼ��ʼ����ʧ��
  SM_CANCONTINUOUSMAGIC = 1449;                                                                     // �������� ��������ͼƬ��˸��ʾ
  SM_TRAININGNG = 1450;                                                                             // �Ƿ������ڹ��ķ� ������Ӧ��ʾ�ڹ��ķ�����  series=0 ���� series=1 Ӣ��
  SM_LEVELUPNG = 1451;                                                                              // �ڹ�����
  SM_STOPCONTINUOUSMAGIC = 1452;                                                                    // ֹͣ����
  SM_MAPCANRUN = 1453;                                                                              // ���˴���״̬
  SM_PLUGFILE = 1454;                                                                               // �ͻ��˲��MD5 M2���͹������м��
  SM_MODULEMD5 = 1455;                                                                              // ������ģ��MD5
  SM_BLACKMODULEMD5 = 1456;                                                                         // ������ģ��MD5
  SM_SENDSHOPNAME = 1457;                                                                           // ��̯��������
  SM_MASTERBAGTOHEROBAG_OK = 1458;                                                                  // ���˰�����Ʒ�ŵ�Ӣ�۰����ɹ�
  SM_MASTERBAGTOHEROBAG_FAIL = 1459;                                                                // ���˰�����Ʒ�ŵ�Ӣ�۰���ʧ��
  SM_HEROBAGTOMASTERBAG_OK = 1460;                                                                  // Ӣ�۰�����Ʒ�ŵ����˰����ɹ�
  SM_HEROBAGTOMASTERBAG_FAIL = 1461;                                                                // Ӣ�۰�����Ʒ�ŵ����˰���ʧ��

  //////////////////////Ӣ�������Ϣ����  2013-07-23/////////////////////
  SM_HEROBAGCOUNT = 1462;                                                                           // Ӣ�۰�������
  SM_HEROLOGON = 1464;                                                                              // ��ȡӢ�� TMessageBodyWL ����Ӣ�۵�½Ч��
  SM_HEROLOYAL = 1465;                                                                              // ��ȡӢ���ҳ�  10001(��00.00%)
  SM_SENDMYHEROMAGIC = 1470;                                                                        // ��ȡӢ��ħ��
  SM_HEROANGERVALUE = 1481;                                                                         // Ӣ��ŭֵ�ı� Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
  SM_HEROLOGOUT_OK = 1482;                                                                          // Ӣ���˳�OK
  SM_HEROCHANGEFACE = 1490;
  SM_HEROLOGON_OK = 1494;
  SM_HEROLOGOUT = 1463;                                                                             // ��ȡӢ�� TMessageBodyWL ����Ӣ���˳�Ч��
  SM_HEROABILITY = 1466;                                                                            // ��ȡӢ��Abil
  SM_HEROSUBABILITY = 1467;                                                                         // Ӣ��SUBABILITY
  SM_HEROBAGITEMS = 1468;                                                                           // ��ȡӢ�۰���     Tag:������Ʒ���� 2 Series: ����������10
  SM_SENDHEROUSEITEMS = 1469;                                                                       // ��ȡӢ������װ��
  SM_HEROADDITEM = 1471;                                                                            // Ӣ�� Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
  SM_HERODELITEM = 1472;                                                                            // Ӣ�� Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
  SM_HEROTAKEON_OK = 1473;                                                                          // Ӣ�۴�װ��OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
  SM_HEROTAKEON_FAIL = 1474;                                                                        // Ӣ�۴�װ��FAIL
  SM_HEROTAKEOFF_OK = 1475;                                                                         // Ӣ����װ��OK
  SM_HEROTAKEOFF_FAIL = 1476;                                                                       // Ӣ����װ��FAIL
  SM_HEROEAT_OK = 1477;                                                                             // Ӣ�۳�ҩOK
  SM_HEROEAT_FAIL = 1478;                                                                           // Ӣ�۳�ҩFAIL
  SM_HEROADDMAGIC = 1479;                                                                           // Ӣ������ħ��
  SM_HERODELMAGIC = 1480;                                                                           // Ӣ��ɾ��ħ��
  SM_HERODURACHANGE = 1483;                                                                         // Ӣ����Ʒ�־øı�
  SM_HERODROPITEM_SUCCESS = 1484;                                                                   // Ӣ������ƷOK
  SM_HERODROPITEM_FAIL = 1485;                                                                      // Ӣ������ƷFAIL
  SM_HEROLEVELUP = 1486;                                                                            // Ӣ������
  SM_HEROWINEXP = 1487;                                                                             // Ӣ�ۻ�ȡ����
  SM_HEROWEIGHTCHANGED = 1488;
  SM_HEROMAGIC_LVEXP = 1489;                                                                        // Ӣ��ħ������
  SM_HEROUPDATEITEM = 1491;                                                                         // ����Ӣ����Ʒ
  SM_HERODELITEMS = 1492;                                                                           // ɾ��Ӣ����Ʒ 1492;
  SM_HEROCHANGEITEM = 1493;                                                                         // �ı�Ӣ����Ʒ


  SM_OPENMISSIONDLG = 1495;                                                                         // ��������־�Ի���
  SM_DELETEDELAYMESSAGE = 1496;                                                                     // ɾ����ʱ��Ϣ

  /////////////////��HeroM2��̯��س���ֵ  2013-07-23////////////////////
  SM_HEROM2ADDUSERSHOPITEM_OK = 1497;                                                               // ���Ӱ�̯��Ʒ�ɹ�
  SM_HEROM2ADDUSERSHOPITEM_FAIL = 1498;                                                             // ���Ӱ�̯��Ʒʧ��
  SM_HEROM2DELUSERSHOPITEM_OK = 1499;                                                               // ɾ����̯��Ʒ�ɹ�
  SM_HEROM2DELUSERSHOPITEM_FAIL = 1500;                                                             // ɾ����̯��Ʒʧ��
  SM_HEROM2DELUSERSHOPITEM = 1501;                                                                  // ɾ����̯��Ʒ
  SM_HEROM2DELREMOTEUSERSHOPITEM = 1502;                                                            // ɾ����̯��Ʒ
  SM_HEROM2SENDSHOPITEM = 1503;                                                                     // ��̯��Ʒ
  SM_HEROM2SENDCLOSESHOP = 1504;                                                                    // �رչ����̯��Ʒ����
  SM_HEROM2SENDDRESSEFFECT = 1505;                                                                  // ��̯��Ʒ�·���Ч
  //////////////////////////////////////////////////////////////////////////////

  SM_SENDFILTERITEMLIST = 1506;                                                                     // �ڹҼ�ȡ������Ʒ�б�
  SM_SENDITEMDESCLIST = 1507;                                                                       // ��Ʒ�����б�
  SM_SENDTZITEMDESCLIST = 1508;
  SM_SENDACTIONMSG = 1509;                                                                          // m_boCanHit m_boCanSpell m_boCanWalk  m_boCanRun
  SM_SENDOPENSKILLTIME = 1510;                                                                      // սʿ���ܿ�����ʣ��ʱ��

  SM_AUTOEAT_OK = 1511;                                                                             // �Զ���ҩ�ɹ�
  SM_AUTOEAT_FAIL = 1512;                                                                           // �Զ���ҩʧ��

  SM_HEROAUTOEAT_OK = 1513;                                                                         // Ӣ���Զ���ҩ�ɹ�
  SM_HEROAUTOEAT_FAIL = 1514;                                                                       // Ӣ���Զ���ҩʧ��
  SM_NATIONMESSAGE = 1515;

  SM_ADDBUTTON = 1516;                                                                              // ���Ӱ�ť
  SM_DELBUTTON = 1517;                                                                              // ɾ����ť
  SM_SHOWPHANTOM = 1518;                                                                            // ��ʾ�Ŵ����Ӱ
  SM_CLOSEPHANTOM = 1519;                                                                           // �رշŴ����Ӱ
  SM_STDITEMLIST = 1520;

  SM_SETCLIENTBUFF = 1521;
  SM_CLOSECLIENTBUFF = 1522;
  SM_SENDUSERMOVECMD = 1523;

  /////////////////////////////////////////////////////////////////////

  // ����������������������������������� �¼�SM��Ϣ  2013-08-20 ����������

  SM_CHECKISMYSELFSERVER = 8889;                                                                    // ��������Լ���GeeM2��������û�д���Ϣ��֤���Ǳ��˵�����
  SM_ACUPOINTLEVELS = 8890;                                                                         // ���ʹ�ͨѨ����Ҫ���ڹ��ȼ�  2013-08-16
  SM_OPENBOOKS = 8891;                                                                              // ������NPC  2013-08-20
  SM_CHANGEPOISON = 8899;                                                                           // ֪ͨ�ͻ��˽��춾/�̶� װ�� 
  SM_FBTIME = 8900;                                                                                 // ������ʱ֪ͨ  2013-09-09
  SM_SCENESHAKE = 8901;                                                                             // ��Ļ����Ϣ  2013-09-14
  SM_INVITEHORSE = 8902;                                                                            // (����) ������˹���  2013-10-13
  SM_SYNCSCREEN = 8903;
  SM_TAKEHORSE = 8904;                                                                              // (����) �ٻ�/�ջ�����  2013-10-12
  SM_UPDATEJEWELRYBOX = 8905;                                                                       // �������κ�  2013-10-20

  SM_TAKEONJEWELRY_OK = 8906;
  SM_TAKEONJEWELRY_FAIL = 8907;
  SM_TAKEOFFJEWELRY_OK = 8908;
  SM_TAKEOFFJEWELRY_FAIL = 8909;

  SM_MYHEROLOGON = 8910;
  SM_DISAPPEARMYHERO = 8911;                                                                        // �����Լ���Ӣ��  2013-11-23

  SM_UPDATECOLLECT = 8912;

  SM_DELBOXITEM = 8913;                                                                             // �ջ��Զ���OK������Ʒ  2013-11-01
  SM_RETURNBOXITEM = 8914;                                                                          // �Զ���OK�� - ��Ʒ���ص�����  2013-11-01
  SM_UPDATEBOXITEM = 8915;                                                                          // �Զ���OK��ˢ�µ��ͻ���  2013-11-01

  SM_MOVETOITEMBOX_OK = 8916;                                                                       // �ƶ���Ʒ�����嶨OK��ɹ�  2013-10-31
  SM_MOVETOITEMBOX_FAIL = 8917;                                                                     // �ƶ���Ʒ�����嶨OK��ʧ��  2013-10-31

  SM_MOVEITEMBOXTOBAG_OK = 8918;                                                                    // �ƶ���Ʒ�����嶨OK��ɹ�  2013-10-31
  SM_MOVEITEMBOXTOBAG_FAIL = 8919;                                                                  // �ƶ���Ʒ�����嶨OK��ʧ��  2013-10-31

  SM_OPENTOXICSMOKE = 8920;                                                                         // �ж���  2013-11-10
  SM_CLOSETOXICSMOKE = 8921;                                                                        // ���̹�  2013-11-10

  SM_OPENCONTINUOUSMAGICLOCK = 8922;                                                                // ����������  2013-11-10
  SM_CLOSECONTINUOUSMAGICLOCK = 8923;                                                               // ����������  2013-11-10

  SM_PLAYMAGICBALLEFFECT = 8924;                                                                    // ���Ž����ħ����Ч��  2013-11-12
  SM_EFFECTSTEP = 8925;                                                                             // ���������  2013-12-03

  SM_GIVEBOXITEM = 8926;                                                                            // ��������ָ����Ʒ����ָ��OK��
  SM_TAKEBOXITEM = 8927;                                                                            // ��OK���е���Ʒ���뱳����

  SM_FEATURECHANGED_NEW = 8928;                                                                     // �����Լ��� FEATURE �ṹ  2013-12-22
  SM_CHECKCLIENTVERSION_FAIL = 8929;                                                                // �ͻ��˰汾��ƥ��  2013-12-24

  SM_MOVEMESSAGE_NEW = 8930;                                                                        // ������Ϣ  2014-04-17

  SM_UPDATEGODBLESS = 8931;                                                                         // �������Ӵ�  2014-04-18
  SM_UPDATEGODBLESSITEMS_STATE = 8932;                                                              // ���Ӵ�����״̬  2014-04-18
  SM_OPENGODBLESSITEM = 8933;                                                                       // �����Ӵ�ĳ��  2014-04-18
  SM_CLOSEGODBLESSITEM = 8934;                                                                      // �ر����Ӵ�ĳ��  2014-04-18

  SM_TAKEONGODBLESSITEM_OK = 8935;
  SM_TAKEONGODBLESSITEM_FAIL = 8936;
  SM_TAKEOFFGODBLESSITEM_OK = 8937;
  SM_TAKEOFFGODBLESSITEM_FAIL = 8938;

  SM_UPDATEFENGHAOITEMS = 8939;
  SM_ADDFENGHAOITEM = 8940;                                                                         // ����ƺ�  2014-05-24
  SM_DELFENGHAOITEM = 8941;                                                                         // ���ճƺ�  2014-05-24
  SM_CLEARFENGHAOITEM = 8942;                                                                       // �������гƺ�  2014-05-24
  SM_ACTIVEFENGHAOITEM = 8943;

  SM_SENDUSERSTATE_FENGHAO = 8944;

  SM_SENDCUSTOMMONSTERCONFIG = 8945;                                                                // �����Զ���������õ��ͻ���  2014-07-20
  SM_ATTACK01 = 8946;                                                                               // �Զ��幥��1
  SM_ATTACK02 = 8947;                                                                               // �Զ��幥��2
  SM_ATTACK03 = 8948;                                                                               // �Զ��幥��3
  SM_ATTACK04 = 8949;                                                                               // �Զ��幥��4
  SM_ATTACK05 = 8950;                                                                               // �Զ��幥��5
  SM_ATTACK06 = 8951;                                                                               // �Զ��幥��6

  SM_OPENGAMESHOP = 8952;                                                                           // ������  2014-09-03

  SM_ABILITY_NOBONUS = 8953;                                                                        // δ�������Ե�ǰԭʼ����  2014-10-15

  SM_START_GJ = 8954;                                                                               // ��ʼ�һ�  2014-11-26
  SM_GJ_CALLMONMAGIC = 8955;                                                                        // �һ�ʹ���ٻ�����  2014-12-01

  SM_LOCK_USER = 8956;                                                                              // �����û�

  SM_BAGUSEITEM = 8958;                                                                             // ���Ͱ�����ʹ����Ʒ������Ƕ��ʯ��
  SM_ARMREMOVESTONE = 8959;                                                                         // ж����Ƕ��ʯ�Ի���
  SM_REMOVESTONE_BACK = 8960;                                                                       // ж����Ƕ��ʯ���

  SM_RESPONSESTDITEM = 8961;                                                                        // ����������StdItem

  SM_SHOWPROGRESSBAR = 8962;
  SM_CLOSEPROGRESSBAR = 8963;

  SM_GETSAYITEM = 8964;

  SM_SETNPCIMAGE = 8965;                                                                            // �ı�NPC��� ���µ�һ  2015-01-15

  SM_STORAGEVIEWITEMLIST = 8966;                                                                    // ���Ӳֿ���Ʒ�б�  2015-01-26

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
  // �����������������������������������������������������


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
    MaxWeight: LongInt;                                                                             // 0x1BA   //0x56 0x22  ����
    WearWeight: LongInt;                                                                            // 0x1BC   //0x58 0x24
    MaxWearWeight: LongInt;                                                                         // 0x1BD   //0x59 0x25  ����
    HandWeight: LongInt;                                                                            // 0x1BE   //0x5A 0x26
    MaxHandWeight: LongInt;                                                                         // 0x1BF   //0x5B 0x27  ����
    CreditPoint: Integer;                                                                           // ����
    NewValue: array[0..30 - 1] of LongWord;
    // 0������������ 1���ӹ����˺�  2�����˺����� 3ħ���˺�����  4����Ŀ�����
    // 5�����˺����� 6����Ŀ�걩�� 7������������  8����ħ������ 9ŭ���ָ�����
    // 10�ϻ��������� 11 ���ﱩ�� 12 ��������
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
    OverLap: Word;                                                                                  // �Ƿ����ص���Ʒ
    Color: Byte;                                                                                    // ��Ʒ������ɫ
    Stock: Integer;
    Light: Integer;                                                                                 // ���ݿ�����Light�ֶ� piaoyun 2013-08-01
    btValue: array[0..13] of Integer;                                                               // ��������

    btUpgradeCount: Byte;                                                                           // ��������
    btHeroM2Light: Byte;                                                                            // HeroM2 SetItemsLight
    NewValue: array[0..30 - 1] of Word;

    IsBind: Boolean;                                                                                // �Ƿ��

    EffectFileIndex: SmallInt;                                                                      // �����е���Ʒ����Ч�� �ļ���� 0
    EffectStartOffSet: Word;                                                                        // �����е���Ʒ����Ч�� ��ȡλ��
    EffectImageCount: Byte;                                                                         // �����е���Ʒ����Ч�� ��ȡ����
    EffectOffsetX: SmallInt;                                                                        // �����е���Ʒ����Ч�� ΢��X
    EffectOffsetY: SmallInt;                                                                        // �����е���Ʒ����Ч�� ΢��Y
    EffectTime: Word;                                                                               // �����ٶ�
    EffectDrawCenter: Boolean;
    
    BodyEffectFileIndex: SmallInt;                                                                  // �ڹ���Ʒ����Ч�� �ļ���� 0
    BodyEffectStartOffSet: Word;                                                                    // �ڹ���Ʒ����Ч�� ��ȡλ��
    BodyEffectImageCount: Byte;                                                                     // �ڹ���Ʒ����Ч�� ��ȡ����
    BodyEffectOffsetX: SmallInt;                                                                    // �ڹ���Ʒ����Ч�� ΢��X
    BodyEffectOffsetY: SmallInt;                                                                    // �ڹ���Ʒ����Ч�� ΢��Y
    BodyEffectTime: Word;                                                                           // �����ٶ�
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

    // װ������ chongchong 2015-01-03
    btFluteCount: Byte;                                                                             // ��������         1
    wFlute: array[0..8 - 1] of Word;                                                                // ���۱�ʯ��Ϣ     16
  end;
  _LPTCLIENTITEM = ^_TCLIENTITEM;

  _TUSERITEM = packed record
    MakeIndex: Integer;
    wIndex: Word;                                                                                   // ��Ʒid
    Name: string[ITEMNAMELEN];
    Dura: Word;                                                                                     // ��ǰ�־�ֵ
    DuraMax: Word;                                                                                  // ���־�ֵ
    btValue: array[0..13] of Integer;
    btEffect: Byte;                                                                                 // ��Ч��� ��
    btUpgradeCount: Byte;                                                                           // ��������
    boStartTime: Boolean;                                                                           // �Ƿ�ʼ��ʱ
    nLimitTime: Integer;                                                                            // ��ʱ��Ʒ ����
    btHeroM2Light: Byte;                                                                            // HeroM2 SetItemsLight
    btNewValue: array[0..30 - 1] of Word;
    // 0 ������������   1 ���ӹ����˺�   2 �����˺�����  3 ħ���˺�����  4 ����Ŀ�����
    // 5 �����˺�����   6 ����Ŀ�걩��   7 ������������  8 ����ħ������  9 ŭ���ָ�����
    // 10�ϻ���������
    btColor: Byte;
    boIsBind: Boolean;                                                                              // �Ƿ��

    boCanotUserDropBindItem: Boolean;                                                               // ��ֹ��                  ]
    boCanotUserDealBindItem: Boolean;                                                               // ��ֹ����
    boCanotUserStorageBindItem: Boolean;                                                            // ��ֹ��
    boCanotUserRepairBindItem: Boolean;                                                             // ��ֹ��
    boCanotUserSellBindItem: Boolean;                                                               // ��ֹ����
    boCanotUserScatterBindItem: Boolean;                                                            // ��ֹ����
    boBindItemDropDelete: Boolean;                                                                  // ������ʧ chongchong 2015-01-29

    wEffect: Word;                                                                                  // ��Ч��� ��

    // װ������ chongchong 2015-01-02
    btFluteCount: Byte;                                                                             // ��������         1
    wFlute: array[0..8 - 1] of Word;                                                                // ���۱�ʯ��Ϣ     16
  end;
  _LPTUSERITEM = ^_TUSERITEM;

  _TUSEITEMS = array[0..15] of _TUSERITEM;                  //����װ��
  _LPTUSEITEMS = ^_TUSEITEMS;

                 //���＼�� Ӣ�ۼ��� �������� �ڹ��������ӷ��� �ڹ��������ӹ���
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
    btTrainLv: Byte;                                                                                // ��߿������ȼ�
    btJob: Byte;
    wMagicIdx: Word;
    dwDelayTime: LongWord;
    btDefSpell: Byte;
    btDefPower: Byte;
    wMaxPower: Word;
    btDefMaxPower: Byte;
    sDescr: string[18];
    CanUpgrade: Integer;                                                                            // �Ƿ��������� chongchong 2013-12-06
    MaxUpgradeLevel: Integer;                                                                       // ���
  end;
  _LPTMAGIC = ^_TMAGIC;

  _TUSERMAGIC = record                                      //�û�ħ��
    MagicInfo: _LPTMAGIC;
    MagicAttr: TMagicAttr;
    wMagIdx: Word;
    btLevel: Byte;
    btNewLevel: Byte;
    btKey: Byte;
    nTranPoint: Integer;
  end;
  _LPTUSERMAGIC = ^_TUSERMAGIC;

  _TCLIENTMAGIC = record                                    //���Ϳͻ��˵�ħ���ṹ
    Key: Char;
    Level: Byte;
    NewLevel: Byte;                                                                                 // ����
    CurTrain: Integer;
    Def: _TMagic;
  end;
  _LPTCLIENTMAGIC = ^_TCLIENTMAGIC;


  _TACTORICON = record                                      //��������
    nFileIndex: SmallInt;                                                                           // WIL��Դ���
    nIconIndex: Word;
    nIconCount: Byte;
    nX: SmallInt;
    nY: SmallInt;
    boBlend: Boolean;
    btDrawOrder: Byte;                              // ����˳��
    nPlayTime: SmallInt;                            // �����ٶ�
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
  TObjectControl = procedure(BaseObject: TObject; var Value: Integer); stdcall; // Value��Ҫ������ڴ��С
  TObjectUserSelect = procedure(Merchant: TMerchant; PlayObject: TPlayObject; pszLabel, pszData: PChar); stdcall;
  TProcessUserCmd = function(AObject: TObject; pszCmd, pszParam1, pszParam2, pszParam3, pszParam4, pszParam5, pszParam6, pszParam7: PChar): Boolean; stdcall;

  TLoadScriptCmd = function(pszCmd: PChar): Integer; stdcall;
  TLoadScriptFile = function(sFileName: PChar; Stream: TMemoryStream): Boolean; stdcall; //������Ҫʹ��ZIPѹ��Ȼ��ʹ��M2Server_EncryBuffer���ܺ����д��Stream
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

