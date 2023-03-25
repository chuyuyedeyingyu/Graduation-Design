/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : basestationmis

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2022-05-13 21:53:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bus_bsonline`
-- ----------------------------
DROP TABLE IF EXISTS `bus_bsonline`;
CREATE TABLE `bus_bsonline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `standard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `frequencyrange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bsobject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bsaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `belong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `colocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bbufocus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `planning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bsremarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_bsonline
-- ----------------------------
INSERT INTO `bus_bsonline` VALUES ('1', '广州开发区木古路', '中国移动', '5G', '700', '移动700M', '113.216541', '23.154518', '广东省广州市黄埔区木古路', '中国铁塔', '3', '共址', '分布放置', '归档', '业主黄生1315845145', '1');
INSERT INTO `bus_bsonline` VALUES ('2', '广州花都区花都花城', '中国移动', '5G', '700', '移动700M', '113.541154', '23.145218', '广东省广州市花都区花都花城', '中国铁塔', '3', '共址', '集中放置', '归档', ' NULL', '1');
INSERT INTO `bus_bsonline` VALUES ('3', '广州增城区三江市场', '中国移动', '5G', '700', '移动700M', '113.214541', '23.151245', '广东省广州市增城区三江建设路', '中国铁塔', '3', '共址', '集中放置', '归档', ' NULL', '1');
INSERT INTO `bus_bsonline` VALUES ('4', '木古路', '中国电信', '5G', '3500', '电信四期', '113.216541', '23.154518', '广东省广州市黄埔区木古路', '中国铁塔', '3', '共址', '集中放置', '归档', '业主黄生1315845145', '1');
INSERT INTO `bus_bsonline` VALUES ('5', '三江建设路', '中国电信', '5G', '2100', '电信四期', '113.214541', '23.151245', '广东省广州市增城区三江建设路', '中国铁塔', '3', '共址', '集中放置', '归档', 'NULL', '1');

-- ----------------------------
-- Table structure for `bus_construction`
-- ----------------------------
DROP TABLE IF EXISTS `bus_construction`;
CREATE TABLE `bus_construction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constructionname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `connectionpersion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_construction
-- ----------------------------
INSERT INTO `bus_construction` VALUES ('1', '华为', '510000', '广东广州', '020-9123131', '张生', '15236484188', '中国银行', '654431331343413', '1541554123@sina.com', '123456', '1');
INSERT INTO `bus_construction` VALUES ('2', '中国通信服务', '510000', '广东广州', '020-9123118', '李生', '13468684936', '农业银行', '654431643512873', '21434134124@sina.com', '132456', '1');
INSERT INTO `bus_construction` VALUES ('3', '中国通信服务二局', '510000', '广东广州', '020-9684218', '赵生', '18226112145', '招商银行', '664818462548792', '13184415748@qq.com', '154876', '1');
INSERT INTO `bus_construction` VALUES ('4', '中时讯', '510000', '广东广州', '020-9123131', '王生', '13351674759', '工商银行', '362648213856509', '13546324759@163.com', '123654', '1');
INSERT INTO `bus_construction` VALUES ('5', '华为', '518000', '广东深圳', '0755-1364874', '刘生', '13715451544', '工商银行', '656451278145479', '22484148789@qq.com', '135481', '1');

-- ----------------------------
-- Table structure for `bus_maintain`
-- ----------------------------
DROP TABLE IF EXISTS `bus_maintain`;
CREATE TABLE `bus_maintain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintainname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_maintain
-- ----------------------------
INSERT INTO `bus_maintain` VALUES ('1', '周生', '13413446488', '广东广州', '中国通信服务二局', '12332131241@sina.com', '1');
INSERT INTO `bus_maintain` VALUES ('2', '李生', '13413441141', '广东广州', '中国通信服务', '12123114521@sina.com', '1');
INSERT INTO `bus_maintain` VALUES ('3', '权生', '12312687687', '广东广州', '中国通信服务二局', '12464241@123.com', '1');
INSERT INTO `bus_maintain` VALUES ('4', '张生', '13617252689', '广东广州', '中国通信服务', '136898648@163.com', '1');
INSERT INTO `bus_maintain` VALUES ('5', '吴生', '13698560566', '广东广州', '中国通信服务', '13537868456@163.com', '1');

