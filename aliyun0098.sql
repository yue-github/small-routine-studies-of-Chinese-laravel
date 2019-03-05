/*
 Navicat Premium Data Transfer

 Source Server         : aliyun0098
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : aliyun0098

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 05/03/2019 14:12:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-03-5c7cf48f4275d.png', '第一张轮播图', '世界，晚安');
INSERT INTO `banner` VALUES (2, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-12-5c7cf498aee4f.png', '第二张轮播图', '世界，你好');
INSERT INTO `banner` VALUES (3, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-27-5c7cf4a712fae.jpg', '第三张轮播图', NULL);
INSERT INTO `banner` VALUES (4, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-16-5c7cf49cd36f0.jpg', '第四张轮播图', NULL);
INSERT INTO `banner` VALUES (5, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-40-5c7cf4b491904.jpg', '第五张轮播图', NULL);
INSERT INTO `banner` VALUES (6, 'http://localhost/geomancy/public/uploads/2019-03-04-09-49-46-5c7cf4ba8e089.jpg', '第六张轮播图', NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boo` bit(1) NULL DEFAULT NULL,
  `line_is` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `whoColumn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `howPeople` int(11) NULL DEFAULT NULL,
  `price` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classCount` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `howIntegral` int(11) NULL DEFAULT NULL,
  `inCount` int(11) NULL DEFAULT NULL,
  `popBoo` bit(1) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `class_try_read` bit(1) NULL DEFAULT NULL,
  `pay_is` bit(1) NULL DEFAULT NULL,
  `audio_src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tui_found` int(11) NULL DEFAULT NULL,
  `eye` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 94 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (90, b'1', '推荐课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-47-59-5c7cf44f33c8f.jpg', '李老师', 0, '888.88', '姻缘红尘', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-25-40-5c7cfd243e76b.mp3', 8, '0');
INSERT INTO `class` VALUES (91, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-10-28-47-5c7cfddfdedd1.jpg', '郑老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-29-03-5c7cfdef326ec.mp3', 8, '0');
INSERT INTO `class` VALUES (92, b'1', '线下课程', 'http://localhost/geomancy/public/uploads/2019-03-04-10-30-20-5c7cfe3cefbde.jpg', '霍老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'0', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-30-45-5c7cfe55d0eaf.mp3', 8, '0');
INSERT INTO `class` VALUES (93, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-10-31-33-5c7cfe853f5a4.jpg', '孙老师', 0, '888.88', '命运与财富', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-31-42-5c7cfe8eb0072.mp3', 8, '0');
INSERT INTO `class` VALUES (89, b'1', '线下课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-46-53-5c7cf40de8d44.jpg', '卢老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'0', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-25-24-5c7cfd147f239.mp3', 8, '0');
INSERT INTO `class` VALUES (87, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-44-48-5c7cf3902da8d.jpg', '严老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-24-39-5c7cfce7b9e62.mp3', 8, '0');
INSERT INTO `class` VALUES (88, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-45-28-5c7cf3b84bfaf.jpg', '吴老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '你好，世界', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-24-57-5c7cfcf9e5647.mp3', 8, '0');
INSERT INTO `class` VALUES (73, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-34-27-5c7cf123756d7.jpg', '李老师', 0, '868.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 999, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-23-48-5c7cfcb488580.mp3', 8, '1');
INSERT INTO `class` VALUES (86, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-38-00-5c7cf1f83e9bf.jpg', '魏老师', 0, '888.88', '风水国学', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-24-22-5c7cfcd6547e1.mp3', 8, '0');
INSERT INTO `class` VALUES (75, b'1', '推荐课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-35-17-5c7cf1554ff1b.jpg', '蒲老师', 0, '886.88', '姻缘红尘', '信息', '热销中', '0.25', 8, 88, b'0', 1000, '人人都有向好之心，人人都有主吉之愿，所以人们相信风水，当然风水作为几千年的文明传承，更值得人们相信！有人说，好的风水是福人居福地，让所有的好能量磁场为我所用；有人说，好的风水是居龙脉、住吉宅，无煞无灾无阻碍；有人说，好的风水是藏风聚气，风生水起，助力自己平安健康、事事顺利、财源广进。这些观点都对，但并不全面。课程认为，你自己才是最好的风水！人才是主宰世界的主人，没有人，再好的风水也失去了用武之地；没有人，风水二字就是去了文化内涵和实际意义，只剩下流动的风和婉转的水。古人云，心生万法，道法自然。自然界的一切都是为人所用的。如果这个人没有向好之心、主吉之愿，没有良好的德行，没有担大任的鸿鹄之志和创业精神……再好的风水也白瞎！', b'1', b'0', 'http://localhost/geomancy/public/audio/2019-03-04-10-24-04-5c7cfcc4d393a.mp3', 8, '0');

-- ----------------------------
-- Table structure for class_pay
-- ----------------------------
DROP TABLE IF EXISTS `class_pay`;
CREATE TABLE `class_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boo` bit(1) NULL DEFAULT NULL,
  `line_is` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `whoColumn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `howPeople` int(11) NULL DEFAULT NULL,
  `price` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classCount` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `howIntegral` int(11) NULL DEFAULT NULL,
  `inCount` int(11) NULL DEFAULT NULL,
  `popBoo` bit(1) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `class_try_read` bit(1) NULL DEFAULT NULL,
  `pay_is` bit(1) NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `audio_src` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tui_found` int(11) NULL DEFAULT NULL,
  `eye` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 121 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_pay
-- ----------------------------
INSERT INTO `class_pay` VALUES (120, b'1', '精品课程', 'http://localhost/geomancy/public/uploads/2019-03-04-09-34-27-5c7cf123756d7.jpg', '李老师', 0, '868.88', '风水国学', '信息', '热销中', '0.25', 8, 4, b'0', 1000, '你好，世界', b'1', b'1', 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', 'http://localhost/geomancy/public/audio/2019-03-04-10-23-48-5c7cfcb488580.mp3', 8, '1', 73);

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `adrress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `erweimaSrc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (18, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '吴同岳', '18814137320', '广州市天河区车陂', 'http://localhost/geomancy/public/uploads/2019-03-05-03-19-42-5c7deacea89fe.jpg', '123243243242342');

-- ----------------------------
-- Table structure for integral_rule
-- ----------------------------
DROP TABLE IF EXISTS `integral_rule`;
CREATE TABLE `integral_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addPoint` int(11) NULL DEFAULT NULL,
  `role` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of integral_rule
-- ----------------------------
INSERT INTO `integral_rule` VALUES (1, 8, 'just');
INSERT INTO `integral_rule` VALUES (2, 18, 'vip');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `system_is` bit(1) NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (70, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', b'1', '恭喜你获得风水国学课程。请点击【我的】查看', '2019-03-04 18:26:26');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('9704986ccd219617674e7901451bd78f426d32f1f56f0cd6ca9428dd3d17dd1e6588d5d74018196f', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:00:47', '2018-12-18 11:00:47', '2019-12-18 11:00:47');
INSERT INTO `oauth_access_tokens` VALUES ('0b0325e670c106dee73e104f4a80ddfc774e125be6058ee0eb4af30249624ad211aa2bcfe2afc2c2', 1, 1, 'MyApp', '[]', 0, '2018-12-18 10:58:45', '2018-12-18 10:58:45', '2019-12-18 10:58:45');
INSERT INTO `oauth_access_tokens` VALUES ('c257228fb971814638e4824c58662f12444f70236801e6d27aea9a9cafd9ae869193eb53452e8b98', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:15', '2018-12-18 11:02:15', '2019-12-18 11:02:15');
INSERT INTO `oauth_access_tokens` VALUES ('bc79c58ccc158b3632c8959eb5a5d637a6ee2a51358ccecea112f1ba9605f8534877d2b68642551d', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:35', '2018-12-18 11:02:35', '2019-12-18 11:02:35');
INSERT INTO `oauth_access_tokens` VALUES ('4051fc323ff2b9a5d54c988bf4756028940fc1442faa2a05d6e6a937ac9a5e744ebd2cc728a08c7c', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:02:44', '2018-12-18 11:02:44', '2019-12-18 11:02:44');
INSERT INTO `oauth_access_tokens` VALUES ('70d1dce764c4fb514fe5d3f9621e3ca22973a0847fb1e333394373ecfac0180a3f5afe225532464b', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:04', '2018-12-18 11:03:04', '2019-12-18 11:03:04');
INSERT INTO `oauth_access_tokens` VALUES ('be207fa5ee001878b4f677f223311674c48345848a166f11454ee554c015240df0572309b74deaa5', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:27', '2018-12-18 11:03:27', '2019-12-18 11:03:27');
INSERT INTO `oauth_access_tokens` VALUES ('22a3422831463d24d53c2e770e5c3178747b88d185558ed7cd567884c0ed83fe4dc3cbb8deb124cb', 1, 1, 'MyApp', '[]', 0, '2018-12-18 11:03:43', '2018-12-18 11:03:43', '2019-12-18 11:03:43');
INSERT INTO `oauth_access_tokens` VALUES ('0b63f45def38b08ab79ffdbded1f86443a4b4e7f7bfa48a44db17c1560f216c8c7f4dba171774a36', 9, 1, 'MyApp', '[]', 0, '2019-02-26 05:20:08', '2019-02-26 05:20:08', '2020-02-26 05:20:08');
INSERT INTO `oauth_access_tokens` VALUES ('bfb8b2d2e0f2c7891bc4a4b64b1b3af8aa1fb1fdea01c236d9660a4becad1700ddeb140c33601b70', 10, 1, 'MyApp', '[]', 0, '2019-02-26 05:22:41', '2019-02-26 05:22:41', '2020-02-26 05:22:41');
INSERT INTO `oauth_access_tokens` VALUES ('5abbf569fa0faaaf4cde4f14998ec26b9ecdb245759f4dc7faf9d9d39012adb5ccf440ad531a5299', 11, 1, 'MyApp', '[]', 0, '2019-02-26 05:26:00', '2019-02-26 05:26:00', '2020-02-26 05:26:00');
INSERT INTO `oauth_access_tokens` VALUES ('1ccb8103d3e9f36b341bc8d063ff2170de862ff9afa3404476e8dc77b2189b7cd767fd1733f38a45', 12, 1, 'MyApp', '[]', 0, '2019-02-26 05:26:46', '2019-02-26 05:26:46', '2020-02-26 05:26:46');
INSERT INTO `oauth_access_tokens` VALUES ('66171c6d535338fcaa4585d7e2cf29980f964141aa06685fc0db2be2fff36c2201565cad7a97432b', 13, 1, 'MyApp', '[]', 0, '2019-02-26 05:27:07', '2019-02-26 05:27:07', '2020-02-26 05:27:07');
INSERT INTO `oauth_access_tokens` VALUES ('f13edfcef949ee71878f31158a604b15da064428697000d78bd8d1a802cf1052ccf631dc399fdb98', 14, 1, 'MyApp', '[]', 0, '2019-02-26 05:29:37', '2019-02-26 05:29:37', '2020-02-26 05:29:37');
INSERT INTO `oauth_access_tokens` VALUES ('e3e1596c186e831bb70278c91b2811159ebd41eb4757799c74d4fdaef896dacbf3bdaa4646f23ec4', 15, 1, 'MyApp', '[]', 0, '2019-02-26 05:31:11', '2019-02-26 05:31:11', '2020-02-26 05:31:11');
INSERT INTO `oauth_access_tokens` VALUES ('7d0494803c17a2ce6ee3baccfe8efea2e4587549b0c10db0ad8e2195e8db11803893ce850c01d1f9', 16, 1, 'MyApp', '[]', 0, '2019-02-26 06:39:25', '2019-02-26 06:39:25', '2020-02-26 06:39:25');
INSERT INTO `oauth_access_tokens` VALUES ('652a5180e23911a00eb0ccd399873748fefb56b5c816566d81e2d3ed6c15f9b1f82f719d9351dc44', 17, 1, 'MyApp', '[]', 0, '2019-02-26 06:48:33', '2019-02-26 06:48:33', '2020-02-26 06:48:33');
INSERT INTO `oauth_access_tokens` VALUES ('695a7405e2f2acc1af642896a99dee0836987d4f407f499cf8813bf51e70f0ca6cafc313bdb9dc90', 17, 1, 'MyApp', '[]', 0, '2019-02-27 02:09:35', '2019-02-27 02:09:35', '2020-02-27 02:09:35');
INSERT INTO `oauth_access_tokens` VALUES ('28e61cfd406872f30b75e609a5452764943b37e7c6369dfdbfeeb3e2cb92123d81a8d449a7a213b6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:13:23', '2019-02-27 02:13:23', '2020-02-27 02:13:23');
INSERT INTO `oauth_access_tokens` VALUES ('9d653507881ab9dbd04ac4f787cdb1498398c276ab8c249054bd285e38d4475b55ebc4c1647b3ebd', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:25:19', '2019-02-27 02:25:19', '2020-02-27 02:25:19');
INSERT INTO `oauth_access_tokens` VALUES ('680c8f3e1ceb09eac062e22fc211ae0b633d03a847b1000e134c40719d1083d8de1596fe7f077bea', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:30:18', '2019-02-27 02:30:18', '2020-02-27 02:30:18');
INSERT INTO `oauth_access_tokens` VALUES ('cb9e2c422faea1b0284b84b4b5504bea11c3c127d1aa982387718406201d6c5c17b4ba4693e678b2', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:38:10', '2019-02-27 02:38:10', '2020-02-27 02:38:10');
INSERT INTO `oauth_access_tokens` VALUES ('7602de96957a14696559350c8429d704382c2c31f52579ac87a571d41ef2bdb0317c6028fe7ddc39', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:43:40', '2019-02-27 02:43:40', '2020-02-27 02:43:40');
INSERT INTO `oauth_access_tokens` VALUES ('9f05a8f1f9e88f3697fa79bcd20497ba65c18abd0c3335c0e8db8fb24904a93d6415ab7a6811a8ca', 19, 1, 'MyApp', '[]', 0, '2019-02-27 02:48:53', '2019-02-27 02:48:53', '2020-02-27 02:48:53');
INSERT INTO `oauth_access_tokens` VALUES ('2a8daac795cb283d46902a02bb6d53a54b15d7f0cc40eaacdb0492ee0e27ae2ada3e17d1b1e12208', 20, 1, 'MyApp', '[]', 0, '2019-02-27 03:02:08', '2019-02-27 03:02:08', '2020-02-27 03:02:08');
INSERT INTO `oauth_access_tokens` VALUES ('61fafd9c928368548abcdac8c9308f684c8856ec17df6ad94c3e9219a0099f4312f5865fa2ccbf42', 21, 1, 'MyApp', '[]', 0, '2019-02-27 03:03:31', '2019-02-27 03:03:31', '2020-02-27 03:03:31');
INSERT INTO `oauth_access_tokens` VALUES ('f7cee256adde4bddd50408e4296fc9be292db2fb661f1b4ca53faa85f29bae43a4290aaafc4a1526', 22, 1, 'MyApp', '[]', 0, '2019-02-27 03:05:57', '2019-02-27 03:05:57', '2020-02-27 03:05:57');
INSERT INTO `oauth_access_tokens` VALUES ('aac3fb3bde75ba20bf83594b049d70997eff70749672a7f6cb619d086037a720858713d3d238bc5d', 19, 1, 'MyApp', '[]', 0, '2019-02-27 14:54:22', '2019-02-27 14:54:22', '2020-02-27 14:54:22');
INSERT INTO `oauth_access_tokens` VALUES ('198cbff646c0f160f4327b64dd897786eb54f0f5c951c216c11d62ace2b79e4d39f92ed09974f5e8', 19, 1, 'MyApp', '[]', 0, '2019-02-27 14:55:52', '2019-02-27 14:55:52', '2020-02-27 14:55:52');
INSERT INTO `oauth_access_tokens` VALUES ('72f07bf5ca5b7b0c3c804949201437bcd0b5caad2191d23023833d7f92adf5daaf4a9585f854aafe', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:07:01', '2019-02-27 15:07:01', '2020-02-27 15:07:01');
INSERT INTO `oauth_access_tokens` VALUES ('3f2e3a648880ffe43d469d1c39c6df79bea1dd656d816142bcfac1596308c9bc50c3585e41aa82b7', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:09:19', '2019-02-27 15:09:19', '2020-02-27 15:09:19');
INSERT INTO `oauth_access_tokens` VALUES ('70863de34a2956688006746ebf1d46358e50d04c530e06e7f143e4fefb7d7771df89ec9864f514d6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:11:08', '2019-02-27 15:11:08', '2020-02-27 15:11:08');
INSERT INTO `oauth_access_tokens` VALUES ('58266a8455bc65eef27426fb9df989fbd46765d3f133415cab1420a991060ea495aa518d3c0cb349', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:21:51', '2019-02-27 15:21:51', '2020-02-27 15:21:51');
INSERT INTO `oauth_access_tokens` VALUES ('38d02013142d8dadab9beff1c86e4451c861393c885e3435528dc44e5335ca6c1d25083cd43050ff', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:24:28', '2019-02-27 15:24:28', '2020-02-27 15:24:28');
INSERT INTO `oauth_access_tokens` VALUES ('342af08ad9c34d84c274515c71451eb9d1b1cb2ba4e7e6b3f433a7f8c074ef81bbad5f8e28388968', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:41:02', '2019-02-27 15:41:02', '2020-02-27 15:41:02');
INSERT INTO `oauth_access_tokens` VALUES ('bf16d250523505a51bbb89f044c9337c45b20f04d18d15aba4be6c12c4a3771c85570d26423951f3', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:41:21', '2019-02-27 15:41:21', '2020-02-27 15:41:21');
INSERT INTO `oauth_access_tokens` VALUES ('f2aeb0bc3028ac599cd04a0a5fa15ecbfc68755f33f91099959f84b3cdab0cadf781a85bdc638ad1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:41:31', '2019-02-27 15:41:31', '2020-02-27 15:41:31');
INSERT INTO `oauth_access_tokens` VALUES ('5f47799aff2f66a7e31e164cb1a712f4da7c2eaae49cb1252870ab9f5a13a074f1e109bfa03debd1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:42:00', '2019-02-27 15:42:00', '2020-02-27 15:42:00');
INSERT INTO `oauth_access_tokens` VALUES ('6a08810e2b9a7695bd74294a104d46c49ef6ebf47e5afdcfec073d9df6243c3f6f55f4486050cf22', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:42:51', '2019-02-27 15:42:51', '2020-02-27 15:42:51');
INSERT INTO `oauth_access_tokens` VALUES ('6e0f8d3a836b873f67189947b3d24ea46b628e47e845196551afad33032227fe106e418518ea5999', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:43:31', '2019-02-27 15:43:31', '2020-02-27 15:43:31');
INSERT INTO `oauth_access_tokens` VALUES ('c1e21e75f531d62cc048a9457850e62dcc5aae8a56d3e0c7603165a28c703749a6141929af4f8ec2', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:45:34', '2019-02-27 15:45:34', '2020-02-27 15:45:34');
INSERT INTO `oauth_access_tokens` VALUES ('efafba345344197f44986bc9a961caee84df1aec63999a0da93f98b4d0d154e195a23d8ce247483a', 19, 1, 'MyApp', '[]', 0, '2019-02-27 15:56:45', '2019-02-27 15:56:45', '2020-02-27 15:56:45');
INSERT INTO `oauth_access_tokens` VALUES ('b9bb87a697977231b75924f3e266d9aaa4dbc291df9eeb4b948ea1c7c15fda3cb0726b5e690456be', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:10:06', '2019-02-27 16:10:06', '2020-02-27 16:10:06');
INSERT INTO `oauth_access_tokens` VALUES ('d4d38ce87d9a75b4bcfbd7f3034dadf83ddd19e44fcd45819c25937046639defa5d46a3fe793b060', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:12:29', '2019-02-27 16:12:29', '2020-02-27 16:12:29');
INSERT INTO `oauth_access_tokens` VALUES ('55392fb0aab16b18030dfcb1ce6b231aac645de1d07257d8b8068b5e1c25154477233e0e613d776f', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:13:01', '2019-02-27 16:13:01', '2020-02-27 16:13:01');
INSERT INTO `oauth_access_tokens` VALUES ('22250c775fb9494408c711720aefea74c5128dba2ae587e01a209505657f41042074255dfa87aaf6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:15:04', '2019-02-27 16:15:04', '2020-02-27 16:15:04');
INSERT INTO `oauth_access_tokens` VALUES ('6d109051c15af7328c10b3c194faba96992f619327aecaf912b2c6f27b60d8f89cd31e6293e0a922', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:15:37', '2019-02-27 16:15:37', '2020-02-27 16:15:37');
INSERT INTO `oauth_access_tokens` VALUES ('ebf4919b17641e7ba118bce230abc1145e2ac6dc6e53a026ee93b608212843f39ac1ab807191bf1c', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:17:13', '2019-02-27 16:17:13', '2020-02-27 16:17:13');
INSERT INTO `oauth_access_tokens` VALUES ('ae31fd417bfbe6a3e57a3f91b358aadc82c193debbc5321f5f31d49135e3d1ebb37f04514677d8a1', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:17:48', '2019-02-27 16:17:48', '2020-02-27 16:17:48');
INSERT INTO `oauth_access_tokens` VALUES ('84c359b33c11591360ad08a636710e9201f0e3f52f9f53446fe818d62940d9f22333ef3b04e36303', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:19:13', '2019-02-27 16:19:13', '2020-02-27 16:19:13');
INSERT INTO `oauth_access_tokens` VALUES ('c4c43b093285c8ca2caaa18ddb878ed1b37f314e6a5b045c19e28fa2ec83085afb8333c3e909d3b7', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:22:33', '2019-02-27 16:22:33', '2020-02-27 16:22:33');
INSERT INTO `oauth_access_tokens` VALUES ('377426252a591a30e7597aa114e7402d7ef5aae2d35e01e89c9ae296227121767952b606d1343cc6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:23:49', '2019-02-27 16:23:49', '2020-02-27 16:23:49');
INSERT INTO `oauth_access_tokens` VALUES ('0e67d3b33fa9f43133f3cc2587e29d7b8a05e7117644d2cfed7c3a7d719be533eadac79b720e16fa', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:28:05', '2019-02-27 16:28:05', '2020-02-27 16:28:05');
INSERT INTO `oauth_access_tokens` VALUES ('ecf40cf10d17ee5c32468539340b48e33fe9d51b89552653fe2aeeb2c8d78e35edc5990113c61b56', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:29:11', '2019-02-27 16:29:11', '2020-02-27 16:29:11');
INSERT INTO `oauth_access_tokens` VALUES ('258daeadd5271f6e91c4278e9aa1b141bc9974c0b582a2bfd18f1d88cf905be68082eb4ccbbfecb6', 19, 1, 'MyApp', '[]', 0, '2019-02-27 16:29:21', '2019-02-27 16:29:21', '2020-02-27 16:29:21');
INSERT INTO `oauth_access_tokens` VALUES ('2331e7b40439384324c0563129ffba4b1a3423d440e13fdc217b680c8f9523813afd769d848c2fab', 19, 1, 'MyApp', '[]', 0, '2019-02-28 10:14:29', '2019-02-28 10:14:29', '2020-02-28 10:14:29');
INSERT INTO `oauth_access_tokens` VALUES ('0b5de461832fce9d7c0bbc46db181ece6b7c5f1f11b913249a4d4de0e98dda8788825b27f7c9ddd1', 19, 1, 'MyApp', '[]', 0, '2019-02-28 10:14:56', '2019-02-28 10:14:56', '2020-02-28 10:14:56');
INSERT INTO `oauth_access_tokens` VALUES ('5be4e14c27a92879d9ceaa5f20780f0147371090b00c8cbeba36f508bec76536c89ec1d0d5f53e8e', 19, 1, 'MyApp', '[]', 0, '2019-02-28 10:20:55', '2019-02-28 10:20:55', '2020-02-28 10:20:55');
INSERT INTO `oauth_access_tokens` VALUES ('72800f9b6c43e3e27c0a35170714e4cbe8ea6cc2b51f1dc16fbf2286423bcaeb55ff6bd1f2ba317f', 19, 1, 'MyApp', '[]', 0, '2019-02-28 10:47:19', '2019-02-28 10:47:19', '2020-02-28 10:47:19');
INSERT INTO `oauth_access_tokens` VALUES ('3d0f3c4358a53b4b00f8c38e4b68373931e3a9ef1c85a0e8aab068e6b74d3d7c4a2df9a2dc735cf2', 19, 1, 'MyApp', '[]', 0, '2019-02-28 10:49:28', '2019-02-28 10:49:28', '2020-02-28 10:49:28');
INSERT INTO `oauth_access_tokens` VALUES ('99dc074c1a41eba2f36ed010ed8e69db9d84bee8ba2d24e1ce1b61b185f9e2691cd89a52b1d71445', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:03:52', '2019-02-28 11:03:52', '2020-02-28 11:03:52');
INSERT INTO `oauth_access_tokens` VALUES ('89aa54e8e88f9d540ceb03aeb7c40a6d60bc3b75802afd9e9c3f07e5813bb541e383621163cf2c2f', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:06:50', '2019-02-28 11:06:50', '2020-02-28 11:06:50');
INSERT INTO `oauth_access_tokens` VALUES ('e696558e7fcf5ebda8d96ff91a4ff91849cb3fcb891b7b126a5de04624dc49f6d7fb59dbfb149fff', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:15:02', '2019-02-28 11:15:02', '2020-02-28 11:15:02');
INSERT INTO `oauth_access_tokens` VALUES ('cbe28af1af2bbd3c1fedf93a1ee886fdf4e21b6c0297cd9dc72fb852d6c3026c2b95bfc4b036472b', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:25:29', '2019-02-28 11:25:29', '2020-02-28 11:25:29');
INSERT INTO `oauth_access_tokens` VALUES ('e4e57a5cf8bd9f7f01b58071a6ef4df53fd05267e0611c100b6463a734fb2f1a582990d935a32769', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:35:39', '2019-02-28 11:35:39', '2020-02-28 11:35:39');
INSERT INTO `oauth_access_tokens` VALUES ('2c9285aef1675a9dfafb25f6cc802c31292bceba4258bbcd0136b8a7cc99a7123cda4f7be50fb2fa', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:37:15', '2019-02-28 11:37:15', '2020-02-28 11:37:15');
INSERT INTO `oauth_access_tokens` VALUES ('dde675fcf7c30e588ba4f2984bcc622ed90f06fb6d349f5005d2c7a6f458bb41304d515bb33d3b09', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:45:16', '2019-02-28 11:45:16', '2020-02-28 11:45:16');
INSERT INTO `oauth_access_tokens` VALUES ('4799ff61cee1db6495d07526febcdf3cf755121ba2f336cdcf2d7718b0ea4ee920d86014fc891786', 19, 1, 'MyApp', '[]', 0, '2019-02-28 11:52:10', '2019-02-28 11:52:10', '2020-02-28 11:52:10');
INSERT INTO `oauth_access_tokens` VALUES ('0c2205a043e8dfdc4426b8bf727d0503b6291f6321a2101ee861848e7a7d5755906ea5d6b48d8e8d', 27, 1, 'X-Token', '[]', 0, '2019-02-28 11:56:21', '2019-02-28 11:56:21', '2020-02-28 11:56:21');
INSERT INTO `oauth_access_tokens` VALUES ('ef791c721e272161ac1269bc06bef1f6cfb2220eda0112824a5ed84c780f796be31088d9ce2a877a', 27, 1, 'X-Token', '[]', 0, '2019-02-28 12:03:29', '2019-02-28 12:03:29', '2020-02-28 12:03:29');
INSERT INTO `oauth_access_tokens` VALUES ('6fdfffc188e063102ea9d1415b33ac6bb1da0fdad201aaf9e9229af9daac8cfe685c52c87d8fa3ae', 27, 1, 'X-Token', '[]', 0, '2019-02-28 12:04:29', '2019-02-28 12:04:29', '2020-02-28 12:04:29');
INSERT INTO `oauth_access_tokens` VALUES ('6048c19be1506e44e0f229953890b2a4d125a14613bc283d573e62fb3ffe14e71e833817df904a1e', 27, 1, 'X-Token', '[]', 0, '2019-02-28 12:08:47', '2019-02-28 12:08:47', '2020-02-28 12:08:47');
INSERT INTO `oauth_access_tokens` VALUES ('05024a20fda128d0f5425eb964a376e4b4573dfbe8640c8da2f292726db2d8780f47bfe523921817', 27, 1, 'X-Token', '[]', 0, '2019-02-28 12:14:27', '2019-02-28 12:14:27', '2020-02-28 12:14:27');
INSERT INTO `oauth_access_tokens` VALUES ('feca203548a6ca05438c2b80eafc4e4e59b3265bbf69e335ead9b1be2d4cfdd39112c6ae72bdee59', 27, 1, 'MyApp', '[]', 0, '2019-02-28 12:22:36', '2019-02-28 12:22:36', '2020-02-28 12:22:36');
INSERT INTO `oauth_access_tokens` VALUES ('d9cdea2c3ff915e2f8f47dd1369c339444cf1343a81d87b6b69f40d3317cb0ed7b6c5e66eef5c788', 27, 1, 'MyApp', '[]', 0, '2019-02-28 12:28:44', '2019-02-28 12:28:44', '2020-02-28 12:28:44');
INSERT INTO `oauth_access_tokens` VALUES ('b05e5291d0debfa32be5a85671a4eb812e20ee02f2886d4e0f7d046cffd4544cfc7db7e50eb55e49', 27, 1, 'MyApp', '[]', 0, '2019-02-28 12:31:58', '2019-02-28 12:31:58', '2020-02-28 12:31:58');
INSERT INTO `oauth_access_tokens` VALUES ('eeb61edfe7ec39e3894e1e986753210d1a9736b27b113be7ddcd1524cf11736113192edce12c0f7d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:10:50', '2019-02-28 14:10:50', '2020-02-28 14:10:50');
INSERT INTO `oauth_access_tokens` VALUES ('68c56180f4b76fc0b1aca9061fe1fa8b7a07e7e24c51ac887922cb7ed2cfbc39f6c84f521c501786', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:11:04', '2019-02-28 14:11:04', '2020-02-28 14:11:04');
INSERT INTO `oauth_access_tokens` VALUES ('af72672d185a79bea2f7b03e316f80776b164a89e8abd2d6bd1ebb05bec3f35a6f9b713c670570de', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:15:13', '2019-02-28 14:15:13', '2020-02-28 14:15:13');
INSERT INTO `oauth_access_tokens` VALUES ('6aa8e950684c266487df41f932c0407b0cc55b82600afbeeb2f8f23d593c68c50830852b01ea04a8', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:25:09', '2019-02-28 14:25:09', '2020-02-28 14:25:09');
INSERT INTO `oauth_access_tokens` VALUES ('5054915c5caf6ffe9654a595aa5fa1d0b3bcf78a4ac694469f6a607a6bb0dddb1d1ae5d8008dace8', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:30:24', '2019-02-28 14:30:24', '2020-02-28 14:30:24');
INSERT INTO `oauth_access_tokens` VALUES ('7b7d8cae7247005d25f892ccae75e676e1fce14ccc8332642ccc69547f154035131f8834071e9413', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:35:04', '2019-02-28 14:35:04', '2020-02-28 14:35:04');
INSERT INTO `oauth_access_tokens` VALUES ('1d7e83c038e75eda119e9cc716ef4ea72602cdbc5555e0db2d4de6a8a2f23d9a232d9855e0827e40', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:38:46', '2019-02-28 14:38:46', '2020-02-28 14:38:46');
INSERT INTO `oauth_access_tokens` VALUES ('4ae1aebca529703d5d7e732ba1722740639559f74d6743ef7ae6fee893824f53e26df8df89038838', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:42:12', '2019-02-28 14:42:12', '2020-02-28 14:42:12');
INSERT INTO `oauth_access_tokens` VALUES ('5a27e06d74371ee7a42180139fbe422fccdf59e5e1a0a096b639ea69965af40c40c2e12f59e86b8d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:43:39', '2019-02-28 14:43:39', '2020-02-28 14:43:39');
INSERT INTO `oauth_access_tokens` VALUES ('f9321f4afdaff84812e49a29531263a26f616501146d79ea46d2ab171aa7dfeb672bfae490cf46a4', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:45:02', '2019-02-28 14:45:02', '2020-02-28 14:45:02');
INSERT INTO `oauth_access_tokens` VALUES ('cc7bc0e3f1b4974206d5e424aeabcec1ec03d0e6f0b1cee41c62b6b90b27975665791a2280d3dc50', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:46:46', '2019-02-28 14:46:46', '2020-02-28 14:46:46');
INSERT INTO `oauth_access_tokens` VALUES ('4b36ac4e604909980866fa7fbdcf8f756de20f41a9abe51e0cbc5f9dd44a61eb370b7aa0b3973c1d', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:47:46', '2019-02-28 14:47:46', '2020-02-28 14:47:46');
INSERT INTO `oauth_access_tokens` VALUES ('11ea6aad87d68a18d7eafc689325dc6954ddfbb7d5c081fecfefb6f54a4eec7adee0a1e5fc4a4dce', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:57:14', '2019-02-28 14:57:14', '2020-02-28 14:57:14');
INSERT INTO `oauth_access_tokens` VALUES ('08c88679bc0178499891e40caea8b40768fbf81a20ac0ae8b008f2ddc4bddf67efb10d55e654403c', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:58:19', '2019-02-28 14:58:19', '2020-02-28 14:58:19');
INSERT INTO `oauth_access_tokens` VALUES ('0f32b0ea10f68a6d77c733d066b07cffa3200f39fd4864ede16cb3d2ef054645f6d70db12fc48a81', 27, 1, 'MyApp', '[]', 0, '2019-02-28 14:59:24', '2019-02-28 14:59:24', '2020-02-28 14:59:24');
INSERT INTO `oauth_access_tokens` VALUES ('806afab65b957bbb4427ef65a3d349d945c660c7d6b33faec24f3c18b20ff3f57b7020fa87af3ab7', 28, 1, 'MyApp', '[]', 0, '2019-02-28 15:03:09', '2019-02-28 15:03:09', '2020-02-28 15:03:09');
INSERT INTO `oauth_access_tokens` VALUES ('828809d2ad321e256dc216fc52587cfcf366609e66d1500d2fb0753e3baed66c680fb25dbb4c0054', 29, 1, 'MyApp', '[]', 0, '2019-02-28 15:04:03', '2019-02-28 15:04:03', '2020-02-28 15:04:03');
INSERT INTO `oauth_access_tokens` VALUES ('94e2f5f49ae524544ae1fe8aa715dc2f197e34d465981e64dccf774c3521edbec8198c7d412732a6', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:04:29', '2019-02-28 15:04:29', '2020-02-28 15:04:29');
INSERT INTO `oauth_access_tokens` VALUES ('7bba3a0cd4b0f24d8295bed07ebe483abd6048215e913562a6b1beef809f9626219df7ef7c1f8fbc', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:06:45', '2019-02-28 15:06:45', '2020-02-28 15:06:45');
INSERT INTO `oauth_access_tokens` VALUES ('42fe657aeea0dd8397a75ab301c8489edd0fe22a329ac4b065a4d04e713dfcc931dc6cddddca8aa4', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:08:22', '2019-02-28 15:08:22', '2020-02-28 15:08:22');
INSERT INTO `oauth_access_tokens` VALUES ('ef5b165a4b19312573de3edfbf1f36aca89d54b8cd212bf365c9d345580b3d5b79c23fd22d88ae49', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:09:25', '2019-02-28 15:09:25', '2020-02-28 15:09:25');
INSERT INTO `oauth_access_tokens` VALUES ('9f7198ca5ba63d7c943e9cee7523f3ac6745d2e8e91df1a52a2b77d83bff330415731e28f0c3e576', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:13:48', '2019-02-28 15:13:48', '2020-02-28 15:13:48');
INSERT INTO `oauth_access_tokens` VALUES ('528331c2ca9b3893ea414c6127aabda5c6d4e8014c35f97b7125bcc47fa6e6e65892339912f81ecb', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:15:19', '2019-02-28 15:15:19', '2020-02-28 15:15:19');
INSERT INTO `oauth_access_tokens` VALUES ('d973c6a723d713984162128fb3a239df5d15a0500ed9daf8ab959763b04f0cd8054b90cc46fd6d02', 30, 1, 'MyApp', '[]', 0, '2019-02-28 15:16:05', '2019-02-28 15:16:05', '2020-02-28 15:16:05');
INSERT INTO `oauth_access_tokens` VALUES ('e7059a80b36079f6420600fb57e9d78d90a4c050a6731c87e689885fd6b2f7c452482c9254ee7e8d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 00:25:41', '2019-03-01 00:25:41', '2020-03-01 00:25:41');
INSERT INTO `oauth_access_tokens` VALUES ('fb5b7d6c5345366642c3e2918484b5d85c36c04ef9b26ec4b3e4adcb4f2048560774c0a6823b8727', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:02:59', '2019-03-01 01:02:59', '2020-03-01 01:02:59');
INSERT INTO `oauth_access_tokens` VALUES ('8930ee12c9db81551beac334c81e99197b7c5c4ef428f3128abb457dfccf9ec0c5df0b50f697223c', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:05:03', '2019-03-01 01:05:03', '2020-03-01 01:05:03');
INSERT INTO `oauth_access_tokens` VALUES ('c3f2cd82a1b58e58189ec0fdb52043eea2f2543a82479cf32a47c9dea129410850f3b48bc20cad1d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:05:35', '2019-03-01 01:05:35', '2020-03-01 01:05:35');
INSERT INTO `oauth_access_tokens` VALUES ('81b1fd81f8a4a2045bed1a90a5688d66d2e2473957ffb6a9239637176bc377161c5e95c4466a14dd', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:06:51', '2019-03-01 01:06:51', '2020-03-01 01:06:51');
INSERT INTO `oauth_access_tokens` VALUES ('58ce71b470588dc4cafc17d5e9788cf7812c923cbe00758fbf5d3a9c13ca35cf35fc2b2d177ff9fc', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:07:57', '2019-03-01 01:07:57', '2020-03-01 01:07:57');
INSERT INTO `oauth_access_tokens` VALUES ('208807162e8cf1b9c068a2f5ddcbb094895a2237621ad51cbc95d1c618e7b9bee5d24f26c5d9e457', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:10:45', '2019-03-01 01:10:45', '2020-03-01 01:10:45');
INSERT INTO `oauth_access_tokens` VALUES ('e76c1c59bfa93111c2e13c04d76998168ac241922cb06a7e34152a4aa75152db086ad4d0c4c38cc5', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:11:55', '2019-03-01 01:11:55', '2020-03-01 01:11:55');
INSERT INTO `oauth_access_tokens` VALUES ('bb1c4f6fbd29eb73954007d0807c77d9ffbfd9bd8bc8734f8cc9081aedd7c41042b350293d2dbb32', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:13:31', '2019-03-01 01:13:31', '2020-03-01 01:13:31');
INSERT INTO `oauth_access_tokens` VALUES ('d30a82c91fa3d0afa2c1e346702d9978f0f92f50a8122a10b2539b8a78b935869b1fd8b73b063954', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:14:50', '2019-03-01 01:14:50', '2020-03-01 01:14:50');
INSERT INTO `oauth_access_tokens` VALUES ('cd2b8a63bbe47fe7fa3c00164de30830eccd7c37b252d188d6486de4f32b31146b4d4566a8a01151', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:15:25', '2019-03-01 01:15:25', '2020-03-01 01:15:25');
INSERT INTO `oauth_access_tokens` VALUES ('829e45a3b413fd5c90440ad7cc8ef7fbd33a172e37d0d4fb59aa4b9e930e4f9bba41cfe0b92406a7', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:20:24', '2019-03-01 01:20:24', '2020-03-01 01:20:24');
INSERT INTO `oauth_access_tokens` VALUES ('d9a35a8577f8ef8691ae853d9f9eeb3002ee6a4957d4ff4acdecf6b5bba77ca941006939fbe7caf9', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:21:29', '2019-03-01 01:21:29', '2020-03-01 01:21:29');
INSERT INTO `oauth_access_tokens` VALUES ('ddff035e65a4b176630948dc983382c1a87f467e60e835c71c5b18894a7158b51a75841a1fadaaab', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:22:59', '2019-03-01 01:22:59', '2020-03-01 01:22:59');
INSERT INTO `oauth_access_tokens` VALUES ('aa549847f7cd9729328d34399d8b4422b5b84cee896b6ebdd5cde5826abdda5d57167bacbf83b3c3', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:33:11', '2019-03-01 01:33:11', '2020-03-01 01:33:11');
INSERT INTO `oauth_access_tokens` VALUES ('09bc346e90402bb3e49f8721dcf11de9e9f3ac499ff41d65c05a80d87d53b94b758516760d6fa586', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:50:59', '2019-03-01 01:50:59', '2020-03-01 01:50:59');
INSERT INTO `oauth_access_tokens` VALUES ('3c621b04d87447c50fdced4a2a669cc7a3958c99f2fb3cc259b66d96657ec0f0b358976c330bb470', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:53:00', '2019-03-01 01:53:00', '2020-03-01 01:53:00');
INSERT INTO `oauth_access_tokens` VALUES ('59e56a7c0911d935775c1abd51c812d839456e1718a0c337ed1477cc2dc146db8376537cafa71828', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:54:40', '2019-03-01 01:54:40', '2020-03-01 01:54:40');
INSERT INTO `oauth_access_tokens` VALUES ('02582825c8574a72587d026f74196520614587c16d9589e7927b4694d0eb29ee054cede3953ecab9', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:55:52', '2019-03-01 01:55:52', '2020-03-01 01:55:52');
INSERT INTO `oauth_access_tokens` VALUES ('a56d74dbd5a9e67d2e9c76628e50aae9d4b1dfe720ff372524f9ce95dab7f5d59d1d1b262a2d365c', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:57:38', '2019-03-01 01:57:38', '2020-03-01 01:57:38');
INSERT INTO `oauth_access_tokens` VALUES ('45345211a4b9cbaa6af510b8a3cfa459f8f0c117d3941aa4fefd2155e18d335680f2a53b15fdb7da', 30, 1, 'MyApp', '[]', 0, '2019-03-01 01:58:37', '2019-03-01 01:58:37', '2020-03-01 01:58:37');
INSERT INTO `oauth_access_tokens` VALUES ('8e0b8d0a3b5e76599f33338b5bf43d84c9229e0dd7973b419602da1838dc7d3fb802ed2865c500a1', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:01:25', '2019-03-01 02:01:25', '2020-03-01 02:01:25');
INSERT INTO `oauth_access_tokens` VALUES ('704eed6c63a1e7d532d4b373f9e65d27efdc27d5509d7741fdf02936613ad562eaeff86257b14b4c', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:02:01', '2019-03-01 02:02:01', '2020-03-01 02:02:01');
INSERT INTO `oauth_access_tokens` VALUES ('5be502b600c7c6516b289ec328923ab38e007779320f21662c5efee9b4762f9c7db7009aeca52227', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:07:12', '2019-03-01 02:07:12', '2020-03-01 02:07:12');
INSERT INTO `oauth_access_tokens` VALUES ('7f0d3abfb7b1315a7a1de2c28a592b2881dd768eb0e3f6eaa886d495fd5b6bcd92bae6a2eee762df', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:07:46', '2019-03-01 02:07:46', '2020-03-01 02:07:46');
INSERT INTO `oauth_access_tokens` VALUES ('5f9970e3ec30dc549677c2b0a07cc5d9ecd88420f2a972e5ff712d97fff64cfc301758c784983532', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:08:42', '2019-03-01 02:08:42', '2020-03-01 02:08:42');
INSERT INTO `oauth_access_tokens` VALUES ('77f972568851c39a5ea83cdac9c0b538d79901508ae67aef13f7bc52217fca7d546c0ac8fd7f500a', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:14:19', '2019-03-01 02:14:19', '2020-03-01 02:14:19');
INSERT INTO `oauth_access_tokens` VALUES ('3dcf2fed586ad169fe4a358df5e4501d83c617fa32fede26b102a12faa678f56be1d0bd867e03afb', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:16:13', '2019-03-01 02:16:13', '2020-03-01 02:16:13');
INSERT INTO `oauth_access_tokens` VALUES ('a8ad3d08056b5c9fcf34a6804fa50fb06ab39516a7d8af0a3943b3d8098a441bd7d2eb1dbb75b143', 30, 1, 'MyApp', '[]', 0, '2019-03-01 02:17:12', '2019-03-01 02:17:12', '2020-03-01 02:17:12');
INSERT INTO `oauth_access_tokens` VALUES ('c6d8e8cf463ccbd3de9a2ac2e46411cfd81ff263448a30852f77bf4ee3d86a7cb7acbb97ecb3c8b7', 30, 1, 'MyApp', '[]', 0, '2019-03-01 03:30:33', '2019-03-01 03:30:33', '2020-03-01 03:30:33');
INSERT INTO `oauth_access_tokens` VALUES ('af286331c0801dcb4890d2594076cb161e822fa0df56a35905ea70c5518acdab0002baa35f3c8f63', 30, 1, 'MyApp', '[]', 0, '2019-03-01 03:57:10', '2019-03-01 03:57:10', '2020-03-01 03:57:10');
INSERT INTO `oauth_access_tokens` VALUES ('df4f73e19c4affdd0eaef17ffabf3fa147fec821846cb376fae4e4806044b1896d5c1c051f2a1cce', 30, 1, 'MyApp', '[]', 0, '2019-03-01 03:57:26', '2019-03-01 03:57:26', '2020-03-01 03:57:26');
INSERT INTO `oauth_access_tokens` VALUES ('14d480e0f82d8ab9f97adcb610ee90f6d992a2b78e877f9bf711354e74a053ebc3009ac089dd5797', 30, 1, 'MyApp', '[]', 0, '2019-03-01 03:58:13', '2019-03-01 03:58:13', '2020-03-01 03:58:13');
INSERT INTO `oauth_access_tokens` VALUES ('f7332d64f8ad34e3aa61473c0ab34f334ff6a868f94014468cd466b6b6bf5d05054b2ae12b6d38d2', 30, 1, 'MyApp', '[]', 0, '2019-03-01 04:14:05', '2019-03-01 04:14:05', '2020-03-01 04:14:05');
INSERT INTO `oauth_access_tokens` VALUES ('beeff7dd3ad57d0eac46c4b6c1b1e2090cc42e0c87ff9c43e727546df0a9495bbc80a66d8eb4dd05', 30, 1, 'MyApp', '[]', 0, '2019-03-01 05:23:28', '2019-03-01 05:23:28', '2020-03-01 05:23:28');
INSERT INTO `oauth_access_tokens` VALUES ('e1f4c829255c2f9a71171169bdc88d15b2a95757f2c1d2bd90cdfbc29b039161c9e92b0547c3e886', 30, 1, 'MyApp', '[]', 0, '2019-03-01 05:23:44', '2019-03-01 05:23:44', '2020-03-01 05:23:44');
INSERT INTO `oauth_access_tokens` VALUES ('81ba59be5d5d6e94f9541562da148b8a5e07f3ce9c0b32ebd3bd0304974df612a4e57d4d30b4103d', 30, 1, 'MyApp', '[]', 0, '2019-03-01 07:19:26', '2019-03-01 07:19:26', '2020-03-01 07:19:26');
INSERT INTO `oauth_access_tokens` VALUES ('65c75a1e58134bb7753a8be69abde01dc9fd1853250f67c6fcf14d4acde4d90d56c3fd07550a900e', 30, 1, 'MyApp', '[]', 0, '2019-03-01 14:24:31', '2019-03-01 14:24:31', '2020-03-01 14:24:31');
INSERT INTO `oauth_access_tokens` VALUES ('3bde1f981106675f24debdc40c269db7f385d8b4d7f2c840dbce859115756ab41416200fd043b628', 30, 1, 'MyApp', '[]', 0, '2019-03-01 14:24:38', '2019-03-01 14:24:38', '2020-03-01 14:24:38');
INSERT INTO `oauth_access_tokens` VALUES ('1e4770822f526597531dcaea0f5afc5aafe9f3e835ddc6b400b778367048fb37ff0d74811e9cbb9a', 30, 1, 'MyApp', '[]', 0, '2019-03-02 00:37:40', '2019-03-02 00:37:40', '2020-03-02 00:37:40');
INSERT INTO `oauth_access_tokens` VALUES ('ec3864be7f035bf24ba8d45641d64cc071259410fa48707b2f336ca5c6a52fbcd0817073639b96d7', 30, 1, 'MyApp', '[]', 0, '2019-03-02 00:37:51', '2019-03-02 00:37:51', '2020-03-02 00:37:51');
INSERT INTO `oauth_access_tokens` VALUES ('1a4999fa632256a55f685418b23b8d375bf6b4be8b12f6622b3327eb64ac89f109d44050ecd0831d', 30, 1, 'MyApp', '[]', 0, '2019-03-02 00:38:11', '2019-03-02 00:38:11', '2020-03-02 00:38:11');
INSERT INTO `oauth_access_tokens` VALUES ('d68b8d22e37651f017172f1969e38cdf5d22f582a22464859d85150001a45435b3898c059501404d', 30, 1, 'MyApp', '[]', 0, '2019-03-02 00:38:23', '2019-03-02 00:38:23', '2020-03-02 00:38:23');
INSERT INTO `oauth_access_tokens` VALUES ('a1ac353e2cbb5cc2f48805a5fbf208b994bc0011519a7bd4b065484af59621c19dad2e185641fc0d', 30, 1, 'MyApp', '[]', 0, '2019-03-02 00:38:28', '2019-03-02 00:38:28', '2020-03-02 00:38:28');
INSERT INTO `oauth_access_tokens` VALUES ('32cfaa22477a471e193f72427ef78b35505d1af344b239a73bfe0f041934d0db51f33205e37026e0', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:39:38', '2019-03-02 04:39:38', '2020-03-02 04:39:38');
INSERT INTO `oauth_access_tokens` VALUES ('832e2d22cf3ae0e174de77fe56b2b413887d0ba188f896377eb0f8398c3b49ff546345d473650205', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:39:47', '2019-03-02 04:39:47', '2020-03-02 04:39:47');
INSERT INTO `oauth_access_tokens` VALUES ('7413e4576c7a5a96983e03cc6e5ecc4931daf24bc333204a6c0ed794b620a6bf5f7ed0714f364ee3', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:39:59', '2019-03-02 04:39:59', '2020-03-02 04:39:59');
INSERT INTO `oauth_access_tokens` VALUES ('be2c8d757c20ef332781e92d060fb0f9e211ea04fc3ed9430950cd3f9334f1fe299931a657fbb6f9', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:40:25', '2019-03-02 04:40:25', '2020-03-02 04:40:25');
INSERT INTO `oauth_access_tokens` VALUES ('1f2ef2a42176f7af7310c87441dac85a659bd87bdcda409cfb77acad163081f20aa4e49d86a589c8', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:57:45', '2019-03-02 04:57:45', '2020-03-02 04:57:45');
INSERT INTO `oauth_access_tokens` VALUES ('1cf391f77250bc2c789a47f8093678e6c56bcd3aa66b12c22261b8152a2c3480795c820f8535f5e4', 30, 1, 'MyApp', '[]', 0, '2019-03-02 04:57:54', '2019-03-02 04:57:54', '2020-03-02 04:57:54');
INSERT INTO `oauth_access_tokens` VALUES ('b00fb119ee734c59149395c3df7aefcac9b4bd802b7dfa153f46efcec54011cf8028122b013c9a83', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:40:59', '2019-03-02 07:40:59', '2020-03-02 07:40:59');
INSERT INTO `oauth_access_tokens` VALUES ('c7fcc83b412cc140ba1f28b4bf8be58283523bd59d001614ee94098c1375781192f110c2b207c02f', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:41:09', '2019-03-02 07:41:09', '2020-03-02 07:41:09');
INSERT INTO `oauth_access_tokens` VALUES ('8d04d3a1d4a7986b83d184c802a0ea6fa3a3a0b375a01309fff131c0785320401ee58227306942ec', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:41:46', '2019-03-02 07:41:46', '2020-03-02 07:41:46');
INSERT INTO `oauth_access_tokens` VALUES ('92631067dc88c081f9690737708d64f6db667eb89a053a70f3944f0b2b4fb8ab5feb548c5da9ebd6', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:41:58', '2019-03-02 07:41:58', '2020-03-02 07:41:58');
INSERT INTO `oauth_access_tokens` VALUES ('2a83a423b2fc04451419ae6e68ff503b5151498ddee5e7ebb39dceac67ca24b3e9ce010231877d55', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:42:01', '2019-03-02 07:42:01', '2020-03-02 07:42:01');
INSERT INTO `oauth_access_tokens` VALUES ('b9175f4302cc6baff90d9d4892be9cde371cbc1000d8de488732114a96e1864dbc76588d7d267be5', 30, 1, 'MyApp', '[]', 0, '2019-03-02 07:42:44', '2019-03-02 07:42:44', '2020-03-02 07:42:44');
INSERT INTO `oauth_access_tokens` VALUES ('ad3dd0855fd218a2c201fc02a5fdadd5853a3334deb61c11e38129b17279e239176a0fe3334ef71a', 30, 1, 'MyApp', '[]', 0, '2019-03-02 13:06:51', '2019-03-02 13:06:51', '2020-03-02 13:06:51');
INSERT INTO `oauth_access_tokens` VALUES ('a75ace418f0cfb90b1377a45e0f27b70a0189204e18d70b8d018df11901dbc1859b8b35746c5d955', 30, 1, 'MyApp', '[]', 0, '2019-03-02 13:07:48', '2019-03-02 13:07:48', '2020-03-02 13:07:48');
INSERT INTO `oauth_access_tokens` VALUES ('bb7431a1ea2e001d3d9927e558efc3c6fdda34ec5c1c5c7879e55734fb1e48e54144a7be3301867a', 30, 1, 'MyApp', '[]', 0, '2019-03-02 13:07:55', '2019-03-02 13:07:55', '2020-03-02 13:07:55');
INSERT INTO `oauth_access_tokens` VALUES ('d049a200d74d20a2b42bd2456f9806ea91c16f723160c7fd86cc6f84e43164978cbe3efda2982220', 30, 1, 'MyApp', '[]', 0, '2019-03-03 08:11:49', '2019-03-03 08:11:49', '2020-03-03 08:11:49');
INSERT INTO `oauth_access_tokens` VALUES ('f7f3ebfd520f3fe68a0f6536a9277189ba8e90a0dbbce3f883ba56d60ae522d7d0150fb1693781cf', 30, 1, 'MyApp', '[]', 0, '2019-03-03 08:12:07', '2019-03-03 08:12:07', '2020-03-03 08:12:07');
INSERT INTO `oauth_access_tokens` VALUES ('2edd5083fa09eb4cfa07d8624c9271802f3aa7cd811f87048e48a7fdea2a60d7aa4276aeb6519b22', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:07', '2019-03-03 09:43:07', '2020-03-03 09:43:07');
INSERT INTO `oauth_access_tokens` VALUES ('2d00a2ec30ac5c9251d27bf0b47c93beea217eb6b585c66b2a3424759e5397833811085d1bb3d748', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:19', '2019-03-03 09:43:19', '2020-03-03 09:43:19');
INSERT INTO `oauth_access_tokens` VALUES ('c22afa5ebdf707b29ab8d822598534c83b8d0cdbc902139a9c51d1995717de36b0511795e4d83354', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:41', '2019-03-03 09:43:41', '2020-03-03 09:43:41');
INSERT INTO `oauth_access_tokens` VALUES ('917a911c48f62052d81d043412a6d761b35a5f4ef6a2ae7b06ac2b5864605f67d6a6dd5ae48614ca', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:51', '2019-03-03 09:43:51', '2020-03-03 09:43:51');
INSERT INTO `oauth_access_tokens` VALUES ('d85eccea79f401eaaa59cabf0335e8e57d239791f33faeec98cb552b18b06e599a6c2ec227827994', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:56', '2019-03-03 09:43:56', '2020-03-03 09:43:56');
INSERT INTO `oauth_access_tokens` VALUES ('9318033a2aa7e9f0dd81c68c3e7f09522c2e23d5d501903afa0d846bbb133b3421af371b85255075', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:43:58', '2019-03-03 09:43:58', '2020-03-03 09:43:58');
INSERT INTO `oauth_access_tokens` VALUES ('78f84bdc277ba2a9ddac1ec6295f9f0abba8084076e2f47d06dfeecd2a4814be510d5898bd6d23f0', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:44:09', '2019-03-03 09:44:09', '2020-03-03 09:44:09');
INSERT INTO `oauth_access_tokens` VALUES ('af5fd51311be4a23ca8f4fa2ce26182b76c6939264540b5bf50a77a9c882f572b29923943be2db72', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:44:36', '2019-03-03 09:44:36', '2020-03-03 09:44:36');
INSERT INTO `oauth_access_tokens` VALUES ('79b6bec15cc064409fdbae826ef6a7ce9b8446d6b1d5bdc7fdbdcdd54eec7b3c1c8f9cf5927f14d2', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:44:44', '2019-03-03 09:44:44', '2020-03-03 09:44:44');
INSERT INTO `oauth_access_tokens` VALUES ('9ba5695598ca2cca823db04d773a5ecd9b3a83e14cc8c3cde289eacec967a6ab2beb09faaf2ed1d0', 30, 1, 'MyApp', '[]', 0, '2019-03-03 09:46:54', '2019-03-03 09:46:54', '2020-03-03 09:46:54');
INSERT INTO `oauth_access_tokens` VALUES ('240ffbfed49763cab5f4ec4322e60aa41d6b78cd87c38c57d5d671ce58b0963283f401ede2007161', 30, 1, 'MyApp', '[]', 0, '2019-03-03 14:56:06', '2019-03-03 14:56:06', '2020-03-03 14:56:06');
INSERT INTO `oauth_access_tokens` VALUES ('93d30fd715ff52627f44587f7641c044c209c9397e3c8be13218e9f11129415e5d620ad6a71c09c0', 30, 1, 'MyApp', '[]', 0, '2019-03-04 00:19:22', '2019-03-04 00:19:22', '2020-03-04 00:19:22');
INSERT INTO `oauth_access_tokens` VALUES ('6e385a29c5b6a46b96f328e0b63e142b1262eabe50586352575983f27e97fe012c3d1a440c98d45f', 30, 1, 'MyApp', '[]', 0, '2019-03-05 00:20:39', '2019-03-05 00:20:39', '2020-03-05 00:20:39');
INSERT INTO `oauth_access_tokens` VALUES ('e8406b0553cd8fbfdd7d5f0422e8245bc41730bcdcb4cb64d6ad9dd00eae14b2868ac88eb169714f', 30, 1, 'MyApp', '[]', 0, '2019-03-05 05:13:46', '2019-03-05 05:13:46', '2020-03-05 05:13:46');
INSERT INTO `oauth_access_tokens` VALUES ('dcadd2fb53e9ce64a9eff66aef4c8a96ab8d4b5b5b430639cd2ae31664f37e9c44ae042db597f4e9', 30, 1, 'MyApp', '[]', 0, '2019-03-05 05:13:51', '2019-03-05 05:13:51', '2020-03-05 05:13:51');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'Idu8hMAlR7AcQKPwXyFOHT3AMAVs9QhExHpzeyEL', 'http://localhost', 1, 0, 0, '2018-12-18 10:33:20', '2018-12-18 10:33:20');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'vqqntsvtrjFJzZtCARCy87aTYEmQbaboFLgVb9Ra', 'http://localhost', 0, 1, 0, '2018-12-18 10:33:20', '2018-12-18 10:33:20');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2018-12-18 10:33:20', '2018-12-18 10:33:20');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES (1, 'wutongyue', '2019-2-23 8:33:33');

-- ----------------------------
-- Table structure for tui_money_fund
-- ----------------------------
DROP TABLE IF EXISTS `tui_money_fund`;
CREATE TABLE `tui_money_fund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `adrress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `erweimaSrc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_time` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `promotion_fund` int(11) NULL DEFAULT NULL,
  `is_read` bit(1) NULL DEFAULT NULL,
  `need_pay` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `how_integral` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tui_money_fund
-- ----------------------------
INSERT INTO `tui_money_fund` VALUES (5, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '吴同岳', '18814137320', '广州市天河区车陂', 'http://localhost/geomancy/public/uploads/2019-03-05-03-19-42-5c7deacea89fe.jpg', '2019-02-28 17:50:08', 10, b'0', '3.75', 8, 3, b'1');
INSERT INTO `tui_money_fund` VALUES (6, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '卢老师', '18814137320', '广州市天河区车陂', 'http://localhost/geomancy/public/uploads/2019-03-05-03-19-42-5c7deacea89fe.jpg', '2019-02-28 18:00:11', 10, b'0', '3.75', 8, 3, b'1');
INSERT INTO `tui_money_fund` VALUES (7, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '蒲老师', '18814137320', '广州市天河区车陂', 'http://localhost/geomancy/public/uploads/2019-03-05-03-19-42-5c7deacea89fe.jpg', '2019-02-28 18:04:56', 10, b'0', '3.75', 8, 3, b'0');

-- ----------------------------
-- Table structure for tui_rule
-- ----------------------------
DROP TABLE IF EXISTS `tui_rule`;
CREATE TABLE `tui_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `how_integral` int(11) NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tui_rule
-- ----------------------------
INSERT INTO `tui_rule` VALUES (1, 6, '3', 'tui');

-- ----------------------------
-- Table structure for tuiguang_msg
-- ----------------------------
DROP TABLE IF EXISTS `tuiguang_msg`;
CREATE TABLE `tuiguang_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `get_found` int(11) NULL DEFAULT NULL,
  `create_time` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuiguang_msg
-- ----------------------------
INSERT INTO `tuiguang_msg` VALUES (25, '课程购买', 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', '蓝之静云', '风水国学', 8, '2019-03-04 18:26:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `province` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `points` int(11) NULL DEFAULT NULL,
  `signDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `addPoint` int(11) NULL DEFAULT NULL,
  `the_time` int(11) NULL DEFAULT NULL,
  `tuiguangma_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion_fund` int(11) NULL DEFAULT NULL,
  `found_mark_this` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `found_mark_that` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (26, NULL, 'ojDzy5HY2GrOgez8w0DKPoSNzFRU', NULL, NULL, NULL, NULL, '2019-02-28 17:04:50', NULL, '蓝之静云', 'Sanming', 'Fujian', 12, '2019-03-05 11:12:26', 8, 2, NULL, 20, '123', '123', 'just');
INSERT INTO `users` VALUES (30, NULL, NULL, 'gdmzd', NULL, '$2y$10$69Lirb9VgHvKZeG0snCcnuED3mehrodWn8Jux0N2XrdD7.CGhE8RC', NULL, '2019-02-28 15:04:28', '2019-02-28 15:04:28', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 'just');

-- ----------------------------
-- Table structure for web_visit
-- ----------------------------
DROP TABLE IF EXISTS `web_visit`;
CREATE TABLE `web_visit`  (
  `id` int(11) NOT NULL,
  `count` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_visit
-- ----------------------------
INSERT INTO `web_visit` VALUES (1, '0');

SET FOREIGN_KEY_CHECKS = 1;
