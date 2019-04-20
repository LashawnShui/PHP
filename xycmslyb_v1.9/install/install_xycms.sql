-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 12 月 27 日 14:36
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `111_xycms`
--

-- --------------------------------------------------------

--
-- 表的结构 `xy_admin_user`
--

CREATE TABLE IF NOT EXISTS `xy_admin_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `xyname` varchar(255) NOT NULL,
  `xypwd` varchar(255) NOT NULL,
  `login_num` int(11) NOT NULL DEFAULT '0',
  `login_date` int(11) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_admin_user`
--

INSERT INTO `xy_admin_user` (`id`, `xyname`, `xypwd`, `login_num`, `login_date`, `c_date`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 102, 1450406897, 1445959692);

-- --------------------------------------------------------

--
-- 表的结构 `xy_admin_user_count`
--

CREATE TABLE IF NOT EXISTS `xy_admin_user_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) NOT NULL,
  `login_date` int(11) NOT NULL,
  `login_ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `xy_admin_user_count`
--

INSERT INTO `xy_admin_user_count` (`id`, `login_name`, `login_date`, `login_ip`) VALUES
(1, 'admin', 1450454400, '127.0.0.1'),
(2, 'admin', 1450540800, '127.0.0.1'),
(3, 'admin', 1450540800, '127.0.0.1'),
(4, 'admin', 1450800000, '127.0.0.1'),
(5, 'admin', 1451145600, '127.0.0.1'),
(6, 'admin', 1451145600, '127.0.0.1'),
(7, 'admin', 1451145600, '127.0.0.1'),
(8, 'admin', 1451145600, '127.0.0.1'),
(9, 'admin', 1451145600, '127.0.0.1'),
(10, 'admin', 1451145600, '127.0.0.1'),
(11, 'admin', 1451145600, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `xy_ads`
--

CREATE TABLE IF NOT EXISTS `xy_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `ad_bs` varchar(255) NOT NULL,
  `c_id` int(6) NOT NULL DEFAULT '0',
  `link_url` varchar(255) NOT NULL,
  `link_img` text NOT NULL,
  `link_w` int(6) NOT NULL,
  `link_h` int(6) NOT NULL,
  `link_file` text NOT NULL,
  `c_order` int(6) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `xy_ads`
--

INSERT INTO `xy_ads` (`id`, `title`, `ad_bs`, `c_id`, `link_url`, `link_img`, `link_w`, `link_h`, `link_file`, `c_order`, `c_date`) VALUES
(3, '分页广告', '', 1, 'http://www.jsxyidc.com', '/uploads/image/20151209/20151209170003_74569.jpg', 1100, 180, '', 1, 1447776000),
(4, '百度', 'ad_150_60', 1, 'http://www.baidu.com', '/uploads/image/20151206/20151206175859_29893.jpg', 150, 60, '', 2, 1449417600),
(5, '测试flash广告', '', 2, 'http://www.baidu.com', '', 1040, 200, '/uploads/file/20151206/20151206180542_55458.swf', 3, 1449417600);

-- --------------------------------------------------------

--
-- 表的结构 `xy_article`
--

CREATE TABLE IF NOT EXISTS `xy_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `a_bold` varchar(255) NOT NULL,
  `a_color` varchar(30) NOT NULL,
  `a_url` varchar(255) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumb` text NOT NULL,
  `v_url` text NOT NULL,
  `a_author` varchar(100) NOT NULL,
  `a_from` varchar(100) NOT NULL,
  `a_order` int(11) NOT NULL DEFAULT '0',
  `c_date` int(11) NOT NULL,
  `u_date` int(11) NOT NULL,
  `is_hot` int(10) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '1',
  `f_path` varchar(255) NOT NULL,
  `a_zt` int(4) NOT NULL DEFAULT '1',
  `xy_price` varchar(255) NOT NULL,
  `xy_model` varchar(255) NOT NULL,
  `xy_spec` varchar(255) NOT NULL,
  `xy_addr` varchar(255) NOT NULL,
  `xy_indus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=216 ;

--
-- 转存表中的数据 `xy_article`
--

INSERT INTO `xy_article` (`id`, `typeid`, `catid`, `title`, `a_bold`, `a_color`, `a_url`, `keywords`, `description`, `content`, `thumb`, `v_url`, `a_author`, `a_from`, `a_order`, `c_date`, `u_date`, `is_hot`, `hits`, `f_path`, `a_zt`, `xy_price`, `xy_model`, `xy_spec`, `xy_addr`, `xy_indus`) VALUES
(194, 3, 21, '邯郸市安全生产监督管理局', '', '', 'http://qyw1950900001.my3w.com/index.html', '邯郸市安全生产监督管理局', '邯郸市安全生产监督管理局', '河北邯郸生产管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局邯郸市安全生产监督管理局', '/uploads/image/20151218/20151218050207_40574.jpg', '', '本站编辑', '本站', 0, 1450368000, 0, 0, 1, 'd8d35304e64d8cb8ec8bf873fd15b93e', 1, '', '', '', '河北省', '政府机构'),
(178, 4, 22, '招聘业务员', '', '', '', '招聘业务员', '招聘业务员', '<p>\r\n	招聘业务员\r\n</p>\r\n<p>\r\n	具体要求：\r\n</p>\r\n<p>\r\n	1.\r\n</p>\r\n<p>\r\n	2.\r\n</p>\r\n<p>\r\n	3\r\n</p>', '', '', '本站编辑', '本站', 0, 1449676800, 0, 0, 1, 'fdb8eebb4f4a0c3f65b8e68fa4c280ab', 1, '', '', '', '', ''),
(195, 1, 19, 'php版本开发成功', '', '', '', '', '', 'php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功php版本开发成功', '/uploads/image/20151218/20151218080825_77013.jpg', '', '本站编辑', '本站', 0, 1450368000, 0, 0, 14, 'fdf7af99da17f70582a1cd8791f8d020', 1, '', '', '', '', ''),
(192, 1, 19, '试试水', '', '', '', '', '', '试试水', '', '', '本站编辑', '本站', 0, 1450195200, 0, 0, 14, 'b4f797faff6d9dd8f8c45af5ff224a2a', 1, '', '', '', '', ''),
(193, 1, 20, '测试新闻信息测试新闻信息测试新闻信息', 'bold', '#ff0000', '', '', '', '测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息测试新闻信息', '', '', '本站编辑', '本站', 0, 1450368000, 0, 1, 5, 'f0d24d02c7126e90522e4f22d1df0dcd', 1, '', '', '', '', ''),
(176, 2, 42, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151209/20151209174907_86978.jpg', '', '本站编辑', '本站', 0, 1449720000, 0, 0, 1, '4f8454a2f5ad5fca7da5e1da3eec5cf8', 1, '50', 'XY-5089', '1100*200*305', '', ''),
(174, 2, 42, '测试产品测试产品1', '', '', '', '', '', '测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1测试产品测试产品1', '/uploads/image/20151209/20151209174547_68831.jpg', '', '本站编辑', '本站', 0, 1449676800, 0, 0, 1, '00fad894576135de86a7f0f1e5d06474', 1, '', '', '', '', ''),
(175, 2, 42, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151209/20151209174751_64928.jpg', '', '本站编辑', '本站', 0, 1449720000, 0, 0, 1, '346e6e59f2f3583b5addb3fcb0dd3f00', 1, '150', '', '', '', ''),
(171, 1, 19, '测试公告信息测试公告信息1', '', '', '', '测试公告信息测试公告信息1', '测试公告信息测试公告信息1', '测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1测试公告信息测试公告信息1', '', '', '本站编辑', '本站', 0, 1449504000, 0, 0, 30, 'e5443d6730c5ab8fe861277710505e6f', 1, '', '', '', '', ''),
(180, 6, 27, '测试视频测试视频', '', '', '', '测试视频测试视频', '测试视频测试视频', '测试视频测试视频', '/uploads/image/20151210/20151210103221_37550.jpg', '/uploads/file/20151210/20151210103318_17272.mp4', '本站编辑', '本站', 0, 1449676800, 0, 0, 17, 'd4495c6f524ecf71ee1939760be6e5b2', 1, '', '', '', '', ''),
(181, 7, 26, '测试公司相册1', '', '', '', '测试公司相册', '测试公司相册', '1|2|3', '/uploads/image/20151211/20151211134434_98483.jpg,/uploads/image/20151211/20151211134434_57246.jpg,/uploads/image/20151211/20151211134434_24900.jpg', '', '本站编辑', '本站', 0, 1449763200, 0, 0, 1, '42979e578526805eddb338e39a4489a8', 1, '', '', '', '', ''),
(196, 1, 25, '母亲让女儿用父亲医保卡买药 母女双双获刑', '', '#333300', '', '', '', '患有高血压的邹某，让女儿用丈夫老周的社保卡买药，合计报销11376.64元，结果母女俩双双获刑。前天，诸暨市人民法院判决的首例冒用社保卡案，给有些人敲响了警钟。\r\n<p style="font-size:14px;">\r\n	75岁的邹某家住诸暨市暨阳街道，丈夫老周今年80岁，患有脑梗塞、冠心病，长期住院治疗。两个女儿都在萧山居住，2011年，邹某夫妇也搬到萧山。\r\n</p>\r\n<p style="font-size:14px;">\r\n	邹某患高血压已有30多年，平日里要吃不少药。因邹某只参加了城镇职工基本医疗保险，药费报销比例较少，而丈夫老周的社保卡能报销不少医药费。为省钱，邹某便让自己52岁的小女儿周某，拿着老周的社保卡去配药。\r\n</p>\r\n<p style="font-size:14px;">\r\n	起初，因诸暨的社保卡不能在萧山使用，周某每次拿着父亲老周的社保卡，去诸暨市中医院、诸暨市人民医院的门诊配药。后来，萧山也能用诸暨的社保卡了，邹某便让周某在萧山市第一人民医院的门诊配药。\r\n</p>\r\n<p style="font-size:14px;">\r\n	从2011年2月至今年7月，周某用她父亲的社保卡，为母亲配药34次，报销药费11376.64元。\r\n	<p style="font-size:14px;">\r\n		老周因长期卧病在床，生活无法自理，虽意识清醒，但已无法说话，故他对妻子女儿使用自己社保卡的事全然不知。\r\n		<p style="font-size:14px;">\r\n			案发后，邹某和女儿退缴赃款11376.64元，并被诸暨市人力资源和社会保障局处以罚款22753.28元。母女俩因涉嫌犯诈骗罪，于今年8月被诸暨市公安局取保候审。\r\n			<p style="font-size:14px;">\r\n				前天，诸暨市人民法院以诈骗罪判处邹某拘役3个月，缓刑5个月，并处罚金2000元；判处周某拘役3个月，缓刑5个月，并处罚金2000元。（转自绍兴网）\r\n			</p>', '', '', '本站编辑', '本站', 0, 1450540800, 0, 0, 1, '7faee65d84b134d2f2067f093620807e', 1, '', '', '', '', ''),
(197, 1, 25, '王石需244亿元买股拯救万科 去年工资1045万', '', '#0000ff', '', '', '', '宝能系距离控股万科只有7.55个百分点的距离——总股本的7.55%，在此之前宝能已经花了约400亿；而万科的管理层持股比例却只有4%多一点，王石去年的工资是1045.6万元。\r\n<p>\r\n	想要拦住门口的野蛮人，单单靠王石和万科管理层显然不够，寻找外部援助正是王石的当务之急。\r\n</p>\r\n<p>\r\n	<strong>鼎有多重？ </strong> \r\n</p>\r\n<p>\r\n	楚王至洛，问周室鼎之大小轻重焉。\r\n</p>\r\n<p>\r\n	激烈空前的“宝万之争”，因宝能咄咄逼人的举牌而起。仅仅掌握4.14%股权的万科管理层，情势危殆。\r\n</p>\r\n<p>\r\n	强敌围城，唯刀兵相见，无它耳！\r\n</p>\r\n<p>\r\n	“道德教化”无用，城下之盟可鄙，对付敌人金银炮弹的最好方式，就是同样用金银炮弹加以回击。于是，在王石向宝能系宣战不到24小时，再度涨停的万科选择了停牌，原因是正在筹划股份发行，用于重大资产重组及收购资产。\r\n</p>\r\n<p>\r\n	以王石为首的万科管理层，需要发行多少股份？募集多少钱？向谁增发？\r\n</p>', '', '', '本站编辑', '本站', 0, 1450540800, 0, 0, 1, '2974849fcf2683aec9a65a8e6bcbe789', 1, '', '', '', '', ''),
(198, 1, 19, '奥巴马匆匆结束年终记者会:得去看《星球大战》', '', '', '', '', '', '　美国总统奥巴马18日在白宫举行年终记者会，作年度“工作小结”，称2015年取得一系列“重要成绩”，令他对即将到来的2016年“充满信心”。尽管任期只剩最后一年，且明年是大选年，奥巴马依然表示，不会靠边站，而会“全力以赴”，继续推动实现长期寻求的施政目标，首要任务是让《跨太平洋伙伴关系协定》(TPP)在国会过关。\r\n<p style="font-size:14px;">\r\n	<strong>夸成绩 不忘揶揄共和党</strong>\r\n</p>\r\n<p style="font-size:14px;">\r\n	当天是白宫在圣诞和新年假期前最后一个工作日，新闻发布厅内外洋溢着节日气氛。奥巴马说，回首即将过去的这一年，他领导的政府以切实的方式回报美国民众，包括经济持续反弹，私营领域就业率创纪录增长，失业率减半，工资水平持续提高。\r\n</p>\r\n<p style="font-size:14px;">\r\n	谈及医疗保险改革这一执政以来最重要的国内政绩，奥巴马说，今年有600万人加入《平价医疗法案》医保体系，未投保的美国人比例降至历史最低的10%，医保价格增长放缓。白宫官员说，这显示“奥氏医改”的可持续性。\r\n</p>', '/uploads/image/20151220/20151220034426_55788.jpg', '', '本站编辑', '本站', 0, 1450540800, 0, 0, 12, '0e062273700f59692c5931ebe77eb1a3', 1, '', '', '', '', ''),
(199, 1, 25, '黑龙江鹤岗矿难现场毒害气体超标持续高温 被困者难生还', '', '', '', '', '', '央广网鹤岗12月20日消息 据中国之声《新闻纵横》报道，记者从黑龙江省鹤岗市煤矿事故抢险救援指挥部获悉，根据专家组分析判断，此次事故现场各种有毒有害气体严重超标且持续高温，面临复杂的救援环境、困难的救援条件，开展井下现场救援工作难度极大，井下被困人员现已无生还可能。因此，专家组建议在地面主井、副井采取注浆封闭向事故现场注惰性气体来灭火的方案。\r\n<p>\r\n	12月16号14点30分左右，黑龙江省鹤岗市向阳煤矿发生瓦斯爆炸事故，当时井下共有52名矿工。截至目前，有33名矿工顺利升井，19人被困井下。事故抢险救援工作仍在紧张进行中。\r\n</p>', '', '', '本站编辑', '本站', 0, 1450540800, 0, 0, 1, 'd3896e2e1120887e8f2979b73780e135', 1, '', '', '', '', ''),
(200, 1, 19, '乌镇定调互联网金融，百度发力金融迎最佳时机', '', '', '', '', '', '<p class="text">\r\n	在刚刚举办的世界互联网大会上，清华大学五道口金融学院发布了《全球互联网金融商业模式报告2015》，报告由中央网信办信息服务管理局牵头，被认为体现了决策层的“定调”意图。\r\n</p>\r\n<p class="text">\r\n	行业监管和政策促进往往理论先行，在该报告中，互联网金融被划分为4个大类、14个子类。有解读认为，对互联网金融的正式定名、定义、定位，体现了决策层对于子行业的发展定位以及监管思路正日渐明晰，开放宽容、鼓励试错之后，推进监管的细化和落地将会跟进，游戏规则会更趋于透明和规范。在不久前，互联网金融也首次被纳入国家五年规划建议，显示出政策面对于行业的重视。\r\n</p>\r\n<p class="text">\r\n	鼓励创新的基调未变，行业监管日益规范，巨头们也正以更坚决的姿态发力互联网金融领域。\r\n</p>\r\n<p class="text">\r\n	本周一，百度董事长李彦宏宣布公司重大架构调整，组建金融服务事业群组(FSG)，由消费金融业务、钱包支付业务、互联网证券业务组成，并由百度副总裁朱光任金融服务事业群组总经理，互联网金融正式成为继搜索、移动服务、新兴业务后新的战略业务。\r\n</p>\r\n<p class="text">\r\n	其中，百度的发力尤其迅猛。此前1个月，百度已在互联网金融领域“连发三箭”，颇显狼性：与中信银行共同设立直销银行“百信银行”;百度钱包推出‘常年返现计划’，向钱包用户提供1%起的现金返还;联手安联保险、高瓴资本联合发起成立互联网保险公司——百安保险公司。\r\n</p>', '', '', '本站编辑', '本站', 0, 1450584778, 0, 0, 1, '28f1c58cb8fd93069c7cd04ee1565f75', 1, '', '', '', '', ''),
(201, 1, 19, '蘑菇街CEO陈琪：我们可能是最奇葩的电商公司', '', '', '', '', '', '<p class="text">\r\n	蘑菇街成立四年多来，在很多人的印象里，一直是垂直电商，垂直女性电商，或者说是垂直导购。所以今年双十一，当我们每天的活跃用户数（DAU）超过2000万，很多分析报告和分析文章把我们和唯品会、聚美优品、京东、淘宝放在一起对比的时候，大家都会有点意外，好像蘑菇街不是这么大的。\r\n</p>\r\n<p class="text">\r\n	事实上，<strong>在我看来，电商行业里有两家奇葩公司</strong>。一家是唯品会，它用B2C的方法干了C2C的品类，把服装这样一个非标准类、非常不适合B2C的行业给干掉了。我们是另一家，蘑菇街的奇葩之处是在服装这个领域里，我们用一个社交和社区的方式，把一个电商的事情给干了。\r\n</p>\r\n<p class="text">\r\n	所有做电商或者做零售的，都会涉及到一个问题：我的用户和流量在哪里？我们和京东、淘宝的视角上有很大差异，从消费者那一头看回来，我们先搞定那群用户，他们想要什么品类，我们就接上什么品类。我们不是通过提供这些品类的商品去搞定这些用户，<strong>而是通过帮助用户去决策，在做购买决策这件事上来帮助他们，让他们留在我们的平台上</strong>，最终把流量导到相应的平台电商去变现。所以，蘑菇街最早的状态是一个导购平台，后来才延伸到交易。\r\n</p>\r\n<p class="text">\r\n	现在，如果让我用最准确的语言来給蘑菇街下个定义，我觉得它是<strong>social media &amp; fashion marketplace（社交媒体与时尚电商）</strong>。尤其是在我们今年强化了社交在产品端的体现之后，“社交＋电商”模式的优势也开始越来越显现出来。最明显的，就是我们每天的活跃用户数从今年年头的大概300多万，到今年夏天增长到四五百万，再到下半年一路高歌猛进，现在差不多日均有接近1000万。从这个意义上来说，蘑菇街其实已经不小了，国内日均活跃用户能超过1000万的并没有很多。\r\n</p>', '', '', '本站编辑', '本站', 0, 1450584761, 0, 0, 1, '53d2d45a7d8899fffa18d02abc65d5ad', 1, '', '', '', '', ''),
(202, 1, 19, '绑上苹果三星的银联 能赢下移动支付这场战争吗？', '', '', '', '', '', '<p class="text">\r\n	对于科技圈和金融界来说，今日一件共同的大事儿就要算中国银联与苹果和三星两家手机巨头在移动支付领域达成的合作了。\r\n</p>\r\n<p class="text">\r\n	根据公告，以Apple Pay为代表的相关产品和技术将在遵循中国国家和金融行业移动支付标准的基础上，在按照中国监管部门要求完成相关检测和认证后，正式向中国地区的银联卡持卡人开放服务，预计最快在2016年初。\r\n</p>\r\n<h2>\r\n	<strong>新一轮军备竞赛</strong>\r\n</h2>\r\n<p class="text">\r\n	从目前来看，用于移动支付的硬件设备主要包括智能手机、智能手表和具备支付功能的智能手环3种类型，技术则以NFC近场支付和二维码、条形码扫描两种方式为主——前者的代表方是中国银联，后者则是阿里巴巴和腾讯。\r\n</p>\r\n<p class="text">\r\n	具体来说，中国银联主导的“闪付”功能基于智能手机上内置的NFC近场支付芯片，通过“挥卡”的形式实现“小额免密免签”（单笔消费额低于300元）的快速支付，以替代此前相对繁复的刷卡、输密码、签单的支付流程。\r\n</p>\r\n<p class="text">\r\n	以此次正式入华的Apple Pay为例，其支持苹果所有支持NFC的硬件设备，包括iPhone 6s/6s Plus、iPhone 6/6 Plus和Apple Watch，而iPad Air 2、iPad mini 3/4及iPad Pro等则可通过APP进行操作。\r\n</p>', '', '', '本站编辑', '本站', 0, 1450585070, 0, 0, 2, '6ec130ec24f6eb0dada478edc3a979c1', 1, '', '', '', '', ''),
(203, 1, 19, '热烈祝贺XYCMS建站系统php版本开发成功', '', '#ff0000', '', '', '', 'XYCMS建站系统php版本开发成功，新系统全站内容生成HTML，方便SEO，网页速度打开快，代码原创，冗余少，执行效率高，功能强大，分为文章，产品，案例，招聘，下载，视频，相册等栏目属性板块，可扩展性好', '', '', '本站编辑', '本站', 0, 1450585121, 0, 1, 6, '23a7cd4a9be45c4da4b36d2871bbc4c6', 1, '', '', '', '', ''),
(205, 2, 42, '测试产品信息', '', '', '', '测试产品信息', '测试产品信息', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220070915_98022.jpg', '', '本站编辑', '本站', 0, 1450552113, 0, 0, 1, 'bfb15db06ee2e74cc6253c196cddb348', 1, '350', '', '', '', ''),
(206, 2, 42, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220071318_49803.jpg', '', '本站编辑', '本站', 0, 1450552386, 0, 0, 1, '6018adba48e8aa9bc9a15d65716d9f39', 1, '450', '', '', '', ''),
(207, 2, 43, '测试产品信息', '', '', '', 'Petrus/柏翠 PE5386烤箱', 'Petrus/柏翠 PE5386烤箱', '测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息', '/uploads/image/20151220/20151220072016_68109.jpg', '', '本站编辑', '本站', 0, 1450552737, 0, 0, 1, '83015719bbf37b56e2a5dc3c8814590d', 1, '600', '', '', '', ''),
(208, 2, 43, '测试产品信息', '', '', '', 'CFXB40FC832-75', '4L', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220072435_65456.jpg', '', '本站编辑', '本站', 0, 1450553007, 0, 0, 1, 'c9f0d48841c8abbc29905e3c31bbe07c', 1, '370', 'CFXB40FC832-75', '4L', '', ''),
(209, 2, 43, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220072702_48792.jpg', '', '本站编辑', '本站', 0, 1450553156, 0, 0, 1, 'd1a6b979400a58e850d572e0bad51d9b', 1, '3500', 'Roomba56708', '0.47L', '', ''),
(210, 2, 43, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220072921_65585.jpg', '', '本站编辑', '本站', 0, 1450553316, 0, 0, 1, 'ca98b04312be7223b5a96994787559c5', 1, '1300', 'RO-185I', '其他', '', ''),
(211, 2, 43, '测试产品信息', '', '', '', '', '', '<p>\r\n	测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息测试产品信息\r\n</p>', '/uploads/image/20151220/20151220073217_22236.jpg', '', '本站编辑', '本站', 0, 1450553474, 0, 0, 1, 'db55e5eebe52539290d40850ef1346e9', 1, '300', 'JYH-A30A1', '3.1L(含)-4L(含)', '', ''),
(212, 3, 21, '上海国际银行金融学院(SIBFI)', '', '', 'http://sibfi.com/', '', '', '上海国际银行金融学院(SIBFI)于2004年4月获得中华人民共和国教育主管理部门的办学许可，是一所具有独立法人资格的中外合作的国际性银行培训和咨询机构。上海国际银行金融学院由国内财经领域排名首位的上海财经大学(SHUFE)、德国法兰克福金融管理学院(Frankfurt School of Finance and Management)、世界银行集团国际金融公司(IFG)与德国投资与开发有限公司(DEG)等国际知名组织联合发起，旨在打造一流的国际金融教育机构。\r\n<p style="text-indent:18pt;">\r\n	上海国际银行金融学院秉承上海财经大学“厚德博学，经济匡时”的校训，发挥学校在金融财务方面的教育优势，积极引进国际一流的金融财务教育资源，致力于培养能适应国际竞争、高新技术发展的金融管理人才、金融创新人才、金融营销人才和金融应用人才。\r\n</p>', '/uploads/image/20151220/20151220073403_51305.jpg', '', '本站编辑', '本站', 0, 1450553632, 0, 0, 1, 'c9713e217f770b7894d6020b871a1750', 1, '', '', '', '上海市', '教育行业'),
(213, 3, 21, '惠州弘毅跆拳道', '', '', '', '', '', '<p class="MsoNormal" style="text-indent:18pt;">\r\n	<strong>惠州弘毅跆拳道，经中跆协批准成立的一支专业授教团队。旨在推广普及我国跆拳道运动，弘扬“礼义廉耻、忍耐克己、百折不屈”的跆拳道精神,响应我国奥运争光计划，培养跆拳道后备人才,为各省市运动队和国家队输送苗子，并为喜爱跆拳道运动的朋友，提供一个互相学习交流和展现自己才能的平台。</strong> \r\n</p>\r\n<p class="MsoNormal" style="text-indent:18pt;">\r\n	<strong>弘毅：宽宏坚毅。谓抱负远大,意志坚强。取自《论语·泰伯》曾子曰：“士不可以不弘毅,任重而道远,仁以为己任,不亦重乎？” \r\n朱熹对弘毅有这样的注解：“弘,宽广也,毅,强忍也,非弘不能胜其重,非毅无以至其远。弘而不毅,则无规则而难立,毅而不弘,则隘陋而无以居之。弘大刚毅,然后能胜重任而远道。”</strong> \r\n</p>', '/uploads/image/20151220/20151220074257_50100.jpg', '', '本站编辑', '本站', 0, 1450554134, 0, 0, 1, '07572797c71ad3718666c5fb84e1c866', 1, '', '', '', '', ''),
(214, 3, 21, '岳阳惜缘婚姻咨询有限公司', '', '', 'http://lkc1979.gotoip4.com/', '', '', '<span style="font-size:16px;"><strong>一、公司简介</strong></span> \r\n<p style="background:white;text-indent:2em;">\r\n	<table width="700" class="ke-zeroborder" border="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<span style="font-size:16px;"><span style="font-size:14px;">&nbsp; &nbsp; &nbsp; 岳阳惜缘婚姻咨询有限公司是经岳阳市工商行政管理局经济技术开发区分局登记成立的专业婚恋品牌机构（统一社会信用代码为：91430600MA4L1PCY1D），是专业从事婚恋交友介绍、婚礼策划、婚姻家庭咨询等业务的正规公司，并由专业律师为公司会员提供法律咨询服务，是岳阳市第一家也是唯一的一家专业的、综合性、一站式从事婚姻家庭服务的机构。 </span></span><br />\r\n<span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp; 本公司是根据社会发展的需求，为社会各界朋友提供婚恋交友和婚姻家庭咨询服务以及专业的法律咨询服务。公司制定新颖的、专业的、规范的经营管理模式，专门为各位单身男女搭建安全、放心、严肃的交友平台，不定期举办各种交友活动，给单身朋友提供更为广阔的相识、相知、相爱的机会。同时承办个性化婚礼和集体婚礼，婚庆活动创意新颖，记载各位新人终生难忘的时刻，营造出欢快、热烈、文明的庆祝氛围。为热爱生活、忠于爱情的新婚夫妇留下一个美好的回忆和永恒的纪念！ </span><br />\r\n<span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在你遇到婚姻家庭矛盾关系无从处理时，在你对人生感到迷茫的时候，我们愿意为你穿针引线、指点迷津，指引你如何正确地去完善自己，接纳他人，帮助你塑造正确的爱情观和人生观，使你的爱情、事业、家庭三丰收。公司的各项咨询服务的最终目标是：为达到各位婚姻家庭关系幸福和谐，为维持社会稳定，促进社会发展，对未来的幸福生活充满美好憧憬，用积极热情、阳光快乐的心态去面对人生的每一天。 </span><br />\r\n<span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;公司办公环境舒适，软件、硬件设施齐全，制度健全，管理规范，拥有经验丰富和高素质的师资队伍，公司本着对各位朋友“真诚、热忱、耐心”的服务态度；“以人为本、诚信至上”的服务原则；“与单身的你携手共创温馨佳缘”的服务宗旨，实行会员制管理。我们塑造的是口碑，追求的是品牌，我们的选择面广，成功率高，保密性强，签订合同，精确推荐，我们公司的每一位员工愿意很热忱的为各位朋友服务，你们的满意就是我们永远追求的目标。 </span><br />\r\n<span style="font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp; 本公司本着对每一位会员严格负责的原则，因此在会员入会前的证件资料审查很严格，并留取资料复印件或扫描件，请各位会员理解并积极配合我们的工作，会员入会时一次性收取会费（不转不退），签订合同。</span>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>', '/uploads/image/20151220/20151220075129_38465.jpg', '', '本站编辑', '本站', 0, 1450554671, 0, 0, 1, '9f1aadfb3433f1190e111b0c12efd18b', 1, '', '', '', '', ''),
(215, 3, 21, '宁波优赛信息科技有限公司', '', '', 'http://www.nbyse.com/index.html', '', '', '<p align="left" class="MsoNormal" style="text-align:left;text-indent:24pt;">\r\n	<span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span><span style="font-size:12px;">宁波优赛信息科技有限公司</span><span style="font-size:12px;">专注于计算机软件开发、物联网技术开发、电子商务运营、互联网信息技术研发与应用等服务，公司汇集了专业的开发与服务团队，立足为客户提供便捷、高效的科技信息应用体验，为企业腾飞助力，实现科技促发展，赢未来。我们倡导以人为本的经营理念，专注热忱，随需应变，与时俱进，协调发展，以合作多赢寻求更多的发展空间，成为充满创新活力、恒久忠实于客户的优秀</span><span style="font-size:12px;">IT</span><span style="font-size:12px;">企业。我们以诚信、廉美为经营理念，孜孜耕耘于高新产业，稳步求发展，在经营的过程中，坚持社会效益为先，本着高度负责的态度，合法经营，永不欺骗。</span><span></span></span></span> \r\n</p>\r\n<span></span> \r\n<p align="left" class="MsoNormal" style="text-align:left;text-indent:6pt;">\r\n	<span><span style="color:black;line-height:200%;font-family:幼圆;font-size:12px;"><span style="font-size:12px;">&nbsp;</span></span><span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span style="font-size:12px;">“</span><span style="font-size:12px;">Young force </span><span style="font-size:12px;">——年轻的力量”，</span><span></span></span></span> \r\n</p>\r\n<span></span> \r\n<p align="left" class="MsoNormal" style="text-align:left;text-indent:21pt;">\r\n	<span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span><span style="font-size:12px;">因为年轻，我们善于创新；</span><span></span></span></span> \r\n</p>\r\n<span></span> \r\n<p align="left" class="MsoNormal" style="text-align:left;text-indent:21pt;">\r\n	<span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span><span style="font-size:12px;">因为年轻，我们勇于开拓；</span><span></span></span></span> \r\n</p>\r\n<span></span> \r\n<p align="left" class="MsoNormal" style="text-align:left;text-indent:21pt;">\r\n	<span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span><span style="font-size:12px;">因为年轻，我们敢于行动与承诺……，这就是我们的力量。 </span><span></span></span></span> \r\n</p>\r\n<span></span> \r\n<p align="left" class="MsoNormal" style="text-align:left;">\r\n	<span style="color:black;line-height:200%;font-family:幼圆;font-size:12pt;"><span style="font-size:12px;">经营目标：做客户最信赖的合作伙伴</span><span><span> <br />\r\n</span><span style="font-size:12px;">经营理念：诚信 合作 共赢</span><span> </span></span></span> \r\n</p>', '/uploads/image/20151220/20151220075610_98937.jpg', '', '本站编辑', '本站', 0, 1450554958, 0, 0, 1, '983df4700a20f7d56a7c92ad4939d3b0', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `xy_book`
--

CREATE TABLE IF NOT EXISTS `xy_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `f_tel` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `reply_content` text NOT NULL,
  `is_view` int(4) NOT NULL DEFAULT '0',
  `c_order` int(10) NOT NULL,
  `b_ip` varchar(50) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `xy_book`
--

INSERT INTO `xy_book` (`id`, `f_name`, `title`, `f_tel`, `content`, `reply_content`, `is_view`, `c_order`, `b_ip`, `c_date`) VALUES
(3, '', '新浪网', '', '测试留言内容', '<p>\r\n	测试留言回复内容\r\n</p>', 1, 0, '', 1447776000),
(4, '咨询姓名', '测试咨询标题', '15851852314', '测试咨询内容', '', 1, 2, '', 1450195200),
(5, '咨询姓名', '测试小题', '15851852314', '试试水', '', 0, 0, '', 1450281600),
(6, 'ddd', '测试小题444', 'ddd', 'dddd', '', 0, 0, '', 1450281600),
(7, '咨询姓名', '测试咨询标题', '15851852314', 'sss', '', 0, 0, '', 1450281600);

-- --------------------------------------------------------

--
-- 表的结构 `xy_category`
--

CREATE TABLE IF NOT EXISTS `xy_category` (
  `cid` int(6) NOT NULL AUTO_INCREMENT,
  `cname` varchar(32) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `c_order` int(11) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `folderpath` varchar(255) NOT NULL,
  `s_id` varchar(11) NOT NULL,
  `s_path` varchar(255) NOT NULL,
  `c_type` int(11) NOT NULL,
  `c_lev` int(11) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  KEY `cname` (`cname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `xy_category`
--

INSERT INTO `xy_category` (`cid`, `cname`, `keywords`, `description`, `content`, `pid`, `c_order`, `thumb`, `folder`, `folderpath`, `s_id`, `s_path`, `c_type`, `c_lev`, `c_date`) VALUES
(17, '产品展示', '产品展示', '产品展示', '产品展示产品展示产品展示产品展示', 0, 2, '', 'products', '/products', '17', '17,', 2, 1, 1441209600),
(18, '新闻动态', '新闻动态', '新闻动态', '新闻动态新闻动态新闻动态', 0, 3, '', 'news', '/news', '18', '18,', 1, 1, 1446307200),
(19, '企业公告', '企业公告', '企业公告', '企业公告企业公告企业公告企业公告', 18, 1, '', 'notice', '/news/notice', '18', '18,19,', 1, 2, 1446393600),
(20, '公司新闻', '', '', '', 18, 2, '', 'gongsixinwen', '/news/gongsixinwen', '18', '18,20,', 1, 2, 1448726400),
(21, '客户案例', '', '', '', 0, 3, '', 'case', '/case', '21', '21,', 3, 1, 1449072000),
(22, '人才招聘', '人才招聘', '人才招聘', '', 0, 6, '', 'job', '/job', '22', '22,', 4, 1, 1449072000),
(23, '资料下载', '', '', '', 0, 6, '', 'download', '/download', '23', '23,', 5, 1, 1449331200),
(25, '行业资讯', '', '', '', 18, 5, '', 'hyzx', '/news/hyzx', '18', '18,25,', 1, 2, 1449331200),
(26, '公司相册', '', '公司相册', '公司相册', 0, 5, '', 'photos', '/photos', '26', '26,', 7, 1, 1449331200),
(27, '企业视频', '', '', '', 0, 5, '', 'videos', '/videos', '27', '27,', 6, 1, 1449331200),
(34, '公司简介', '公司简介', '公司简介', '<p style="color:#5E5F60;text-indent:2em;background-color:#FFFFFF;">\r\n	江苏鑫跃科技有限公司（以下简称“鑫跃科技”），国内建站行业的先行者，是一家拥有自主知识产权的技术企业。自成立之初就秉承"用户需求至上，用户体验至上"的开发理念，从成立至今一直致力于为企事业单位及个人提供全方位网络信息及技术服务。\r\n</p>\r\n<p style="color:#5E5F60;text-indent:0px;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="color:#5E5F60;text-indent:2em;background-color:#FFFFFF;">\r\n	在互联网服务方面，我们专业提供<strong><span style="color:#006600;font-size:12px;background-color:#FFFFFF;">网站建设、电子商务运营</span></strong><strong><span style="color:#006600;font-size:12px;background-color:#FFFFFF;">、网站托管、</span></strong><span style="font-size:14px;"><strong><span style="font-size:12px;"><span style="color:#006600;background-color:#FFFFFF;">网络营销、域名注册、虚拟主机</span><span style="color:#006600;background-color:#FFFFFF;">、广告设计</span><span style="color:#006600;background-color:#FFFFFF;">、建站技术培训、IT设备等</span></span></strong><span style="font-size:12px;">服务。</span></span> \r\n</p>\r\n<p style="color:#5E5F60;text-indent:0px;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="color:#5E5F60;text-indent:2em;background-color:#FFFFFF;">\r\n	我们始终着眼于未来，不断关注人才成长，保持公司和人才竞争力的同步提升。鑫跃科技同时也在不断吸纳众多专业人才，并全力打造一个积极、高效、开放、稳健的研发运营团队，实现个人价值与公司价值的共赢。\r\n</p>\r\n<p style="color:#5E5F60;text-indent:0px;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="color:#5E5F60;text-indent:2em;background-color:#FFFFFF;">\r\n	如今，鑫跃科技在乘风破浪的同时，并未松懈。我们将永远以创业者的心态，敢于突破现状，精益求精，坚决保持以"客户至上"的经营理念，为广大用户呈现更多更优秀的系统作品。\r\n</p>', 0, 1, '/uploads/image/20151227/20151227080432_34062.jpg', 'about', '/about', '34', '34,', 8, 1, 1449849600),
(35, '联系我们', '', '', '联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们', 34, 5, '', 'contact', '/about/contact', '34', '34,35,', 8, 2, 1449849600),
(36, '企业荣誉', '', '', '企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉企业荣誉', 34, 5, '', 'honor', '/about/honor', '34', '34,36,', 8, 2, 1449849600),
(42, '无人机', '', '', '', 17, 1, '', 'wrj', '/products/wrj', '17', '17,42,', 2, 2, 1450368000),
(43, '扫地机器人', '', '', '', 17, 2, '', 'jqr', '/products/jqr', '17', '17,43,', 2, 2, 1450368000),
(44, '平衡车', '', '', '', 17, 3, '', 'phc', '/products/phc', '17', '17,44,', 2, 2, 1451145600);

-- --------------------------------------------------------

--
-- 表的结构 `xy_config`
--

CREATE TABLE IF NOT EXISTS `xy_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wzname` varchar(255) NOT NULL,
  `wztitle` varchar(255) NOT NULL,
  `wzkeys` varchar(255) NOT NULL,
  `wzdec` varchar(255) NOT NULL,
  `wzurl` varchar(255) NOT NULL,
  `wzlogo` varchar(255) NOT NULL,
  `wxlogo` varchar(255) NOT NULL,
  `wzicp` varchar(50) NOT NULL,
  `wztel` varchar(30) NOT NULL,
  `wzemail` varchar(255) NOT NULL,
  `wzaddress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `xy_config`
--

INSERT INTO `xy_config` (`id`, `wzname`, `wztitle`, `wzkeys`, `wzdec`, `wzurl`, `wzlogo`, `wxlogo`, `wzicp`, `wztel`, `wzemail`, `wzaddress`) VALUES
(1, '鑫跃智能科技', '鑫跃智能科技', 'XYCMS建站系统XYCMS建站系统XYCMS建站系统XYCMS建站系统', 'XYCMS建站系统XYCMS建站系统XYCMS建站系统XYCMS建站系统', 'http://localhost', '/uploads/image/20151209/20151209164155_59031.jpg', '/uploads/image/20151208/20151208124803_56359.png', '苏ICP备08106044号', '15851850000', 'yang3rui@163.com', '江苏省南京市玄武区玄武大道徐庄软件园');

-- --------------------------------------------------------

--
-- 表的结构 `xy_jdt`
--

CREATE TABLE IF NOT EXISTS `xy_jdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_img` varchar(255) NOT NULL,
  `c_order` int(6) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `xy_jdt`
--

INSERT INTO `xy_jdt` (`id`, `title`, `link_url`, `link_img`, `c_order`, `c_date`) VALUES
(2, '鑫跃科技', 'http://www.jsxyidc.com/', '/uploads/image/20151217/20151217161614_46513.jpg', 5, 1446998400),
(3, '关于我们', '/about', '/uploads/image/20151220/20151220032819_43467.jpg', 2, 1450540800),
(4, '教育方案', '/about', '/uploads/image/20151220/20151220032947_18385.jpg', 3, 1450540800);

-- --------------------------------------------------------

--
-- 表的结构 `xy_kfs`
--

CREATE TABLE IF NOT EXISTS `xy_kfs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `kf_code` text NOT NULL,
  `c_order` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `xy_kfs`
--

INSERT INTO `xy_kfs` (`id`, `title`, `kf_code`, `c_order`) VALUES
(3, '在线客服2', '<a href="http://wpa.qq.com/msgrd?V=1&Uin=364500483&Site=鑫跃科技&Menu=yes" target="blank"><img alt="点击这里咨询" src="http://wpa.qq.com/pa?p=1:364500483:4" border="0" /> 364500483</a>', 3);

-- --------------------------------------------------------

--
-- 表的结构 `xy_links`
--

CREATE TABLE IF NOT EXISTS `xy_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `c_id` int(6) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_img` varchar(255) NOT NULL,
  `c_order` int(6) NOT NULL,
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `xy_links`
--

INSERT INTO `xy_links` (`id`, `title`, `c_id`, `link_url`, `link_img`, `c_order`, `c_date`) VALUES
(2, '站长下载', 0, 'http://down.chinaz.com/', '', 1, 1446998400),
(3, '新浪网', 1, 'http://www.sina.com.cn', '/uploads/image/20151218/20151218162314_59523.gif', 1, 1450454400),
(4, '凤凰网', 1, 'http://www.ifeng.com', '/uploads/image/20151220/20151220083810_95874.jpg', 2, 1450540800),
(5, '人民网', 1, 'http://www.people.com.cn/', '/uploads/image/20151220/20151220083948_96264.jpg', 3, 1450540800),
(6, '新华网', 1, 'http://www.xinhuanet.com/', '/uploads/image/20151220/20151220084049_30854.jpg', 4, 1450540800),
(7, '小米科技', 1, 'http://www.mi.com/', '/uploads/image/20151220/20151220084236_65673.jpg', 5, 1450540800),
(8, '魅族科技', 1, 'http://www.meizu.com/', '/uploads/image/20151220/20151220084354_19253.jpg', 5, 1450540800),
(9, '华为', 1, 'http://www.huawei.com/cn/', '/uploads/image/20151220/20151220084506_85099.jpg', 7, 1450540800),
(10, '思科', 1, 'http://www.cisco.com/web/CN/index.html', '/uploads/image/20151220/20151220084608_52440.jpg', 8, 1450540800),
(11, '中国联想', 1, 'http://www.lenovo.com.cn/', '/uploads/image/20151220/20151220084724_34021.jpg', 9, 1450540800),
(12, '华硕', 1, 'http://www.asus.com.cn/', '/uploads/image/20151220/20151220084819_96539.jpg', 10, 1450540800),
(13, '爱普生', 1, 'http://www.epson.com.cn/', '/uploads/image/20151220/20151220084927_81996.jpg', 11, 1450540800),
(14, 'A5源码', 0, 'http://down.admin5.com/', '', 2, 1450540800),
(15, 'CSDN', 0, 'http://www.csdn.net/', '', 3, 1450540800),
(16, 'PHP100中文网', 0, 'http://www.php100.com/', '', 4, 1450540800),
(17, 'PHP官方', 0, 'http://www.php.net/', '', 6, 1450540800),
(18, '开源中国', 0, 'http://www.oschina.net/', '', 7, 1450540800),
(19, '源码之家', 0, 'http://www.mycodes.net/', '', 8, 1450540800),
(20, '鑫跃科技', 0, 'http://www.jsxyidc.com', '', 0, 1450540800),
(21, 'W3SCHOOL', 0, 'http://www.w3school.com.cn', '', 9, 1450540800),
(22, 'THINKPHP', 0, 'http://www.thinkphp.cn/', '', 10, 1450540800),
(23, '创新工场', 0, 'http://www.chuangxin.com/', '', 11, 1450540800);

-- --------------------------------------------------------

--
-- 表的结构 `xy_menu`
--

CREATE TABLE IF NOT EXISTS `xy_menu` (
  `cid` int(6) NOT NULL AUTO_INCREMENT,
  `cname` varchar(32) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `c_order` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `open_method` varchar(255) NOT NULL,
  `c_lev` int(11) NOT NULL DEFAULT '1',
  `c_date` int(11) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  KEY `cname` (`cname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `xy_menu`
--

INSERT INTO `xy_menu` (`cid`, `cname`, `pid`, `c_order`, `url`, `open_method`, `c_lev`, `c_date`) VALUES
(17, '网站首页', 0, 1, '/index.html', '_self', 1, 1441209600),
(18, '新闻动态', 0, 3, '/news', '_self', 1, 1446307200),
(19, '企业公告', 18, 1, '/news/notice', '_self', 2, 1446393600),
(20, '公司新闻', 18, 2, '/news/gongsixinwen', '_self', 2, 1448726400),
(21, '客户案例', 0, 3, '/case', '_self', 1, 1449072000),
(22, '人才招聘', 0, 6, '/job', '_self', 1, 1449072000),
(23, '资料下载', 0, 6, '/download', '_self', 1, 1449331200),
(25, '行业资讯', 18, 5, '/news/hyzx', '_self', 2, 1449331200),
(26, '公司相册', 0, 5, '/photos', '_self', 1, 1449331200),
(27, '企业视频', 0, 5, '/videos', '_self', 1, 1449331200),
(32, '公司简介', 0, 2, '/about', '_self', 1, 1449849600),
(34, '产品展示', 0, 4, '/products', '_blank', 1, 1450540800);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