-- ----------------------------
-- Table structure for `bus_materials`
-- ----------------------------
DROP TABLE IF EXISTS `bus_materials`;
CREATE TABLE `bus_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materialsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `produceplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `materialspackage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `promitcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `dangernum` int(11) DEFAULT NULL,
  `materialsimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bus_materials_ibfk_1` (`providerid`) USING BTREE,
  CONSTRAINT `bus_materials_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_materials
-- ----------------------------
INSERT INTO `bus_materials` VALUES ('1', 'BBU5900', '1', '广东深圳', '1台', '箱', '202203111751', 'PZ1234', '基带处理单元', '30000', '50', '10', '2022-04-05/EF0998DD91DD45558FE910FAE85F79E5.png', '1');
INSERT INTO `bus_materials` VALUES ('2', 'AAU5639', '1', '广东深圳', '1台', '箱', '202203111751', 'PZ12312', '有源天线处理单元', '40000', '100', '40', '2022-04-05/F0B5B8005B05430F84FADE1261D5E15A.jpg', '1');
INSERT INTO `bus_materials` VALUES ('3', 'RRU5610', '1', '广东深圳', '3台', '箱', '202203111751', 'PA162151', '射频拉远单元', '5000', '200', '100', '2022-04-05/1261A20FD04C493C83F2E243508716C9.jpg', '1');
INSERT INTO `bus_materials` VALUES ('4', '光模块', '1', '广东深圳', '10个', '盒', '202203111751', 'PZ5412111', '电信号转换成光信号', '500', '300', '100', '2022-04-05/DF28B11B82CE4979844D9AFA00596A38.png', '1');
INSERT INTO `bus_materials` VALUES ('5', '4448天线', '1', '广东深圳', '3架', '箱', '202203111751', 'PZ4812321', '天线', '3000', '1000', '100', '2022-04-05/3F45533C695B48BD95B94018B4EE8148.png', '1');
INSERT INTO `bus_materials` VALUES ('6', 'RBS3418', '2', '广东惠州', '3台', '箱', 'SD13156146', '321651613', '射频拉远单元', '5500', '100', '20', '2022-04-05/D906145D74DB43198CEEEA226EF68B64.png', '1');
INSERT INTO `bus_materials` VALUES ('7', 'RRUS01', '2', '广东惠州', '3台', '箱', 'DFS234341231', 'DF123124324', '射频拉远单元', '4000', '500', '100', '2022-04-05/7DD11BDAC8E444C09242A0DFCB2E82D5.png', '1');
INSERT INTO `bus_materials` VALUES ('19', 'DCDU', '1', '广州', '20部', '箱', 'DFS234231231', 'PZ51421111', '电源分配单元', '240', '50', '20', '2022-04-08/7545D801BF5D42B1882BDAE6BB6C792A.png', '1');
INSERT INTO `bus_materials` VALUES ('20', '馈线', '1', '广东惠州', '10米', '捆', '26484156154', '1545418', '馈线', '7000', '50', '10', '2022-05-07/44B81E20B27C4A6E9E9C1D2D17807372.jpg', '1');

-- ----------------------------
-- Table structure for `bus_operator`
-- ----------------------------
DROP TABLE IF EXISTS `bus_operator`;
CREATE TABLE `bus_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `connectionpersion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_operator
-- ----------------------------
INSERT INTO `bus_operator` VALUES ('1', '中国移动', '510000', '广东广州', '020-9123131', '张生', '15279230588', '中国银行', '654431331343413', '213123@sina.com', '123456', '1');
INSERT INTO `bus_operator` VALUES ('2', '中国电信', '510000', '广东广州', '020-9123118', '王生', '13064154936', '中国银行', '654431331343413', '213124@sina.com', '132456', '1');
INSERT INTO `bus_operator` VALUES ('3', '中国联通', '510000', '广东广州', '020-11011011', '李生', '13617020687', '招商银行', '654314834133413', '154515414147@123.com', '134256', '1');
INSERT INTO `bus_operator` VALUES ('4', '中国移动', '518000', '广东深圳', '0755-1365874', '吴生', '13648524759', '建设银行', '362456841256509', '13648524759@163.com', '123654', '1');
INSERT INTO `bus_operator` VALUES ('5', '中国电信', '518000', '广东深圳', '0755-1548154', '叶生', '13676846844', '工商银行', '646123136768212', '1231212313@123.com', '123546', '1');
INSERT INTO `bus_operator` VALUES ('6', '中国联通', '518000', '广东深圳', '0755-4185412', '刘生', '1365868/768', '农业银行', '654782178324384', '15874515478@123.com', '123645', '1');
INSERT INTO `bus_operator` VALUES ('7', '中国移动', '529000', '广东江门', '0750-7854155', '赵生', '13755415475', '农业银行', '664841548415771', '487851@123.com', '456789', '1');
INSERT INTO `bus_operator` VALUES ('8', '中国电信', '529000', '广东江门', '0750-7854145', '朱生', '18022154144', '工商银行', '661541354515474', '422311@163.com', '456978', '1');
INSERT INTO `bus_operator` VALUES ('9', '中国联通', '529000', '广东江门', '0750-7854164', '冯生', '18071245454', '中国银行', '664875612018415', '441265@163.com', '456987', '1');
INSERT INTO `bus_operator` VALUES ('16', 'zhongguoyidong', '312', '1232', '12', '31', '23', '12', '131', '2123', '12', '1');

-- ----------------------------
-- Table structure for `bus_provider`
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `connectionperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
INSERT INTO `bus_provider` VALUES ('1', '华为', '434000', '广东深圳', '0755-4124312', '周生', '13413446488', '农业银行', '654124345131487', '12312321@sina.com', '5123123', '1');
INSERT INTO `bus_provider` VALUES ('2', '爱立信', '430000', '北京', '010-4124317', '许生', '13413441141', '农业银行', '654124346845131', '1233321@sina.com', '5123123', '1');
INSERT INTO `bus_provider` VALUES ('3', '诺基亚', '513131', '北京', '010-1548125', '吕生', '12312687687', '建设银行', '665123141415413', '123131@123.com', '312312', '1');
INSERT INTO `bus_provider` VALUES ('4', '中兴', '332005', '广东深圳', '0755-4325481', '何生', '13617252689', '中国银行', '636214587962509', '13617252689@163.com', '364145', '1');
INSERT INTO `bus_provider` VALUES ('5', '三星', '562115', '北京', '010-5124817', '郑生', '13698560566', '建设银行', '636214589635965', '13698560566@163.com', '362514', '1');

-- ----------------------------
-- Table structure for `bus_receive`
-- ----------------------------
DROP TABLE IF EXISTS `bus_receive`;
CREATE TABLE `bus_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_receive
-- ----------------------------
INSERT INTO `bus_receive` VALUES ('1', '华为', '张生', '020-9123131', '木古路', 'BBU5900', '1', 'AAU5936', '3', '光模块', '10', '2022-4-8', '1');
INSERT INTO `bus_receive` VALUES ('7', '中国通信服务', '李生', '13468684936', '广州开发区木古路', 'BBU5900', '1', 'RRU5610', '1', '光模块', '4', '2022-4-8', '1');
INSERT INTO `bus_receive` VALUES ('8', '中国通信服务二局', '赵生', '18226112145', '广州市花都区花都花城', 'RRU5610', '3', 'DCDU', '1', '光模块', '4', '2022-4-8', '1');
INSERT INTO `bus_receive` VALUES ('9', '中国通信服务二局', '赵生', '18226112145', '广州市花都区花都花城', '4448天线', '3', '无', '无', '无', '无', '2022-4-8', '1');
INSERT INTO `bus_receive` VALUES ('11', '中国通信服务二局', '李生', '13468684936', '2231', '31231', '2', 'NULL', 'NULL', 'NULL', 'NULL', '2022-5-7', '1');

-- ----------------------------
-- Table structure for `bus_repair`
-- ----------------------------
DROP TABLE IF EXISTS `bus_repair`;
CREATE TABLE `bus_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintainname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `repairbsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `callnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ordertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_repair
-- ----------------------------
INSERT INTO `bus_repair` VALUES ('1', '周生', '广州开发区木古路', '13413446488', '季度定期检查', '2022-4-7 13:56:41', '检查', '1');
INSERT INTO `bus_repair` VALUES ('2', '李生', '广州花都区花都花城', '13413441141', '季度定期检查', '2022-4-7 13:58:12', '检查', '1');
INSERT INTO `bus_repair` VALUES ('3', '李生', '广州花都区花都花城', '13413441141', '基站内部环境清洁', '2022-4-8 13:58:12', '清洁', '1');
INSERT INTO `bus_repair` VALUES ('4', '权生', '广州增城区三江市场', '12312687687', '季度定期检查', '2022-4-8 14:00:18', '检查', '1');
INSERT INTO `bus_repair` VALUES ('5', '张生', '木古路', '13617252689', '处理网络故障', '2022-4-8 14:00:38', '更换光缆', '1');
INSERT INTO `bus_repair` VALUES ('6', '吴生', '三江建设路', '13698560566', '基站搬迁', '2022-4-8 14:00:41', '搬走设备', '1');
INSERT INTO `bus_repair` VALUES ('7', '123123', '21312', '312312', '312312', '321312', '3123', '1');

-- ----------------------------
-- Table structure for `bus_return`
-- ----------------------------
DROP TABLE IF EXISTS `bus_return`;
CREATE TABLE `bus_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `quantity2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_return
-- ----------------------------
INSERT INTO `bus_return` VALUES ('1', '华为', '张生', '020-9123131', '木古路', '光模块', '6', ' ', ' ', '2022-4-9', '1');

