-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: sql.s1086.vhostgo.com
-- 生成日期: 2019 年 05 月 07 日 18:33
-- 服务器版本: 5.7.23
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `aliyun0098`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`id`, `title`, `content`, `condition`, `time`, `place`) VALUES
(1, '活动有奖品大礼', '本次活动将现场发放奖品', '通过进入小程序签到,积分点至少达到8', '2019-2-28', '广东省广州市天河区');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `introduce` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `url`, `name`, `introduce`) VALUES
(1, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-52-58-5cd1395adafc3.png', '第一张轮播图', '你好，世界'),
(2, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-53-56-5cd13994a77a5.png', '第二张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(3, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-54-55-5cd139cf914b5.jpg', '第三张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(4, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-55-06-5cd139da7dc9a.jpg', '第四张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(5, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-55-18-5cd139e68c61e.jpg', '第五张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(6, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-55-37-5cd139f975032.jpg', '第六张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！');

-- --------------------------------------------------------

--
-- 表的结构 `banner_shop`
--

CREATE TABLE IF NOT EXISTS `banner_shop` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `introduce` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `banner_shop`
--

INSERT INTO `banner_shop` (`id`, `url`, `name`, `introduce`) VALUES
(1, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-57-30-5cd13a6abbb07.jpg', '第一张轮播图', '你好，世界'),
(2, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-57-42-5cd13a76e82d4.jpg', '第二张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(3, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-58-00-5cd13a88baa75.jpg', '第三张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(4, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-58-09-5cd13a91889d0.jpg', '第四张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(5, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-07-59-52-5cd13af88fdfd.jpg', '第五张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！'),
(6, 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-08-00-00-5cd13b003853a.jpg', '第六张轮播图', '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！');

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boo` bit(1) DEFAULT NULL,
  `line_is` varchar(100) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `whoColumn` varchar(100) DEFAULT NULL,
  `howPeople` int(11) DEFAULT NULL,
  `price` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `classCount` varchar(180) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `integral` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `howIntegral` int(11) DEFAULT NULL,
  `inCount` int(11) DEFAULT NULL,
  `popBoo` bit(1) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `introduce` text,
  `class_try_read` bit(1) DEFAULT NULL,
  `pay_is` bit(1) DEFAULT NULL,
  `audio_src` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tui_found` int(11) DEFAULT NULL,
  `eye` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `boo`, `line_is`, `url`, `whoColumn`, `howPeople`, `price`, `title`, `classCount`, `other`, `integral`, `howIntegral`, `inCount`, `popBoo`, `number`, `introduce`, `class_try_read`, `pay_is`, `audio_src`, `tui_found`, `eye`) VALUES
(18, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-08-10-5cd1590a9956f.jpg', '吴老师', 1, '888.88', '人生之悟', '信息', '热销中', '0.25', 8, 88, b'0', 999, '你好，世界', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-53-37-5cd155a115675.mp3', 8, '0'),
(19, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-08-30-5cd1591e16980.jpg', '魏老师', 2, '888.88', '风水定乾坤', '信息', '热销中', '0.25', 8, 88, b'0', 998, '你好，世界', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-54-09-5cd155c1ccd4c.mp3', 8, '0'),
(20, b'1', '推荐课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-08-45-5cd1592d12a3f.jpg', '李老师', 0, '888.88', '国学精髓', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-54-32-5cd155d87560c.mp3', 8, '0'),
(17, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-07-35-5cd158e77c4dd.jpg', '叶老师', 0, '888.88', '姻缘红尘', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-53-17-5cd1558ddb4b3.mp3', 8, '0'),
(15, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-08-16-56-5cd13ef89a40c.jpg', '李老师', 3, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 997, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-52-23-5cd15557db5ed.mp3', 8, '8'),
(16, b'1', '推荐课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-12-13-5cd159fd177a6.jpg', '蒲老师', 1, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 999, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-52-46-5cd1556e27eb9.mp3', 8, '3'),
(25, b'1', '线下课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-12-57-5cd15a29a540c.jpg', '魏得良', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'0', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-10-13-17-5cd15a3d02c73.mp3', 8, '0'),
(26, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-13-41-5cd15a5538818.jpg', '李老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-10-13-53-5cd15a61f2083.jpg', 8, '0'),
(27, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-14-14-5cd15a766810a.jpg', '钟老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-10-14-34-5cd15a8a98188.jpg', 8, '0');

-- --------------------------------------------------------

--
-- 表的结构 `class_pay`
--

CREATE TABLE IF NOT EXISTS `class_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boo` bit(1) DEFAULT NULL,
  `line_is` varchar(100) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `whoColumn` varchar(100) DEFAULT NULL,
  `howPeople` int(11) DEFAULT NULL,
  `price` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `classCount` varchar(180) DEFAULT NULL,
  `other` varchar(150) DEFAULT NULL,
  `integral` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `howIntegral` int(11) DEFAULT NULL,
  `inCount` int(11) DEFAULT NULL,
  `popBoo` bit(1) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `introduce` text,
  `class_try_read` bit(1) DEFAULT NULL,
  `pay_is` bit(1) DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `audio_src` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tui_found` int(11) DEFAULT NULL,
  `eye` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `pay_time` varchar(50) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `class_pay`
--

INSERT INTO `class_pay` (`id`, `boo`, `line_is`, `url`, `whoColumn`, `howPeople`, `price`, `title`, `classCount`, `other`, `integral`, `howIntegral`, `inCount`, `popBoo`, `number`, `introduce`, `class_try_read`, `pay_is`, `openid`, `audio_src`, `tui_found`, `eye`, `class_id`, `pay_time`, `username`) VALUES
(21, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-08-30-5cd1591e16980.jpg', '魏老师', 2, '888.88', '风水定乾坤', '信息', '热销中', '0.25', 8, 1965, b'0', 999, '你好，世界', b'1', b'1', 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-54-09-5cd155c1ccd4c.mp3', 8, '0', 19, '2019-05-07 18:30:07', '蓝之静云'),
(20, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-08-10-5cd1590a9956f.jpg', '吴老师', 1, '888.88', '人生之悟', '信息', '热销中', '0.25', 8, 1965, b'0', 1000, '你好，世界', b'1', b'1', 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-53-37-5cd155a115675.mp3', 8, '0', 18, '2019-05-07 18:28:11', '蓝之静云'),
(19, b'1', '精品课程', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-08-16-56-5cd13ef89a40c.jpg', '李老师', 3, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 1965, b'0', 998, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'1', 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', 'http://gdmzd.com/geomancy/public/audio/2019-05-07-09-52-23-5cd15557db5ed.mp3', 8, '8', 15, '2019-05-07 18:27:48', '蓝之静云');

-- --------------------------------------------------------

--
-- 表的结构 `company_introduce`
--

CREATE TABLE IF NOT EXISTS `company_introduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `company_introduce`
--

INSERT INTO `company_introduce` (`id`, `title`, `content`) VALUES
(1, '一、明正道大学堂简介', '广州明正道文化发展有限公司是一家以推广国学文化为主的教育机构，是一个互生大平台。明正道大学堂是明正道旗下的易学教育品牌。明正道大学堂主打《名定终身》、《名管天下》、《易经智慧》等易学系列课程，以打造一套工具帮助更加多有缘人为宗旨。一命二运三风水，四积功德五读书。六名七相八敬神，九交贵人十养生，十一择业与择偶，十二趋吉要避凶'),
(2, '二、课程简介', '1、《名定终身》课程（區洛锜导师主讲）:围绕人生6大财富展开，通过如何测算姓名以及姓名的数理含义分析一个人一生的运程趋势，能够做到不见其人了解其性格，相当于把这个人真实地呈现在姓名分析者的眼前。更能通过三才搭配，卦象分析得出婚姻、事业、学业、财富、健康等信息，看出运势的趋势，应该要避免什么才能令婚姻和谐、守住财富、开拓事业、健康平安。达到阴阳调和，五行平衡的状态，才是人生最好的状态。一个人的姓名蕴藏着不可思议的能量，姓名体现了人的命运，它所产生的磁场能够影响着人的行为和运势。从姓名我们能够看出一个人的性格，以及一个人的健康状况，家庭婚姻，事业和财运。名字从使用后就开始对人产生影响，所以我们要从源头抓起，从新生儿时期就要给孩子取一个寓意吉祥的好名字，赐子千金，不如赐子一艺；赐子一艺，不如赐子好名。2、《名管天下》课程介绍（區洛锜导师主讲）: 姓名改变命运  如何用名管天下？要管人，先懂名！ 管好人，得天下！在现代管理中，人力资源部可以迅速根据姓名的评估，测算聘用的人是否适合该岗位，或者根据评估进行岗位调整。 在人际交往中则能迅速了解到名主的性格，便于沟通。择偶与选择合作伙伴家族发展的人才布局企业发展的人才布局。调整命格不足，规避未来风险。企业管理中：便于企业主及高管对团队成员的知人善用、发挥其最大的长板价值。最容易上手的人力资源使用工具'),
(3, '三、师资力量', '主讲导师：易学导师、姓名学实战专家區洛锜老师，十年磨一剑，让无数人找到自己的方向，改变命运！让多少家庭从破碎到幸福，让多少公司业绩翻倍！區洛锜导师，明正道大学堂创始人，易学导师，江西万寿宫传度弟子，师承原道教协会副会长张继禹学习道教文化；华夏文化研究院实战专家。师承香港国学姓名学大师麦俊轩研习姓名学，近十年姓名能量学、紫薇斗数、易学文化研究经验，是目前国内唯一普及教育国学文化”“姓名学”的女导师。潜心进行十年易学、姓名能量学研究后，呼吁将原来只服务于名望贵族的姓名学在社会推广，成就更多大众。曾服务于广东电台、广东省电视台媒体人为其改名助运，现协助国家著名易学名家为国内政界人士取字改运。其十年磨一剑，总结提炼出《名管天下》等系列课程，只需运用0-9的10个数字就可以将每个人的运程、性格、健康、感情、事业全囊括其中，其课程以准、狠、灵为过往学员所推崇。而且实用好学易上手。區洛锜导师的使命：弘扬国学文化，让每个人都有一个好名字好家庭！已为上千人、企业、家族提供家庭、婚姻、事业财富调整、家庭成员起名改名、企业布局、人才调整、家族族谱修订，并挽救多个家庭婚姻，辅导培训几百位姓名学人才，深受企业和各界人士好评。'),
(4, '荣誉', '2016年中华传统文化丙申.宁波论坛  执行主席。2017年9月第六届全球周易专家高峰论坛授予《传统文化培训导师》、《华夏金牌易学大师》。2017年11月中华传统文化普陀山论坛  荣誉主席。2018年1月19日获得中国讲师认证中心颁发的中国讲师信誉认证证书。2018年7月21日中华民族文化高峰论坛组委会授予《国学讲师》。2018年7月26日获得中华民族文化高峰论坛组委会授予《中华金牌风水大师》资格证书。2018年8月16日被江西龙虎山群仙会聘为,长老院长;老海峡两岸文化交流协会,广州分会筹办人;海峡两岸易学风水交流中心副主任');

-- --------------------------------------------------------

--
-- 表的结构 `com_in_img`
--

CREATE TABLE IF NOT EXISTS `com_in_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司简介',
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `com_in_img`
--

INSERT INTO `com_in_img` (`id`, `img1`, `img2`) VALUES
(1, 'https://miao.su/images/2019/02/18/rong1d86b.md.jpg', 'https://www.miao.su/images/2019/03/11/ceoba6bf.png');

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `adrress` varchar(255) DEFAULT NULL,
  `erweimaSrc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `contact`
--

INSERT INTO `contact` (`id`, `openid`, `name`, `phone`, `adrress`, `erweimaSrc`, `bank`) VALUES
(2, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '吴同岳', '18814137320', '广东省广州市天河区', 'http://gdmzd.com/geomancy/public/uploads/2019-05-07-10-27-27-5cd15d8f21faa.jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `contact_us`
--

INSERT INTO `contact_us` (`id`, `phone`, `qq`, `email`, `address`) VALUES
(1, '13926463131', '275972481', '275972481@qq.com', '广州市黄埔区双岗黄岗大街富鸿里6号');

-- --------------------------------------------------------

--
-- 表的结构 `integral_rule`
--

CREATE TABLE IF NOT EXISTS `integral_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addPoint` int(11) DEFAULT NULL,
  `role` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `integral_rule`
--

INSERT INTO `integral_rule` (`id`, `addPoint`, `role`) VALUES
(1, 500, 'just'),
(2, 18, 'vip');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `more_company_data`
--

CREATE TABLE IF NOT EXISTS `more_company_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `srcShow` bit(1) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `more_company_data`
--

INSERT INTO `more_company_data` (`id`, `title`, `src`, `srcShow`, `img`) VALUES
(1, '區洛锜老师接受中央电视台采访网页', 'https://v.qq.com/x/page/r073025cbcf.html', b'1', 'https://miao.su/images/2019/02/18/img1d1c76.md.jpg'),
(2, '易学泰斗张志哲教授和易学泰斗邵伟华大师参加明正道大学堂开业仪式', NULL, NULL, 'https://miao.su/images/2019/02/18/img2882bf.md.jpg'),
(3, '广东电视台主持人和杨公风水传承人杨院长参加明正道开业仪式', NULL, NULL, 'https://miao.su/images/2019/02/18/img49528e.md.jpg'),
(4, '明正道大学堂區洛锜导师被江西龙虎山群仙会聘为百位道家长老之一', NULL, NULL, 'https://miao.su/images/2019/02/18/img3e3701.md.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `system_is` bit(1) DEFAULT NULL,
  `message` text,
  `create_time` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `msg`
--

INSERT INTO `msg` (`id`, `openid`, `system_is`, `message`, `create_time`) VALUES
(17, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', b'1', '恭喜你获得风水定乾坤课程。请点击【我的】查看', '2019-05-07 18:30:07'),
(16, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', b'1', '恭喜你兑换了推广金10点,你将获得人民币4.17元,请耐心等待', '2019-05-07 18:28:49'),
(15, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', b'1', '恭喜你获得人生之悟课程。请点击【我的】查看', '2019-05-07 18:28:11'),
(14, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', b'1', '恭喜你获得风水国学课程。请点击【我的】查看', '2019-05-07 18:27:48');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_access_tokens_user_id_index` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9704986ccd219617674e7901451bd78f426d32f1f56f0cd6ca9428dd3d17dd1e6588d5d74018196f', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:00:47', '2018-12-18 03:00:47', '2019-12-18 11:00:47'),
('0b0325e670c106dee73e104f4a80ddfc774e125be6058ee0eb4af30249624ad211aa2bcfe2afc2c2', 1, 1, 'MyApp', '[]', 0, '2018-12-18 02:58:45', '2018-12-18 02:58:45', '2019-12-18 10:58:45'),
('c257228fb971814638e4824c58662f12444f70236801e6d27aea9a9cafd9ae869193eb53452e8b98', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:02:15', '2018-12-18 03:02:15', '2019-12-18 11:02:15'),
('bc79c58ccc158b3632c8959eb5a5d637a6ee2a51358ccecea112f1ba9605f8534877d2b68642551d', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:02:35', '2018-12-18 03:02:35', '2019-12-18 11:02:35'),
('4051fc323ff2b9a5d54c988bf4756028940fc1442faa2a05d6e6a937ac9a5e744ebd2cc728a08c7c', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:02:44', '2018-12-18 03:02:44', '2019-12-18 11:02:44'),
('70d1dce764c4fb514fe5d3f9621e3ca22973a0847fb1e333394373ecfac0180a3f5afe225532464b', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:03:04', '2018-12-18 03:03:04', '2019-12-18 11:03:04'),
('be207fa5ee001878b4f677f223311674c48345848a166f11454ee554c015240df0572309b74deaa5', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:03:27', '2018-12-18 03:03:27', '2019-12-18 11:03:27'),
('22a3422831463d24d53c2e770e5c3178747b88d185558ed7cd567884c0ed83fe4dc3cbb8deb124cb', 1, 1, 'MyApp', '[]', 0, '2018-12-18 03:03:43', '2018-12-18 03:03:43', '2019-12-18 11:03:43'),
('0b63f45def38b08ab79ffdbded1f86443a4b4e7f7bfa48a44db17c1560f216c8c7f4dba171774a36', 9, 1, 'MyApp', '[]', 0, '2019-02-25 21:20:08', '2019-02-25 21:20:08', '2020-02-26 05:20:08'),
('bfb8b2d2e0f2c7891bc4a4b64b1b3af8aa1fb1fdea01c236d9660a4becad1700ddeb140c33601b70', 10, 1, 'MyApp', '[]', 0, '2019-02-25 21:22:41', '2019-02-25 21:22:41', '2020-02-26 05:22:41'),
('5abbf569fa0faaaf4cde4f14998ec26b9ecdb245759f4dc7faf9d9d39012adb5ccf440ad531a5299', 11, 1, 'MyApp', '[]', 0, '2019-02-25 21:26:00', '2019-02-25 21:26:00', '2020-02-26 05:26:00'),
('1ccb8103d3e9f36b341bc8d063ff2170de862ff9afa3404476e8dc77b2189b7cd767fd1733f38a45', 12, 1, 'MyApp', '[]', 0, '2019-02-25 21:26:46', '2019-02-25 21:26:46', '2020-02-26 05:26:46'),
('66171c6d535338fcaa4585d7e2cf29980f964141aa06685fc0db2be2fff36c2201565cad7a97432b', 13, 1, 'MyApp', '[]', 0, '2019-02-25 21:27:07', '2019-02-25 21:27:07', '2020-02-26 05:27:07'),
('f13edfcef949ee71878f31158a604b15da064428697000d78bd8d1a802cf1052ccf631dc399fdb98', 14, 1, 'MyApp', '[]', 0, '2019-02-25 21:29:37', '2019-02-25 21:29:37', '2020-02-26 05:29:37'),
('e3e1596c186e831bb70278c91b2811159ebd41eb4757799c74d4fdaef896dacbf3bdaa4646f23ec4', 15, 1, 'MyApp', '[]', 0, '2019-02-25 21:31:11', '2019-02-25 21:31:11', '2020-02-26 05:31:11'),
('7d0494803c17a2ce6ee3baccfe8efea2e4587549b0c10db0ad8e2195e8db11803893ce850c01d1f9', 16, 1, 'MyApp', '[]', 0, '2019-02-25 22:39:25', '2019-02-25 22:39:25', '2020-02-26 06:39:25'),
('652a5180e23911a00eb0ccd399873748fefb56b5c816566d81e2d3ed6c15f9b1f82f719d9351dc44', 17, 1, 'MyApp', '[]', 0, '2019-02-25 22:48:33', '2019-02-25 22:48:33', '2020-02-26 06:48:33'),
('695a7405e2f2acc1af642896a99dee0836987d4f407f499cf8813bf51e70f0ca6cafc313bdb9dc90', 17, 1, 'MyApp', '[]', 0, '2019-02-26 18:09:35', '2019-02-26 18:09:35', '2020-02-27 02:09:35'),
('28e61cfd406872f30b75e609a5452764943b37e7c6369dfdbfeeb3e2cb92123d81a8d449a7a213b6', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:13:23', '2019-02-26 18:13:23', '2020-02-27 02:13:23'),
('9d653507881ab9dbd04ac4f787cdb1498398c276ab8c249054bd285e38d4475b55ebc4c1647b3ebd', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:25:19', '2019-02-26 18:25:19', '2020-02-27 02:25:19'),
('680c8f3e1ceb09eac062e22fc211ae0b633d03a847b1000e134c40719d1083d8de1596fe7f077bea', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:30:18', '2019-02-26 18:30:18', '2020-02-27 02:30:18'),
('cb9e2c422faea1b0284b84b4b5504bea11c3c127d1aa982387718406201d6c5c17b4ba4693e678b2', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:38:10', '2019-02-26 18:38:10', '2020-02-27 02:38:10'),
('7602de96957a14696559350c8429d704382c2c31f52579ac87a571d41ef2bdb0317c6028fe7ddc39', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:43:40', '2019-02-26 18:43:40', '2020-02-27 02:43:40'),
('9f05a8f1f9e88f3697fa79bcd20497ba65c18abd0c3335c0e8db8fb24904a93d6415ab7a6811a8ca', 19, 1, 'MyApp', '[]', 0, '2019-02-26 18:48:53', '2019-02-26 18:48:53', '2020-02-27 02:48:53'),
('2a8daac795cb283d46902a02bb6d53a54b15d7f0cc40eaacdb0492ee0e27ae2ada3e17d1b1e12208', 20, 1, 'MyApp', '[]', 0, '2019-02-26 19:02:08', '2019-02-26 19:02:08', '2020-02-27 03:02:08'),
('61fafd9c928368548abcdac8c9308f684c8856ec17df6ad94c3e9219a0099f4312f5865fa2ccbf42', 21, 1, 'MyApp', '[]', 0, '2019-02-26 19:03:31', '2019-02-26 19:03:31', '2020-02-27 03:03:31'),
('f7cee256adde4bddd50408e4296fc9be292db2fb661f1b4ca53faa85f29bae43a4290aaafc4a1526', 22, 1, 'MyApp', '[]', 0, '2019-02-26 19:05:57', '2019-02-26 19:05:57', '2020-02-27 03:05:57'),
('aac3fb3bde75ba20bf83594b049d70997eff70749672a7f6cb619d086037a720858713d3d238bc5d', 19, 1, 'MyApp', '[]', 0, '2019-02-27 06:54:22', '2019-02-27 06:54:22', '2020-02-27 14:54:22'),
('198cbff646c0f160f4327b64dd897786eb54f0f5c951c216c11d62ace2b79e4d39f92ed09974f5e8', 19, 1, 'MyApp', '[]', 0, '2019-02-27 06:55:52', '2019-02-27 06:55:52', '2020-02-27 14:55:52'),
('72f07bf5ca5b7b0c3c804949201437bcd0b5caad2191d23023833d7f92adf5daaf4a9585f854aafe', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:07:01', '2019-02-27 07:07:01', '2020-02-27 15:07:01'),
('3f2e3a648880ffe43d469d1c39c6df79bea1dd656d816142bcfac1596308c9bc50c3585e41aa82b7', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:09:19', '2019-02-27 07:09:19', '2020-02-27 15:09:19'),
('70863de34a2956688006746ebf1d46358e50d04c530e06e7f143e4fefb7d7771df89ec9864f514d6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:11:08', '2019-02-27 07:11:08', '2020-02-27 15:11:08'),
('58266a8455bc65eef27426fb9df989fbd46765d3f133415cab1420a991060ea495aa518d3c0cb349', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:21:51', '2019-02-27 07:21:51', '2020-02-27 15:21:51'),
('38d02013142d8dadab9beff1c86e4451c861393c885e3435528dc44e5335ca6c1d25083cd43050ff', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:24:28', '2019-02-27 07:24:28', '2020-02-27 15:24:28'),
('342af08ad9c34d84c274515c71451eb9d1b1cb2ba4e7e6b3f433a7f8c074ef81bbad5f8e28388968', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:41:02', '2019-02-27 07:41:02', '2020-02-27 15:41:02'),
('bf16d250523505a51bbb89f044c9337c45b20f04d18d15aba4be6c12c4a3771c85570d26423951f3', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:41:21', '2019-02-27 07:41:21', '2020-02-27 15:41:21'),
('f2aeb0bc3028ac599cd04a0a5fa15ecbfc68755f33f91099959f84b3cdab0cadf781a85bdc638ad1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:41:31', '2019-02-27 07:41:31', '2020-02-27 15:41:31'),
('5f47799aff2f66a7e31e164cb1a712f4da7c2eaae49cb1252870ab9f5a13a074f1e109bfa03debd1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:42:00', '2019-02-27 07:42:00', '2020-02-27 15:42:00'),
('6a08810e2b9a7695bd74294a104d46c49ef6ebf47e5afdcfec073d9df6243c3f6f55f4486050cf22', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:42:51', '2019-02-27 07:42:51', '2020-02-27 15:42:51'),
('6e0f8d3a836b873f67189947b3d24ea46b628e47e845196551afad33032227fe106e418518ea5999', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:43:31', '2019-02-27 07:43:31', '2020-02-27 15:43:31'),
('c1e21e75f531d62cc048a9457850e62dcc5aae8a56d3e0c7603165a28c703749a6141929af4f8ec2', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:45:34', '2019-02-27 07:45:34', '2020-02-27 15:45:34'),
('efafba345344197f44986bc9a961caee84df1aec63999a0da93f98b4d0d154e195a23d8ce247483a', 19, 1, 'MyApp', '[]', 0, '2019-02-27 07:56:45', '2019-02-27 07:56:45', '2020-02-27 15:56:45'),
('b9bb87a697977231b75924f3e266d9aaa4dbc291df9eeb4b948ea1c7c15fda3cb0726b5e690456be', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:10:06', '2019-02-27 08:10:06', '2020-02-27 16:10:06'),
('d4d38ce87d9a75b4bcfbd7f3034dadf83ddd19e44fcd45819c25937046639defa5d46a3fe793b060', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:12:29', '2019-02-27 08:12:29', '2020-02-27 16:12:29'),
('55392fb0aab16b18030dfcb1ce6b231aac645de1d07257d8b8068b5e1c25154477233e0e613d776f', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:13:01', '2019-02-27 08:13:01', '2020-02-27 16:13:01'),
('22250c775fb9494408c711720aefea74c5128dba2ae587e01a209505657f41042074255dfa87aaf6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:15:04', '2019-02-27 08:15:04', '2020-02-27 16:15:04'),
('6d109051c15af7328c10b3c194faba96992f619327aecaf912b2c6f27b60d8f89cd31e6293e0a922', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:15:37', '2019-02-27 08:15:37', '2020-02-27 16:15:37'),
('ebf4919b17641e7ba118bce230abc1145e2ac6dc6e53a026ee93b608212843f39ac1ab807191bf1c', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:17:13', '2019-02-27 08:17:13', '2020-02-27 16:17:13'),
('ae31fd417bfbe6a3e57a3f91b358aadc82c193debbc5321f5f31d49135e3d1ebb37f04514677d8a1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:17:48', '2019-02-27 08:17:48', '2020-02-27 16:17:48'),
('84c359b33c11591360ad08a636710e9201f0e3f52f9f53446fe818d62940d9f22333ef3b04e36303', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:19:13', '2019-02-27 08:19:13', '2020-02-27 16:19:13'),
('c4c43b093285c8ca2caaa18ddb878ed1b37f314e6a5b045c19e28fa2ec83085afb8333c3e909d3b7', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:22:33', '2019-02-27 08:22:33', '2020-02-27 16:22:33'),
('377426252a591a30e7597aa114e7402d7ef5aae2d35e01e89c9ae296227121767952b606d1343cc6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:23:49', '2019-02-27 08:23:49', '2020-02-27 16:23:49'),
('0e67d3b33fa9f43133f3cc2587e29d7b8a05e7117644d2cfed7c3a7d719be533eadac79b720e16fa', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:28:05', '2019-02-27 08:28:05', '2020-02-27 16:28:05'),
('ecf40cf10d17ee5c32468539340b48e33fe9d51b89552653fe2aeeb2c8d78e35edc5990113c61b56', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:29:11', '2019-02-27 08:29:11', '2020-02-27 16:29:11'),
('258daeadd5271f6e91c4278e9aa1b141bc9974c0b582a2bfd18f1d88cf905be68082eb4ccbbfecb6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 08:29:21', '2019-02-27 08:29:21', '2020-02-27 16:29:21'),
('2331e7b40439384324c0563129ffba4b1a3423d440e13fdc217b680c8f9523813afd769d848c2fab', 19, 1, 'MyApp', '[]', 0, '2019-02-28 02:14:29', '2019-02-28 02:14:29', '2020-02-28 10:14:29'),
('0b5de461832fce9d7c0bbc46db181ece6b7c5f1f11b913249a4d4de0e98dda8788825b27f7c9ddd1', 19, 1, 'MyApp', '[]', 0, '2019-02-28 02:14:56', '2019-02-28 02:14:56', '2020-02-28 10:14:56'),
('5be4e14c27a92879d9ceaa5f20780f0147371090b00c8cbeba36f508bec76536c89ec1d0d5f53e8e', 19, 1, 'MyApp', '[]', 0, '2019-02-28 02:20:55', '2019-02-28 02:20:55', '2020-02-28 10:20:55'),
('72800f9b6c43e3e27c0a35170714e4cbe8ea6cc2b51f1dc16fbf2286423bcaeb55ff6bd1f2ba317f', 19, 1, 'MyApp', '[]', 0, '2019-02-28 02:47:19', '2019-02-28 02:47:19', '2020-02-28 10:47:19'),
('3d0f3c4358a53b4b00f8c38e4b68373931e3a9ef1c85a0e8aab068e6b74d3d7c4a2df9a2dc735cf2', 19, 1, 'MyApp', '[]', 0, '2019-02-28 02:49:28', '2019-02-28 02:49:28', '2020-02-28 10:49:28'),
('99dc074c1a41eba2f36ed010ed8e69db9d84bee8ba2d24e1ce1b61b185f9e2691cd89a52b1d71445', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:03:52', '2019-02-28 03:03:52', '2020-02-28 11:03:52'),
('89aa54e8e88f9d540ceb03aeb7c40a6d60bc3b75802afd9e9c3f07e5813bb541e383621163cf2c2f', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:06:50', '2019-02-28 03:06:50', '2020-02-28 11:06:50'),
('e696558e7fcf5ebda8d96ff91a4ff91849cb3fcb891b7b126a5de04624dc49f6d7fb59dbfb149fff', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:15:02', '2019-02-28 03:15:02', '2020-02-28 11:15:02'),
('cbe28af1af2bbd3c1fedf93a1ee886fdf4e21b6c0297cd9dc72fb852d6c3026c2b95bfc4b036472b', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:25:29', '2019-02-28 03:25:29', '2020-02-28 11:25:29'),
('e4e57a5cf8bd9f7f01b58071a6ef4df53fd05267e0611c100b6463a734fb2f1a582990d935a32769', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:35:39', '2019-02-28 03:35:39', '2020-02-28 11:35:39'),
('2c9285aef1675a9dfafb25f6cc802c31292bceba4258bbcd0136b8a7cc99a7123cda4f7be50fb2fa', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:37:15', '2019-02-28 03:37:15', '2020-02-28 11:37:15'),
('dde675fcf7c30e588ba4f2984bcc622ed90f06fb6d349f5005d2c7a6f458bb41304d515bb33d3b09', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:45:16', '2019-02-28 03:45:16', '2020-02-28 11:45:16'),
('4799ff61cee1db6495d07526febcdf3cf755121ba2f336cdcf2d7718b0ea4ee920d86014fc891786', 19, 1, 'MyApp', '[]', 0, '2019-02-28 03:52:10', '2019-02-28 03:52:10', '2020-02-28 11:52:10'),
('0c2205a043e8dfdc4426b8bf727d0503b6291f6321a2101ee861848e7a7d5755906ea5d6b48d8e8d', 27, 1, 'X-Token', '[]', 0, '2019-02-28 03:56:21', '2019-02-28 03:56:21', '2020-02-28 11:56:21'),
('ef791c721e272161ac1269bc06bef1f6cfb2220eda0112824a5ed84c780f796be31088d9ce2a877a', 27, 1, 'X-Token', '[]', 0, '2019-02-28 04:03:29', '2019-02-28 04:03:29', '2020-02-28 12:03:29'),
('6fdfffc188e063102ea9d1415b33ac6bb1da0fdad201aaf9e9229af9daac8cfe685c52c87d8fa3ae', 27, 1, 'X-Token', '[]', 0, '2019-02-28 04:04:29', '2019-02-28 04:04:29', '2020-02-28 12:04:29'),
('6048c19be1506e44e0f229953890b2a4d125a14613bc283d573e62fb3ffe14e71e833817df904a1e', 27, 1, 'X-Token', '[]', 0, '2019-02-28 04:08:47', '2019-02-28 04:08:47', '2020-02-28 12:08:47'),
('05024a20fda128d0f5425eb964a376e4b4573dfbe8640c8da2f292726db2d8780f47bfe523921817', 27, 1, 'X-Token', '[]', 0, '2019-02-28 04:14:27', '2019-02-28 04:14:27', '2020-02-28 12:14:27'),
('feca203548a6ca05438c2b80eafc4e4e59b3265bbf69e335ead9b1be2d4cfdd39112c6ae72bdee59', 27, 1, 'MyApp', '[]', 0, '2019-02-28 04:22:36', '2019-02-28 04:22:36', '2020-02-28 12:22:36'),
('d9cdea2c3ff915e2f8f47dd1369c339444cf1343a81d87b6b69f40d3317cb0ed7b6c5e66eef5c788', 27, 1, 'MyApp', '[]', 0, '2019-02-28 04:28:44', '2019-02-28 04:28:44', '2020-02-28 12:28:44'),
('b05e5291d0debfa32be5a85671a4eb812e20ee02f2886d4e0f7d046cffd4544cfc7db7e50eb55e49', 27, 1, 'MyApp', '[]', 0, '2019-02-28 04:31:58', '2019-02-28 04:31:58', '2020-02-28 12:31:58'),
('eeb61edfe7ec39e3894e1e986753210d1a9736b27b113be7ddcd1524cf11736113192edce12c0f7d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:10:50', '2019-02-28 06:10:50', '2020-02-28 14:10:50'),
('68c56180f4b76fc0b1aca9061fe1fa8b7a07e7e24c51ac887922cb7ed2cfbc39f6c84f521c501786', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:11:04', '2019-02-28 06:11:04', '2020-02-28 14:11:04'),
('af72672d185a79bea2f7b03e316f80776b164a89e8abd2d6bd1ebb05bec3f35a6f9b713c670570de', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:15:13', '2019-02-28 06:15:13', '2020-02-28 14:15:13'),
('6aa8e950684c266487df41f932c0407b0cc55b82600afbeeb2f8f23d593c68c50830852b01ea04a8', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:25:09', '2019-02-28 06:25:09', '2020-02-28 14:25:09'),
('5054915c5caf6ffe9654a595aa5fa1d0b3bcf78a4ac694469f6a607a6bb0dddb1d1ae5d8008dace8', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:30:24', '2019-02-28 06:30:24', '2020-02-28 14:30:24'),
('7b7d8cae7247005d25f892ccae75e676e1fce14ccc8332642ccc69547f154035131f8834071e9413', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:35:04', '2019-02-28 06:35:04', '2020-02-28 14:35:04'),
('1d7e83c038e75eda119e9cc716ef4ea72602cdbc5555e0db2d4de6a8a2f23d9a232d9855e0827e40', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:38:46', '2019-02-28 06:38:46', '2020-02-28 14:38:46'),
('4ae1aebca529703d5d7e732ba1722740639559f74d6743ef7ae6fee893824f53e26df8df89038838', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:42:12', '2019-02-28 06:42:12', '2020-02-28 14:42:12'),
('5a27e06d74371ee7a42180139fbe422fccdf59e5e1a0a096b639ea69965af40c40c2e12f59e86b8d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:43:39', '2019-02-28 06:43:39', '2020-02-28 14:43:39'),
('f9321f4afdaff84812e49a29531263a26f616501146d79ea46d2ab171aa7dfeb672bfae490cf46a4', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:45:02', '2019-02-28 06:45:02', '2020-02-28 14:45:02'),
('cc7bc0e3f1b4974206d5e424aeabcec1ec03d0e6f0b1cee41c62b6b90b27975665791a2280d3dc50', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:46:46', '2019-02-28 06:46:46', '2020-02-28 14:46:46'),
('4b36ac4e604909980866fa7fbdcf8f756de20f41a9abe51e0cbc5f9dd44a61eb370b7aa0b3973c1d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:47:46', '2019-02-28 06:47:46', '2020-02-28 14:47:46'),
('11ea6aad87d68a18d7eafc689325dc6954ddfbb7d5c081fecfefb6f54a4eec7adee0a1e5fc4a4dce', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:57:14', '2019-02-28 06:57:14', '2020-02-28 14:57:14'),
('08c88679bc0178499891e40caea8b40768fbf81a20ac0ae8b008f2ddc4bddf67efb10d55e654403c', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:58:19', '2019-02-28 06:58:19', '2020-02-28 14:58:19'),
('0f32b0ea10f68a6d77c733d066b07cffa3200f39fd4864ede16cb3d2ef054645f6d70db12fc48a81', 27, 1, 'MyApp', '[]', 0, '2019-02-28 06:59:24', '2019-02-28 06:59:24', '2020-02-28 14:59:24'),
('806afab65b957bbb4427ef65a3d349d945c660c7d6b33faec24f3c18b20ff3f57b7020fa87af3ab7', 28, 1, 'MyApp', '[]', 0, '2019-02-28 07:03:09', '2019-02-28 07:03:09', '2020-02-28 15:03:09'),
('828809d2ad321e256dc216fc52587cfcf366609e66d1500d2fb0753e3baed66c680fb25dbb4c0054', 29, 1, 'MyApp', '[]', 0, '2019-02-28 07:04:03', '2019-02-28 07:04:03', '2020-02-28 15:04:03'),
('94e2f5f49ae524544ae1fe8aa715dc2f197e34d465981e64dccf774c3521edbec8198c7d412732a6', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:04:29', '2019-02-28 07:04:29', '2020-02-28 15:04:29'),
('7bba3a0cd4b0f24d8295bed07ebe483abd6048215e913562a6b1beef809f9626219df7ef7c1f8fbc', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:06:45', '2019-02-28 07:06:45', '2020-02-28 15:06:45'),
('42fe657aeea0dd8397a75ab301c8489edd0fe22a329ac4b065a4d04e713dfcc931dc6cddddca8aa4', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:08:22', '2019-02-28 07:08:22', '2020-02-28 15:08:22'),
('ef5b165a4b19312573de3edfbf1f36aca89d54b8cd212bf365c9d345580b3d5b79c23fd22d88ae49', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:09:25', '2019-02-28 07:09:25', '2020-02-28 15:09:25'),
('9f7198ca5ba63d7c943e9cee7523f3ac6745d2e8e91df1a52a2b77d83bff330415731e28f0c3e576', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:13:48', '2019-02-28 07:13:48', '2020-02-28 15:13:48'),
('528331c2ca9b3893ea414c6127aabda5c6d4e8014c35f97b7125bcc47fa6e6e65892339912f81ecb', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:15:19', '2019-02-28 07:15:19', '2020-02-28 15:15:19'),
('d973c6a723d713984162128fb3a239df5d15a0500ed9daf8ab959763b04f0cd8054b90cc46fd6d02', 30, 1, 'MyApp', '[]', 0, '2019-02-28 07:16:05', '2019-02-28 07:16:05', '2020-02-28 15:16:05'),
('e7059a80b36079f6420600fb57e9d78d90a4c050a6731c87e689885fd6b2f7c452482c9254ee7e8d', 30, 1, 'MyApp', '[]', 0, '2019-02-28 16:25:41', '2019-02-28 16:25:41', '2020-03-01 00:25:41'),
('fb5b7d6c5345366642c3e2918484b5d85c36c04ef9b26ec4b3e4adcb4f2048560774c0a6823b8727', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:02:59', '2019-02-28 17:02:59', '2020-03-01 01:02:59'),
('8930ee12c9db81551beac334c81e99197b7c5c4ef428f3128abb457dfccf9ec0c5df0b50f697223c', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:05:03', '2019-02-28 17:05:03', '2020-03-01 01:05:03'),
('c3f2cd82a1b58e58189ec0fdb52043eea2f2543a82479cf32a47c9dea129410850f3b48bc20cad1d', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:05:35', '2019-02-28 17:05:35', '2020-03-01 01:05:35'),
('81b1fd81f8a4a2045bed1a90a5688d66d2e2473957ffb6a9239637176bc377161c5e95c4466a14dd', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:06:51', '2019-02-28 17:06:51', '2020-03-01 01:06:51'),
('58ce71b470588dc4cafc17d5e9788cf7812c923cbe00758fbf5d3a9c13ca35cf35fc2b2d177ff9fc', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:07:57', '2019-02-28 17:07:57', '2020-03-01 01:07:57'),
('208807162e8cf1b9c068a2f5ddcbb094895a2237621ad51cbc95d1c618e7b9bee5d24f26c5d9e457', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:10:45', '2019-02-28 17:10:45', '2020-03-01 01:10:45'),
('e76c1c59bfa93111c2e13c04d76998168ac241922cb06a7e34152a4aa75152db086ad4d0c4c38cc5', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:11:55', '2019-02-28 17:11:55', '2020-03-01 01:11:55'),
('bb1c4f6fbd29eb73954007d0807c77d9ffbfd9bd8bc8734f8cc9081aedd7c41042b350293d2dbb32', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:13:31', '2019-02-28 17:13:31', '2020-03-01 01:13:31'),
('d30a82c91fa3d0afa2c1e346702d9978f0f92f50a8122a10b2539b8a78b935869b1fd8b73b063954', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:14:50', '2019-02-28 17:14:50', '2020-03-01 01:14:50'),
('cd2b8a63bbe47fe7fa3c00164de30830eccd7c37b252d188d6486de4f32b31146b4d4566a8a01151', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:15:25', '2019-02-28 17:15:25', '2020-03-01 01:15:25'),
('829e45a3b413fd5c90440ad7cc8ef7fbd33a172e37d0d4fb59aa4b9e930e4f9bba41cfe0b92406a7', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:20:24', '2019-02-28 17:20:24', '2020-03-01 01:20:24'),
('d9a35a8577f8ef8691ae853d9f9eeb3002ee6a4957d4ff4acdecf6b5bba77ca941006939fbe7caf9', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:21:29', '2019-02-28 17:21:29', '2020-03-01 01:21:29'),
('ddff035e65a4b176630948dc983382c1a87f467e60e835c71c5b18894a7158b51a75841a1fadaaab', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:22:59', '2019-02-28 17:22:59', '2020-03-01 01:22:59'),
('aa549847f7cd9729328d34399d8b4422b5b84cee896b6ebdd5cde5826abdda5d57167bacbf83b3c3', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:33:11', '2019-02-28 17:33:11', '2020-03-01 01:33:11'),
('09bc346e90402bb3e49f8721dcf11de9e9f3ac499ff41d65c05a80d87d53b94b758516760d6fa586', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:50:59', '2019-02-28 17:50:59', '2020-03-01 01:50:59'),
('3c621b04d87447c50fdced4a2a669cc7a3958c99f2fb3cc259b66d96657ec0f0b358976c330bb470', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:53:00', '2019-02-28 17:53:00', '2020-03-01 01:53:00'),
('59e56a7c0911d935775c1abd51c812d839456e1718a0c337ed1477cc2dc146db8376537cafa71828', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:54:40', '2019-02-28 17:54:40', '2020-03-01 01:54:40'),
('02582825c8574a72587d026f74196520614587c16d9589e7927b4694d0eb29ee054cede3953ecab9', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:55:52', '2019-02-28 17:55:52', '2020-03-01 01:55:52'),
('a56d74dbd5a9e67d2e9c76628e50aae9d4b1dfe720ff372524f9ce95dab7f5d59d1d1b262a2d365c', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:57:38', '2019-02-28 17:57:38', '2020-03-01 01:57:38'),
('45345211a4b9cbaa6af510b8a3cfa459f8f0c117d3941aa4fefd2155e18d335680f2a53b15fdb7da', 30, 1, 'MyApp', '[]', 0, '2019-02-28 17:58:37', '2019-02-28 17:58:37', '2020-03-01 01:58:37'),
('8e0b8d0a3b5e76599f33338b5bf43d84c9229e0dd7973b419602da1838dc7d3fb802ed2865c500a1', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:01:25', '2019-02-28 18:01:25', '2020-03-01 02:01:25'),
('704eed6c63a1e7d532d4b373f9e65d27efdc27d5509d7741fdf02936613ad562eaeff86257b14b4c', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:02:01', '2019-02-28 18:02:01', '2020-03-01 02:02:01'),
('5be502b600c7c6516b289ec328923ab38e007779320f21662c5efee9b4762f9c7db7009aeca52227', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:07:12', '2019-02-28 18:07:12', '2020-03-01 02:07:12'),
('7f0d3abfb7b1315a7a1de2c28a592b2881dd768eb0e3f6eaa886d495fd5b6bcd92bae6a2eee762df', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:07:46', '2019-02-28 18:07:46', '2020-03-01 02:07:46'),
('5f9970e3ec30dc549677c2b0a07cc5d9ecd88420f2a972e5ff712d97fff64cfc301758c784983532', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:08:42', '2019-02-28 18:08:42', '2020-03-01 02:08:42'),
('77f972568851c39a5ea83cdac9c0b538d79901508ae67aef13f7bc52217fca7d546c0ac8fd7f500a', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:14:19', '2019-02-28 18:14:19', '2020-03-01 02:14:19'),
('3dcf2fed586ad169fe4a358df5e4501d83c617fa32fede26b102a12faa678f56be1d0bd867e03afb', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:16:13', '2019-02-28 18:16:13', '2020-03-01 02:16:13'),
('a8ad3d08056b5c9fcf34a6804fa50fb06ab39516a7d8af0a3943b3d8098a441bd7d2eb1dbb75b143', 30, 1, 'MyApp', '[]', 0, '2019-02-28 18:17:12', '2019-02-28 18:17:12', '2020-03-01 02:17:12'),
('c6d8e8cf463ccbd3de9a2ac2e46411cfd81ff263448a30852f77bf4ee3d86a7cb7acbb97ecb3c8b7', 30, 1, 'MyApp', '[]', 0, '2019-02-28 19:30:33', '2019-02-28 19:30:33', '2020-03-01 03:30:33'),
('af286331c0801dcb4890d2594076cb161e822fa0df56a35905ea70c5518acdab0002baa35f3c8f63', 30, 1, 'MyApp', '[]', 0, '2019-02-28 19:57:10', '2019-02-28 19:57:10', '2020-03-01 03:57:10'),
('df4f73e19c4affdd0eaef17ffabf3fa147fec821846cb376fae4e4806044b1896d5c1c051f2a1cce', 30, 1, 'MyApp', '[]', 0, '2019-02-28 19:57:26', '2019-02-28 19:57:26', '2020-03-01 03:57:26'),
('14d480e0f82d8ab9f97adcb610ee90f6d992a2b78e877f9bf711354e74a053ebc3009ac089dd5797', 30, 1, 'MyApp', '[]', 0, '2019-02-28 19:58:13', '2019-02-28 19:58:13', '2020-03-01 03:58:13'),
('f7332d64f8ad34e3aa61473c0ab34f334ff6a868f94014468cd466b6b6bf5d05054b2ae12b6d38d2', 30, 1, 'MyApp', '[]', 0, '2019-02-28 20:14:05', '2019-02-28 20:14:05', '2020-03-01 04:14:05'),
('beeff7dd3ad57d0eac46c4b6c1b1e2090cc42e0c87ff9c43e727546df0a9495bbc80a66d8eb4dd05', 30, 1, 'MyApp', '[]', 0, '2019-02-28 21:23:28', '2019-02-28 21:23:28', '2020-03-01 05:23:28'),
('e1f4c829255c2f9a71171169bdc88d15b2a95757f2c1d2bd90cdfbc29b039161c9e92b0547c3e886', 30, 1, 'MyApp', '[]', 0, '2019-02-28 21:23:44', '2019-02-28 21:23:44', '2020-03-01 05:23:44'),
('81ba59be5d5d6e94f9541562da148b8a5e07f3ce9c0b32ebd3bd0304974df612a4e57d4d30b4103d', 30, 1, 'MyApp', '[]', 0, '2019-02-28 23:19:26', '2019-02-28 23:19:26', '2020-03-01 07:19:26'),
('65c75a1e58134bb7753a8be69abde01dc9fd1853250f67c6fcf14d4acde4d90d56c3fd07550a900e', 30, 1, 'MyApp', '[]', 0, '2019-03-01 06:24:31', '2019-03-01 06:24:31', '2020-03-01 14:24:31'),
('3bde1f981106675f24debdc40c269db7f385d8b4d7f2c840dbce859115756ab41416200fd043b628', 30, 1, 'MyApp', '[]', 0, '2019-03-01 06:24:38', '2019-03-01 06:24:38', '2020-03-01 14:24:38'),
('1e4770822f526597531dcaea0f5afc5aafe9f3e835ddc6b400b778367048fb37ff0d74811e9cbb9a', 30, 1, 'MyApp', '[]', 0, '2019-03-01 16:37:40', '2019-03-01 16:37:40', '2020-03-02 00:37:40'),
('ec3864be7f035bf24ba8d45641d64cc071259410fa48707b2f336ca5c6a52fbcd0817073639b96d7', 30, 1, 'MyApp', '[]', 0, '2019-03-01 16:37:51', '2019-03-01 16:37:51', '2020-03-02 00:37:51'),
('1a4999fa632256a55f685418b23b8d375bf6b4be8b12f6622b3327eb64ac89f109d44050ecd0831d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 16:38:11', '2019-03-01 16:38:11', '2020-03-02 00:38:11'),
('d68b8d22e37651f017172f1969e38cdf5d22f582a22464859d85150001a45435b3898c059501404d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 16:38:23', '2019-03-01 16:38:23', '2020-03-02 00:38:23'),
('a1ac353e2cbb5cc2f48805a5fbf208b994bc0011519a7bd4b065484af59621c19dad2e185641fc0d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 16:38:28', '2019-03-01 16:38:28', '2020-03-02 00:38:28'),
('32cfaa22477a471e193f72427ef78b35505d1af344b239a73bfe0f041934d0db51f33205e37026e0', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:39:38', '2019-03-01 20:39:38', '2020-03-02 04:39:38'),
('832e2d22cf3ae0e174de77fe56b2b413887d0ba188f896377eb0f8398c3b49ff546345d473650205', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:39:47', '2019-03-01 20:39:47', '2020-03-02 04:39:47'),
('7413e4576c7a5a96983e03cc6e5ecc4931daf24bc333204a6c0ed794b620a6bf5f7ed0714f364ee3', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:39:59', '2019-03-01 20:39:59', '2020-03-02 04:39:59'),
('be2c8d757c20ef332781e92d060fb0f9e211ea04fc3ed9430950cd3f9334f1fe299931a657fbb6f9', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:40:25', '2019-03-01 20:40:25', '2020-03-02 04:40:25'),
('1f2ef2a42176f7af7310c87441dac85a659bd87bdcda409cfb77acad163081f20aa4e49d86a589c8', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:57:45', '2019-03-01 20:57:45', '2020-03-02 04:57:45'),
('1cf391f77250bc2c789a47f8093678e6c56bcd3aa66b12c22261b8152a2c3480795c820f8535f5e4', 30, 1, 'MyApp', '[]', 0, '2019-03-01 20:57:54', '2019-03-01 20:57:54', '2020-03-02 04:57:54'),
('b00fb119ee734c59149395c3df7aefcac9b4bd802b7dfa153f46efcec54011cf8028122b013c9a83', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:40:59', '2019-03-01 23:40:59', '2020-03-02 07:40:59'),
('c7fcc83b412cc140ba1f28b4bf8be58283523bd59d001614ee94098c1375781192f110c2b207c02f', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:41:09', '2019-03-01 23:41:09', '2020-03-02 07:41:09'),
('8d04d3a1d4a7986b83d184c802a0ea6fa3a3a0b375a01309fff131c0785320401ee58227306942ec', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:41:46', '2019-03-01 23:41:46', '2020-03-02 07:41:46'),
('92631067dc88c081f9690737708d64f6db667eb89a053a70f3944f0b2b4fb8ab5feb548c5da9ebd6', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:41:58', '2019-03-01 23:41:58', '2020-03-02 07:41:58'),
('2a83a423b2fc04451419ae6e68ff503b5151498ddee5e7ebb39dceac67ca24b3e9ce010231877d55', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:42:01', '2019-03-01 23:42:01', '2020-03-02 07:42:01'),
('b9175f4302cc6baff90d9d4892be9cde371cbc1000d8de488732114a96e1864dbc76588d7d267be5', 30, 1, 'MyApp', '[]', 0, '2019-03-01 23:42:44', '2019-03-01 23:42:44', '2020-03-02 07:42:44'),
('ad3dd0855fd218a2c201fc02a5fdadd5853a3334deb61c11e38129b17279e239176a0fe3334ef71a', 30, 1, 'MyApp', '[]', 0, '2019-03-02 05:06:51', '2019-03-02 05:06:51', '2020-03-02 13:06:51'),
('a75ace418f0cfb90b1377a45e0f27b70a0189204e18d70b8d018df11901dbc1859b8b35746c5d955', 30, 1, 'MyApp', '[]', 0, '2019-03-02 05:07:48', '2019-03-02 05:07:48', '2020-03-02 13:07:48'),
('bb7431a1ea2e001d3d9927e558efc3c6fdda34ec5c1c5c7879e55734fb1e48e54144a7be3301867a', 30, 1, 'MyApp', '[]', 0, '2019-03-02 05:07:55', '2019-03-02 05:07:55', '2020-03-02 13:07:55'),
('d049a200d74d20a2b42bd2456f9806ea91c16f723160c7fd86cc6f84e43164978cbe3efda2982220', 30, 1, 'MyApp', '[]', 0, '2019-03-03 00:11:49', '2019-03-03 00:11:49', '2020-03-03 08:11:49'),
('f7f3ebfd520f3fe68a0f6536a9277189ba8e90a0dbbce3f883ba56d60ae522d7d0150fb1693781cf', 30, 1, 'MyApp', '[]', 0, '2019-03-03 00:12:07', '2019-03-03 00:12:07', '2020-03-03 08:12:07'),
('2edd5083fa09eb4cfa07d8624c9271802f3aa7cd811f87048e48a7fdea2a60d7aa4276aeb6519b22', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:07', '2019-03-03 01:43:07', '2020-03-03 09:43:07'),
('2d00a2ec30ac5c9251d27bf0b47c93beea217eb6b585c66b2a3424759e5397833811085d1bb3d748', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:19', '2019-03-03 01:43:19', '2020-03-03 09:43:19'),
('c22afa5ebdf707b29ab8d822598534c83b8d0cdbc902139a9c51d1995717de36b0511795e4d83354', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:41', '2019-03-03 01:43:41', '2020-03-03 09:43:41'),
('917a911c48f62052d81d043412a6d761b35a5f4ef6a2ae7b06ac2b5864605f67d6a6dd5ae48614ca', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:51', '2019-03-03 01:43:51', '2020-03-03 09:43:51'),
('d85eccea79f401eaaa59cabf0335e8e57d239791f33faeec98cb552b18b06e599a6c2ec227827994', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:56', '2019-03-03 01:43:56', '2020-03-03 09:43:56'),
('9318033a2aa7e9f0dd81c68c3e7f09522c2e23d5d501903afa0d846bbb133b3421af371b85255075', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:43:58', '2019-03-03 01:43:58', '2020-03-03 09:43:58'),
('78f84bdc277ba2a9ddac1ec6295f9f0abba8084076e2f47d06dfeecd2a4814be510d5898bd6d23f0', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:44:09', '2019-03-03 01:44:09', '2020-03-03 09:44:09'),
('af5fd51311be4a23ca8f4fa2ce26182b76c6939264540b5bf50a77a9c882f572b29923943be2db72', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:44:36', '2019-03-03 01:44:36', '2020-03-03 09:44:36'),
('79b6bec15cc064409fdbae826ef6a7ce9b8446d6b1d5bdc7fdbdcdd54eec7b3c1c8f9cf5927f14d2', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:44:44', '2019-03-03 01:44:44', '2020-03-03 09:44:44'),
('9ba5695598ca2cca823db04d773a5ecd9b3a83e14cc8c3cde289eacec967a6ab2beb09faaf2ed1d0', 30, 1, 'MyApp', '[]', 0, '2019-03-03 01:46:54', '2019-03-03 01:46:54', '2020-03-03 09:46:54'),
('240ffbfed49763cab5f4ec4322e60aa41d6b78cd87c38c57d5d671ce58b0963283f401ede2007161', 30, 1, 'MyApp', '[]', 0, '2019-03-03 06:56:06', '2019-03-03 06:56:06', '2020-03-03 14:56:06'),
('93d30fd715ff52627f44587f7641c044c209c9397e3c8be13218e9f11129415e5d620ad6a71c09c0', 30, 1, 'MyApp', '[]', 0, '2019-03-03 16:19:22', '2019-03-03 16:19:22', '2020-03-04 00:19:22'),
('6e385a29c5b6a46b96f328e0b63e142b1262eabe50586352575983f27e97fe012c3d1a440c98d45f', 30, 1, 'MyApp', '[]', 0, '2019-03-04 16:20:39', '2019-03-04 16:20:39', '2020-03-05 00:20:39'),
('e8406b0553cd8fbfdd7d5f0422e8245bc41730bcdcb4cb64d6ad9dd00eae14b2868ac88eb169714f', 30, 1, 'MyApp', '[]', 0, '2019-03-04 21:13:46', '2019-03-04 21:13:46', '2020-03-05 05:13:46'),
('dcadd2fb53e9ce64a9eff66aef4c8a96ab8d4b5b5b430639cd2ae31664f37e9c44ae042db597f4e9', 30, 1, 'MyApp', '[]', 0, '2019-03-04 21:13:51', '2019-03-04 21:13:51', '2020-03-05 05:13:51'),
('553eb2a398d7b14991b2716365c90ca4b7dd978dc8e893dfbb151cee044b884ee6d25999017a9afb', 30, 1, 'MyApp', '[]', 0, '2019-03-05 02:23:04', '2019-03-05 02:23:04', '2020-03-05 10:23:04'),
('125a87bbbd7d97dd1efb4ca718e5dc115a3efbe6033f25ba12ec2b10168fbfb8563c5e48b8d6f323', 30, 1, 'MyApp', '[]', 0, '2019-03-05 03:10:03', '2019-03-05 03:10:03', '2020-03-05 11:10:03'),
('2184d31a997a4eb879831f9afc96449aea20968782a197668a1a6578ca80fe1e1d60ae737f941cb4', 30, 1, 'MyApp', '[]', 0, '2019-03-05 16:29:11', '2019-03-05 16:29:11', '2020-03-06 00:29:11'),
('85488417db8826ff1b4dff88a52690c6607591b5a76899f8b36b8086f18ad0da471ea30522fe393d', 32, 1, 'MyApp', '[]', 0, '2019-03-05 17:48:17', '2019-03-05 17:48:17', '2020-03-06 01:48:17'),
('fe5db91a575a82a58b345a9f5d8e1b321238d292f2d4ece25f7344366c9301b1224a0503966f7e9d', 2, 1, 'MyApp', '[]', 0, '2019-03-05 17:51:03', '2019-03-05 17:51:03', '2020-03-06 01:51:03'),
('3e2b8ab1f6360811c57bc5596da4fa1f370a4d1bf0057577c53f90b755ef373cd3bb3e5b261b29aa', 1, 1, 'MyApp', '[]', 0, '2019-03-05 18:02:07', '2019-03-05 18:02:07', '2020-03-06 02:02:07'),
('27926bcc902c305328738869d4cd8c992222008679aceed14a8150dfdc2ec9c8976ce2d54256e868', 1, 1, 'MyApp', '[]', 0, '2019-03-05 18:05:28', '2019-03-05 18:05:28', '2020-03-06 02:05:28'),
('ffa288bc3a146bd74a8836a8527f7a1ce97fb9f1c096187066cb1ee8a5796d5071d8467bd1c05b47', 1, 1, 'MyApp', '[]', 0, '2019-03-05 20:21:19', '2019-03-05 20:21:19', '2020-03-06 04:21:19'),
('fad819fcf7726fcccb1b0830a078385bb8b948b8eac3b8cc0492fff25b52bffde2f77f7866cc7d2f', 1, 1, 'MyApp', '[]', 0, '2019-03-05 20:36:20', '2019-03-05 20:36:20', '2020-03-06 04:36:20'),
('db023346ac1d8045eac5de98be4bb1ece9f43475494f0afb24208fb07e30d5a8bbe9370b791d4db5', 1, 1, 'MyApp', '[]', 0, '2019-03-06 00:07:23', '2019-03-06 00:07:23', '2020-03-06 08:07:23'),
('f6aaed33474ead2cb236b5fb299d765787e62bf1b598998eef72f06bb3bda3df90e526d4b2fcefec', 1, 1, 'MyApp', '[]', 0, '2019-03-06 00:11:31', '2019-03-06 00:11:31', '2020-03-06 08:11:31'),
('e8d424a40b42fc4c0edb4d395e9eea6f0474c553f81251a67c92e0c4daff6cefe0af4d2ec583becc', 1, 1, 'MyApp', '[]', 0, '2019-03-06 16:59:18', '2019-03-06 16:59:18', '2020-03-07 00:59:18'),
('dc5a28689a5796ef788897e7acc1cac9d7dc650909efe210f3e7b9d8292029a7a81c5aa5f4d3e31a', 1, 1, 'MyApp', '[]', 0, '2019-03-07 20:15:04', '2019-03-07 20:15:04', '2020-03-08 04:15:04'),
('796b82607804662fb7f985c4e8e02d7049f915215b3aa04cebb487054dd3dd3e2065b2c6cbd21986', 1, 1, 'MyApp', '[]', 0, '2019-03-07 21:37:34', '2019-03-07 21:37:34', '2020-03-08 05:37:34'),
('1c75dbb65db40d42080ee1110dc3024b7ca1ab5fd083b31b7a0073566607454bf9afbeab2fb63b04', 1, 1, 'MyApp', '[]', 0, '2019-03-07 21:47:46', '2019-03-07 21:47:46', '2020-03-08 05:47:46'),
('18350470fe5905097376ecefffcebb6fdd09fe818c779414049b256ad7bf9127447c25d3856dd1e1', 1, 1, 'MyApp', '[]', 0, '2019-03-08 16:47:05', '2019-03-08 16:47:05', '2020-03-09 00:47:05'),
('08745708c24474b2fffe1378bfbd3c0d481e4214d06447cd54102ff1afe65969f06aa660906183cc', 1, 1, 'MyApp', '[]', 0, '2019-03-08 23:37:37', '2019-03-08 23:37:37', '2020-03-09 07:37:37'),
('ce317e19790c68f218781828d8fb5a1116d9ce030d405d8090d9f770f59830ac0190771fde420c02', 1, 1, 'MyApp', '[]', 0, '2019-03-09 01:21:02', '2019-03-09 01:21:02', '2020-03-09 09:21:02'),
('e5a8d43ce1da10713755bf286b0ae8007751f496711f5a1a9165746b3ea3261576b01803083f6484', 1, 1, 'MyApp', '[]', 0, '2019-03-10 23:59:04', '2019-03-10 23:59:04', '2020-03-11 07:59:04'),
('d689265c09a5f55b3d9840a80f17abe5c0ce4867e37a50f64558a225417fc7a15aef604b77cf8222', 1, 1, 'MyApp', '[]', 0, '2019-03-18 19:17:14', '2019-03-18 19:17:14', '2020-03-19 03:17:14'),
('8e131183b2c7949b89bb26243ac5599e906caecc5986880d503f34ef0aeb4b619992d78e0da08283', 1, 1, 'MyApp', '[]', 0, '2019-03-18 21:01:10', '2019-03-18 21:01:10', '2020-03-19 05:01:10'),
('6655195c60c1e031cfa5fa8b0383bbe973fe45cc186fc04979b5ea5d03a6faccc9847c6fa1089617', 1, 1, 'MyApp', '[]', 0, '2019-03-18 21:26:52', '2019-03-18 21:26:52', '2020-03-19 05:26:52'),
('0eeac5fd9a91d10b93bddcd6dcfe95aca2d2446fb322ec9ac3ba0d6cfed646ab78f2eeac63a8fc5c', 1, 1, 'MyApp', '[]', 0, '2019-03-18 21:28:16', '2019-03-18 21:28:16', '2020-03-19 05:28:16'),
('befdc24206f46c3eda39fdfc09dba89bbfdbfb2dcf70db08e50b03b42ae4a63922da2676382c43af', 1, 1, 'MyApp', '[]', 0, '2019-03-18 21:34:25', '2019-03-18 21:34:25', '2020-03-19 05:34:25'),
('d71d24fec47a1ad4fb4ee6fc35ea04f98ce0e26b2dfe1f09171972636acafa848db31c812bb011c0', 1, 1, 'MyApp', '[]', 0, '2019-03-19 02:03:24', '2019-03-19 02:03:24', '2020-03-19 10:03:24'),
('fadaa1ea5dbc31eb4e2dd26075a238100a3fd26301e01abef19d8fc127ef8056e01d84a7c1e71466', 1, 1, 'MyApp', '[]', 0, '2019-05-06 23:51:39', '2019-05-06 23:51:39', '2020-05-07 07:51:39'),
('9860d0a9352bdeebd00f7aea875de4a115f37ecfee6eae9955858c7f895525c23ac5b2d00519c8fd', 1, 1, 'MyApp', '[]', 0, '2019-05-07 01:50:03', '2019-05-07 01:50:03', '2020-05-07 09:50:03');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_clients_user_id_index` (`user_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Idu8hMAlR7AcQKPwXyFOHT3AMAVs9QhExHpzeyEL', 'http://localhost', 1, 0, 0, '2018-12-18 02:33:20', '2018-12-18 02:33:20'),
(2, NULL, 'Laravel Password Grant Client', 'vqqntsvtrjFJzZtCARCy87aTYEmQbaboFLgVb9Ra', 'http://localhost', 0, 1, 0, '2018-12-18 02:33:20', '2018-12-18 02:33:20');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-12-18 02:33:20', '2018-12-18 02:33:20');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `task`
--

CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `name4` varchar(255) DEFAULT NULL,
  `name5` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `task`
--

INSERT INTO `task` (`id`, `name1`, `name2`, `name3`, `name4`, `name5`, `date`) VALUES
(19, '凌金成', '张建峰', '林巧', '刘伟安', '林栩', '2019-05-06 23:17:31'),
(20, '凌金成', '郑观广', '林巧', '刘伟安', '林栩', '2019-05-06 23:21:05'),
(21, '黄仕颖', '刘炳浩', '张建峰', '林巧', '刘伟安', '2019-05-06 23:33:12'),
(22, '黄林明', '凌金成', '黄儒', '蔡俊伟', '梁光', '2019-05-06 23:33:33'),
(23, '李杰文', '黄林明', '张建峰', '刘伟安', '梁光', '2019-05-06 23:37:18'),
(24, '李杰文', '刘炳浩', '黄儒', '林栩', '梁光', '2019-05-06 23:41:10'),
(25, '黄仕颖', '黄林明', '蔡俊伟', '刘伟安', '梁光', '2019-05-07 09:15:42'),
(26, '黄仕颖', '刘炳浩', '郑观广', '蔡俊伟', '林巧', '2019-05-07 09:44:53'),
(27, '黄仕颖', '李杰文', '黄儒', '林栩', '梁光', '2019-05-07 09:45:12'),
(28, '凌金成', '张建峰', '郑观广', '刘伟安', '林栩', '2019-05-07 09:45:17'),
(29, '黄仕颖', '黄林明', '张建峰', '蔡俊伟', '林栩', '2019-05-07 09:45:21'),
(30, '刘炳浩', '郑观广', '刘伟安', '林栩', '梁光', '2019-05-07 09:45:24'),
(31, '黄林明', '凌金成', '张建峰', '蔡俊伟', '梁光', '2019-05-07 09:45:28'),
(32, '凌金成', '张建峰', '郑观广', '蔡俊伟', '林巧', '2019-05-07 09:45:50'),
(33, '刘炳浩', '郑观广', '黄儒', '林巧', '林栩', '2019-05-07 09:50:12'),
(34, '黄仕颖', '刘炳浩', '蔡俊伟', '林巧', '林栩', '2019-05-07 10:12:18'),
(35, '黄仕颖', '李杰文', '刘炳浩', '张建峰', '刘伟安', '2019-05-07 12:42:01'),
(36, '黄林明', '凌金成', '林巧', '刘伟安', '林栩', '2019-05-07 12:43:54'),
(37, '黄林明', '刘炳浩', '凌金成', '郑观广', '黄儒', '2019-05-07 12:43:59'),
(38, '李杰文', '黄林明', '郑观广', '林巧', '林栩', '2019-05-07 12:44:07'),
(39, '刘炳浩', '郑观广', '黄儒', '蔡俊伟', '刘伟安', '2019-05-07 12:44:54');

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `test1`
--

CREATE TABLE IF NOT EXISTS `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `test1`
--

INSERT INTO `test1` (`id`, `name`, `date`) VALUES
(13, 'wutongyue', '2019-02-24 10:04:33'),
(14, 'wutongyue', '2019-02-25 22:54:36');

-- --------------------------------------------------------

--
-- 表的结构 `tuiguang_msg`
--

CREATE TABLE IF NOT EXISTS `tuiguang_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `get_found` int(11) DEFAULT NULL,
  `create_time` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tui_money_fund`
--

CREATE TABLE IF NOT EXISTS `tui_money_fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `adrress` varchar(255) DEFAULT NULL,
  `erweimaSrc` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `create_time` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `promotion_fund` int(11) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `need_pay` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `how_integral` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `is_success` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tui_money_fund`
--

INSERT INTO `tui_money_fund` (`id`, `openid`, `name`, `phone`, `adrress`, `erweimaSrc`, `create_time`, `promotion_fund`, `is_read`, `need_pay`, `how_integral`, `money`, `is_success`) VALUES
(6, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '吴同岳', '18814137320', '广东省广州市天河区', 'http://localhost/geomancy/public/uploads/2019-03-09-09-43-30-5c838ac246847.jpg', '2019-03-09 17:43:46', 10, b'0', '4.17', 6, 3, b'0');

-- --------------------------------------------------------

--
-- 表的结构 `tui_rule`
--

CREATE TABLE IF NOT EXISTS `tui_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `how_integral` int(11) DEFAULT NULL,
  `money` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tui_rule`
--

INSERT INTO `tui_rule` (`id`, `how_integral`, `money`, `type`) VALUES
(1, 6, '2.5', 'tui');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `signDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addPoint` int(11) DEFAULT NULL,
  `the_time` int(11) DEFAULT NULL,
  `tuiguangma_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_fund` int(11) DEFAULT NULL,
  `found_mark_this` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `found_mark_that` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `unionid`, `openid`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `nickName`, `city`, `province`, `points`, `signDate`, `addPoint`, `the_time`, `tuiguangma_src`, `promotion_fund`, `found_mark_this`, `found_mark_that`, `role`) VALUES
(1, NULL, NULL, 'gdmzd', NULL, '$2y$10$bBRNXQ0qRd/mAymKrIdmWeP4XhvPzxnUgSI8YO7b5k1Xp7O5sc8R2', NULL, '2019-03-06 08:07:22', '2019-03-06 00:07:22', '明正道', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', NULL, NULL, NULL, NULL, '2019-03-06 16:08:12', NULL, '蓝之静云', 'Sanming', 'Fujian', 1973, '2019-05-07 18:32:16', 8, 8, NULL, 930, NULL, '', 'just');

-- --------------------------------------------------------

--
-- 表的结构 `web_visit`
--

CREATE TABLE IF NOT EXISTS `web_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `web_visit`
--

INSERT INTO `web_visit` (`id`, `count`, `type`) VALUES
(1, '183', 'enter');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
