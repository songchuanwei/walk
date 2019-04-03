-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-03-17 17:21:09
-- 服务器版本： 5.7.24-log
-- PHP 版本： 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `walk`
--

-- --------------------------------------------------------

--
-- 表的结构 `wl_activitys`
--

CREATE TABLE `wl_activitys` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL COMMENT '活动发布用户id',
  `phone` varchar(12) DEFAULT NULL COMMENT '活动联系手机号',
  `address` varchar(100) DEFAULT NULL COMMENT '活动地点',
  `money` int(5) DEFAULT '0' COMMENT '活动费用',
  `start_time` datetime DEFAULT NULL COMMENT '活动和开始时间',
  `img` varchar(200) NOT NULL COMMENT '活动图片',
  `title` varchar(100) NOT NULL COMMENT '活动标题',
  `content` text NOT NULL COMMENT '活动内容',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '活动状态',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动约伴';

--
-- 转存表中的数据 `wl_activitys`
--

INSERT INTO `wl_activitys` (`id`, `user_id`, `phone`, `address`, `money`, `start_time`, `img`, `title`, `content`, `status`, `create_time`, `update_time`) VALUES
(1, 1, '17630968036', '176309680361763096803617630968036', 0, '2019-02-19 00:00:00', '/upload/20190312/ccf771702d6d291de4f54b2d4754132e.jpg', '后河露营', '<p>&nbsp; &nbsp; &nbsp; 后河发源于西北30余公里处的海坨山，分叉于玉渡山脉。流入南面峡谷的河流就是我们通常说的“后河”，北面即的为“古城河”，两条河流东南而下交汇后汇于妫水河，因其水流随山势蜿蜒，故有\"古城九曲\"之称。由于后河峡谷属古老的石灰岩和白云岩地质构造，经千百年的地表水溶蚀、风化，峡谷两侧形成刀削斧劈般的绝壁，峡壁上众多石柱、石碓、石剑及溶洞，洞中有石笋、石钟乳、石帘等，颇似湖南的张家界。峡谷内湖水青碧，群山倒映，水上雾霭沉沉，气候凉爽宜人，景观层次丰富，四季分明：春天山花烂漫，夏天清凉纳暑，秋季登高望远，冬季冰清玉洁，被誉为“塞外漓江”，妫水河素有“东方莱茵河”的美誉。后河之美，在于山、石、林、瀑、花、草一应俱全，而更能拨动心弦的，在于清、幽、静、野之中那份天人合一。</p><p><img src=\"http://s9.rr.itc.cn/r/wapChange/20161_1_19/a6at2l9542566412405.jpeg\" alt=\"\"><img src=\"http://s9.rr.itc.cn/r/wapChange/20161_1_19/a8htxs9542965443405.jpeg\" alt=\"\"></p>', 1, '2019-02-27 00:00:00', '2019-03-14 19:51:11'),
(3, 4, '15696582365', '公主坟新兴宾馆前、惠新西街南口', 100, '2019-02-27 00:00:00', '/upload/20190312/3f632bea886f8337f425a8aca8f06786.jpg', '2019年4月13日CVA中国徒步网【第十三届】平谷桃花节国际徒步大会等您来战', '<p>第16界国际市民奥运会将于2019年10月15日至19日在法国普罗旺斯举办</p><p>会议日程安排如下：</p><p>10月15日星期二：开幕式</p><p>10月16日星期三：徒步，山地自行车，环路自行车，游泳，户外寻宝</p><p>10月17日星期四：徒步，山地自行车，环路自行车（公路），游泳，户外寻宝</p><p>10月18号星期五：徒步，山路自行车环路自行车（公路），游泳，户外寻宝，马拉松</p><p>10月19号星期六：徒步，山地自行车，环路自行车（公路），游泳，户外寻</p><p><span style=\"font-size: 16px;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190131/20190131151928_79339.jpg\" width=\"700\" height=\"466\" alt=\"\"><br></span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190131/20190131151733_98217.jpg\" width=\"700\" height=\"525\" alt=\"\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190307/20190307111249_60553.jpg\" width=\"700\" height=\"575\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190307/20190307110837_38391.png\" width=\"700\" height=\"107\" alt=\"\"></p><p><span style=\"font-size: 16px;\">平谷是中国著名的大桃之乡，22万亩大桃堪称世界最大的桃园、中国最大的桃乡、首都最大的果区。以花为媒，营销平谷，北京平谷国际桃花节每年4月中旬左右，正是平谷桃花盛开之时，数万亩花的海洋，何其壮观！每年都吸引无数市民和游客慕名前去观赏</span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190131/20190131145158_58537.jpg\" width=\"700\" height=\"525\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190131/20190131145158_12114.jpg\" width=\"700\" height=\"471\" alt=\"\"></p><h3>目的地地图</h3><p><br></p><p><img src=\"http://api0.map.bdimg.com/images/marker_red_sprite.png\"></p><p><img src=\"http://api0.map.bdimg.com/images/marker_red_sprite.png\"></p><p><img src=\"http://online4.map.bdimg.com/tile/?qt=vtile&amp;x=12734&amp;y=4755&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"><img src=\"http://online1.map.bdimg.com/tile/?qt=vtile&amp;x=12736&amp;y=4755&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"><img src=\"http://online0.map.bdimg.com/tile/?qt=vtile&amp;x=12735&amp;y=4755&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"><img src=\"http://online4.map.bdimg.com/tile/?qt=vtile&amp;x=12735&amp;y=4754&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"><img src=\"http://online3.map.bdimg.com/tile/?qt=vtile&amp;x=12734&amp;y=4754&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"><img src=\"http://online0.map.bdimg.com/tile/?qt=vtile&amp;x=12736&amp;y=4754&amp;z=16&amp;styles=pl&amp;scaler=1&amp;udt=20190307\"></p><p><img src=\"http://api0.map.bdimg.com/images/copyright_logo.png\"></p><p>©&nbsp;2019 Baidu - GS(2018)5572号 - 甲测资字1100930 - 京ICP证030173号 - Data © 长地万方</p><h3>装备要求</h3><p><span style=\"font-size: 16px;\">1、自带午餐（带一些瓜果蔬菜和高能量食物，比如黄瓜、士力架、葡萄干、火腿肠等）</span></p><p><span style=\"font-size: 16px;\">2、衣物：户外速干衣服，冲锋衣裤，多带没坏处，热可以把衣服放车上&nbsp;</span></p><p><span style=\"font-size: 16px;\">3、小件：常用药品，创可贴，晕车药等&nbsp;</span></p><p><span style=\"font-size: 16px;\">4、食物：高热量食物（红牛、巧克力，牛肉干）、自备午餐、热水和适量水果</span></p><p><span style=\"font-size: 16px;\">5、装备：徒步鞋，运动鞋、护膝 ，登山杖(换成走平路的杖尖) ，</span></p><p><span style=\"font-size: 16px;\">6、证件：必须携带身份证，</span></p>', 1, '2019-02-19 00:00:00', '2019-03-12 09:04:29'),
(4, 5, '17589658965', '金山岭 蟠龙山', 0, '2019-02-21 00:00:00', '/upload/20190312/a97ba656e3f51c57a8179ab0198cfa78.jpg', '3月13日（周三）CVA中国徒步网【296期】奥森公益徒步活动', '<p>第16界国际市民奥运会将于2019年10月15日至19日在法国普罗旺斯举办</p><p>会议日程安排如下：</p><p>10月15日星期二：开幕式</p><p>10月16日星期三：徒步，山地自行车，环路自行车，游泳，户外寻宝</p><p>10月17日星期四：徒步，山地自行车，环路自行车（公路），游泳，户外寻宝</p><p>10月18号星期五：徒步，山路自行车环路自行车（公路），游泳，户外寻宝，马拉松</p><p>10月19号星期六：徒步，山地自行车，环路自行车（公路），游泳，户外寻</p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190211/20190211174020_24974.jpg\" width=\"800\" height=\"533\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190211/20190211174021_41401.jpg\" width=\"800\" height=\"536\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190211/20190211174021_53936.jpg\" width=\"800\" height=\"538\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190211/20190211174022_50708.jpg\" width=\"800\" height=\"521\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190211/20190211174022_98939.jpg\" width=\"800\" height=\"533\" alt=\"\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190311/20190311185810_83341.jpg\" width=\"800\" height=\"532\" alt=\"\"><br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190122/20190122191041_45052.jpg\" width=\"800\" height=\"532\" alt=\"\"></p>', 1, '2019-02-13 00:00:00', '2019-03-12 09:03:02'),
(5, 1, '17589632589', '公主坟、惠新西街南口', 0, '2019-02-27 00:00:00', '/upload/20190312/4b5730bbdeac93f4bae4e41c7b762422.jpg', '2019.4.21周日---2019.4.29日 黔东南九天八晚 深度畅游', '<p><strong><span style=\"color: rgb(51, 51, 51); font-size: 14px;\"></span></strong></p><p><strong>行程安排&nbsp;</strong></p><p>&nbsp; D1：4.21（周日）全国各地—铜仁或玉屏 ，到玉屏或铜仁南火车站集合，15:00（有可能调整）坐车去江口，住江口。江口农家山庄晚餐。</p><p>&nbsp;D2：4.22（周一）早7:30出发，江口～梵净山（车程半小时），梵净山景区游览。14:00集合去镇远（车程1.5小时），逛镇远古城，赏镇远赏夜景。午餐梵净山自己解决，镇远晚餐，住镇远。</p><p>&nbsp;D3：4.23（周二），早7:30出发，镇远～舞阳河（车程20分钟），舞阳河景区游览3小时。11:30舞阳河～云台山（车程），云台山景区附近午餐，14:00徒步游览云台山。16:30云台山~西江（车程2小时），西江晚餐（品长桌宴）赏西江千户苗寨夜景，住西江。</p><p>&nbsp;D4：4.24（周三）早9:30出发，西江~石桥（车程1小时），徒步游览石桥，石桥大溶洞，古法造纸（游览2小时），午餐石桥。13:00出发，石桥~丹寨龙泉山（车程约40分钟）看满山映山红（游览2小时），16：00丹寨～榕江（车程1.5小时）游览三宝侗寨，鼓楼下吃不一样的特色晚餐。住榕江。</p><p>&nbsp;D5：4.25（周四），早7:00出发，榕江~加榜梯田（车程2小时），党扭下车徒步到加页村午餐，下午3点徒步到加车村，深度游览加榜梯田，晚餐加页，住加榜。</p><p>&nbsp;D6：4.26（周五）早7:00出发，加榜~岜沙（车程2.5小时），岜沙看最后的枪手部落，（11:30-12:00表演），岜沙～肇兴侗寨（车程1小时），堂安梯田～肇兴，肇兴中餐。下午2:00徒步堂安梯田8公里，游览肇兴侗寨，来回4小时，肇兴晚餐，晚上8:00看侗族大歌表演，住肇兴。</p><p>&nbsp;D7：4.27（周六）早7:00出发，肇兴~黎平（车程1小时），参观黎平会议旧址和翘街（参观2小时左右），翘街小吃街aa吃各种小吃。11:30黎平~荔波（车程3小时），参观大七孔景区，住荔波。晚餐荔波。</p><p>&nbsp;D8：4.28（周日）早7:00出发，小七孔景区（车程半小时），徒步小七孔景区（5.5小时），午餐自理。荔波～青岩古镇（车程3.5小时），青岩古镇。晚餐青岩古镇。&nbsp;</p><p>D9：4.29（周日）早自行安排游青岩古镇，10：00出发云峰屯堡（车程约1小时），游览云峰屯堡和本寨，中餐自理。15:30云峰～贵阳火车站（车程1.5小时）。 17:30全部行程结束！</p><h3>费用说明</h3><p>费用说明 &nbsp;更多&gt;</p><p><strong>【费用包含】：</strong></p><p>交通：当地往返旅游大巴车费、油费，高速费，停车费及司机食宿费用。</p><p>领队全程带队及保险费，每天一瓶水。</p><p>餐费：行程内包含的4早餐，12正餐。</p><p>住宿：8晚双人标间（大床房）或三人间（单人有特殊要求的补房间差800元）</p><p><strong>【费用不包含】：</strong></p><p>1、北京往返铜仁或玉屏的大交通费用。</p><p>2．餐费：景区路餐和小吃街内的小吃，酒水费用不包含的。</p><p>3、门票：荔波小七孔门票110；大七孔55；云峰屯堡40（也可能不要门票）；青岩古镇门票10，通票80；西江千户苗寨门票100；芭沙门票80；肇兴侗寨100，堂安梯田私家车费10；舞阳河140（优惠110）；云台山60；梵净山门票90，观光车往返20，索道单程90。</p><p>（带上相关证件请带上老年证、学生证、各种能优惠的证件，好多景点60岁以上就有优惠）。以当地实际价格为准。领队也会尽量找旅行社购买有优惠！</p><p>5,一切未在“费用包含”内注明的费用</p><p>（报名成功以打款为最终报名，否则自动取消。户外活动相互理解拒绝占坑！名额在截止日期前报满为自动截止报名！）</p><p>【报名截止】以买上火车票机票后报名成功并付订金1080元为准，活动开始前一周把剩余费用补齐！</p><p>支持微信和支付宝转账，联系电话13681377669/18611174514领队背靠海坨山</p><p>工行账号：6212260200141998951～晏晓江</p><p>【活动成型】活动报名15人成型（不含领队），最多限报35人。</p><p>不成型会提前一周通知，退全部定金。</p><p><strong>【活动费用】</strong>&nbsp;&nbsp;15人～20人3180元，20人以上3080元，活动开始前10天预交1080元定金。</p><p><span style=\"color: rgb(229, 51, 51);\"><strong><br></strong></span></p>', 1, '2019-02-20 00:00:00', '2019-03-12 09:05:39'),
(6, 6, '15263258569', '公主坟、惠新西街南口', 0, '2019-02-20 00:00:00', '/upload/20190312/4caf4d9db36f0855045a08a4d1968634.jpg', '5月【百公里挑战】草原天路轻装穿越百公里，驴友徒步挑战！', '<p>中国66号公路草原天路</p><p>河北有条中国式的66号公路草原天路，美到灼伤双眼！这条路位于张北和崇礼的交界处。蜿蜒的道路、湛蓝的天空、壮丽的草原、众多的风车堪比桌面的壮美景观。</p><p>草原天路全长132.7公里，2011年底建成，连接崇礼滑雪温泉大区和张北草原风情大区的一条重要通道，沿线山高坡陡、沟壑纵深、景观奇峻，展开了一幅百里坝头风景画卷。</p><p>虽然草原天路只是张北坝上的一条柏油公路，但海拔也有千米左右，深色柏油路与黄实线本身就是一条美丽的风景。百里之间，左右徘徊曲折，剧烈地跌宕起伏，静谧深远，仿佛通向梦的彼岸。</p><p>梯田是北方不多见的风光之一，如果不是草原天路，不知道还要跑多远才能看到这样的美景。夏天的颜色还只有翠绿色的单一，但依然能看得见分明的层次。</p><p>秋天塞北梯田最有看头的，除了缤纷的色彩、纵横交错的线条，还有那收割后成垛、成堆、成行码放的各种庄稼。</p><p><strong>【线路分析图】</strong><br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101622_51354.png\" alt=\"\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101700_81733.png\" alt=\"\" width=\"750\" height=\"422\"></p><p><strong>【景区图】</strong></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101803_50548.jpg\" alt=\"\" width=\"750\" height=\"422\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101803_90701.jpg\" alt=\"\" width=\"750\" height=\"501\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101803_43379.jpg\" alt=\"\" width=\"750\" height=\"460\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101804_45912.jpg\" alt=\"\" width=\"750\" height=\"500\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101904_60026.jpg\" alt=\"\" width=\"750\" height=\"456\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20170807/20170807101904_16322.jpg\" alt=\"\" width=\"750\" height=\"499\"></p>', 1, '2019-02-20 00:00:00', '2019-03-12 08:51:57'),
(7, 4, '17365276746', '河南省, 南阳市, 内乡县, , ', 0, '2019-03-01 00:34:32', '/upload/20190301/ea05162811ba8603aad214ee1946c8b3.jpg', '2019年3月9日周六出京登河北怀来长城 大营盘--样边长城--横岭穿', '<p>&nbsp; &nbsp; &nbsp; （样边长城（庙港长城）是怀来县境内保存最完整、建筑质量、规格最高的一段长城，位于庙港东、横岭西，总长约3000米，城墙都是用规则的大石条砌成，之所以叫样边长城，据考证：明代修筑长城时把这段长城作为样板，供负责修筑长城的人参观采样，所以说这段长城是明长城修建时的试点和典型。说它是明代修建长城的“样板工程”，是名副其实的。因为庙港长城规格建制十分完整，质量也很高，城修得很坚固。据记载，明开国大将徐达修筑居庸关长城时想出了一个办法，为保证工程质量，先选择部分险要地段修建长城“样板”，以此来标定长城的质量和规格（也有一说是戚继光和戚继祖修建的这段长城）。最后选定在庙港一带，建造出明长城的精品——庙港长城。庙港长城由整齐的石条砌成，城基宽5.5米、顶宽4米左右、高度在4至8米之间。这段绵延3公里的长城，还有许多科学的配套设施，墙上用石板砌出檐来做排水之用，另外还有泄水孔，以排雨水。这段长城内侧每200米设有一个门洞，城上有石阶，供士兵上下城墙用。城墙较宽，可容四匹马并行或8个人并排，外有女儿墙，内有垛口，每300米设有敌楼或墙台。样板长城质量的检验制度也很严格，据说修完后，验收员要用箭射城墙，如无松动和掉皮方可通过。这段长城保存得较中国其它地方的长城明显完整得多，这与它的工程质量不无关系。）<br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190220/20190220225816_71155.jpg\" width=\"800\" height=\"603\" alt=\"\"></p>', 1, '2019-03-01 21:33:45', '2019-03-14 19:50:11'),
(8, 5, '17630968036', '河南省, 鹤壁市, 淇滨区, ', 20, '2019-03-01 06:32:44', '/upload/20190301/96af0367465b89dcfcc9d1c48898392a.jpg', '3月2日周六～冬走百里画廊第八段，永宁古城逛吃买，探访百里乡居“', '<p><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp;白河峡谷是从延庆县东北旧县境内的白河堡水库，经过怀柔，流向密云水库的河流大峡谷。这是一处原始风貌保存相当完整的自然峡谷，与永定河宫厅山峡和拒马河峡谷并称“京都三大峡谷”，而白河峡谷因其壮丽的风景，更有“百里画廊”的美誉。白河峡谷是一处原始风貌保留相当完整的自然峡谷，被形容为“百里画移动图片廊”。峡谷沿途道路险峻，村落相对稀少，因此，适宜做富于探险精神的自然探索游。从延庆县的白河堡水库大坝的东北方向进入峡谷，便可领略峡谷的风貌。近百米高的悬崖如利剑将波涛滚滚的白河劈开巍峨的明代长城在山间蜿蜒伸展，两岸峭壁林立，山泉汇成浩荡的激流，大自然的奇异景色令人颇感震撼。</span></p><p><span style=\"font-size: 16px;\">红旗甸</span></p><p><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; 北京市延庆县千家店镇红旗甸村位于延庆县城东北部，距镇区25公里，风景秀丽，气候凉爽。下辖车道沟、一大队、二大队、三大队4个自然村，区域面积2.2万亩，山场林地面积20285.4亩，耕地面积1005亩，生态林面积19716亩。</span>全村共有152户，322口人，有劳动力191人。</p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190221/20190221170207_82693.jpg\" width=\"800\" height=\"600\" alt=\"\"></p><p><span style=\"font-size: 16px;\">百里乡居～大石窑村</span></p><p><span style=\"font-size: 16px;\">&nbsp; &nbsp; &nbsp; 大石窑村位于延庆县城东北部，距延庆县城65公里，下辖大石窑、熊洞沟、西沟三个自然村。</span></p><p><span style=\"font-size: 16px;\">　&nbsp; &nbsp;十多年废弃不用的老村旧宅，如今成了城里人趋之若鹜的精品酒店。大石窑只是一个开始。今后，千家店镇将引入全国知名民宿品牌，保护开发全镇10个村604套闲置院落，将全镇打造成精品民宿集聚区。百里山水画廊升级休闲小镇。</span></p><p><span style=\"font-size: 16px;\">　&nbsp; &nbsp; 从北三环出发，驱车3个小时，来到140多公里外的千家店镇大石窑村。光是沿途的层峦叠嶂、蔽日浓荫，已经让人忘掉长途劳累。再看半山坡上这个民宿酒店，一间间客房，就设在老瓦、石头墙、木门窗的老房子里，让人油然而生亲切感。再看房间里面，棚顶还是老椽老檩，却加装了现代灯具；火炕还在，上面铺上了席梦思床垫和雪白的床单被罩；过去放柜子桌子的地方，改造成了卫生间。既保留了农宅的历史信息，又适合现代居住。这里，就是千家店镇打造精品民宿集聚区的样板。</span></p><p><span style=\"font-size: 16px;\">　　“百里乡居”二期工程将对老村剩余75套院子进行保护性开发。“将引入千里走单骑、过云山庄、大乐之野、茑舍、紫一川等5家全国一流民宿品牌，建设精品民宿，打造一个精品民宿集群。”京西北旅游公司相关负责人王晓丽介绍。这些企业还将负责建图书馆、艺术馆、咖啡馆、亲子乐园、供销社等配套设施，发展住宿之外的更多业态。</span></p><p><span style=\"font-size: 16px;\">　　“百里乡居”是一个开始。早在2010年，千家店镇全域就挂牌成为国家4A级景区“百里山水画廊”。2014年，延庆全域晋级为“中国延庆世界地质公园”，千家店成为其中的四大园区之一。眼下，千家店镇正在打造“百里山水画廊休闲度假区”。</span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190221/20190221170025_91236.jpg\" width=\"800\" height=\"600\" alt=\"\"></p>', 1, '2019-03-01 21:45:22', '2019-03-14 19:49:19');