-- ----------------------------
-- Table structure for `sys_loginfo`
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES ('1', '超级管理员-wdf', '0:0:0:0:0:0:0:1', '2022-04-05 11:34:34');
INSERT INTO `sys_loginfo` VALUES ('2', '超级管理员-wdf', '0:0:0:0:0:0:0:1', '2022-04-05 11:41:56');
INSERT INTO `sys_loginfo` VALUES ('3', '超级管理员-wdf', '0:0:0:0:0:0:0:1', '2022-04-06 06:22:44');
INSERT INTO `sys_loginfo` VALUES ('4', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-10 15:12:05');
INSERT INTO `sys_loginfo` VALUES ('5', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:15:28');
INSERT INTO `sys_loginfo` VALUES ('6', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:15:45');
INSERT INTO `sys_loginfo` VALUES ('7', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:16:16');
INSERT INTO `sys_loginfo` VALUES ('8', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:16:53');
INSERT INTO `sys_loginfo` VALUES ('9', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:28:25');
INSERT INTO `sys_loginfo` VALUES ('10', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:29:11');
INSERT INTO `sys_loginfo` VALUES ('11', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:31:05');
INSERT INTO `sys_loginfo` VALUES ('12', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:32:31');
INSERT INTO `sys_loginfo` VALUES ('13', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:38:24');
INSERT INTO `sys_loginfo` VALUES ('14', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:40:09');
INSERT INTO `sys_loginfo` VALUES ('15', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:44:05');
INSERT INTO `sys_loginfo` VALUES ('16', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:44:25');
INSERT INTO `sys_loginfo` VALUES ('17', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:45:15');
INSERT INTO `sys_loginfo` VALUES ('18', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-14 07:45:31');
INSERT INTO `sys_loginfo` VALUES ('19', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-14 07:56:08');
INSERT INTO `sys_loginfo` VALUES ('20', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-18 07:59:51');
INSERT INTO `sys_loginfo` VALUES ('21', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 08:00:09');
INSERT INTO `sys_loginfo` VALUES ('22', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 09:57:21');
INSERT INTO `sys_loginfo` VALUES ('23', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-18 10:11:12');
INSERT INTO `sys_loginfo` VALUES ('24', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-18 10:11:46');
INSERT INTO `sys_loginfo` VALUES ('25', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 10:12:13');
INSERT INTO `sys_loginfo` VALUES ('26', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 11:29:34');
INSERT INTO `sys_loginfo` VALUES ('27', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 13:13:42');
INSERT INTO `sys_loginfo` VALUES ('28', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 13:45:59');
INSERT INTO `sys_loginfo` VALUES ('29', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-18 15:01:13');
INSERT INTO `sys_loginfo` VALUES ('30', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 05:29:05');
INSERT INTO `sys_loginfo` VALUES ('31', '超级管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 06:54:24');
INSERT INTO `sys_loginfo` VALUES ('32', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 07:59:16');
INSERT INTO `sys_loginfo` VALUES ('33', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 08:13:25');
INSERT INTO `sys_loginfo` VALUES ('34', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 09:11:06');
INSERT INTO `sys_loginfo` VALUES ('35', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-19 09:19:26');
INSERT INTO `sys_loginfo` VALUES ('36', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-04-19 09:54:42');
INSERT INTO `sys_loginfo` VALUES ('37', 'test-test', '0:0:0:0:0:0:0:1', '2022-04-29 08:12:27');
INSERT INTO `sys_loginfo` VALUES ('38', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 05:56:22');
INSERT INTO `sys_loginfo` VALUES ('39', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:07:23');
INSERT INTO `sys_loginfo` VALUES ('40', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:11:35');
INSERT INTO `sys_loginfo` VALUES ('41', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:16:29');
INSERT INTO `sys_loginfo` VALUES ('42', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:17:56');
INSERT INTO `sys_loginfo` VALUES ('43', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:22:18');
INSERT INTO `sys_loginfo` VALUES ('44', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:24:10');
INSERT INTO `sys_loginfo` VALUES ('45', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 06:50:52');
INSERT INTO `sys_loginfo` VALUES ('46', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:08:25');
INSERT INTO `sys_loginfo` VALUES ('47', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 07:12:42');
INSERT INTO `sys_loginfo` VALUES ('48', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:13:11');
INSERT INTO `sys_loginfo` VALUES ('49', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 07:14:30');
INSERT INTO `sys_loginfo` VALUES ('50', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:15:21');
INSERT INTO `sys_loginfo` VALUES ('51', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:43:04');
INSERT INTO `sys_loginfo` VALUES ('52', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 07:46:06');
INSERT INTO `sys_loginfo` VALUES ('53', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:47:03');
INSERT INTO `sys_loginfo` VALUES ('54', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 07:47:20');
INSERT INTO `sys_loginfo` VALUES ('55', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 07:49:07');
INSERT INTO `sys_loginfo` VALUES ('56', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:30:22');
INSERT INTO `sys_loginfo` VALUES ('57', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:32:16');
INSERT INTO `sys_loginfo` VALUES ('58', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 15:35:25');
INSERT INTO `sys_loginfo` VALUES ('59', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:35:54');
INSERT INTO `sys_loginfo` VALUES ('60', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:37:32');
INSERT INTO `sys_loginfo` VALUES ('61', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 15:40:24');
INSERT INTO `sys_loginfo` VALUES ('62', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:40:42');
INSERT INTO `sys_loginfo` VALUES ('63', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 15:41:35');
INSERT INTO `sys_loginfo` VALUES ('64', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-07 15:42:05');
INSERT INTO `sys_loginfo` VALUES ('65', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-07 15:42:26');
INSERT INTO `sys_loginfo` VALUES ('66', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-08 01:30:33');
INSERT INTO `sys_loginfo` VALUES ('67', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-08 01:31:14');
INSERT INTO `sys_loginfo` VALUES ('68', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-08 02:25:55');
INSERT INTO `sys_loginfo` VALUES ('69', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-08 02:28:44');
INSERT INTO `sys_loginfo` VALUES ('70', '系统管理员-system', '0:0:0:0:0:0:0:1', '2022-05-08 02:29:05');
INSERT INTO `sys_loginfo` VALUES ('71', 'test-test', '0:0:0:0:0:0:0:1', '2022-05-08 02:29:25');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('57', '测试', '这是一条测试内容', '2022-04-05 11:42:24', '系统管理员');
INSERT INTO `sys_notice` VALUES ('58', 'test1', 'This is a test1', '2022-05-07 13:25:20', '系统管理员');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', 'menu', '基站信息管理系统', null, '&#xe68e;', '', '', '1', '1', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', 'menu', '客户管理', null, '&#xe857;', '', '', '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('3', '1', 'menu', '基站管理', null, '&#xe645;', '', '', '1', '3', '1');
INSERT INTO `sys_permission` VALUES ('4', '1', 'menu', '仓库管理', null, '&#xe611;', '', '', '0', '4', '1');
INSERT INTO `sys_permission` VALUES ('5', '1', 'menu', '系统管理', null, '&#xe614;', '', '', '0', '5', '1');
INSERT INTO `sys_permission` VALUES ('6', '1', 'menu', '其它管理', null, '&#xe628;', '', '', '0', '6', '1');
INSERT INTO `sys_permission` VALUES ('7', '2', 'menu', '运营商管理', null, '', '/bus/toOperatorManager', '', '0', '7', '1');
INSERT INTO `sys_permission` VALUES ('8', '2', 'menu', '供应商管理', null, '', '/bus/toProviderManager', '', '0', '8', '1');
INSERT INTO `sys_permission` VALUES ('9', '2', 'menu', '施工方管理', null, '', '/bus/toConstructionManager', '', '0', '9', '1');
INSERT INTO `sys_permission` VALUES ('11', '3', 'menu', '基站一览', null, '', '/bus/toBsonlineManager', '', '0', '11', '1');
INSERT INTO `sys_permission` VALUES ('12', '4', 'menu', '物料库存', null, '', '/bus/toMaterialsManager', '', '0', '12', '1');
INSERT INTO `sys_permission` VALUES ('13', '4', 'menu', '物料发放', null, '', '/bus/toReceiveManager', '', '0', '13', '1');
INSERT INTO `sys_permission` VALUES ('15', '5', 'menu', '菜单管理', null, '', '/sys/toMenuManager', '', '0', '15', '1');
INSERT INTO `sys_permission` VALUES ('16', '5', 'menu', '权限管理', '', '', '/sys/toPermissionManager', '', '0', '16', '1');
INSERT INTO `sys_permission` VALUES ('17', '5', 'menu', '角色管理', '', '', '/sys/toRoleManager', '', '0', '17', '1');
INSERT INTO `sys_permission` VALUES ('18', '5', 'menu', '用户管理', '', '', '/sys/toUserManager', '', '0', '18', '1');
INSERT INTO `sys_permission` VALUES ('21', '6', 'menu', '登陆日志', null, '', '/sys/toLoginfoManager', '', '0', '21', '1');
INSERT INTO `sys_permission` VALUES ('22', '6', 'menu', '系统公告', null, '', '/sys/toNoticeManager', null, '0', '22', '1');
INSERT INTO `sys_permission` VALUES ('23', '6', 'menu', '图标管理', null, '', '../resources/page/icon.html', null, '0', '23', '1');
INSERT INTO `sys_permission` VALUES ('30', '14', 'permission', '添加部门', 'dept:create', '', null, null, '0', '24', '0');
INSERT INTO `sys_permission` VALUES ('31', '14', 'permission', '修改部门', 'dept:update', '', null, null, '0', '26', '0');
INSERT INTO `sys_permission` VALUES ('32', '14', 'permission', '删除部门', 'dept:delete', '', null, null, '0', '27', '0');
INSERT INTO `sys_permission` VALUES ('34', '15', 'permission', '添加菜单', 'menu:create', '', '', '', '0', '29', '1');
INSERT INTO `sys_permission` VALUES ('35', '15', 'permission', '修改菜单', 'menu:update', '', null, null, '0', '30', '1');
INSERT INTO `sys_permission` VALUES ('36', '15', 'permission', '删除菜单', 'menu:delete', '', null, null, '0', '31', '1');
INSERT INTO `sys_permission` VALUES ('38', '16', 'permission', '添加权限', 'permission:create', '', null, null, '0', '33', '1');
INSERT INTO `sys_permission` VALUES ('39', '16', 'permission', '修改权限', 'permission:update', '', null, null, '0', '34', '1');
INSERT INTO `sys_permission` VALUES ('40', '16', 'permission', '删除权限', 'permission:delete', '', null, null, '0', '35', '1');
INSERT INTO `sys_permission` VALUES ('42', '17', 'permission', '添加角色', 'role:create', '', null, null, '0', '37', '1');
INSERT INTO `sys_permission` VALUES ('43', '17', 'permission', '修改角色', 'role:update', '', null, null, '0', '38', '1');
INSERT INTO `sys_permission` VALUES ('44', '17', 'permission', '删除角色', 'role:delete', '', null, null, '0', '39', '1');
INSERT INTO `sys_permission` VALUES ('46', '17', 'permission', '分配权限', 'role:selectPermission', '', null, null, '0', '41', '1');
INSERT INTO `sys_permission` VALUES ('47', '18', 'permission', '添加用户', 'user:create', '', null, null, '0', '42', '1');
INSERT INTO `sys_permission` VALUES ('48', '18', 'permission', '修改用户', 'user:update', '', null, null, '0', '43', '1');
INSERT INTO `sys_permission` VALUES ('49', '18', 'permission', '删除用户', 'user:delete', '', null, null, '0', '44', '1');
INSERT INTO `sys_permission` VALUES ('51', '18', 'permission', '用户分配角色', 'user:selectRole', '', null, null, '0', '46', '1');
INSERT INTO `sys_permission` VALUES ('52', '18', 'permission', '重置密码', 'user:resetPwd', null, null, null, '0', '47', '1');
INSERT INTO `sys_permission` VALUES ('53', '14', 'permission', '部门查询', 'dept:view', null, null, null, '0', '48', '0');
INSERT INTO `sys_permission` VALUES ('54', '15', 'permission', '菜单查询', 'menu:view', null, null, null, '0', '49', '1');
INSERT INTO `sys_permission` VALUES ('55', '16', 'permission', '权限查询', 'permission:view', null, null, null, '0', '50', '1');
INSERT INTO `sys_permission` VALUES ('56', '17', 'permission', '角色查询', 'role:view', null, null, null, '0', '51', '1');
INSERT INTO `sys_permission` VALUES ('57', '18', 'permission', '用户查询', 'user:view', null, null, null, '0', '52', '1');
INSERT INTO `sys_permission` VALUES ('68', '7', 'permission', '客户查询', 'operator:view', null, null, null, null, '60', '1');
INSERT INTO `sys_permission` VALUES ('69', '7', 'permission', '客户添加', 'operator:create', null, null, null, null, '61', '1');
INSERT INTO `sys_permission` VALUES ('70', '7', 'permission', '客户修改', 'operator:update', null, null, null, null, '62', '1');
INSERT INTO `sys_permission` VALUES ('71', '7', 'permission', '客户删除', 'operator:delete', null, null, null, null, '63', '1');
INSERT INTO `sys_permission` VALUES ('73', '21', 'permission', '日志查询', 'info:view', null, null, null, null, '65', '1');
INSERT INTO `sys_permission` VALUES ('74', '21', 'permission', '日志删除', 'info:delete', null, null, null, null, '66', '1');
INSERT INTO `sys_permission` VALUES ('75', '21', 'permission', '日志批量删除', 'info:batchdelete', null, null, null, null, '67', '1');
INSERT INTO `sys_permission` VALUES ('76', '22', 'permission', '公告查询', 'notice:view', null, null, null, null, '68', '1');
INSERT INTO `sys_permission` VALUES ('77', '22', 'permission', '公告添加', 'notice:create', null, null, null, null, '69', '1');
INSERT INTO `sys_permission` VALUES ('78', '22', 'permission', '公告修改', 'notice:update', null, null, null, null, '70', '1');
INSERT INTO `sys_permission` VALUES ('79', '22', 'permission', '公告删除', 'notice:delete', null, null, null, null, '71', '1');
INSERT INTO `sys_permission` VALUES ('81', '8', 'permission', '供应商查询', 'provider:view', null, null, null, null, '73', '1');
INSERT INTO `sys_permission` VALUES ('82', '8', 'permission', '供应商添加', 'provider:create', null, null, null, null, '74', '1');
INSERT INTO `sys_permission` VALUES ('83', '8', 'permission', '供应商修改', 'provider:update', null, null, null, null, '75', '1');
INSERT INTO `sys_permission` VALUES ('84', '8', 'permission', '供应商删除', 'provider:delete', null, null, null, null, '76', '1');
INSERT INTO `sys_permission` VALUES ('86', '22', 'permission', '公告查看', 'notice:viewnotice', null, null, null, null, '78', '1');
INSERT INTO `sys_permission` VALUES ('92', '12', 'permission', '物料添加', 'materials:create', null, null, null, '0', '80', '1');
INSERT INTO `sys_permission` VALUES ('116', '12', 'permission', '物料删除', 'materials:delete', null, null, null, '0', '84', '1');
INSERT INTO `sys_permission` VALUES ('117', '12', 'permission', '物料修改', 'materials:update', null, null, null, '0', '85', '1');
INSERT INTO `sys_permission` VALUES ('118', '12', 'permission', '物料查询', 'materials:view', null, null, null, '0', '86', '1');
INSERT INTO `sys_permission` VALUES ('119', '22', 'permission', '公告批量删除', 'notice:batchdelete', null, null, null, '0', '87', '1');
INSERT INTO `sys_permission` VALUES ('122', '6', 'menu', '缓存管理', null, '', '/sys/toCacheManager', '_black', '1', '88', '1');
INSERT INTO `sys_permission` VALUES ('123', '122', 'permission', '同步缓存', 'cache:syncCache', null, null, null, '0', '89', '1');
INSERT INTO `sys_permission` VALUES ('124', '122', 'permission', '清空缓存', 'cache:removeAllCache', null, null, null, '0', '90', '1');
INSERT INTO `sys_permission` VALUES ('125', '2', 'menu', '业维人员管理', null, '', '/bus/toMaintainManager', '', '0', '125', '1');
INSERT INTO `sys_permission` VALUES ('127', '4', 'menu', '物料退还', null, '', '/bus/toReturnManager', '', '0', '127', '1');
INSERT INTO `sys_permission` VALUES ('128', '3', 'menu', '基站维护', null, null, '/bus/toRepairManager', null, '0', '128', '1');
INSERT INTO `sys_permission` VALUES ('130', '9', 'permission', '施工方查询', 'construction:view', null, null, null, '0', '129', '1');
INSERT INTO `sys_permission` VALUES ('131', '9', 'permission', '施工方添加', 'construction:create', null, null, null, '0', '130', '1');
INSERT INTO `sys_permission` VALUES ('132', '9', 'permission', '施工方修改', 'construction:update', null, null, null, '0', '131', '1');
INSERT INTO `sys_permission` VALUES ('133', '9', 'permission', '施工方删除', 'construction:delete', null, null, null, '0', '132', '1');
INSERT INTO `sys_permission` VALUES ('134', '125', 'permission', '业维查看', 'maintain:view', null, null, null, '0', '133', '1');
INSERT INTO `sys_permission` VALUES ('135', '125', 'permission', '业维添加', 'maintain:create', null, null, null, '0', '134', '1');
INSERT INTO `sys_permission` VALUES ('136', '125', 'permission', '业维修改', 'maintain:update', null, null, null, '0', '135', '1');
INSERT INTO `sys_permission` VALUES ('137', '125', 'permission', '业维删除', 'maintain:delete', null, null, null, '0', '136', '1');
INSERT INTO `sys_permission` VALUES ('138', '11', 'permission', '基站查看', 'bsonline:view', null, null, null, '0', '137', '1');
INSERT INTO `sys_permission` VALUES ('139', '11', 'permission', '基站创建', 'bsonline:create', null, null, null, '0', '138', '1');
INSERT INTO `sys_permission` VALUES ('140', '11', 'permission', '基站修改', 'bsonline:update', null, null, null, '0', '139', '1');
INSERT INTO `sys_permission` VALUES ('141', '11', 'permission', '基站删除', 'bsonline:delete', null, null, null, '0', '140', '1');
INSERT INTO `sys_permission` VALUES ('142', '128', 'permission', '业维记录查询', 'repair:view', null, null, null, '0', '141', '1');
INSERT INTO `sys_permission` VALUES ('143', '128', 'permission', '业维记录添加', 'repair:create', null, null, null, '0', '142', '1');
INSERT INTO `sys_permission` VALUES ('144', '128', 'permission', '业维记录修改', 'repair:update', null, null, null, '0', '143', '1');
INSERT INTO `sys_permission` VALUES ('145', '128', 'permission', '业维记录删除', 'repair:delete', null, null, null, '0', '144', '1');
INSERT INTO `sys_permission` VALUES ('146', '13', 'permission', '物料发放查询', 'receive:view', null, null, null, '0', '145', '1');
INSERT INTO `sys_permission` VALUES ('147', '13', 'permission', '物料发放添加', 'receive:create', null, null, null, '0', '146', '1');
INSERT INTO `sys_permission` VALUES ('148', '13', 'permission', '物料发放修改', 'receive:update', null, null, null, '0', '147', '1');
INSERT INTO `sys_permission` VALUES ('149', '13', 'permission', '物料发放删除', 'receive:delete', null, null, null, '0', '148', '1');
INSERT INTO `sys_permission` VALUES ('150', '127', 'permission', '物料退还查询', 'return:view', null, null, null, '0', '149', '1');
INSERT INTO `sys_permission` VALUES ('151', '127', 'permission', '物料退还添加', 'return:create', null, null, null, '0', '150', '1');
INSERT INTO `sys_permission` VALUES ('152', '127', 'permission', '物料退还修改', 'return:update', null, null, null, '0', '151', '1');
INSERT INTO `sys_permission` VALUES ('153', '127', 'permission', '物料退还删除', 'return:delete', null, null, null, '0', '152', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '拥有除系统设置外的所有权限', '1', '2022-04-10 05:50:21');
INSERT INTO `sys_role` VALUES ('2', '数据管理员', '数据管理员', '1', '2022-04-10 05:50:21');
INSERT INTO `sys_role` VALUES ('3', '运营商', '拥有运营商、在网基站、业维作业记录的查看权限', '1', '2022-04-10 05:50:21');
INSERT INTO `sys_role` VALUES ('4', '系统管理员', '开放所有权限', '1', '2022-04-10 05:50:21');
INSERT INTO `sys_role` VALUES ('5', '供应商', '拥有供应商、在网基站、业维作业记录的查看权限', '1', '2022-04-10 05:06:35');
INSERT INTO `sys_role` VALUES ('6', '施工方', '拥有施工方、在网基站、业维作业、物料发放、物料退还的查看权限', '1', '2022-04-10 05:07:49');
INSERT INTO `sys_role` VALUES ('7', '业维人员', '拥有业维人员、在网基站、业维记录的查看权限', '1', '2022-04-10 05:10:17');
INSERT INTO `sys_role` VALUES ('8', '仓库管理员', '拥有仓库数据的增删改查的权限用户', '1', '2022-04-10 05:50:21');
INSERT INTO `sys_role` VALUES ('9', '基站管理员', '拥有基站数据的增删改查权限的用户', '1', '2022-04-10 05:51:34');
INSERT INTO `sys_role` VALUES ('10', '客户管理员', '拥有客户数据的增删改查的权限用户', '1', '2022-04-14 07:54:10');
INSERT INTO `sys_role` VALUES ('11', '基层员工', '基层员工', '1', '2022-05-07 07:13:42');
INSERT INTO `sys_role` VALUES ('12', '基层员工2', '123', '1', '2022-05-08 02:27:57');

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`,`rid`) USING BTREE,
  KEY `sys_role_permission_ibfk_1` (`pid`) USING BTREE,
  KEY `sys_role_permission_ibfk_2` (`rid`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('4', '1');
INSERT INTO `sys_role_permission` VALUES ('6', '1');
INSERT INTO `sys_role_permission` VALUES ('8', '1');
INSERT INTO `sys_role_permission` VALUES ('11', '1');
INSERT INTO `sys_role_permission` VALUES ('12', '1');
INSERT INTO `sys_role_permission` VALUES ('13', '1');
INSERT INTO `sys_role_permission` VALUES ('14', '1');
INSERT INTO `sys_role_permission` VALUES ('15', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '2');
INSERT INTO `sys_role_permission` VALUES ('4', '2');
INSERT INTO `sys_role_permission` VALUES ('6', '2');
INSERT INTO `sys_role_permission` VALUES ('11', '2');
INSERT INTO `sys_role_permission` VALUES ('12', '2');
INSERT INTO `sys_role_permission` VALUES ('13', '2');
INSERT INTO `sys_role_permission` VALUES ('14', '2');
INSERT INTO `sys_role_permission` VALUES ('15', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('2', '3');
INSERT INTO `sys_role_permission` VALUES ('4', '3');
INSERT INTO `sys_role_permission` VALUES ('6', '3');
INSERT INTO `sys_role_permission` VALUES ('11', '3');
INSERT INTO `sys_role_permission` VALUES ('12', '3');
INSERT INTO `sys_role_permission` VALUES ('13', '3');
INSERT INTO `sys_role_permission` VALUES ('14', '3');
INSERT INTO `sys_role_permission` VALUES ('15', '3');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('2', '4');
INSERT INTO `sys_role_permission` VALUES ('4', '4');
INSERT INTO `sys_role_permission` VALUES ('11', '4');
INSERT INTO `sys_role_permission` VALUES ('12', '4');
INSERT INTO `sys_role_permission` VALUES ('14', '4');
INSERT INTO `sys_role_permission` VALUES ('15', '4');
INSERT INTO `sys_role_permission` VALUES ('8', '5');
INSERT INTO `sys_role_permission` VALUES ('1', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '7');
INSERT INTO `sys_role_permission` VALUES ('4', '7');
INSERT INTO `sys_role_permission` VALUES ('6', '7');
INSERT INTO `sys_role_permission` VALUES ('11', '7');
INSERT INTO `sys_role_permission` VALUES ('12', '7');
INSERT INTO `sys_role_permission` VALUES ('14', '7');
INSERT INTO `sys_role_permission` VALUES ('15', '7');
INSERT INTO `sys_role_permission` VALUES ('1', '8');
INSERT INTO `sys_role_permission` VALUES ('2', '8');
INSERT INTO `sys_role_permission` VALUES ('4', '8');
INSERT INTO `sys_role_permission` VALUES ('11', '8');
INSERT INTO `sys_role_permission` VALUES ('12', '8');
INSERT INTO `sys_role_permission` VALUES ('14', '8');
INSERT INTO `sys_role_permission` VALUES ('15', '8');
INSERT INTO `sys_role_permission` VALUES ('1', '9');
INSERT INTO `sys_role_permission` VALUES ('2', '9');
INSERT INTO `sys_role_permission` VALUES ('4', '9');
INSERT INTO `sys_role_permission` VALUES ('11', '9');
INSERT INTO `sys_role_permission` VALUES ('12', '9');
INSERT INTO `sys_role_permission` VALUES ('14', '9');
INSERT INTO `sys_role_permission` VALUES ('15', '9');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('2', '11');
INSERT INTO `sys_role_permission` VALUES ('4', '11');
INSERT INTO `sys_role_permission` VALUES ('6', '11');
INSERT INTO `sys_role_permission` VALUES ('11', '11');
INSERT INTO `sys_role_permission` VALUES ('12', '11');
INSERT INTO `sys_role_permission` VALUES ('13', '11');
INSERT INTO `sys_role_permission` VALUES ('14', '11');
INSERT INTO `sys_role_permission` VALUES ('15', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('2', '12');
INSERT INTO `sys_role_permission` VALUES ('4', '12');
INSERT INTO `sys_role_permission` VALUES ('11', '12');
INSERT INTO `sys_role_permission` VALUES ('12', '12');
INSERT INTO `sys_role_permission` VALUES ('14', '12');
INSERT INTO `sys_role_permission` VALUES ('15', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '13');
INSERT INTO `sys_role_permission` VALUES ('2', '13');
INSERT INTO `sys_role_permission` VALUES ('4', '13');
INSERT INTO `sys_role_permission` VALUES ('11', '13');
INSERT INTO `sys_role_permission` VALUES ('12', '13');
INSERT INTO `sys_role_permission` VALUES ('14', '13');
INSERT INTO `sys_role_permission` VALUES ('15', '13');
INSERT INTO `sys_role_permission` VALUES ('8', '15');
INSERT INTO `sys_role_permission` VALUES ('8', '16');
INSERT INTO `sys_role_permission` VALUES ('8', '17');
INSERT INTO `sys_role_permission` VALUES ('8', '18');
INSERT INTO `sys_role_permission` VALUES ('8', '30');
INSERT INTO `sys_role_permission` VALUES ('8', '31');
INSERT INTO `sys_role_permission` VALUES ('8', '32');
INSERT INTO `sys_role_permission` VALUES ('8', '34');
INSERT INTO `sys_role_permission` VALUES ('8', '35');
INSERT INTO `sys_role_permission` VALUES ('8', '36');
INSERT INTO `sys_role_permission` VALUES ('8', '38');
INSERT INTO `sys_role_permission` VALUES ('8', '39');
INSERT INTO `sys_role_permission` VALUES ('8', '40');
INSERT INTO `sys_role_permission` VALUES ('8', '42');
INSERT INTO `sys_role_permission` VALUES ('8', '43');
INSERT INTO `sys_role_permission` VALUES ('8', '44');
INSERT INTO `sys_role_permission` VALUES ('8', '46');
INSERT INTO `sys_role_permission` VALUES ('8', '47');
INSERT INTO `sys_role_permission` VALUES ('8', '48');
INSERT INTO `sys_role_permission` VALUES ('8', '49');
INSERT INTO `sys_role_permission` VALUES ('8', '51');
INSERT INTO `sys_role_permission` VALUES ('8', '52');
INSERT INTO `sys_role_permission` VALUES ('8', '53');
INSERT INTO `sys_role_permission` VALUES ('8', '54');
INSERT INTO `sys_role_permission` VALUES ('8', '55');
INSERT INTO `sys_role_permission` VALUES ('8', '56');
INSERT INTO `sys_role_permission` VALUES ('8', '57');
INSERT INTO `sys_role_permission` VALUES ('1', '68');
INSERT INTO `sys_role_permission` VALUES ('2', '68');
INSERT INTO `sys_role_permission` VALUES ('4', '68');
INSERT INTO `sys_role_permission` VALUES ('6', '68');
INSERT INTO `sys_role_permission` VALUES ('11', '68');
INSERT INTO `sys_role_permission` VALUES ('12', '68');
INSERT INTO `sys_role_permission` VALUES ('14', '68');
INSERT INTO `sys_role_permission` VALUES ('15', '68');
INSERT INTO `sys_role_permission` VALUES ('1', '69');
INSERT INTO `sys_role_permission` VALUES ('2', '69');
INSERT INTO `sys_role_permission` VALUES ('4', '69');
INSERT INTO `sys_role_permission` VALUES ('1', '70');
INSERT INTO `sys_role_permission` VALUES ('2', '70');
INSERT INTO `sys_role_permission` VALUES ('4', '70');
INSERT INTO `sys_role_permission` VALUES ('1', '71');
INSERT INTO `sys_role_permission` VALUES ('2', '71');
INSERT INTO `sys_role_permission` VALUES ('4', '71');
INSERT INTO `sys_role_permission` VALUES ('1', '81');
INSERT INTO `sys_role_permission` VALUES ('2', '81');
INSERT INTO `sys_role_permission` VALUES ('4', '81');
INSERT INTO `sys_role_permission` VALUES ('11', '81');
INSERT INTO `sys_role_permission` VALUES ('12', '81');
INSERT INTO `sys_role_permission` VALUES ('14', '81');
INSERT INTO `sys_role_permission` VALUES ('15', '81');
INSERT INTO `sys_role_permission` VALUES ('1', '82');
INSERT INTO `sys_role_permission` VALUES ('2', '82');
INSERT INTO `sys_role_permission` VALUES ('4', '82');
INSERT INTO `sys_role_permission` VALUES ('1', '83');
INSERT INTO `sys_role_permission` VALUES ('2', '83');
INSERT INTO `sys_role_permission` VALUES ('4', '83');
INSERT INTO `sys_role_permission` VALUES ('1', '84');
INSERT INTO `sys_role_permission` VALUES ('2', '84');
INSERT INTO `sys_role_permission` VALUES ('4', '84');
INSERT INTO `sys_role_permission` VALUES ('1', '92');
INSERT INTO `sys_role_permission` VALUES ('2', '92');
INSERT INTO `sys_role_permission` VALUES ('4', '92');
INSERT INTO `sys_role_permission` VALUES ('14', '92');
INSERT INTO `sys_role_permission` VALUES ('15', '92');
INSERT INTO `sys_role_permission` VALUES ('1', '116');
INSERT INTO `sys_role_permission` VALUES ('2', '116');
INSERT INTO `sys_role_permission` VALUES ('4', '116');
INSERT INTO `sys_role_permission` VALUES ('14', '116');
INSERT INTO `sys_role_permission` VALUES ('1', '117');
INSERT INTO `sys_role_permission` VALUES ('2', '117');
INSERT INTO `sys_role_permission` VALUES ('4', '117');
INSERT INTO `sys_role_permission` VALUES ('14', '117');
INSERT INTO `sys_role_permission` VALUES ('1', '118');
INSERT INTO `sys_role_permission` VALUES ('2', '118');
INSERT INTO `sys_role_permission` VALUES ('4', '118');
INSERT INTO `sys_role_permission` VALUES ('11', '118');
INSERT INTO `sys_role_permission` VALUES ('12', '118');
INSERT INTO `sys_role_permission` VALUES ('14', '118');
INSERT INTO `sys_role_permission` VALUES ('1', '125');
INSERT INTO `sys_role_permission` VALUES ('2', '125');
INSERT INTO `sys_role_permission` VALUES ('4', '125');
INSERT INTO `sys_role_permission` VALUES ('11', '125');
INSERT INTO `sys_role_permission` VALUES ('12', '125');
INSERT INTO `sys_role_permission` VALUES ('13', '125');
INSERT INTO `sys_role_permission` VALUES ('14', '125');
INSERT INTO `sys_role_permission` VALUES ('15', '125');
INSERT INTO `sys_role_permission` VALUES ('1', '127');
INSERT INTO `sys_role_permission` VALUES ('2', '127');
INSERT INTO `sys_role_permission` VALUES ('4', '127');
INSERT INTO `sys_role_permission` VALUES ('11', '127');
INSERT INTO `sys_role_permission` VALUES ('12', '127');
INSERT INTO `sys_role_permission` VALUES ('14', '127');
INSERT INTO `sys_role_permission` VALUES ('15', '127');
INSERT INTO `sys_role_permission` VALUES ('1', '128');
INSERT INTO `sys_role_permission` VALUES ('2', '128');
INSERT INTO `sys_role_permission` VALUES ('6', '128');
INSERT INTO `sys_role_permission` VALUES ('11', '128');
INSERT INTO `sys_role_permission` VALUES ('12', '128');
INSERT INTO `sys_role_permission` VALUES ('13', '128');
INSERT INTO `sys_role_permission` VALUES ('14', '128');
INSERT INTO `sys_role_permission` VALUES ('15', '128');
INSERT INTO `sys_role_permission` VALUES ('1', '130');
INSERT INTO `sys_role_permission` VALUES ('2', '130');
INSERT INTO `sys_role_permission` VALUES ('4', '130');
INSERT INTO `sys_role_permission` VALUES ('11', '130');
INSERT INTO `sys_role_permission` VALUES ('12', '130');
INSERT INTO `sys_role_permission` VALUES ('14', '130');
INSERT INTO `sys_role_permission` VALUES ('15', '130');
INSERT INTO `sys_role_permission` VALUES ('1', '131');
INSERT INTO `sys_role_permission` VALUES ('2', '131');
INSERT INTO `sys_role_permission` VALUES ('4', '131');
INSERT INTO `sys_role_permission` VALUES ('1', '132');
INSERT INTO `sys_role_permission` VALUES ('2', '132');
INSERT INTO `sys_role_permission` VALUES ('4', '132');
INSERT INTO `sys_role_permission` VALUES ('1', '133');
INSERT INTO `sys_role_permission` VALUES ('2', '133');
INSERT INTO `sys_role_permission` VALUES ('4', '133');
INSERT INTO `sys_role_permission` VALUES ('1', '134');
INSERT INTO `sys_role_permission` VALUES ('2', '134');
INSERT INTO `sys_role_permission` VALUES ('4', '134');
INSERT INTO `sys_role_permission` VALUES ('11', '134');
INSERT INTO `sys_role_permission` VALUES ('12', '134');
INSERT INTO `sys_role_permission` VALUES ('13', '134');
INSERT INTO `sys_role_permission` VALUES ('14', '134');
INSERT INTO `sys_role_permission` VALUES ('15', '134');
INSERT INTO `sys_role_permission` VALUES ('1', '135');
INSERT INTO `sys_role_permission` VALUES ('2', '135');
INSERT INTO `sys_role_permission` VALUES ('4', '135');
INSERT INTO `sys_role_permission` VALUES ('1', '136');
INSERT INTO `sys_role_permission` VALUES ('2', '136');
INSERT INTO `sys_role_permission` VALUES ('4', '136');
INSERT INTO `sys_role_permission` VALUES ('1', '137');
INSERT INTO `sys_role_permission` VALUES ('2', '137');
INSERT INTO `sys_role_permission` VALUES ('4', '137');
INSERT INTO `sys_role_permission` VALUES ('1', '138');
INSERT INTO `sys_role_permission` VALUES ('2', '138');
INSERT INTO `sys_role_permission` VALUES ('4', '138');
INSERT INTO `sys_role_permission` VALUES ('6', '138');
INSERT INTO `sys_role_permission` VALUES ('11', '138');
INSERT INTO `sys_role_permission` VALUES ('12', '138');
INSERT INTO `sys_role_permission` VALUES ('13', '138');
INSERT INTO `sys_role_permission` VALUES ('14', '138');
INSERT INTO `sys_role_permission` VALUES ('15', '138');
INSERT INTO `sys_role_permission` VALUES ('1', '139');
INSERT INTO `sys_role_permission` VALUES ('2', '139');
INSERT INTO `sys_role_permission` VALUES ('4', '139');
INSERT INTO `sys_role_permission` VALUES ('15', '139');
INSERT INTO `sys_role_permission` VALUES ('1', '140');
INSERT INTO `sys_role_permission` VALUES ('2', '140');
INSERT INTO `sys_role_permission` VALUES ('4', '140');
INSERT INTO `sys_role_permission` VALUES ('15', '140');
INSERT INTO `sys_role_permission` VALUES ('1', '141');
INSERT INTO `sys_role_permission` VALUES ('2', '141');
INSERT INTO `sys_role_permission` VALUES ('4', '141');
INSERT INTO `sys_role_permission` VALUES ('15', '141');
INSERT INTO `sys_role_permission` VALUES ('1', '142');
INSERT INTO `sys_role_permission` VALUES ('2', '142');
INSERT INTO `sys_role_permission` VALUES ('6', '142');
INSERT INTO `sys_role_permission` VALUES ('11', '142');
INSERT INTO `sys_role_permission` VALUES ('12', '142');
INSERT INTO `sys_role_permission` VALUES ('13', '142');
INSERT INTO `sys_role_permission` VALUES ('14', '142');
INSERT INTO `sys_role_permission` VALUES ('15', '142');
INSERT INTO `sys_role_permission` VALUES ('1', '143');
INSERT INTO `sys_role_permission` VALUES ('2', '143');
INSERT INTO `sys_role_permission` VALUES ('15', '143');
INSERT INTO `sys_role_permission` VALUES ('1', '144');
INSERT INTO `sys_role_permission` VALUES ('2', '144');
INSERT INTO `sys_role_permission` VALUES ('15', '144');
INSERT INTO `sys_role_permission` VALUES ('1', '145');
INSERT INTO `sys_role_permission` VALUES ('2', '145');
INSERT INTO `sys_role_permission` VALUES ('15', '145');
INSERT INTO `sys_role_permission` VALUES ('1', '146');
INSERT INTO `sys_role_permission` VALUES ('2', '146');
INSERT INTO `sys_role_permission` VALUES ('4', '146');
INSERT INTO `sys_role_permission` VALUES ('11', '146');
INSERT INTO `sys_role_permission` VALUES ('12', '146');
INSERT INTO `sys_role_permission` VALUES ('14', '146');
INSERT INTO `sys_role_permission` VALUES ('15', '146');
INSERT INTO `sys_role_permission` VALUES ('1', '147');
INSERT INTO `sys_role_permission` VALUES ('2', '147');
INSERT INTO `sys_role_permission` VALUES ('4', '147');
INSERT INTO `sys_role_permission` VALUES ('14', '147');
INSERT INTO `sys_role_permission` VALUES ('1', '148');
INSERT INTO `sys_role_permission` VALUES ('2', '148');
INSERT INTO `sys_role_permission` VALUES ('4', '148');
INSERT INTO `sys_role_permission` VALUES ('14', '148');
INSERT INTO `sys_role_permission` VALUES ('1', '149');
INSERT INTO `sys_role_permission` VALUES ('2', '149');
INSERT INTO `sys_role_permission` VALUES ('4', '149');
INSERT INTO `sys_role_permission` VALUES ('14', '149');
INSERT INTO `sys_role_permission` VALUES ('1', '150');
INSERT INTO `sys_role_permission` VALUES ('2', '150');
INSERT INTO `sys_role_permission` VALUES ('4', '150');
INSERT INTO `sys_role_permission` VALUES ('11', '150');
INSERT INTO `sys_role_permission` VALUES ('12', '150');
INSERT INTO `sys_role_permission` VALUES ('14', '150');
INSERT INTO `sys_role_permission` VALUES ('15', '150');
INSERT INTO `sys_role_permission` VALUES ('1', '151');
INSERT INTO `sys_role_permission` VALUES ('2', '151');
INSERT INTO `sys_role_permission` VALUES ('4', '151');
INSERT INTO `sys_role_permission` VALUES ('14', '151');
INSERT INTO `sys_role_permission` VALUES ('1', '152');
INSERT INTO `sys_role_permission` VALUES ('2', '152');
INSERT INTO `sys_role_permission` VALUES ('4', '152');
INSERT INTO `sys_role_permission` VALUES ('14', '152');
INSERT INTO `sys_role_permission` VALUES ('1', '153');
INSERT INTO `sys_role_permission` VALUES ('2', '153');
INSERT INTO `sys_role_permission` VALUES ('4', '153');
INSERT INTO `sys_role_permission` VALUES ('14', '153');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT '1' COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `type` int(255) DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sys_user_loginname` (`loginname`) USING BTREE COMMENT '登陆名称唯一'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '系统管理员', 'system', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '系统管理员', '1', '1', '0', '2022-04-05/DA2FC5B0C31942198FF12803F006B7A4.png', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('2', '超级管理员', 'wdf', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '超级管理员', '1', '2', '0', '2022-04-05/DA2FC5B0C31942198FF12803F006B7A4.png', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('3', '管理员', 'maple', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '管理员', '1', '3', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('4', '数据库管理员', 'base00', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '数据库管理员', '1', '4', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('5', '客户管理员', 'base01', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '客户管理员', '1', '5', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('6', '基站管理员', 'base02', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '基站管理员', '1', '6', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('7', '仓库管理员', 'base03', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '仓库管理员', '1', '7', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('8', '中国移动', 'mobile', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '中国移动', '移动运营商', '1', '8', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('9', '华为', 'huawei', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '华为', '华为供应商', '1', '9', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('10', '中通', 'zhongtong', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '中通', '中通施工方', '1', '10', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('11', '张生', 'zhang001', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '中通', '中通业维', '1', '11', '1', '2020-03-08/0F8C9E01C1DF4A60BB0E2747F67D03BF.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('12', 'test', 'test', '532ac00e86893901af5f0be6b704dbc7', '广东江门', '本部', '测试', '1', '12', '1', '2022-05-07/8EEAEC79DABC413FAAA988EF445612C0.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE,
  KEY `FK_sys_user_role_1` (`rid`) USING BTREE,
  CONSTRAINT `FK_sys_user_role_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sys_user_role_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('3', '1');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('12', '2');
INSERT INTO `sys_user_role` VALUES ('8', '3');
INSERT INTO `sys_user_role` VALUES ('9', '5');
INSERT INTO `sys_user_role` VALUES ('10', '6');
INSERT INTO `sys_user_role` VALUES ('11', '7');
INSERT INTO `sys_user_role` VALUES ('7', '8');
INSERT INTO `sys_user_role` VALUES ('6', '9');
INSERT INTO `sys_user_role` VALUES ('5', '10');
