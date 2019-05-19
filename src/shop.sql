/*
Navicat MySQL Data Transfer

Source Server         : coon
Source Server Version : 50512
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2019-01-03 14:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(22) NOT NULL AUTO_INCREMENT,
  `aname` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');
INSERT INTO `admin` VALUES ('2', 'admin', 'admin');

-- ----------------------------
-- Table structure for `bx_tables`
-- ----------------------------
DROP TABLE IF EXISTS `bx_tables`;
CREATE TABLE `bx_tables` (
  `id` varchar(100) NOT NULL,
  `price` double DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `urlimg` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bx_tables
-- ----------------------------
INSERT INTO `bx_tables` VALUES ('001', '1399', 'Konka/康佳 BCD-218EMS冰箱三门家用节能智能电脑温控玻璃电冰箱', '4533.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('002', '3589.4', 'Haier/海尔 BCD-451WDIYU1海尔智能云无霜冰箱家用节能变频电冰箱', 'bingx.png', '冰箱');
INSERT INTO `bx_tables` VALUES ('003', '2474.25', '【阿里智能】Galanz/格兰仕 BCD-251WTHG(T) 三门电冰箱251升风冷', '4606.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('004', '1959.3', '海尔 BCD-618WDVGU1海尔变频对开门风冷智能控温双门电冰箱', '4616.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('005', '1599', 'Skyworth/创维 D21AGi 210L 阿里小智 WI-FI 三门大容量电冰箱', '4555.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('006', '2879.3', 'Ronshen/容声 BCD-232WD11NA 三门电冰箱家用风冷无霜智能变温', '4420.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('007', '1190.4', 'MeiLing/美菱 BCD-221UE3CX 阿里云智能 三门节能家用电控冰箱', '4434.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('008', '1555.3', 'MeiLing/美菱 BCD-421ZPU9CX 大容量冷藏冷冻电冰箱变频WIFI智控', '4456.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('009', '2055.3', 'Midea/美的 BCD-303WTZMA(E) 多开门对开冰箱风冷无霜智能冰箱', '4408.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('010', '3059', 'MeiLing/美菱 BCD-560WUCX对开门电冰箱家用冰箱WIFI智能风冷无霜', '4574.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('011', '2699.3', 'Hisense/海信 BCD-242TDET/QWS 三门电冰箱节能家用 智能变温室', '4463.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('012', '4799.2', 'Haier/海尔 BCD-642WDVMU1海尔对开门冰箱智能变频无霜双门电冰箱', '4442.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('013', '2879.3', 'FRESTECH/新飞 BCD-286WDKSM阿里云智能wifi风冷无霜智控两门冰箱', '4587.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('014', '4799.3', 'FRESTECH/新飞 BCD-286WDKSM阿里云智能wifi风冷无霜智控两门冰箱', '4541.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('015', '3059.4', 'FRESTECH/新飞 BCD-256WDKSM风冷无霜智能wifi阿里云系统三门冰箱', '4507.jpg', '冰箱');
INSERT INTO `bx_tables` VALUES ('016', '6678.2', 'Ronshen/容声 BCD-632WD11HAP 双门 对开门 家用冰箱智能变频无霜', '4475.jpg', '冰箱');

-- ----------------------------
-- Table structure for `ds_tables`
-- ----------------------------
DROP TABLE IF EXISTS `ds_tables`;
CREATE TABLE `ds_tables` (
  `id` varchar(100) NOT NULL,
  `price` double DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `urlimg` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_tables
-- ----------------------------
INSERT INTO `ds_tables` VALUES ('028', '1979.4', 'Haier/海尔 \r\r\nLE55A31 55英寸高清智能网络液晶平板电视LED50', '437.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('031', '1979.1', 'Skyworth/创维 \r\r\n40X3 创维40吋窄边蓝光高清节能平板液晶电视39吋', '448.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('17', '719.4', ' Changhong/长虹 \r\r\nLED32B2080n 32吋led液晶电视机网络平板电视彩电', '134.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('18', '909.35', 'Skyworth/创维 \r\r\n55V8E 55吋21核4色4K超高清智能网络液晶电视机', '101.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('19', '1019.15', 'TCL D40A620U 40\r\r\n英寸真4K超高清十核安卓智能 LED液晶平板电视', '156.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('20', '1104.35', 'Konka/康佳 \r\r\nLED32S1卧室32吋安卓智能无线WIFI网络液晶平板电视机', '361.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('21', '1819.3', 'Changhong/长虹 \r\r\n49A1U 49英寸双64位4K超清智能平板液晶电视机', '306.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('22', '1189.3', 'Changhong/长虹 \r\r\n40S1 40吋全高清智能液晶LED平板液晶电视机42', '167.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('23', '1274.15', 'Skyworth/创维 \r\r\n32X3 32英寸液晶电视机LED节能窄边蓝光平板32彩电', '208.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('24', '1439.4', 'Hisense/海信 \r\r\nLED40EC520UA 40英寸4K智能平板液晶电视机WIFI网络', '229.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('25', '1609.3', '40S1 40吋全高清智能液晶LED平板液晶电视机42', '240.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('26', '1874.25', '夏普屏PANDA/熊猫 \r\r\nLE39D71S 39英寸智能WiFi液晶平板电视', '317.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('27', '1979.4', 'Haier/海尔 \r\r\nLE55A31 55英寸高清智能网络液晶平板电视LED50', '437.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('29', '1679.4', 'Changhong/长虹 \r\r\n55A1 55英寸全高清10核智能网络平板液晶电视机', '262.jpg', '电视');
INSERT INTO `ds_tables` VALUES ('30', '1709.11', 'LE55A31 55英寸高清智能网络液晶平板电视LED50', '273.jpg', '电视');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'Konka/康佳 BCD-218EMS冰箱三门家用节能智能电脑温控玻璃电冰箱', '冰箱', '4533.jpg', '1399', '150');
INSERT INTO `items` VALUES ('2', 'Haier/海尔 BCD-451WDIYU1海尔智能云无霜冰箱家用节能变频电冰箱', '冰箱', 'bingx.png', '3589', '160');
INSERT INTO `items` VALUES ('3', '【阿里智能】Galanz/格兰仕 BCD-251WTHG(T) 三门电冰箱251升风冷', '冰箱', '4606.jpg', '2999', '500');
INSERT INTO `items` VALUES ('4', 'Haier/海尔 BCD-618WDVGU1海尔变频对开门风冷智能控温双门电冰箱', '冰箱', '4616.jpg', '1959', '250');
INSERT INTO `items` VALUES ('5', 'Skyworth/创维 D21AGi 210L 阿里小智 WI-FI 三门大容量电冰箱', '冰箱', '4555.jpg', '1599', '16');
INSERT INTO `items` VALUES ('6', 'Ronshen/容声 BCD-232WD11NA 三门电冰箱家用风冷无霜智能变温', '冰箱', '4420.jpg', '2879', '16');
INSERT INTO `items` VALUES ('7', 'MeiLing/美菱 BCD-221UE3CX 阿里云智能 三门节能家用电控冰箱', '冰箱', '4434.jpg', '1190', '16');
INSERT INTO `items` VALUES ('8', 'MeiLing/美菱 BCD-421ZPU9CX 大容量冷藏冷冻电冰箱变频WIFI智控', '冰箱', '4456.jpg', '1555', '16');
INSERT INTO `items` VALUES ('9', 'Midea/美的 BCD-303WTZMA(E) 多开门对开冰箱风冷无霜智能冰箱', '冰箱', '4408.jpg', '2055', '16');
INSERT INTO `items` VALUES ('10', 'MeiLing/美菱 BCD-560WUCX对开门电冰箱家用冰箱WIFI智能风冷无霜', '冰箱', '4574.jpg', '3059', '16');
INSERT INTO `items` VALUES ('11', 'Hisense/海信 BCD-242TDET/QWS 三门电冰箱节能家用 智能变温室', '冰箱', '4463.jpg', '2699', '16');
INSERT INTO `items` VALUES ('12', 'Haier/海尔 BCD-642WDVMU1海尔对开门冰箱智能变频无霜双门电冰箱', '冰箱', '4442.jpg', '4799', '16');
INSERT INTO `items` VALUES ('13', 'FRESTECH/新飞 BCD-286WDKSM阿里云智能wifi风冷无霜智控两门冰箱', '冰箱', '4587.jpg', '2879', '16');
INSERT INTO `items` VALUES ('14', 'FRESTECH/新飞 BCD-286WDKSM阿里云智能wifi风冷无霜智控两门冰箱', '冰箱', '4541.jpg', '4799', '16');
INSERT INTO `items` VALUES ('15', 'FRESTECH/新飞 BCD-256WDKSM风冷无霜智能wifi阿里云系统三门冰箱', '冰箱', '4507.jpg', '3059', '16');
INSERT INTO `items` VALUES ('16', 'Ronshen/容声 BCD-632WD11HAP 双门 对开门 家用冰箱智能变频无霜', '冰箱', '4475.jpg', '6678', '16');
INSERT INTO `items` VALUES ('17', ' Changhong/长虹 LED32B2080n 32吋led液晶电视机网络平板电视彩电', '电视', '134.jpg', '719', '16');
INSERT INTO `items` VALUES ('18', 'Skyworth/创维 55V8E 55吋21核4色4K超高清智能网络液晶电视机', '电视', '101.jpg', '909', '16');
INSERT INTO `items` VALUES ('19', 'TCL D40A620U 40英寸真4K超高清十核安卓智能 LED液晶平板电视', '电视', '156.jpg', '1019', '16');
INSERT INTO `items` VALUES ('20', 'Konka/康佳 LED32S1卧室32吋安卓智能无线WIFI网络液晶平板电视机', '电视', '361.jpg', '1104', '16');
INSERT INTO `items` VALUES ('21', 'Changhong/长虹 49A1U 49英寸双64位4K超清智能平板液晶电视机', '电视', '306.jpg', '1819', '16');
INSERT INTO `items` VALUES ('22', 'Changhong/长虹 40S1 40吋全高清智能液晶LED平板液晶电视机42', '电视', '167.jpg', '1189', '16');
INSERT INTO `items` VALUES ('23', 'Skyworth/创维 32X3 32英寸液晶电视机LED节能窄边蓝光平板32彩电', '电视', '208.jpg', '1274', '16');
INSERT INTO `items` VALUES ('24', 'Hisense/海信 LED40EC520UA 40英寸4K智能平板液晶电视机WIFI网络', '电视', '229.jpg', '1439', '16');
INSERT INTO `items` VALUES ('25', 'Hisense/海信 LED43T11N 43吋智能液晶电视机平板WIFI网络彩电', '电视', '240.jpg', '1609', '16');
INSERT INTO `items` VALUES ('26', '夏普屏PANDA/熊猫 LE39D71S 39英寸智能WiFi液晶平板电视', '电视', '317.jpg', '1874', '16');
INSERT INTO `items` VALUES ('27', 'Haier/海尔 LE55A31 55英寸高清智能网络液晶平板电视LED50', '电视', '437.jpg', '1979', '16');
INSERT INTO `items` VALUES ('28', 'Haier/海尔 LE55A31 55英寸高清智能网络液晶平板电视LED50', '电视', '437.jpg', '1979', '16');
INSERT INTO `items` VALUES ('29', 'Changhong/长虹 55A1 55英寸全高清10核智能网络平板液晶电视机', '电视', '262.jpg', '1679', '16');
INSERT INTO `items` VALUES ('30', ' Changhong/长虹 43N1 43英寸平板液晶电视机 无线WiFi网络电视', '电视', '273.jpg', '1709', '16');
INSERT INTO `items` VALUES ('31', 'Skyworth/创维 40X3 创维40吋窄边蓝光高清节能平板液晶电视39吋', '电视', '448.jpg', '1979', '16');
INSERT INTO `items` VALUES ('32', 'Konka/康佳 A48F 48英寸高清智能网络平板 LED液晶电视机', '电视', '284.jpg', '1799', '16');
INSERT INTO `items` VALUES ('35', '红米Note 4X ', '手机', 'liebiao_hongmin4x.jpg', '1299', '180');
INSERT INTO `items` VALUES ('36', '小米手机5c', '手机', 'liebiao_xiaomi5c.jpg', '1499', '80');
INSERT INTO `items` VALUES ('37', '小米Note 2', '手机', 'liebiao_xiaomint2.jpg', '2799', '70');
INSERT INTO `items` VALUES ('38', '小米MIX', '手机', 'liebiao_xiaomimix.jpg', '3499', '90');
INSERT INTO `items` VALUES ('39', '小米5s', '手机', 'liebiao_xiaomi5s.jpg', '1999', '40');
INSERT INTO `items` VALUES ('40', '手机5', '手机', 'liebiao_xiaomi5.jpg', '1799', '210');
INSERT INTO `items` VALUES ('41', '红米Note 4', '手机', 'liebiao_hongmin4.jpg', '1399', '100');
INSERT INTO `items` VALUES ('42', '小米手机5 64GB', '手机', 'liebiao_xiaomi5.jpg', '1799', '60');
INSERT INTO `items` VALUES ('43', '红米4', '手机', 'liebiao_hongmin42.jpg', '999', '800');
INSERT INTO `items` VALUES ('44', '华硕顽石4代FL5900', '电脑', 'compute1.jpg', '4499', '200');
INSERT INTO `items` VALUES ('45', 'Hasse神舟', '电脑', 'compute2.jpg', '4299', '700');
INSERT INTO `items` VALUES ('46', 'Hasse', '电脑', 'compute3.jpg', '4499', '50');
INSERT INTO `items` VALUES ('47', '神舟 战神GX8-GL7S1', '电脑', 'compute4.png', '4799', '87');
INSERT INTO `items` VALUES ('48', '戴尔DELL', '电脑', 'compute5.jpg', '3499', '75');
INSERT INTO `items` VALUES ('49', 'Hasse', '电脑', 'compute6.jpg', '4999', '58');
INSERT INTO `items` VALUES ('50', 'Hasse神舟', '电脑', 'compute7.png', '4799', '80');
INSERT INTO `items` VALUES ('51', 'Hasse神舟', '电脑', 'compute8.png', '4399', '63');
INSERT INTO `items` VALUES ('52', 'acrr宏基', '电脑', 'compute9.png', '3799', '20');
INSERT INTO `items` VALUES ('53', '联想Lenovo', '电脑', 'compute10.png', '3999', '60');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(225) NOT NULL,
  `money` double DEFAULT '0',
  `receiverinAddress` varchar(225) DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` date DEFAULT NULL,
  `receiverName` varchar(32) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `user` varchar(225) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('058e7e23-46ae-4b37-beee-501c0a316f21', '2798', '江门', '0', '2018-12-24', '邓', '13660946472', '123');
INSERT INTO `order` VALUES ('1a780328-7adf-46fd-a056-d992b151f719', '4497', '123', '0', '2019-01-03', '123', '123', 'abc');
INSERT INTO `order` VALUES ('274cfee9-0afc-42c9-ae74-adbf899b4e3a', '9598', '江门职业技术学院', '0', '2018-12-24', '肥皂', '13660946472', '肥皂zorro');
INSERT INTO `order` VALUES ('407f8384-48eb-473a-8efd-f663b53d06c5', '2799', '1', '0', '2018-12-29', '1', '1', '123');
INSERT INTO `order` VALUES ('6e5695c7-9a62-4650-9855-84d345bfe76e', '5398', '广东蓬江', '0', '2018-12-29', '邓', '123456', '肥皂zorro');
INSERT INTO `order` VALUES ('73962b9c-983d-494f-b829-4d2b6c9804e6', '2799', '', '0', '2019-01-03', '', '', '肥皂zorro');
INSERT INTO `order` VALUES ('9fa961ba-89b4-4654-bcd2-86bb950cae1f', '4299', '2', '0', '2018-12-29', '2', '2', '123');
INSERT INTO `order` VALUES ('a295723c-fe71-419f-8c34-dfe1088014da', '2798', '2', '0', '2018-12-29', '2', '2', '123');
INSERT INTO `order` VALUES ('b79c09e1-676b-485e-846e-d44dc226c469', '8598', '江门职业技术学院', '0', '2018-12-29', '肥皂', '12345678900', '123');
INSERT INTO `order` VALUES ('eea8f6a9-4386-4639-84e4-b5b17ebff0f6', '2898', '1', '0', '2019-01-02', '1', '123456', '123');
INSERT INTO `order` VALUES ('ff116ed6-f232-4311-a1b3-6c78d05cf788', '14896', '江门职业技术学院', '0', '2019-01-03', '邓', '1234567890', '肥皂zorro');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL,
  `items_id` int(100) NOT NULL,
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('058e7e23-46ae-4b37-beee-501c0a316f21', '41', '2');
INSERT INTO `orderitem` VALUES ('1a780328-7adf-46fd-a056-d992b151f719', '34', '3');
INSERT INTO `orderitem` VALUES ('274cfee9-0afc-42c9-ae74-adbf899b4e3a', '47', '2');
INSERT INTO `orderitem` VALUES ('407f8384-48eb-473a-8efd-f663b53d06c5', '37', '1');
INSERT INTO `orderitem` VALUES ('546483bf-1c64-4612-9c91-72de93c489df', '35', '2');
INSERT INTO `orderitem` VALUES ('5d0e7e75-b373-4c0b-a3e6-2337f0a42cd6', '3', '3');
INSERT INTO `orderitem` VALUES ('5f7e0b97-fe77-4320-ab0c-8a54dfc50c48', '46', '2');
INSERT INTO `orderitem` VALUES ('6e5695c7-9a62-4650-9855-84d345bfe76e', '11', '2');
INSERT INTO `orderitem` VALUES ('73962b9c-983d-494f-b829-4d2b6c9804e6', '37', '1');
INSERT INTO `orderitem` VALUES ('817eb0e1-a8e6-4e80-b87f-1d0da888c806', '1', '1');
INSERT INTO `orderitem` VALUES ('8dc57206-82f2-46bb-8117-3fdc2b9bfc61', '35', '1');
INSERT INTO `orderitem` VALUES ('9fa961ba-89b4-4654-bcd2-86bb950cae1f', '45', '1');
INSERT INTO `orderitem` VALUES ('a295723c-fe71-419f-8c34-dfe1088014da', '1', '2');
INSERT INTO `orderitem` VALUES ('b79c09e1-676b-485e-846e-d44dc226c469', '45', '2');
INSERT INTO `orderitem` VALUES ('eea8f6a9-4386-4639-84e4-b5b17ebff0f6', '36', '1');
INSERT INTO `orderitem` VALUES ('ff116ed6-f232-4311-a1b3-6c78d05cf788', '1', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'zorro', '123456', '11@qq.com', '13660947472');
INSERT INTO `user` VALUES ('4', '123', '123456', '123@12.1', '13123456789');
INSERT INTO `user` VALUES ('5', '12', '123456', '111@1.1', '13123456789');
INSERT INTO `user` VALUES ('6', 'a', '123456', 'q@qq.z', '13123456789');
INSERT INTO `user` VALUES ('7', '邓', '123123', '11111@qq.com', '13123456789');
INSERT INTO `user` VALUES ('8', '12', '123456', '11@qq.com', '13123456789');
INSERT INTO `user` VALUES ('9', '肥皂', '123456', '123123@qq.com', '13123456789');
INSERT INTO `user` VALUES ('10', '1', '137373', '7575@qq.com', '13123456789');
INSERT INTO `user` VALUES ('11', '1', '123456', '123@qq.com', '13123456789');
INSERT INTO `user` VALUES ('12', '肥皂zorro', '123123', '121341@qq.com', '13123145678');
INSERT INTO `user` VALUES ('13', '123', '123456', '11@qq.com', '13012345678');
INSERT INTO `user` VALUES ('14', 'abc', '123456', '121341@qq.com', '13123145678');