-- --------------------------------------------------------

--
-- 表的结构 `wl_articles`
--

CREATE TABLE `wl_articles` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL COMMENT '文章发布人',
  `img` varchar(200) DEFAULT NULL COMMENT '文章图片',
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '文章状态',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章';

--
-- 转存表中的数据 `wl_articles`
--

INSERT INTO `wl_articles` (`id`, `user_id`, `img`, `title`, `content`, `status`, `create_time`, `update_time`) VALUES
(1, 1, '/upload/20190312/49cf4d694a7b76c8aec0e98eea55ff87.jpg', 'IVV成立50周年暨CVA成立15周年的系列回顾（二十一）', '<p><span style=\"font-size: 12pt;\">2009年，世界徒步运动最权威的官方组织国际市民体育联盟（IVV）向平谷区政府颁发了国际标准徒步线路认证书。在这条徒步大道上，山峰、峡谷、古迹、湖泊、森林景观齐全；道路迂回盘转，落差近千米，可赏烂漫山花，可采北寨红杏，可观燕石长城、明长城烽火台，抗日战争被服厂等遗址，可采千亩森林公园野磨野榛。王晓英说：“这条路已经颇有些名气了，附近有京东大峡谷、石林峡、三羊古火山等名胜风景区，还有燕国石长城、明长城烽火台等古迹，总体植被覆盖率大约为67%，最高的地方为85%，称得上是一条生态大道。</span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103006_58565.jpg\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103006_32505.jpg\" width=\"700\" height=\"933\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103007_40431.jpg\" width=\"700\" height=\"525\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103007_50682.jpg\" width=\"700\" height=\"525\" alt=\"\"></p><p><br></p><p><br></p><p><font>这条路全长</font><span style=\"color: rgb(51, 51, 51); font-size: 16px;\">42.195公里的徒步路线，起点为中国红杏之乡南独乐河镇北寨村，途经四座楼山景区，终点为熊儿寨乡花峪村，沿途村庄较少、道路宽阔，全部为乡村三级公路标准，路宽7.5米，主要为沥青路面，也有部分水泥路面和沙石道路，全程水平路面占二分之一，上坡路和下坡路各占四分之一，主要以盘山公路为主，中途岔开大道，走7公里小路。大道沿途山花烂漫、树木葱葱，空气清新，站在山顶眺望，道路迂回，如丝带般盘转在山体上，堪称一条绿色大道、生态大道，是徒步爱好者亲近自然的绝佳场所。</span><br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103428_72364.jpg\" width=\"700\" height=\"523\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180917/20180917103429_95786.jpg\" width=\"700\" height=\"404\" alt=\"\"></p>', 1, '2019-02-27 00:00:00', '2019-03-14 20:08:59'),
(2, 4, '/upload/20190312/ff2ab2e6540ff0b3363d73fe7add7d23.jpg', 'KLARUS鼎力赞助2017中国秦岭50KM超级越野赛', '<p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">白河峡谷是从延庆县东北旧县境内的白河堡水库，经过怀柔，流向密云水库的河流大峡谷。这是一处原始风貌保存相当完整的自然峡谷，与永定河宫厅山峡和拒马河峡谷并称“京都三大峡谷”，而白河峡谷因其壮丽的风景，更有“百里画廊”的美誉。白河峡谷是一处原始风貌保留相当完整的自然峡谷，被形容为“百里画移动图片廊”。峡谷沿途道路险峻，村落相对稀少，因此，适宜做富于探险精神的自然探索游。从延庆县的白河堡水库大坝的东北方向进入峡谷，便可领略峡谷的风貌。近百米高的悬崖如利剑将波涛滚滚的白河劈开巍峨的明代长城在山间蜿蜒伸展，两岸峭壁林立，山泉汇成浩荡的激流，大自然的奇异景色令人颇感震撼。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">红旗甸</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">北京市延庆县千家店镇红旗甸村位于延庆县城东北部，距镇区25公里，风景秀丽，气候凉爽。下辖车道沟、一大队、二大队、三大队4个自然村，区域面积2.2万亩，山场林地面积20285.4亩，耕地面积1005亩，生态林面积19716亩。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">全村共有152户，322口人，有劳动力191人。</span></p><p style=\"text-align: justify;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190221/20190221170207_82693.jpg\" width=\"800\" height=\"600\" alt=\"\"></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">百里乡居～大石窑村</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">大石窑村位于延庆县城东北部，距延庆县城65公里，下辖大石窑、熊洞沟、西沟三个自然村。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">　十多年废弃不用的老村旧宅，如今成了城里人趋之若鹜的精品酒店。大石窑只是一个开始。今后，千家店镇将引入全国知名民宿品牌，保护开发全镇10个村604套闲置院落，将全镇打造成精品民宿集聚区。百里山水画廊升级休闲小镇。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">　从北三环出发，驱车3个小时，来到140多公里外的千家店镇大石窑村。光是沿途的层峦叠嶂、蔽日浓荫，已经让人忘掉长途劳累。再看半山坡上这个民宿酒店，一间间客房，就设在老瓦、石头墙、木门窗的老房子里，让人油然而生亲切感。再看房间里面，棚顶还是老椽老檩，却加装了现代灯具；火炕还在，上面铺上了席梦思床垫和雪白的床单被罩；过去放柜子桌子的地方，改造成了卫生间。既保留了农宅的历史信息，又适合现代居住。这里，就是千家店镇打造精品民宿集聚区的样板。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">&nbsp; &nbsp;过去的大石窑村，“房子都盖在半山坡的岩石上，吃水困难，早上一起来得先挑两担水，一挑一个钟头。”村党支部书记侯文有说。村里没有平坦路，收了庄稼，靠人背驴驮才能弄回家。卖的时候再人背驴驮送出去。村民买吃的喝的用的，全靠背。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">　　“百里乡居”二期工程将对老村剩余75套院子进行保护性开发。“将引入千里走单骑、过云山庄、大乐之野、茑舍、紫一川等5家全国一流民宿品牌，建设精品民宿，打造一个精品民宿集群。”京西北旅游公司相关负责人王晓丽介绍。这些企业还将负责建图书馆、艺术馆、咖啡馆、亲子乐园、供销社等配套设施，发展住宿之外的更多业态。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 16px;\">　　“百里乡居”是一个开始。早在2010年，千家店镇全域就挂牌成为国家4A级景区“百里山水画廊”。2014年，延庆全域晋级为“中国延庆世界地质公园”，千家店成为其中的四大园区之一。眼下，千家店镇正在打造“百里山水画廊休闲度假区”。</span></p>', 1, '2019-02-20 00:00:00', '2019-03-13 21:17:51'),
(3, 5, '/upload/20190312/14d1ad105180f1ba011106c337d143ed.jpg', '这家公司在岩壁上开了个快闪店 专门为攀岩者提供补给', '<p><font></font></p><p><span style=\"font-size: 12pt;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font></font></span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font></font></span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font>这家商店有一个非常应景的名字</font>——cliffside shop（崖边商店），它悬吊在著名的岩壁“bastille wall（巴士底狱墙）”上。</span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font>店内唯一的店员会向经过的攀岩者们免费发放运动外套、袜子和其他装备。</font></span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font>店内唯一的店员会向经过的攀岩者们免费发放运动外套、袜子和其他装备。</font></span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171012/20171012120731_36136.jpg\" alt=\"\" width=\"600\" height=\"400\"></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171012/20171012120731_42851.jpg\" alt=\"\" width=\"600\" height=\"300\"></p><p><font>这个独特的项目由</font><span style=\"font-size: 12pt;\"> 37.5 technology 主办，这是一家卖材料技术的公司，旗下出品的服饰涵盖极限运动和日常所需，专利技术是可以帮助人体保温（37.5°），同时像阿迪达斯这样的运动巨头也和他们有合作。&nbsp; &nbsp;</span><br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171012/20171012120839_21064.jpg\" alt=\"\" width=\"600\" height=\"300\"><br></p><p></p><p></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font>尽管这家店只开了</font>24小时，看似只是一个博人眼球的营销噱头，但它确实为许多攀岩者解决了难题。</span></p><p><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"><font>攀岩者们在攀登悬崖的过程中穿着会比较单薄，越向上攀爬气温越低，等到达山顶时就会感觉冷了，这家商店的存在就是为了竭尽所能为攀岩者提供衣服上的补给。</font></span></p><p><br></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171012/20171012120904_44782.jpg\" alt=\"\" width=\"600\" height=\"371\"><br></p>', 1, '2019-02-13 00:00:00', '2019-03-14 21:16:55'),
(4, 6, '/upload/20190312/1630279ab046846414f986571e3066cd.jpg', '州长与他们会面了！黔东南携手IVV、CVA又将申办一项国际赛事', '<p><span style=\"font-size: 12pt;\"><font>黔东南苗族侗族自治州，位于贵州省东南部。下辖</font>16个县市，首府凯里市。全州辖凯里1市和麻江、丹寨、黄平、施秉、镇远、岑巩、三穗、天柱、锦屏、黎平、从江、榕江、雷山、台江、剑河15县，凯里、炉碧、金钟、洛贯、黔东、台江、三穗、岑巩、锦屏、黎平10个省级经济开发区。有7个街道，94个镇，110个乡（其中17个民族乡）。境内居住着苗、侗、汉、布依、水、瑶、壮、土家等33个民族。</span></p><p><span style=\"font-size: 12pt;\">10月30日，州委副书记、州长冯仕文在凯里与国际市民体育联盟主席</span><span style=\"font-size: 12pt;\">Giuseppe Colantonio</span><span style=\"font-size: 12pt;\"><font>一行座谈交流。国际市民体育联盟秘书长</font></span><span style=\"font-size: 12pt;\">Raymond &nbsp;Claude</span><span style=\"font-size: 12pt;\"><font>，国际市民体育联盟</font>(中国)秘书长金乔出席座谈。州委常委、副州长桂富强主持座谈。</span></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171102/20171102175524_12404.jpg\"><br></p><p style=\"text-align: justify;\">座谈会现场</p><p style=\"text-align: justify;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171102/20171102175809_54787.jpg\"><br></p><p><span style=\"font-size: 12pt;\">CVA秘书长金乔、IVV秘书长claude、IVV主席Colantonio（从右往左）</span></p><p><span style=\"font-size: 12pt;\"><font>冯仕文代表州委、州政府和黔东南各族人民对</font>Giuseppe Colantonio一行的到来表示热烈欢迎，并介绍了我州州情和体育事业发展情况。</span></p><p style=\"text-align: justify;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20171102/20171102175620_37157.jpg\"><br></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><font>冯仕文说</font>&nbsp; &nbsp; &nbsp;</span><br></p><p><span style=\"font-size: 12pt;\"><font>黔东南素有</font>“中国聚宝盆·大美黔东南”的美誉，这里民族文化多彩绚丽、自然生态环境优良、旅游资源丰富独特、交通区位优势明显。近年来，我们深入学习贯彻习近平新时代中国特色社会主义思想，结合自身实际，创造性开展工作，全州经济社会实现了历史性跨越，体育事业取得了长足发展。</span></p><p><span style=\"font-size: 12pt;\"><font>当前，我们正认真贯彻落实党的十九大精神和习近平总书记在贵州省代表团讨论时讲话精神，以习近平新时代中国特色社会主义思想为指引，高举中国特色社会主义伟大旗帜，围绕党的十九大的战略部署，落实党的十九大提出</font>“广泛开展全民运动，加快体育强国建设”的要求，积极广泛开展全民健身运动，推动黔东南由“体育大州”向“体育强州”转变。</span></p><p><span style=\"font-size: 12pt;\"><span style=\"font-size: 12pt;\"><font>黔东南州与国际市民体育联盟开展合作以来，双方合作领域不断拓宽，成功举办了两届徒步大会，徒步活动成为了黔东南州全民健身的一个品牌，为我州全民健身运动奠定了坚实基础，希望国际市民体育联盟进一步加强与黔东南州的合作交流，做好徒步旅游目的地的项目规划，积极指导和帮助黔东南州申办第十七届国际市民体育联盟奥林匹克运动会，与黔东南州共同打造国际知名的徒步旅游目的地，让黔东南州成为全球全域全时的徒步旅游最具魅力、最佳理想地，为热爱徒步的国际市民开创徒步旅游的新理念和新征程。</font></span><br></span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><br></span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(255, 255, 255); font-size: 14px;\">座谈会<span style=\"color: rgb(255, 255, 255); font-size: 14px;\">座谈会现场</span>现场</span><span style=\"color: rgb(255, 255, 255); font-size: 14px;\">座谈会现场</span><br></p>', 1, '2019-02-21 00:00:00', '2019-03-14 19:59:48'),
(5, 4, '/upload/20190312/5fced341fa9032c85c991facf1b2991d.png', '中国“徒步旅游”的鼻祖—潘德明', '<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><font>如今旅游已经成为了人们生活中不可缺少的一部分，随着时代的发展，人们对于旅游的有着很多的创新，出现了</font>“穷游”、自驾游、“徒步环游”等等，这些旅游形式不仅增加了旅途中的趣味，更是一种自我的挑战。不过这两年来的“徒步旅游”吸引了很多年轻人的挑战，然而很多人不知道的是，中国首个“徒步全球”旅游的人，他的故事和经历可以用惊艳来形容，他曾经和希特勒在一起笑谈，用8年的时间走遍全球30多个国家，更是拥有30个国家政府首脑的签名，轰动一时！</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><font>他就是中国</font>“徒步旅游”的鼻祖—潘德明，他是中国人类历史上徒步环游地球第一人。当时的潘德明为了打破中国人“雪东亚病夫耻”，坚持“以谋世界上之容光”的信念，在自己1930年的时候出发前往徒步环球之旅，在1938年7月返回上海。他全程依靠着徒步，历尽艰辛，耗时8年。先后到达30多个国家，积累了大量珍贵纪念资料，会见30多个国家的元首。</span></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\"><font>潘德明的壮举轰动了整个地球，以他的行为角度，令世界认识了中国人。他是中国的名片。潘德明第一步从越南西贡经柬埔寨来到了泰国，又过马来西亚，渡海到达新加坡。新加坡华侨巨商胡文虎是第一个在《名人留墨集》上题词的人。他的题词是：</font>“希望全世界的路都印着你脚车（自行车）的轮迹。之后他有来到了印度，见到了当时的泰戈尔和圣雄甘地。之后到了德国，见到了当时名震一时的希特勒，当时希特勒听说中国有一个这么执着、毅力的人，很想见一见他，于是希特勒和潘德明两人在一起笑谈交流，等到潘德明起身离开的时候，希特勒说了一句话：我从来就没有小瞧过中国，你们以后会幸福的。</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\">&nbsp;</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-size: 12pt;\"></span></p><p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(51, 51, 51); font-size: 16px;\"></span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-size: 16px;\"></span><br></span></span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20181228/20181228173944_53043.png\" width=\"600\" height=\"806\" alt=\"\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20181228/20181228173944_78310.png\" width=\"600\" height=\"813\" alt=\"\"></p><p><span style=\"color: rgb(51, 51, 51); font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>', 1, '2019-02-28 00:00:00', '2019-03-14 21:03:44'),
(6, 5, '/upload/20190312/a29dad7735214636c1bf5bc6269a0ac4.jpg', '全民健身工作部际联席会议联络员会议召开|赵勇', '<p><font>&nbsp; &nbsp; &nbsp; &nbsp; </font><span style=\"font-size: 12pt;\"><font>深入学习贯彻十九大精神</font></span><span style=\"font-size: 12pt;\">&nbsp;<font>以体育综合体推动体育事业改革发展</font><font>&nbsp;</font></span><span style=\"font-size: 12pt;\"></span><span style=\"font-size: 12pt;\">11月3日至5日，国家体育总局副局长赵勇率调研组到湖北省调研体育产业工作。赵勇强调，要深入学习贯彻十九大精神，以体育综合体为主要抓手，加快推进体育强省建设，振兴体育产业，推动全民健身，培养体育人才，推动体育事业改革发</span><span style=\"font-size: 12pt;\">赵勇一行先后走访了洈水汽车露营地、洈水运动休闲特色小镇、石首西普体育中心、京山县文峰网球小镇等体育综合体，实地了解体育综合体建设情况，并召开座谈会，听取推进体育综合体建设问题的意见建</span><font>&nbsp;赵勇强调，要以习近平新时代中国特色社会主义思想，特别是习近平体育思想为指导，做好体育强省建设规划，覆盖全省，落到空间布局上，做成</font><span style=\"font-size: 12pt;\">“管用的规划”“可操作的规划”。要抓三级联创，创立体育强省、</span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; &nbsp;国家运动健康城市、全民健身模范县。要大力发展体育综合体，把城市大型商场或废旧厂房改造成体育综合体，把景区打造成体育综合体，把体育场馆改造改革成综合体，把营地、特色小镇、连片美丽乡村打造成体育综合</span><span style=\"font-size: 12pt;\">勇强调，体育综合体是群众体育、竞技体育、体育产业三位一体的综合体。要把营地体育综合体建设作为战略举措来抓。一要在全国范围内制定营地建设规划，应既是运动项目发展的平台，又是体育产业的平台，也是全民健身的平台，要落到空间布局上，与地方结合起来。二要把每个营地建设成体育综合体，提供运动、文化、游玩、购物、住宿等综合性服务。三要打造不同营地的特色运动项目，特别是家庭运动项目。四要与学校和青少年课外教育相结合，担起青少年课外运动责任，使营地更具生命力。五要突破土地政策瓶颈，在保护生态环境的前提下，利用天然资源优势进行建设。六要与步道建设、特色小镇建设相结合，协同发</span><span style=\"font-size: 12pt;\">勇指出，在城市大型商场或废旧厂房建设体育综合体过程中，要真正按照综合体的思路，满足综合性需要，包括项目综合性、家庭消费模式综合性、服务</span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; &nbsp;综合性。综合体要以体育为媒介，满足群众吃、住、娱乐等需求。各级政府要大力支持体育综合体建设，搞好规划，提供便利条件，降低综合体商业成本，更好地为大众服务</span><span style=\"font-size: 12pt;\">北省体育局，体育总局经济司、群体司等负责同志陪同</span><font>局探索多元就业模式与体育产业相结合</font><font>业不止一条道路，敢于走出安全区、舒适区，走向未知的全新领域也是一种选择。近年来，国家大力提倡体育产业发展，鼓励体育事业和体育产业相结合；同时，现代</font><span style=\"font-size: 12pt;\">“互联网+”模式和自媒体平台也处于快速发展进程中，把握发展趋势，引导运动员抓住机遇，融入时代，进行多元就业模式探索，实现退役运动员的更大发展，是总局一直努力的课题</span><span style=\"font-size: 12pt;\">帮助</span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; 运动员了解自身职业兴趣、更好择业的过程中，总局相关部门重视现代技术手段的开发和应用，力争科学指导运动员再就业方向。近年来，在购买专业机构测评服务的基础上，积极开发可用于大数据分析的手机应用平台，为全国运动员提供职业兴趣测评、求学指导和创业能力评价等服务</span><font>外，经中国奥委会及国际奥委会批准，总局于</font><span style=\"font-size: 12pt;\">2013年引进了国际奥委会运动员职业项目，并翻译推广了项目推出的运动员工具包、运动员成绩管理工具，并将有关内容向国内的运动员及工作人员进行了培训和推广，也取得了良好效果，这些都是总局在多元就业模式下的积极探</span></p>', 1, '2019-02-26 00:00:00', '2019-03-14 20:10:03'),
(7, 6, '/upload/20190302/b6073955b4e4e17138ac21f57af654a8.jpg', '第十三届平谷桃花节国际徒步大会即将隆重举行', '<p>&nbsp; &nbsp; <span style=\"font-size: 12pt;\"><font>桃花春色暖先开，明媚谁人不看来</font>. 四月平谷的美在于青山绿水和艳丽花海，而在群芳之中，桃花最负盛名。每年的四月间，漫山遍野的杏花、桃花给平谷带来了绚丽多彩的春天。</span>&nbsp;&nbsp;</p><p><span style=\"font-size: 12pt;\">“健康徒步,乐在桃花”第十三届平谷桃花节国际徒步大会，将于2019年4月13日如期举行,跟着中国徒步网小伙伴的脚步，去感受桃花漫舞的春天吧！平谷桃花节国际徒步大会，已如约举办到第十三届.徒步距离分为12公里、25公里、42公里三个路段，能够满足所有徒步爱好者的需求。这是非竞技性的休闲徒步活动，大家能享受徒步健身的快乐，还能徜徉花海。我们相信，景美人更美。</span></p><p><span style=\"font-size: 12pt;\"><font>平谷位于京津冀交界处，拥有中国最大的桃园，还有经过</font>IVV国际标准认证的步道 -“北京平谷国际徒步大道”.这条徒步大道开辟了首条“国际标准”的徒步步道建设的先河, 为中国市民休闲健身事业走向国际化、专业化做出了典范工程。 近十年来这条“国际徒步大道”已成为一条绿色大道,生态大道. 随着平谷桃花节国际徒步大会影响力的不断扩大，来自天津、唐山等很多外地的徒步爱好者也纷纷参加到这次盛典中，我们北京的小伙伴们，占尽天时地利人和，快来和全国的小伙伴一起嗨吧!</span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190311/20190311122943_86088.png\" width=\"600\" height=\"348\" alt=\"\"></p><p><br></p><p><span style=\"font-size: 12pt;\"><font>全民健身，利己利国</font></span></p><p><span style=\"font-size: 12pt;\">“做好冬奥会筹办工作，形成全民健身新时尚。”李克强总理向全国政府人民传达这样的声音，我们用自己的实际行动，参与形成一股全民健身新时尚。在大家的共同参与下，实现“经常参加体育锻炼的人数达到4.35亿人，全民健身将成为推动体育产业发展、拉动内需的新的经济增长点”的目标。</span></p><p><span style=\"font-size: 12pt;\"><font>一起来徒步吧</font>! 成为更好的自己</span></p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20190311/20190311123109_85034.png\" width=\"600\" height=\"409\" alt=\"\"></p><p><span style=\"font-size: 12pt;\"><font>十年磨一剑</font></span></p><p><span style=\"font-size: 12pt;\"><font>南阳徒步网如今已经连续、成功的举办了十二届，即将到来的第十三届，我们也早已整装待发。平谷桃花节徒步活动，也从几十人的小活动，一步一步蜕变成</font>“千人参与，全民徒步”的国际性徒步活动。十年磨一剑，我们将以最饱满的精气神，迎接此次盛典，向全世界人民呈现出我们的精气神。</span></p>', 1, '2019-03-02 09:39:28', '2019-03-14 20:05:06');

