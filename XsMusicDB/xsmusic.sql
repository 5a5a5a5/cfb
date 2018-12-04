SET NAMES UTF8;
DROP DATABASE IF EXISTS xsmusic;
CREATE DATABASE xsmusic charset=utf8;
USE xsmusic;
CREATE TABLE user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(11),
    reg_date DATE,
    attention VARCHAR(256),
    uimg VARCHAR(256)
);
INSERT INTO user VALUES(null,"zeort","123456","123456@163.com","13622222222",now(),"","http://localhost:3000/image/avatar_1.png");



CREATE TABLE forum(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    p_time DATE,
    content VARCHAR(521),
    picture VARCHAR(256),
    small_img VARCHAR(256),
    title VARCHAR(64),
    pl INT,
    zf INT,
    dz INT,
    big_img VARCHAR(256)
);


INSERT INTO forum VALUES(null,"zeort",now(),"听哭了...真的是年少的回忆，想起了小时候中午在阳台上写作业，老爸喜欢在家里放着bandari的音乐。现在孤身一人在异国他乡，突然在每日推荐里听到这个，真的让人想起了很多很多被埋在记忆深处的事情，又幸福又伤感。","http://localhost:3000/image/avatar_1.png","http://localhost:3000/forum/user_1.jpg","Childhood Memory",256,120,55,"http://localhost:3000/forum/big_1.jpg");

INSERT INTO forum VALUES(null,"她是兰花花",now(),"7年前，初一，图书馆。馆长姓周，是一位和蔼可亲的智者。他爱琴棋书画，爱与我们谈论诗词。图书馆里循环一首纯音乐，听着它，我陶醉悠然。初三，他突发心脏病去世，我再没去过那个回忆中的图书馆。不知多久，又偶然听到那首音乐，赶紧去问音乐的名字。得知叫《童年的回忆》，我的眼泪怎也簌簌掉了下来","http://localhost:3000/image/avatar_2.jpg","http://localhost:3000/forum/user_2.png","The Show",144,265,98,"http://localhost:3000/forum/big_2.jpg");

INSERT INTO forum VALUES(null,"长满橘子的杏树",now(),"初中去郊游，那种很旧的巴士，挂着土气的碎花帘，我来的迟，只剩一个靠窗坐，旁边是我喜欢的boy。我坐下来大脑一片空白，手攥的紧紧，不知道说什么，只好假装不舒服闭眼靠窗。突然耳边被塞上一个耳机，很多年过来都不会忘记当我惊讶的睁眼转头，耳里是温柔的the show，眼里是他温柔的目光带笑","http://localhost:3000/image/avatar_3.jpg","http://localhost:3000/forum/user_3.png","曾经守候",756,523,255,"http://localhost:3000/forum/big_3.jpg");

INSERT INTO forum VALUES(null,"全世界最可爱",now(),"不管是狂放的张碧晨还是知性大气的张碧晨，我都喜欢啊。永远永远记得我在KTV唱着她的红玫瑰，朋友们惊艳的表情，我知道不是因为我唱的好听而是她唱的红玫瑰让人惊艳。","http://localhost:3000/image/avatar_4.jpeg","http://localhost:3000/forum/user_4.png","追光者",426,233,156,
"http://localhost:3000/forum/big_4.jpg");




CREATE TABLE active(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64),
    content VARCHAR(521),
    picture VARCHAR(256),
    s_mun INT,
    c_num INT
);
INSERT INTO active VALUES(null,"酷狗校园原创音乐征集大赛","你的青春是什么样子？酷狗音乐携手5sing举办校园原创音乐征集大赛，万元大奖等你拿！让时光记住你的青春！快来参与吧！","http://localhost:3000/forum/active_1.jpg",200000,156322);

INSERT INTO active VALUES(null,"逆水寒鸣玉回响翻唱大赛","《鸣玉集》收录了《逆水寒》江湖世界中的鸣玉之音，今翻唱大赛由此开启，一曲狂歌醉于江南烟雨，召集各路侠士速速前来！ 只愿歌尽平生，应那句“所有江湖偶遇，都是宿命相逢”。","http://localhost:3000/forum/active_2.jpg",100000,55528);

INSERT INTO active VALUES(null,"《线上聊》阿沁梦想专辑接唱活动","飞儿乐团阿沁梦想专辑单曲《线上聊》接唱大赛火热开启！腾讯音乐集团三大平台价值百万的曝光资源等待你来战！","http://localhost:3000/forum/active_3.jpg",1000,270);

