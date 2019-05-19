/*
 Navicat Premium Data Transfer

 Source Server         : conn
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : newegg

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 19/05/2019 18:44:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(20) NULL DEFAULT NULL,
  `gid` int(20) NULL DEFAULT NULL,
  `count` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (102, 12, 5, 4);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `mid` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist`  (
  `gid` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `num` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES (1, '\r\n小米 红米6A 全网通版 2GB内存 铂银灰 16GB 移动联通电信4G手机 双卡双待 ', '手机', 'xiaom6A (1).jpg', 1299, 180);
INSERT INTO `goodslist` VALUES (2, '\r\n小米 红米6 Pro 全网通版 4GB内存 曜石黑 64GB 移动联通电信4G手机 双卡双待', '手机', 'hongmi1.jpg', 1499, 80);
INSERT INTO `goodslist` VALUES (3, '\r\n小米 红米6A 全网通版 2GB内存 流沙金 16GB 移动联通电信4G手机 双卡双待', '手机', '3hongmi1.jpg', 2799, 70);
INSERT INTO `goodslist` VALUES (4, '\r\n小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6 (3).jpg', 3499, 90);
INSERT INTO `goodslist` VALUES (5, '\r\n小米6X 全网通 6GB+128GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6 (3).jpg', 1999, 40);
INSERT INTO `goodslist` VALUES (6, '\r\n小米8 全面屏游戏智能手机 6GB+128GB 黑色 全网通4G 双卡双待', '手机', 'xiaomi8 (1).jpg', 1799, 210);
INSERT INTO `goodslist` VALUES (7, '\r\n小米8 全面屏游戏智能手机 6GB+256GB 金色', '手机', 'xiaomi8 (1).jpg', 1399, 100);
INSERT INTO `goodslist` VALUES (8, ' \r\n小米 红米5 Plus 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', '手机', 'xiaomi5 (1).jpg', 1799, 60);
INSERT INTO `goodslist` VALUES (9, ' \r\n小米6X 全网通 4GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6X (1).jpg', 999, 800);
INSERT INTO `goodslist` VALUES (10, '\r\n荣耀10青春版 全网通版6GB+128GB 幻夜黑', '手机', 'huawei1.jpg', 1299, 180);
INSERT INTO `goodslist` VALUES (11, '\r\n华为 HUAWEI Mate20 X 8GB+256GB宝石蓝全网通版双4G手机', '手机', 'huaweiM1.jpg', 1499, 80);
INSERT INTO `goodslist` VALUES (12, '\r\n荣耀Note10 全网通6G+128G幻影蓝 移动', '手机', 'huaweiN1.jpg', 2799, 70);
INSERT INTO `goodslist` VALUES (13, '\r\n荣耀10青春版 全网通版 6GB+128GB 渐变红', '手机', 'huawei1.jpg', 3499, 90);
INSERT INTO `goodslist` VALUES (14, '\r\n华为 HUAWEI P30 8GB+128GB 极光色 全网通双4G手机', '手机', 'huaweiP1.jpg', 1999, 40);
INSERT INTO `goodslist` VALUES (15, '\r\n华为 HUAWEI P30 8GB+64GB 天空之境 全网通双4G手机', '手机', 'huaweiP1.jpg', 1799, 210);
INSERT INTO `goodslist` VALUES (16, '\r\n华为 HUAWEI P30 8GB+128GB 亮黑色 全网通双4G手机', '手机', 'huaweiP1.jpg', 1399, 100);
INSERT INTO `goodslist` VALUES (17, '\r\n荣耀畅玩8C 全网通高配版 4GB+64GB 极光蓝 ', '手机', 'huaweiC1.jpg', 1799, 60);
INSERT INTO `goodslist` VALUES (18, '\r\n荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '手机', 'huawei71.jpg', 999, 800);
INSERT INTO `goodslist` VALUES (19, '\r\n小米 红米6A 全网通版 2GB内存 铂银灰 16GB 移动联通电信4G手机 双卡双待 ', '手机', 'xiaom6A (1).jpg', 1299, 180);
INSERT INTO `goodslist` VALUES (20, '\r\n小米 红米6 Pro 全网通版 4GB内存 曜石黑 64GB 移动联通电信4G手机 双卡双待', '手机', 'hongmi1.jpg', 1499, 80);
INSERT INTO `goodslist` VALUES (21, '\r\n小米 红米6A 全网通版 2GB内存 流沙金 16GB 移动联通电信4G手机 双卡双待', '手机', '3hongmi1.jpg', 2799, 70);
INSERT INTO `goodslist` VALUES (22, '\r\n小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6 (3).jpg', 3499, 90);
INSERT INTO `goodslist` VALUES (23, '\r\n小米6X 全网通 6GB+128GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6 (3).jpg', 1499, 40);
INSERT INTO `goodslist` VALUES (24, '\r\n小米8 全面屏游戏智能手机 6GB+128GB 黑色 全网通4G 双卡双待', '手机', 'xiaomi8 (1).jpg', 1799, 210);
INSERT INTO `goodslist` VALUES (25, '\r\n小米8 全面屏游戏智能手机 6GB+256GB 金色', '手机', 'xiaomi8 (1).jpg', 1399, 100);
INSERT INTO `goodslist` VALUES (26, ' \r\n小米 红米5 Plus 全网通版 4GB+64GB 黑色 移动联通电信4G手机 双卡双待', '手机', 'xiaomi5 (1).jpg', 1799, 60);
INSERT INTO `goodslist` VALUES (27, ' \r\nvivo 全网通 4GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '手机', 'xiaomi6X (1).jpg', 999, 800);
INSERT INTO `goodslist` VALUES (28, '\r\n荣耀畅玩8C 全网通高配版 4GB+64GB 极光蓝 ', '手机', 'huaweiC1.jpg', 1299, 180);
INSERT INTO `goodslist` VALUES (29, '\r\n荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '手机', 'huawei71.jpg', 1499, 80);
INSERT INTO `goodslist` VALUES (30, '\r\n荣耀10青春版 全网通版6GB+128GB 幻夜黑', '手机', 'huawei1.jpg', 2799, 70);
INSERT INTO `goodslist` VALUES (31, '\r\n华为 HUAWEI Mate20 X 8GB+256GB宝石蓝全网通版双4G手机', '手机', 'huaweiM1.jpg', 3499, 90);
INSERT INTO `goodslist` VALUES (32, '\r\n荣耀Note10 全网通6G+128G幻影蓝 移动', '手机', 'huaweiN1.jpg', 1999, 40);
INSERT INTO `goodslist` VALUES (35, '\r\n荣耀10青春版 全网通版 6GB+128GB 渐变红', '手机', 'huawei1.jpg', 1299, 180);
INSERT INTO `goodslist` VALUES (36, '\r\n华为 HUAWEI P30 8GB+128GB 极光色 全网通双4G手机', '手机', 'huaweiP1.jpg', 1499, 80);
INSERT INTO `goodslist` VALUES (37, '\r\n华为 HUAWEI P30 8GB+64GB 天空之境 全网通双4G手机', '手机', 'huaweiP1.jpg', 2799, 70);
INSERT INTO `goodslist` VALUES (38, '\r\n华为 HUAWEI P30 8GB+128GB 亮黑色 全网通双4G手机', '手机', 'huaweiP1.jpg', 3499, 90);
INSERT INTO `goodslist` VALUES (39, '\r\n荣耀畅玩8C 全网通高配版 4GB+64GB 极光蓝 ', '手机', 'huaweiC1.jpg', 4999, 40);
INSERT INTO `goodslist` VALUES (40, '\r\n荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '手机', 'huawei71.jpg', 4799, 210);
INSERT INTO `goodslist` VALUES (44, '华硕顽石4代FL5900', '电脑', 'compute1.jpg', 4499, 200);
INSERT INTO `goodslist` VALUES (45, 'Hasse神舟', '电脑', 'compute2.jpg', 4299, 700);
INSERT INTO `goodslist` VALUES (46, 'Hasse', '电脑', 'compute3.jpg', 4499, 50);
INSERT INTO `goodslist` VALUES (47, '神舟 战神GX8-GL7S1', '电脑', 'compute4.png', 4799, 87);
INSERT INTO `goodslist` VALUES (48, '戴尔DELL', '电脑', 'compute5.jpg', 3499, 75);
INSERT INTO `goodslist` VALUES (49, 'Hasse', '电脑', 'compute6.jpg', 4999, 58);
INSERT INTO `goodslist` VALUES (50, 'Hasse神舟', '电脑', 'compute7.png', 4799, 80);
INSERT INTO `goodslist` VALUES (51, 'Hasse神舟', '电脑', 'compute8.png', 4399, 63);
INSERT INTO `goodslist` VALUES (52, 'acrr宏基', '电脑', 'compute9.png', 3799, 20);
INSERT INTO `goodslist` VALUES (53, '联想Lenovo', '电脑', 'compute10.png', 3999, 60);
INSERT INTO `goodslist` VALUES (54, '', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(20) NULL DEFAULT NULL,
  `gid` int(20) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `gid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imgurl2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl8` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl9` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgurl10` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, 'xiaom6A (2).jpg', 'xiaom6A (3).jpg', 'xiaom6A (4).jpg', 'xiaom6A (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (2, 'hongmi2.jpg', 'hongmi3.jpg', 'hongmi4.jpg', 'hongmi5.jpg', 'hongmi6.jpg', 'hongmi7.jpg', 'hongmi8.jpg', 'hongmi9.jpg', 'hongmi10.jpg');
INSERT INTO `picture` VALUES (3, '3hongmi2.jpg', '3hongmi3.jpg', '3hongmi4.jpg', 'xiaom6A (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (4, 'xiaomi6 (2).jpg', 'xiaomi6 (1).jpg', 'xiaomi6 (4).jpg', 'xiaomi6 (5).jpg', 'xiaomi6 (6).jpg', 'xiaomi6 (7).jpg', 'xiaomi6 (8).jpg', 'xiaomi6 (9).jpg', 'xiaomi6 (10).jpg');
INSERT INTO `picture` VALUES (5, 'xiaomi6 (2).jpg', 'xiaomi6 (1).jpg', 'xiaomi6 (4).jpg', 'xiaomi6 (5).jpg', 'xiaomi6 (6).jpg', 'xiaomi6 (7).jpg', 'xiaomi6 (8).jpg', 'xiaomi6 (9).jpg', 'xiaomi6 (10).jpg');
INSERT INTO `picture` VALUES (6, 'xiaomi8 (2).jpg', 'xiaomi8 (3).jpg', 'xiaomi8 (4).jpg', 'xiaomi8 (5).jpg', 'xiaomi8 (6).jpg', 'xiaomi8 (7).jpg', 'xiaomi8 (8).jpg', 'xiaomi8 (9).jpg', 'xiaomi8 (10).jpg');
INSERT INTO `picture` VALUES (7, 'xiaomi8 (2).jpg', 'xiaomi8 (3).jpg', 'xiaomi8 (4).jpg', 'xiaomi8 (5).jpg', 'xiaomi8 (6).jpg', 'xiaomi8 (7).jpg', 'xiaomi8 (8).jpg', 'xiaomi8 (9).jpg', 'xiaomi8 (10).jpg');
INSERT INTO `picture` VALUES (8, 'xiaomi5 (2).jpg', 'xiaomi5 (3).jpg', 'xiaomi5 (4).jpg', 'xiaomi5 (5).jpg', 'xiaomi5 (6).jpg', 'xiaomi5 (7).jpg', 'xiaomi5 (8).jpg', 'xiaomi5 (9).jpg', 'xiaomi5 (10).jpg');
INSERT INTO `picture` VALUES (9, 'xiaomi6X (2).jpg', 'xiaomi6X (3).jpg', 'xiaomi6X (4).jpg', 'xiaomi6X (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (10, 'huawei2.jpg', 'huawei3.jpg', 'huawei4.jpg', 'huawei5.jpg', 'huaweiM6.jpg', 'huaweiM7.jpg', 'huaweiM8.jpg', 'huaweiM9.jpg', 'huaweiM10.jpg');
INSERT INTO `picture` VALUES (11, 'huaweiM2.jpg', 'huaweiM3.jpg', 'huaweiM4.jpg', 'huaweiM5.jpg', 'huaweiM6.jpg', 'huaweiM7.jpg', 'huaweiM8.jpg', 'huaweiM9.jpg', 'huaweiM10.jpg');
INSERT INTO `picture` VALUES (12, 'huaweiN2.jpg', 'huaweiN3.jpg', 'huaweiN4.jpg', 'huaweiN5.jpg', 'huaweiN6.jpg', 'huaweiN7.jpg', 'huaweiN8.jpg', 'huaweiN9.jpg', 'huaweiN10.jpg');
INSERT INTO `picture` VALUES (13, 'huawei2.jpg', 'huawei3.jpg', 'huawei4.jpg', 'huawei5.jpg', 'huaweiM6.jpg', 'huaweiM7.jpg', 'huaweiM8.jpg', 'huaweiM9.jpg', 'huaweiM10.jpg');
INSERT INTO `picture` VALUES (14, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (15, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (16, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (17, 'huaweiC2.jpg', 'huaweiC3.jpg', 'huaweiC4.jpg', 'huaweiC5.jpg', 'huaweiC6.jpg', 'huaweiC7.jpg', 'huaweiC8.jpg', 'huaweiC9.jpg', 'huaweiC10.jpg');
INSERT INTO `picture` VALUES (18, 'huawei72.jpg', 'huawei73.jpg', 'huawei74.jpg', 'huawei75.jpg', 'huawei76.jpg', 'huawei77.jpg', 'huawei78.jpg', 'huawei79.jpg', 'huawei710.jpg');
INSERT INTO `picture` VALUES (19, 'xiaom6A (2).jpg', 'xiaom6A (3).jpg', 'xiaom6A (4).jpg', 'xiaom6A (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (20, 'hongmi2.jpg', 'hongmi3.jpg', 'hongmi4.jpg', 'hongmi5.jpg', 'hongmi6.jpg', 'hongmi7.jpg', 'hongmi8.jpg', 'hongmi9.jpg', 'hongmi10.jpg');
INSERT INTO `picture` VALUES (21, '3hongmi2.jpg', '3hongmi3.jpg', '3hongmi4.jpg', 'xiaom6A (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (22, 'xiaomi6 (2).jpg', 'xiaomi6 (1).jpg', 'xiaomi6 (4).jpg', 'xiaomi6 (5).jpg', 'xiaomi6 (6).jpg', 'xiaomi6 (7).jpg', 'xiaomi6 (8).jpg', 'xiaomi6 (9).jpg', 'xiaomi6 (10).jpg');
INSERT INTO `picture` VALUES (23, 'xiaomi6 (2).jpg', 'xiaomi6 (1).jpg', 'xiaomi6 (4).jpg', 'xiaomi6 (5).jpg', 'xiaomi6 (6).jpg', 'xiaomi6 (7).jpg', 'xiaomi6 (8).jpg', 'xiaomi6 (9).jpg', 'xiaomi6 (10).jpg');
INSERT INTO `picture` VALUES (24, 'xiaomi8 (2).jpg', 'xiaomi8 (3).jpg', 'xiaomi8 (4).jpg', 'xiaomi8 (5).jpg', 'xiaomi8 (6).jpg', 'xiaomi8 (7).jpg', 'xiaomi8 (8).jpg', 'xiaomi8 (9).jpg', 'xiaomi8 (10).jpg');
INSERT INTO `picture` VALUES (25, 'xiaomi8 (2).jpg', 'xiaomi8 (3).jpg', 'xiaomi8 (4).jpg', 'xiaomi8 (5).jpg', 'xiaomi8 (6).jpg', 'xiaomi8 (7).jpg', 'xiaomi8 (8).jpg', 'xiaomi8 (9).jpg', 'xiaomi8 (10).jpg');
INSERT INTO `picture` VALUES (26, 'xiaomi5 (2).jpg', 'xiaomi5 (3).jpg', 'xiaomi5 (4).jpg', 'xiaomi5 (5).jpg', 'xiaomi5 (6).jpg', 'xiaomi5 (7).jpg', 'xiaomi5 (8).jpg', 'xiaomi5 (9).jpg', 'xiaomi5 (10).jpg');
INSERT INTO `picture` VALUES (27, 'xiaomi6X (2).jpg', 'xiaomi6X (3).jpg', 'xiaomi6X (4).jpg', 'xiaomi6X (5).jpg', 'xiaom6A (6).jpg', 'xiaom6A (7).jpg', 'xiaom6A (8).jpg', 'xiaom6A (9).jpg', 'xiaom6A (10).jpg');
INSERT INTO `picture` VALUES (28, 'huaweiC2.jpg', 'huaweiC3.jpg', 'huaweiC4.jpg', 'huaweiC5.jpg', 'huaweiC6.jpg', 'huaweiC7.jpg', 'huaweiC8.jpg', 'huaweiC9.jpg', 'huaweiC10.jpg');
INSERT INTO `picture` VALUES (29, 'huawei72.jpg', 'huawei73.jpg', 'huawei74.jpg', 'huawei75.jpg', 'huawei76.jpg', 'huawei77.jpg', 'huawei78.jpg', 'huawei79.jpg', 'huawei710.jpg');
INSERT INTO `picture` VALUES (30, 'huawei2.jpg', 'huawei3.jpg', 'huawei4.jpg', 'huawei5.jpg', 'huawei6.jpg', 'huawei7.jpg', 'huawei8.jpg', 'huawei9.jpg', 'huawei10.jpg');
INSERT INTO `picture` VALUES (31, 'huaweiM2.jpg', 'huaweiM3.jpg', 'huaweiM4.jpg', 'huaweiM5.jpg', 'huaweiM6.jpg', 'huaweiM7.jpg', 'huaweiM8.jpg', 'huaweiM9.jpg', 'huaweiM10.jpg');
INSERT INTO `picture` VALUES (32, 'huaweiN2.jpg', 'huaweiN3.jpg', 'huaweiN4.jpg', 'huaweiN5.jpg', 'huaweiN6.jpg', 'huaweiN7.jpg', 'huaweiN8.jpg', 'huaweiN9.jpg', 'huaweiN10.jpg');
INSERT INTO `picture` VALUES (33, 'huawei2.jpg', 'huawei3.jpg', 'huawei4.jpg', 'huawei5.jpg', 'huaweiM6.jpg', 'huaweiM7.jpg', 'huaweiM8.jpg', 'huaweiM9.jpg', 'huaweiM10.jpg');
INSERT INTO `picture` VALUES (34, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (35, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (36, 'huaweiP2.jpg', 'huaweiP3.jpg', 'huaweiP4.jpg', 'huaweiP5.jpg', 'huaweiP6.jpg', 'huaweiP7.jpg', 'huaweiP8.jpg', 'huaweiP9.jpg', 'huaweiP10.jpg');
INSERT INTO `picture` VALUES (37, 'huaweiC2.jpg', 'huaweiC3.jpg', 'huaweiC4.jpg', 'huaweiC5.jpg', 'huaweiC6.jpg', 'huaweiC7.jpg', 'huaweiC8.jpg', 'huaweiC9.jpg', 'huaweiC10.jpg');
INSERT INTO `picture` VALUES (38, 'huawei72.jpg', 'huawei73.jpg', 'huawei74.jpg', 'huawei75.jpg', 'huawei76.jpg', 'huawei77.jpg', 'huawei78.jpg', 'huawei79.jpg', 'huawei710.jpg');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `uid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (13, 'zorro12', 'Aa123.', '13660946472', '2019-05-18 11:38:13');
INSERT INTO `userinfo` VALUES (12, 'zorro5208', 'Aa123.', '13660946472', '2019-05-17 22:56:12');
INSERT INTO `userinfo` VALUES (11, 'zorro3', '123Aa.', '13123145678', '2019-05-17 09:28:21');

SET FOREIGN_KEY_CHECKS = 1;