-- --------------------------------------------------------

--
-- 表的结构 `wl_associations`
--

CREATE TABLE `wl_associations` (
  `id` int(1) NOT NULL,
  `phone` varchar(30) DEFAULT NULL COMMENT '协会电话',
  `phone1` varchar(30) DEFAULT NULL COMMENT '协会电话1',
  `address` varchar(100) DEFAULT NULL COMMENT '协会地址',
  `email` varchar(30) DEFAULT NULL COMMENT '协会邮箱',
  `content` text COMMENT '协会简介',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='协会介绍';

--
-- 转存表中的数据 `wl_associations`
--

INSERT INTO `wl_associations` (`id`, `phone`, `phone1`, `address`, `email`, `content`, `create_time`, `update_time`) VALUES
(1, '17630968036', '', '南阳南阳南阳南阳南阳', '17630968036@qq.com', '<p><span style=\"color: rgb(6, 6, 6);\">2007年，南阳每日徒步运动中心发起首届全民徒步日活动，社会各界以\"健康、和谐、绿色\"的名义积极响应徒步日活动。</span><span style=\"color: rgb(255, 76, 65);\">著名户外登山领军人物王永峰在全民徒步日倡议书上签名</span><span style=\"color: rgb(6, 6, 6);\">。</span></p><p style=\"text-align: center;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180903/20180903095524_40735.jpg\" alt=\"\"></p><p style=\"text-align: center;\"><span style=\"color: rgb(6, 6, 6);\">&nbsp; 活动发起方负责人金乔主任表示，\"</span><span style=\"color: rgb(6, 6, 6);\"><span style=\"color: rgb(255, 76, 65);\">开展全民徒步日活动，并收集社会各界签名，目的很单纯，希望通过花费不是很高的大型活动，让普通老百姓了解徒步，了解健身的重要意义；让普通百姓重新回归自然，实现心灵纯洁、社会和谐的目标。为此，南阳每日徒步运动中心愿意一直努力下去……</span></span><span style=\"color: rgb(6, 6, 6);\">\"。随着全民徒步日的影响越来越大，各地户外俱乐部也纷纷加入，呼应南阳全民徒步日活动。全国就此掀起徒步风潮。</span></p><p style=\"text-align: center;\"><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180903/20180903095524_79258.jpg\" width=\"600\" height=\"398\" alt=\"\"></p>', '2019-02-27 00:00:00', '2019-03-13 18:24:55');

-- --------------------------------------------------------

--
-- 表的结构 `wl_comments`
--

CREATE TABLE `wl_comments` (
  `id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL COMMENT '评论类型id',
  `user_id` int(5) NOT NULL COMMENT '评论人id',
  `content` text NOT NULL COMMENT '评论内容',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '评论类型1文章 2活动',
  `create_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

--
-- 转存表中的数据 `wl_comments`
--

INSERT INTO `wl_comments` (`id`, `type_id`, `user_id`, `content`, `type`, `create_time`) VALUES
(1, 6, 1, '活动什么时候开始？？？？', 2, '2019-03-01 20:06:15'),
(2, 2, 4, 'asdfasdfasdfasdf', 2, '2019-03-01 20:15:05'),
(3, 1, 5, '活动很好', 2, '2019-03-01 20:15:49'),
(5, 8, 6, '啊手动阀手动阀', 2, '2019-03-02 09:22:17'),
(6, 6, 6, '啊手动阀手动阀', 2, '2019-03-02 09:34:09'),
(7, 6, 6, 'wenzhangbucuo ', 1, '2019-03-02 09:34:43'),
(10, 7, 1, 'asdfasdff', 2, '2019-03-02 14:41:06'),
(11, 5, 1, 'asdfasdf', 1, '2019-03-02 14:44:00'),
(13, 5, 1, 'asdfa', 2, '2019-03-02 14:48:24'),
(14, 7, 4, 'asdfasf', 1, '2019-03-12 08:42:08'),
(16, 7, 7, '123456', 1, '2019-03-13 18:15:42'),
(18, 4, 6, '阿斯蒂芬', 1, '2019-03-13 19:15:57');

-- --------------------------------------------------------

--
-- 表的结构 `wl_notices`
--

CREATE TABLE `wl_notices` (
  `id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wl_notices`
--

INSERT INTO `wl_notices` (`id`, `title`, `content`, `create_time`, `update_time`) VALUES
(3, '户外活动突遇塌方、泥石流如何避险逃生？', '<p><span style=\"font-size: 12pt;\"><font>&nbsp; &nbsp; &nbsp; 泥石流是山地沟谷中由洪水引起的携带大量泥沙、石块的洪流。泥石流来势凶猛，且经常伴随山体崩塌，对农田和道路、桥梁及建筑物破坏极大。泥石流的暴发主要是受连续降雨、暴雨，尤其是特大暴雨、集中降雨的激发。因此，泥石流发生的时间规律是与集中降雨时间规律相一致，一般发生在多雨的夏秋季节，常常是在一次降雨的高峰期，或者是在连续降雨发生之后。</font></span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; 在我国，四川、云南等西南地区的降雨多集中在6-9月，因此泥石流多发生在6-9月；而新疆等西北地区降雨多集中在6、7、8三个月，尤其是7、8两个月降雨集中、强度大，泥石流多发生在这两个月。</span></p><p><span style=\"font-size: 12pt;\"><font>泥石流灾害发生时有哪些避险方法呢？</font></span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; 首先要增强防范意识，在有条件的情况下，注意及时获取当地天气情况预报和山洪泥石流灾害预警信息。在泥石流多发季节，应避免到泥石流多发山区去野外作业或旅游。</span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp; 其次，沿山谷徒步时，一旦遭遇大雨，要迅速转移到安全的高地，不要在谷底过多停留。</span></p><p><span style=\"font-size: 12pt;\">&nbsp; &nbsp; &nbsp;&nbsp;再次，要注意观察周围环境，如听到远处山谷传来闷雷般的轰鸣声、看到沟谷溪水断流或溪水突然上涨等，要高度警惕，这很可能是泥石流正在发生或将要发生的征兆。野外露营时，要选择平整的高地作为营地，尽可能避开有滚石和大量堆积物的山坡下面，不要在山谷和河沟底部扎营。</span></p><p><span style=\"font-size: 12pt;\"><font>&nbsp; &nbsp; &nbsp; 发现泥石流后，要马上向与泥石流成垂直方向的两边山坡上面跑，绝对不能沿着泥石流沟谷下游方向走。</font></span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p>', '2019-02-27 00:00:00', '2019-03-14 20:56:43'),
(4, '徒步，你必须知道的几件事', '<p><span style=\"font-size: 12pt;\"><font>徒步旅行的前提是身体的健康和安全，那它的基础知识就是一些基本的安全规则了。</font></span></p><p><span style=\"font-size: 12pt;\">1.如果你是结伴而行，出于安全考虑，队员之间应该保持一个合理的距离，一般是两到三米，这样可以避免有人因各种原因暂停时，影响队伍的行进，而暂停的队员最好是靠右停下。</span></p><p><span style=\"font-size: 12pt;\">2.暂停人员与队伍的安全距离，在白天应该保持在10分钟或200米的安全距离内，夜晚的话，则要保持在5分钟或20米以内。</span></p><p><span style=\"font-size: 12pt;\">3.徒步行走也是有其技巧的，在上坡时，重心应在脚掌前部，身体稍微向前倾，下坡时，重心则要放在后脚掌，同时降低重心，身体稍微下垂。正确的徒步方式对于膝盖的保护可是很有用的。</span></p><p><span style=\"font-size: 12pt;\">4. 另外，避免直上直下的行走，应该走“之”字形轨迹，尤其是在坡度较陡的路型，这样会安全的多。</span></p><p><span style=\"font-size: 12pt;\"><font>户外徒步的露营问题</font></span></p><p><span style=\"font-size: 12pt;\"><font>长时间的户外徒步，肯定是要住在户外的，这时营地的选择就需要格外注意了。</font></span></p><p><span style=\"font-size: 12pt;\">1.营地的选择，应该以安全，避风，干燥，平整为最佳，另外还要注意周围环境，比如，是否有落石的可能，有没有动物巢穴或蜂巢等。</span></p><p><span style=\"font-size: 12pt;\">2.还有，尽量不要在河畔扎营，除非确定是枯水期，另外离水边太近，夏季的话，蚊虫会很多。但也要注意不能太远离水源，那样取水就会很不方便。</span></p><p><span style=\"font-size: 12pt;\">3. 还要记得拉起防风绳，很多朋友会忽略这个问题，觉得它可有可无，你知道吗?防风绳不仅仅是防风，它更重要的作用是使内外帐分离，把帐篷打饱满!</span></p><p><span style=\"font-size: 12pt;\">4.还有一个小窍门，那就是高锰酸钾的妙用，如果被毒蛇咬伤，可以用它来消毒。户外净水，也可以用它，1升水中加入3,4粒高锰酸钾，30分钟后就可以饮用了。</span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p>', '2019-02-20 00:00:00', '2019-03-14 21:26:10'),
(6, '你不知道的北欧户外牛牌', '<p><span style=\"font-size: 12pt;\"><font>装备党们，</font></span><font>今天我们聊聊一个神秘的北欧户外集团，北欧有很多优秀的户外品牌，比如大家耳熟能详的攀山鼠、老人头、北极狐等，在国内都有一帮死忠粉。北欧品牌体量都不大，现在有抱团取暖的趋势，各个品牌逐渐集中到少数几家户外集团旗下，在营销推广开拓上取得规模效应，比如著名的瑞典</font><span style=\"font-size: 12pt;\">Fenix飞耐时。今天要介绍的是挪威的Swix Sport AS（该户外集团现在正更名为Brav，由私人投资公司Ferd Group所有）。旗下品牌有Swix、Ulvang、Lundhags、Toko、HELSPORT、Hard Rocx、Original Team Wear。</span></p><p><span style=\"font-size: 12pt;\"><b>Swix</b></span></p><p><span style=\"font-size: 12pt;\"><font>一个有着</font>70多年历史的户外品牌，总部在挪威，主要产品有手杖、滑雪板蜡、旱地越野滑雪轮板（可能是夏天没雪憋得太厉害才发明了这运动）、竞赛服装和背包。今年平昌奥运会上挪威越野滑雪传奇、冬奥历史上获得奖牌数量最多的女王比约根用的就是Swix的越野手杖。可见Swix的装备品质之高。</span></p><p><span style=\"font-size: 12pt;\">Swix也有针对徒步登山和越野跑的手杖系列，全部欧洲原产，具体产地立陶宛。博主800多RMB搞到一对越野跑碳素折叠手杖sonic pro trail carbon，单只仅重164克。软木手柄、折叠对接处金属环加固，避免开裂，相对于BD和LEKI动则1200+价格，性价比非常不错。</span></p><p><span style=\"font-size: 12pt;\"><b>Lundhags</b></span></p><p><span style=\"font-size: 12pt;\">Lundhags（国内翻译为隆哈）瑞典品牌，始于1932年，做户外手工靴起家，现在产品线包括户外服装、鞋靴、背包。Lundhags设计上类似北极狐。明星户外服装型号Makke软壳系列，有凯夫拉和瑞士舒乐面料加持，充满硬汉军事风格。</span></p><p><span style=\"font-size: 12pt;\"><font>另外个人比较偏爱的</font>Lundhags的一个背包型号Kliiv 28，大量采用金属扣件，卷口开合，类似于攀山鼠的丰富蕾丝边挂点，隐藏式的手杖和冰镐挂点，专门的户外dao斧挂点，袋鼠仓，大侧袋、腰带胸带可拆卸；PU覆膜，有不错的防水性能。28L作为旅行、Bushcraft和1-2日户外徒步使用。</span></p><p><span style=\"font-size: 12pt;\"><b>Helsport</b></span></p><p><span style=\"font-size: 12pt;\">Helsport，来自于挪威，个人认为是最好的隧道帐品牌之一，当然还有背包、睡袋其他产品。</span></p><p><span style=\"font-size: 12pt;\"><b>Ulvang</b></span></p><p><span style=\"font-size: 12pt;\">Ulvang同样来自挪威，主要产品是美利奴的保暖层和内衣，以及户外配件袜子、帽子、手套等。定位类似于icebreaker和SmartWool，涵盖户外徒步登山、户外生活、跑步系列。全部欧洲原产，具体产地葡萄牙。</span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p>', '2019-02-26 00:00:00', '2019-03-14 21:24:28'),
(7, '真正的跑步减肥从这里开始...', '<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\">如果你减肥不关心自己的食物，不关心自己的饮食，那你的体重只能涨不能降！如果你天天吃油腻的大鱼大肉，回锅肉，红烧肉，吃雪糕，冰淇淋，这哪能瘦下来？</span><br></p><p style=\"text-align: center;\"><b><span style=\"font-size: 12pt;\"><font>2.运动的时间太少了</font></span></b></p><p><span style=\"font-size: 12pt;\"><font>其实减肥也是要看自己努力的程度，你运动得越多，你消耗的能量越多，瘦的越快！如果你运动的时间太少，消耗的能量不足，你就很难瘦下来！</font></span></p><p style=\"text-align: center;\"><b><span style=\"font-size: 12pt;\"><font>3.运动模式有问题</font></span></b></p><p><span style=\"font-size: 12pt;\"><font>如果你运动的模式一成不变，那你的身体就有足够的适应性去适应运动，从而扼杀运动的效果，这也是许多人所苦恼的瓶颈期！</font></span></p><p><span style=\"font-size: 12pt;\"><font>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>&nbsp; 有效的解决方法</b></font></span></p><p><span style=\"font-size: 12pt;\"><font>A.低脂健康饮食</font></span></p><p><span style=\"font-size: 12pt;\"><font>减肥最痛苦的就是想吃不能吃！如果你想瘦下来，我们必须要把握这个原则！少吃肉，多吃菜，黄瓜，西红柿，包菜，西蓝花，青菜，白菜，这些才是你的主食！</font></span></p><p><span style=\"font-size: 12pt;\"><font>当然也可以少吃一点肉类，但我们需要吃用水煮出来的肉，不加任何油，这样才能控制脂肪的摄入，帮助我们更快的，更好的瘦下来！</font></span></p><p><span style=\"font-size: 12pt;\"><font>B.多付出一点</font></span></p><p><span style=\"font-size: 12pt;\"><font>多付出，指的是多付出一点时间，我们一定要多运动一会儿，运动量要再大一点，跑不动了就快走，一定要让运动的时间达标，每天不少于一个小时！这样才有很好的燃脂效果！</font></span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p>', '2019-02-21 00:00:00', '2019-03-14 21:32:52'),
(11, '123', '<p>456</p>', '2019-03-15 20:23:02', '2019-03-15 20:23:02'),
(8, '户外运动时抽筋的原因和处理', '<p><span style=\"font-size: 12pt;\"><font>运动伤害里，最普遍的现象</font>--抽筋。支援田径协会的各级马拉松赛跑时，就曾有处理1000人以上抽筋的记录，由此可见抽筋在运动界之普遍。</span></p><p><font>运动伤害里，最普遍的现象</font><span style=\"font-size: 12pt;\">--抽筋。支援田径协会的各级马拉松赛跑时，就曾有处理1000人以上抽筋的记录，由此可见抽筋在运动界之普遍。</span></p><p><span style=\"font-size: 12pt;\"><font>到底什么是抽筋呢？抽筋其实就是肌肉痉挛，是指身体某部位的肌肉不自主地强力收缩，而且</font></span><span style=\"font-size: 12pt;\"><font>无</font></span><span style=\"font-size: 12pt;\"><font>法很快地放松的现象。抽筋的部位最常发生在小腿后侧、大腿后侧以及大腿的前侧。除此之外，包含脚、手指、手臂、腹部、甚至肋骨间的小肌肉都可能发生抽筋。</font></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>抽筋时，整块肌肉会变得坚硬，有时甚至可以看到皮肤下面有肌肉抽动的现象。肌肉痉挛的时间可能几秒钟后就消失，也有可能持续</font>15分钟以上。若没有及时处理或是中断原来的运动，可能会在短时间内一再地反复发生。</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>造成运动时抽筋的真正原因到目前并没有定论，但一般相信这是由于许多因素相互影响而造成的。</font></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>抽筋的现象及其原因</font>:</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">1、运动前缺乏足够的伸展运动；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">2、肌肉因过度使用而疲乏；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">3、在太炎热的气候下运动；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">4、环境温度突然改变；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">5、水分流失太多；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">6、电解质不平衡；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">7、运动姿势不正确；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">8、情绪太过紧张；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">9、饮食不均衡，药物的副作用等。</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>抽筋的处理</font>:</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">1、马上中断正在进行的运动；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">2、到阴凉通风处，并补充水分，运动饮料尤佳；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">3、慢慢伸展正在痉挛的肌肉，也可以在抽筋的部位作适度的按摩；</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\">4、治疗过程中，可以辅以热疗或冷疗。不论是运动用喷剂或是冷热敷包都有不错的效果。</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>防患抽筋</font></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>运动前的</font>&lt;热身操&gt;及&lt;动后操&gt;当中，加强「拉筋」的动作。</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>运动当中，补充水份之同时，能补充钠</font>(盐份)以及电解水，使体内钾钠平衡。饮用运动饮料如宝矿力等，是能同时补充钠及电解水之外，又能让胃肠的迅速吸收水份，减轻胃肠的重量负担。(吃水果沾盐，不但更好吃之外，还有平衡钾的作用。)</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>适当而渐进的运动。抽筋就是身体在警告我们，现时的运动量，己超过我们的能力。也就是说我们平时的运动量不够，还要多加练。骑车当中发生抽筋时，除了上述的紧急处治之后，回家後至少要有数日的热敷及涂按摩，将乙西希胆咸推开稀释之，否则抽筋将易于再发。</font></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>单车运动抽筋的特殊原因</font></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>齿轮比：齿轮比</font>&lt;重&gt;也是造成抽筋原因之一，您可以试踏轻一点的齿轮比(UCI的规定青少年的齿轮比，比成年人为轻，就是为了保护未成年的发育。)所以试踏轻一点的齿轮比，勤练回转数，绝对是正确的想法。在爬&lt;陡坡&gt;或&lt;巅簸&gt;的地段，选用轻一级的齿轮比，更有意想不到的优势。可是齿轮比&lt;轻&gt;，有时候会让您觉得不耐烦，只要不急，慢慢您会体会齿轮比&lt;轻&gt;的好处。</span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><br></span><span style=\"font-size: 12pt;\"><font>乘车姿势的不当：座垫太低、太前或太后，会形成膝盖或肌肉负担偏。曾有因而膝盖内的十字轫带的断裂之病例。乘车姿势，请注意以「三点调整法」来更正之。</font></span></p><p><span style=\"font-size: 12pt;\">&nbsp;</span></p>', '2019-03-14 21:23:40', '2019-03-14 21:26:42');

-- --------------------------------------------------------

--
-- 表的结构 `wl_outdoors`
--

CREATE TABLE `wl_outdoors` (
  `id` int(5) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '户外知识标题',
  `content` text NOT NULL COMMENT '户外知识内容',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='户外知识';

--
-- 转存表中的数据 `wl_outdoors`
--

INSERT INTO `wl_outdoors` (`id`, `title`, `content`, `create_time`, `update_time`) VALUES
(2, '【户外资讯】《户外活动突遇塌方、泥石流如何避险逃生？》', '<p>泥石流是山地沟谷中由洪水引起的携带大量泥沙、石块的洪流。泥石流来势凶猛，且经常伴随山体崩塌，对农田和道路、桥梁及建筑物破坏极大。泥石流的暴发主要是受连续降雨、暴雨，尤其是特大暴雨、集中降雨的激发。因此，泥石流发生的时间规律是与集中降雨时间规律相一致，一般发生在多雨的夏秋季节，常常是在一次降雨的高峰期，或者是在连续降雨发生之后。</p><p>在我国，四川、云南等西南地区的降雨多集中在6-9月，因此泥石流多发生在6-9月；而新疆等西北地区降雨多集中在6、7、8三个月，尤其是7、8两个月降雨集中、强度大，泥石流多发生在这两个月。</p><p><span style=\"color: rgb(5, 115, 175); font-size: 16px;\">泥石流灾害发生时有哪些避险方法呢？</span></p><p>1.首先要增强防范意识，在有条件的情况下，注意及时获取当地天气情况预报和山洪泥石流灾害预警信息。在泥石流多发季节，应避免到泥石流多发山区去野外作业或旅游。</p><p>2.其次，沿山谷徒步时，一旦遭遇大雨，要迅速转移到安全的高地，不要在谷底过多停留。</p><p>3.再次，要注意观察周围环境，如听到远处山谷传来闷雷般的轰鸣声、看到沟谷溪水断流或溪水突然上涨等，要高度警惕，这很可能是泥石流正在发生或将要发生的征兆。野外露营时，要选择平整的高地作为营地，尽可能避开有滚石和大量堆积物的山坡下面，不要在山谷和河沟底部扎营。</p><p>4.发现泥石流后，要马上向与泥石流成垂直方向的两边山坡上面跑，绝对不能沿着泥石流沟谷下游方向走。</p><p><img src=\"http://www.chinawalking.net.cn/UploadFile/image/20180903/20180903114350_35335.jpg\" alt=\"\"><br></p>', '2019-02-27 15:12:25', '2019-03-14 20:35:53'),
(3, '冬季户外徒步穿越的注意事项', '徒步登山是锻炼身体、增强体质的的运动之一，但是因为冬季气温极低，且路面状况不及其他季节，所以冬季在户外徒步的时候要更加小心。今天就为大家详细介绍冬季户外运动的15个注意事项和冬季徒步登山的必备装备清单：\r\n\r\n\r\n\r\n一、 冬季户外徒步登山注意事项\r\n\r\n1、制定周祥的行动计划。冬季在雪地徒步，大约比夏季徒步多消耗一倍的体力，相应的，徒步速度也由夏季的每小时3公里下降到每小时1.5公里左右。因此在设计路线的时候，必须考虑距离和体力因素，不要设计太长的路线，在登山前获取可靠的天气预报，以便对气候和落日时间也要有所了解。切记将出行信息告知家人或朋友。\r\n\r\n\r\n\r\n2、穿衣原则\r\n\r\n冬季户外穿衣一般遵照多层原则，三至四层的穿着可以保护你免受寒冷和风雨的侵害，还能灵活的根据环境调整温度。\r\n\r\n基材层：是排汗层，需要选择速干导湿性能良好', '2019-02-19 00:00:00', '2019-02-05 00:00:00'),
(4, '步新手谨记这几大法则，徒步与健康常伴', '<p>1.节奏和强度。徒步、登雪山的强度不宜过大，开始登山时，要循序渐进，然后按照一定的呼吸频率，逐渐加大强度，避免呼吸频率在运动中发生突然变化，心率保持在120～140次/分钟，行走时，用脚板着地，用力要适中，保持身体平衡。登雪山是一项极佳的有氧运动，一般每周锻炼1～2次为宜。</p><p>2.补充水分和电解质。冬季登山运动时要注意补充水分，在满足解渴的基础上再适当多饮些热水，或者在运动前10～15分钟饮水400～600毫升，这样就可以减轻运动时的缺水程度了。饮料应选择含有适当糖分及电解度（并最好选择含有维生素C）的，以尽快减轻疲劳感，恢复体力。最好带上保温杯，喝热水能很好的驱走严寒。</p><p>3.营养和睡眠。冬季户外徒步要保证足够的睡眠时间。</p>', '2019-02-27 00:00:00', '2019-03-14 20:34:50');

-- --------------------------------------------------------

--
-- 表的结构 `wl_users`
--

CREATE TABLE `wl_users` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `phone` varchar(12) DEFAULT NULL COMMENT '手机号',
  `img` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '用户等级1，普通用户 2，管理员',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态0禁用 1启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `wl_users`
--

INSERT INTO `wl_users` (`id`, `username`, `password`, `phone`, `img`, `type`, `status`, `create_time`, `update_time`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '17630968036', '/upload/20190301/ce2e310437b06d5aaa9dd404d0b12154.jpg', 2, 1, '2019-02-26 00:00:00', '2019-03-01 16:48:02'),
(4, 'root', 'e10adc3949ba59abbe56e057f20f883e', '17623652365', '/upload/20190228/c4047c123466903ea036787be45f138a.jpg', 1, 1, '2019-02-28 15:23:13', '2019-02-28 15:23:13'),
(5, 'root1', 'e10adc3949ba59abbe56e057f20f883e', '17623652358', '/upload/20190228/c4047c123466903ea036787be45f138a.jpg', 1, 1, '2019-02-28 15:23:13', '2019-02-28 15:23:13'),
(6, 'root2', 'e10adc3949ba59abbe56e057f20f883e', '17623652396', '/upload/20190228/c4047c123466903ea036787be45f138a.jpg', 1, 1, '2019-02-28 15:23:13', '2019-02-28 15:23:13'),
(7, '123456', 'e10adc3949ba59abbe56e057f20f883e', '15011111111', '/upload/20190313/3e2e66cd5f8e75f448e4e140934c247a.jpg', 1, 1, '2019-03-13 18:12:08', '2019-03-13 18:12:08');

-- --------------------------------------------------------

--
-- 表的结构 `wl_user_article`
--

CREATE TABLE `wl_user_article` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL COMMENT '文章赞的用户id',
  `article_id` int(5) NOT NULL COMMENT '文章id',
  `create_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wl_user_article`
--

INSERT INTO `wl_user_article` (`id`, `user_id`, `article_id`, `create_time`) VALUES
(2, 6, 7, '2019-03-02 11:15:59'),
(3, 1, 5, '2019-03-02 14:43:53'),
(4, 5, 7, '2019-03-02 11:15:59'),
(5, 4, 7, '2019-03-02 11:15:59'),
(6, 7, 7, '2019-03-13 18:16:20'),
(7, 7, 8, '2019-03-13 18:18:41'),
(8, 5, 5, '2019-03-13 19:04:52');

--
-- 转储表的索引
--

--
-- 表的索引 `wl_activitys`
--
ALTER TABLE `wl_activitys`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_articles`
--
ALTER TABLE `wl_articles`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_associations`
--
ALTER TABLE `wl_associations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_comments`
--
ALTER TABLE `wl_comments`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_notices`
--
ALTER TABLE `wl_notices`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_outdoors`
--
ALTER TABLE `wl_outdoors`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_users`
--
ALTER TABLE `wl_users`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wl_user_article`
--
ALTER TABLE `wl_user_article`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wl_activitys`
--
ALTER TABLE `wl_activitys`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `wl_articles`
--
ALTER TABLE `wl_articles`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `wl_associations`
--
ALTER TABLE `wl_associations`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `wl_comments`
--
ALTER TABLE `wl_comments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `wl_notices`
--
ALTER TABLE `wl_notices`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `wl_outdoors`
--
ALTER TABLE `wl_outdoors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `wl_users`
--
ALTER TABLE `wl_users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `wl_user_article`
--
ALTER TABLE `wl_user_article`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