INSERT INTO active VALUES(null,"腾讯动漫“遇见不一样的世界”国漫音乐大赛正式开启","腾讯动漫国漫音乐大赛在5sing火热开启！想翻唱你最爱的国漫神曲吗？想为你最爱的国漫创作歌曲吗？我们想与你一起，遇见不一样的国漫世界！更有万元大奖！快来参与～","http://localhost:3000/forum/active_4.jpg",10000,3228);



CREATE TABLE swiper(
    uid INT PRIMARY KEY AUTO_INCREMENT, 
    picture VARCHAR(256),
    p_class INT
);

INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_1_1.jpg",1);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_1_2.jpg",1);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_1_3.jpg",1);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_1_4.jpg",1);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_2_1.jpg",2);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_2_2.jpg",2);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_2_3.jpg",2);
INSERT INTO swiper VALUES(null,"http://localhost:3000/forum/swiper_2_4.jpg",2);



CREATE TABLE musiclist(
    uid INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(16),
    picture VARCHAR(256),
    m_desc VARCHAR(64),
    p_num INT,
    auther VARCHAR(24),
    m_id INT
);

INSERT INTO musiclist VALUES(null,"最新音乐","http://localhost:3000/list/list_1_1.jpg","秋日午后 | 安静的华语流行",8615,"",1801);

INSERT INTO musiclist VALUES(null,"最新音乐","http://localhost:3000/list/list_1_2.jpg","每日新歌：新王登基！中国第一！",7515,"",1802);

INSERT INTO musiclist VALUES(null,"最新音乐","http://localhost:3000/list/list_1_3.jpg","LiSA : 动漫中超燃的魅力女声",5115,"",1803);

INSERT INTO musiclist VALUES(null,"最新音乐","http://localhost:3000/list/list_1_4.jpg","Rainy Days | 关于下雨的抒情歌",2564,"",1804);




INSERT INTO musiclist VALUES(null,"经典","http://localhost:3000/list/list_2_1.jpg","安德烈 · 波切利和哪些人有过合作？",9456,"",1805);

INSERT INTO musiclist VALUES(null,"经典","http://localhost:3000/list/list_2_2.jpg","【原声蓝调】蓝调之夜月",8515,"",1806);

INSERT INTO musiclist VALUES(null,"经典","http://localhost:3000/list/list_2_3.jpg","20部经典救赎电影原声",115,"",1807);

INSERT INTO musiclist VALUES(null,"经典","http://localhost:3000/list/list_2_4.jpg","经典重温|根源蓝调音乐之魅力",764,"",1808);




INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_1.jpg","Give Me A Chance",764,"张艺兴",1827);

INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_2.jpg","悲伤逆流成河",764,"任素汐",1828);

INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_3.jpg","精彩才刚刚开始",764,"易烊千玺",1829);

INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_4.jpg","样子",764,"周迅",1830);

INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_5.jpg","为你写诗",764,"汪苏泷",1831);

INSERT INTO musiclist VALUES(null,"radio","http://localhost:3000/radio/radio_6.jpg","吸引定律",764,"Awaken-F",1832);



CREATE TABLE ranklist(
    uid INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(16),
    picture VARCHAR(256),
    auther VARCHAR(24),
    m_name VARCHAR(64),
    m_id INT
);
INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_1.jpg","薛之谦","哑巴",1809);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_1.jpg","薛之谦","暧昧",1810);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_1.jpg","薛之谦","你还要我怎样",1811);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_2.jpg","林俊杰","那些你很冒险的梦",1812);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_2.jpg","林俊杰","期待你的爱",1813);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_2.jpg","林俊杰","可惜没如果",1814);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_3.jpg","Alan Walker","Faded",1815);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_3.jpg","Alan Walker","All Falls Down",1816);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_3.jpg","Alan Walker","The Spectre",1817);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_4.jpg","蔡健雅","越来越不懂",1818);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_4.jpg","蔡健雅","红色高跟鞋",1819);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_4.jpg","蔡健雅","被驯服的象",1820);


INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_5.jpg","冯提莫","佛系少女",1821);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_5.jpg","冯提莫","左手",1822);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_5.jpg","冯提莫","玻璃糖",1823);


INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_6.jpg","张靓颖","另一个天堂",1824);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_6.jpg","张靓颖","如果爱下去",1825);

INSERT INTO ranklist VALUES(null,"官方榜","http://localhost:3000/rank/rank_6.jpg","张靓颖","画心",1826);

USE xsmusic;
CREATE TABLE music(
    uid INT PRIMARY KEY AUTO_INCREMENT, 
    picture VARCHAR(256),
    auther VARCHAR(24),
    m_name VARCHAR(64),
    m_id INT,
    m_address VARCHAR(512)
);
INSERT INTO music VALUES(null,"http://localhost:3000/list/list_1_1.jpg","安静","秋的私语",1801,"http://localhost:3000/music/S.H.E-安静了.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_1_2.jpg","匿名","新王登基",1802,"http://localhost:3000/music/姚贝娜-战争世界.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_1_3.jpg","LiSa","动漫中超燃的魅力女声",1803,"http://localhost:3000/music/小林未郁-βios.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_1_4.jpg","Rainy Days","关于下雨的抒情歌",1804,"http://localhost:3000/music/南拳妈妈-下雨天.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_2_1.jpg","安德烈 ","合作",1805,"http://localhost:3000/music/JennaDavis-BornforMore.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_2_2.jpg","蓝调","蓝调之夜月",1806,"http://localhost:3000/music/Liz-RunAway.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_2_3.jpg","电影","20部经典救赎电影原声",1807,"http://localhost:3000/music/G.E.M.邓紫棋-光年之外.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/list/list_2_4.jpg","经典","根源蓝调音乐之魅力",1808,"http://localhost:3000/music/NatashaThomasSkinDeep.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_1.jpg","张艺兴","Give Me A Chance",1827,"http://localhost:3000/music/Skillet-WhatIBelieve.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_2.jpg","任素汐","悲伤逆流成河",1828,"http://localhost:3000/music/任素汐-再见青春.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_3.jpg","易烊千玺","精彩才刚刚开始",1829,"http://localhost:3000/music/易烊千玺-精彩才刚刚开始.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_4.jpg","周迅","样子",1830,"http://localhost:3000/music/周迅-样子.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_5.jpg","汪苏泷","为你写诗",1831,"http://localhost:3000/music/汪苏泷,周洁琼-为你写诗.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/radio/radio_6.jpg","Awaken-F","吸引定律",1832,"http://localhost:3000/music/Awaken-F-吸引定律.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_1.jpg","薛之谦","哑巴",1809,"http://localhost:3000/music/薛之谦-哑巴.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_1.jpg","薛之谦","暧昧",1810,"http://localhost:3000/music/薛之谦-暧昧.mp3");
INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_1.jpg","薛之谦","你还要我怎样",1811,"http://localhost:3000/music/薛之谦-你还要我怎样.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_2.jpg","林俊杰","那些你很冒险的梦",1812,"http://localhost:3000/music/林俊杰-爱笑的眼睛.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_2.jpg","林俊杰","期待你的爱",1813,"http://localhost:3000/music/林俊杰-期待你的爱.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_2.jpg","林俊杰","可惜没如果",1814,"http://localhost:3000/music/林俊杰-她说.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_3.jpg","Alan Walker","Faded",1815,"http://localhost:3000/music/张宇桦-优美的小调(钢琴曲).mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_3.jpg","Alan Walker","All Falls Down",1816,"http://localhost:3000/music/NatashaThomasSkinDeep.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_3.jpg","Alan Walker","The Spectre",1817,"http://localhost:3000/music/MaksimMrvica-CroatianRhapsody.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_4.jpg","蔡健雅","	
越来越不懂",1818,"http://localhost:3000/music/蔡健雅-越来越不懂.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_4.jpg","蔡健雅","红色高跟鞋",1819,"http://localhost:3000/music/蔡健雅-红色高跟鞋.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_4.jpg","蔡健雅","被驯服的象",1820,"http://localhost:3000/music/蔡健雅-被驯服的象.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_5.jpg","冯提莫","佛系少女",1821,"http://localhost:3000/music/冯提莫-佛系少女.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_5.jpg","冯提莫","左手",1822,"http://localhost:3000/music/冯提莫-再见前任.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_5.jpg","冯提莫","玻璃糖",1823,"http://localhost:3000/music/冯提莫-玻璃糖.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_6.jpg","张靓颖","另一个天堂",1824,"http://localhost:3000/music/张靓颖,李秉成-终于等到你.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_6.jpg","张靓颖","如果爱下去",1825,"http://localhost:3000/music/张靓颖,王力宏-另一个天堂.mp3");

INSERT INTO music VALUES(null,"http://localhost:3000/rank/rank_6.jpg","张靓颖","画心",1826,"http://localhost:3000/music/张靓颖-我去了.mp3");



