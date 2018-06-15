/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100125
Source Host           : localhost:3306
Source Database       : v1

Target Server Type    : MYSQL
Target Server Version : 100125
File Encoding         : 65001

Date: 2018-06-15 15:54:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for joel_acform
-- ----------------------------
DROP TABLE IF EXISTS `joel_acform`;
CREATE TABLE `joel_acform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_acform
-- ----------------------------
INSERT INTO `joel_acform` VALUES ('11', null, '2', '幸运大转盘', '', '23,24,25,26,', null, '1453376357');

-- ----------------------------
-- Table structure for joel_acform_data
-- ----------------------------
DROP TABLE IF EXISTS `joel_acform_data`;
CREATE TABLE `joel_acform_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_acform_data
-- ----------------------------

-- ----------------------------
-- Table structure for joel_acform_fields
-- ----------------------------
DROP TABLE IF EXISTS `joel_acform_fields`;
CREATE TABLE `joel_acform_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1:单行文本,2:多行文本,3:单选,4:多选,5:下拉框,6:时间',
  `place` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `sorts` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_acform_fields
-- ----------------------------
INSERT INTO `joel_acform_fields` VALUES ('23', null, '姓名', 'name', 'text', '', '', null, '0');
INSERT INTO `joel_acform_fields` VALUES ('24', null, '性别', 'sex', 'text', '', '', null, '0');
INSERT INTO `joel_acform_fields` VALUES ('25', null, '地址', 'address', 'text', '', '', null, '0');
INSERT INTO `joel_acform_fields` VALUES ('26', null, '电话', 'tel', 'text', null, null, null, '0');

-- ----------------------------
-- Table structure for joel_admin
-- ----------------------------
DROP TABLE IF EXISTS `joel_admin`;
CREATE TABLE `joel_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT '管理员',
  `cctime` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_admin
-- ----------------------------
INSERT INTO `joel_admin` VALUES ('1', 'joel', 'f8082adf30e29601cd49cc435d81b51b', '管理员', '0', '1');

-- ----------------------------
-- Table structure for joel_adminlog_login
-- ----------------------------
DROP TABLE IF EXISTS `joel_adminlog_login`;
CREATE TABLE `joel_adminlog_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_adminlog_login
-- ----------------------------
INSERT INTO `joel_adminlog_login` VALUES ('2001', '10', 'pengweibing', '101.81.46.41', '1452756075', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2002', '5', 'zhouyibin', '101.81.46.41', '1452756197', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2003', '1', 'admin', '112.65.0.155', '1452759301', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2004', '8', 'zhengqianli', '101.81.44.112', '1452766291', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2005', '8', 'zhengqianli', '101.81.44.112', '1452776722', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2006', '8', 'zhengqianli', '101.81.44.112', '1452788154', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2007', '5', 'zhouyibin', '101.81.46.41', '1452817502', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2008', '10', 'pengweibing', '101.81.46.41', '1452819001', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2009', '1', 'admin', '101.81.44.112', '1452824499', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2010', '5', 'zhouyibin', '101.81.46.41', '1452830953', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2011', '1', 'admin', '101.81.44.112', '1452835138', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2012', '1', 'admin', '101.81.44.112', '1452836822', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2013', '5', 'zhouyibin', '101.81.46.41', '1452839951', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2014', '10', 'pengweibing', '101.81.46.41', '1452846757', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2015', '10', 'pengweibing', '101.81.46.41', '1452906011', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2016', '5', 'zhouyibin', '101.81.46.41', '1452906414', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2017', '1', 'admin', '101.81.44.112', '1452907360', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2018', '1', 'admin', '101.81.15.86', '1452913159', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2019', '5', 'zhouyibin', '101.81.46.41', '1452914478', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2020', '1', 'admin', '180.173.185.228', '1452921466', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2021', '1', 'admin', '180.173.185.228', '1452921574', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2022', null, null, '101.226.65.104', '1452921574', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2023', '1', 'admin', '180.173.185.228', '1452921606', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2024', '8', 'zhengqianli', '58.215.136.93', '1452927485', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2025', '5', 'zhouyibin', '180.173.185.228', '1452928810', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2026', '1', 'admin', '112.65.0.95', '1452929549', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2027', '6', 'admink', '101.90.254.101', '1452930236', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2028', '1', 'admin', '101.81.15.86', '1452940392', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2029', '10', 'pengweibing', '180.173.185.228', '1452992638', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2030', '5', 'zhouyibin', '180.173.185.228', '1452997411', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2031', '1', 'admin', '101.81.44.112', '1453001573', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2032', '10', 'pengweibing', '180.173.185.228', '1453002104', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2033', '10', 'pengweibing', '180.173.185.228', '1453077974', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2034', '7', 'gaochao', '101.81.44.112', '1453078002', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2035', '8', 'zhengqianli', '101.81.44.112', '1453078061', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2036', '6', 'admink', '101.81.44.112', '1453079194', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2037', '5', 'zhouyibin', '180.173.185.228', '1453080646', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2038', '7', 'gaochao', '101.81.44.112', '1453085294', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2039', '1', 'admin', '101.81.44.112', '1453085971', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2040', '8', 'zhengqianli', '101.81.44.112', '1453086410', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2041', '5', 'zhouyibin', '180.173.185.228', '1453089524', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2042', '9', 'liyong', '101.81.44.112', '1453090771', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2043', '6', 'admink', '101.81.44.112', '1453092885', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2044', '8', 'zhengqianli', '101.81.44.112', '1453093436', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2045', '1', 'admin', '101.81.44.112', '1453094497', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2046', '6', 'admink', '101.81.44.112', '1453164922', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2047', '9', 'liyong', '101.81.44.112', '1453165022', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2048', '5', 'zhouyibin', '180.173.185.228', '1453168259', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2049', '5', 'zhouyibin', '180.173.185.228', '1453174856', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2050', '1', 'admin', '112.65.0.95', '1453175102', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2051', '6', 'admink', '101.81.44.112', '1453176745', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2052', '6', 'admink', '101.81.44.112', '1453183578', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2053', '1', 'admin', '101.81.44.112', '1453185231', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2054', '9', 'liyong', '101.81.44.112', '1453186015', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2055', '5', 'zhouyibin', '180.173.185.228', '1453190672', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2056', '1', 'admin', '101.81.44.112', '1453190963', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2057', '8', 'zhengqianli', '101.81.44.112', '1453190967', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2058', '10', 'pengweibing', '101.93.53.75', '1453204236', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2059', '10', 'pengweibing', '101.93.53.75', '1453204278', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2060', '10', 'pengweibing', '180.173.185.228', '1453250652', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2061', '5', 'zhouyibin', '180.173.185.228', '1453250985', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2062', '7', 'gaochao', '101.81.44.112', '1453251338', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2063', '1', 'admin', '101.81.44.112', '1453253198', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2064', '6', 'admink', '101.81.44.112', '1453253430', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2065', '5', 'zhouyibin', '180.173.185.228', '1453257989', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2066', '8', 'zhengqianli', '101.81.44.112', '1453258049', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2067', '1', 'admin', '116.231.36.2', '1453343787', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2068', '4', 'test', '116.231.36.2', '1453355885', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2069', '4', 'test', '116.231.36.2', '1453355908', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2070', '4', 'test', '116.231.36.2', '1453355957', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2071', '4', 'test', '116.231.36.2', '1453356056', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2072', '1', 'admin', '116.231.36.2', '1453356072', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2073', '1', 'admin', '116.231.36.2', '1453356574', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2074', '1', 'admin', '116.231.36.2', '1453360780', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2075', '1', 'admin', '116.231.36.2', '1453361647', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2076', '1', 'admin', '116.231.36.2', '1453369195', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2077', '1', 'admin', '116.231.36.2', '1453369222', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2078', '1', 'admin', '116.231.36.2', '1453369301', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2079', '1', 'admin', '116.231.36.2', '1453369313', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2080', '1', 'admin', '116.231.36.2', '1453372835', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2081', '1', 'admin', '116.231.36.2', '1453372846', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2082', '1', 'admin', '116.231.36.2', '1453373221', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2083', '1', 'admin', '116.231.36.2', '1453373572', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2084', '1', 'admin', '116.231.36.2', '1453375761', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2085', '1', 'admin', '116.231.36.2', '1453375848', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2086', '1', 'admin', '116.231.36.2', '1453375931', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2087', '1', 'admin', '116.231.36.2', '1453375967', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2088', '1', 'admin', '116.231.36.2', '1453377124', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2089', '1', 'admin', '101.81.10.18', '1453426471', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2090', '1', 'admin', '101.81.10.18', '1453428153', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2091', '1', 'admin', '101.81.10.18', '1453428656', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2092', '1', 'admin', '101.81.10.18', '1453439313', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2093', '1', 'admin', '101.81.10.18', '1453439324', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2094', '1', 'admin', '101.81.10.18', '1453444053', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2095', '1', 'admin', '101.81.14.140', '1453684152', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2096', '1', 'admin', '116.231.36.91', '1453687737', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2097', null, null, '116.231.36.91', '1453689481', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2098', '1', 'admin', '116.231.36.91', '1453689486', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2099', '1', 'admin', '116.231.36.91', '1453692652', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2100', '1', 'admin', '116.231.36.91', '1453693105', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2101', '1', 'admin', '116.231.36.91', '1453693154', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2102', '1', 'admin', '116.231.36.91', '1453693324', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2103', null, null, '116.231.36.91', '1453700399', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2104', '1', 'admin', '116.231.36.91', '1453700410', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2105', null, null, '116.231.36.91', '1453704408', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2106', '1', 'admin', '116.231.36.91', '1453704421', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2107', '1', 'admin', '116.231.36.91', '1453704783', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2108', '1', 'admin', '116.231.36.91', '1453705428', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2109', '1', 'admin', '116.231.36.91', '1453706957', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2110', '1', 'admin', '116.231.36.91', '1453707988', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2111', '1', 'admin', '116.231.36.91', '1453708188', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2112', '1', 'admin', '180.168.82.158', '1453709140', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2113', '1', 'admin', '116.231.36.91', '1453714294', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2114', null, null, '116.231.37.37', '1453772053', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2115', '1', 'admin', '116.231.37.37', '1453772059', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2116', '1', 'admin', '116.231.37.37', '1453773951', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2117', '1', 'admin', '116.231.37.37', '1453775618', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2118', '1', 'admin', '116.231.37.37', '1453777231', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2119', '1', 'admin', '116.231.37.37', '1453777728', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2120', '1', 'admin', '116.231.37.37', '1453778084', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2121', '1', 'admin', '116.231.37.37', '1453780064', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2122', null, null, '183.60.62.44', '1453792231', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2123', null, null, '180.153.81.163', '1453792233', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2124', '1', 'admin', '101.81.31.48', '1453804452', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2125', '1', 'admin', '116.231.39.132', '1453862092', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2126', '1', 'admin', '116.231.39.132', '1453868386', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2127', '1', 'admin', '116.231.39.132', '1453872277', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2128', '1', 'admin', '116.231.39.132', '1453878916', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2129', '1', 'admin', '116.231.39.132', '1453880962', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2130', '1', 'admin', '116.231.39.132', '1453881492', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2131', '1', 'admin', '116.231.39.132', '1453884834', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2132', '1', 'admin', '116.231.39.132', '1453885219', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2133', '1', 'admin', '116.231.39.132', '1453886706', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2134', '1', 'admin', '116.231.39.132', '1453886760', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2135', '1', 'admin', '116.231.39.132', '1453887856', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2136', '1', 'admin', '116.231.38.147', '1453975348', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2137', '1', 'admin', '116.231.38.147', '1453975476', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2138', '1', 'admin', '101.81.8.115', '1454031513', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2139', '1', 'admin', '101.81.8.115', '1454032071', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2140', '1', 'admin', '101.81.8.115', '1454043850', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2141', '1', 'admin', '101.81.8.115', '1454047698', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2142', '1', 'admin', '101.81.8.115', '1454048116', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2143', null, null, '101.81.8.115', '1454048145', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2144', null, null, '101.226.33.205', '1454048145', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2145', '1', 'admin', '101.81.8.115', '1454048153', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2146', '1', 'admin', '101.81.8.115', '1454049352', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2147', null, null, '101.81.8.115', '1454050117', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2148', '1', 'admin', '101.81.8.115', '1454050142', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2149', '1', 'admin', '101.81.8.115', '1454051815', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2150', '1', 'admin', '101.81.8.115', '1454063156', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2151', '1', 'admin', '101.81.8.115', '1454069079', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2152', '1', 'admin', '101.81.8.115', '1454072175', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2153', '1', 'admin', '58.243.254.188', '1454147271', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2154', '1', 'admin', '121.239.8.92', '1454148198', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2155', '1', 'admin', '101.81.9.57', '1454224644', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2156', '1', 'admin', '101.81.9.57', '1454292403', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2157', '1', 'admin', '101.81.9.57', '1454292566', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2158', '1', 'admin', '101.81.9.57', '1454294175', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2159', '1', 'admin', '101.81.9.57', '1454298543', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2160', '1', 'admin', '101.81.9.57', '1454307399', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2161', '1', 'admin', '101.81.9.57', '1454308252', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2162', '1', 'admin', '101.81.9.57', '1454309198', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2163', '1', 'admin', '101.81.9.57', '1454323210', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2164', '1', 'admin', '116.231.36.7', '1454377661', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2165', '1', 'admin', '116.231.36.7', '1454378093', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2166', '1', 'admin', '116.231.36.7', '1454381403', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2167', null, null, '116.231.36.7', '1454383058', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2168', '1', 'admin', '116.231.36.7', '1454383068', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2169', '1', 'admin', '116.231.36.7', '1454384142', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2170', '1', 'admin', '116.231.36.7', '1454389631', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2171', '1', 'admin', '116.231.36.7', '1454393968', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2172', '1', 'admin', '116.231.36.7', '1454394914', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2173', '1', 'admin', '116.231.36.7', '1454399212', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2174', null, null, '116.231.36.7', '1454405159', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2175', '1', 'admin', '116.231.36.7', '1454405166', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2176', '1', 'admin', '58.37.45.56', '1454410791', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2177', '1', 'admin', '211.161.247.153', '1454429596', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2178', '1', 'admin', '116.231.36.128', '1454468963', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2179', '1', 'admin', '116.231.36.128', '1454477899', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2180', '1', 'admin', '101.81.15.138', '1454571271', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2181', '1', 'admin', '101.81.15.138', '1454580919', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2182', '1', 'admin', '101.81.8.157', '1454640443', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2183', '1', 'admin', '101.81.8.157', '1454647149', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2184', '1', 'admin', '211.161.247.14', '1454684194', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2185', '1', 'admin', '116.231.34.25', '1455431250', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2186', '1', 'admin', '116.231.34.25', '1455432430', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2187', '1', 'admin', '116.231.34.25', '1455435476', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2188', '1', 'admin', '116.231.34.25', '1455435666', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2189', '1', 'admin', '116.231.39.4', '1455502890', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2190', '1', 'admin', '0.0.0.0', '1508726059', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2191', '1', 'admin', '0.0.0.0', '1508811284', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2192', '1', 'admin', '0.0.0.0', '1509073393', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2193', '1', 'admin', '0.0.0.0', '1511320407', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2194', '1', 'admin', '0.0.0.0', '1517540261', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2195', '1', 'admin', '0.0.0.0', '1520303677', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2196', '1', 'admin', '0.0.0.0', '1525847763', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2197', '1', 'admin', '0.0.0.0', '1525856449', '登出');
INSERT INTO `joel_adminlog_login` VALUES ('2198', '1', 'admin', '0.0.0.0', '1526004879', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2199', '1', 'admin', '0.0.0.0', '1526264386', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2200', '1', 'admin', '0.0.0.0', '1526350136', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2201', '1', 'admin', '192.168.0.109', '1526350354', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2202', '1', 'admin', '0.0.0.0', '1526363116', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2203', '1', 'admin', '0.0.0.0', '1526431991', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2204', '1', 'admin', '0.0.0.0', '1526432592', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2205', '1', 'admin', '0.0.0.0', '1526541165', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2206', '1', 'admin', '0.0.0.0', '1526574627', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2207', '1', 'admin', '0.0.0.0', '1526869216', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2208', '1', 'admin', '0.0.0.0', '1526972792', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2209', '1', 'admin', '0.0.0.0', '1526978918', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2210', '1', 'admin', '0.0.0.0', '1526979206', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2211', '1', 'admin', '0.0.0.0', '1526981503', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2212', '1', 'admin', '0.0.0.0', '1527046564', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2213', '1', 'admin', '0.0.0.0', '1527085339', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2214', '1', 'admin', '0.0.0.0', '1527499885', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2215', '1', 'admin', '0.0.0.0', '1527515498', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2216', '1', 'admin', '0.0.0.0', '1527646959', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2217', '1', 'admin', '0.0.0.0', '1528086510', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2218', '1', 'admin', '0.0.0.0', '1528118811', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2219', '1', 'admin', '0.0.0.0', '1528252279', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2220', '1', 'admin', '0.0.0.0', '1528679610', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2221', '1', 'admin', '0.0.0.0', '1528851194', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2222', '1', 'admin', '0.0.0.0', '1528874258', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2223', '1', 'admin', '0.0.0.0', '1528938284', '登入');
INSERT INTO `joel_adminlog_login` VALUES ('2224', '1', 'admin', '0.0.0.0', '1529032947', '登入');

-- ----------------------------
-- Table structure for joel_adminlog_order
-- ----------------------------
DROP TABLE IF EXISTS `joel_adminlog_order`;
CREATE TABLE `joel_adminlog_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_adminlog_order
-- ----------------------------

-- ----------------------------
-- Table structure for joel_adminlog_vip
-- ----------------------------
DROP TABLE IF EXISTS `joel_adminlog_vip`;
CREATE TABLE `joel_adminlog_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `vipid` varchar(255) DEFAULT NULL,
  `vip` varchar(255) DEFAULT NULL,
  `isfx` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_adminlog_vip
-- ----------------------------

-- ----------------------------
-- Table structure for joel_cms_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_cms_set`;
CREATE TABLE `joel_cms_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `copyright` text,
  `pagesize` int(11) DEFAULT '20',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_cms_set
-- ----------------------------
INSERT INTO `joel_cms_set` VALUES ('1', '大白课堂管理后台', '', '', '20', '1');

-- ----------------------------
-- Table structure for joel_diymenu_cate
-- ----------------------------
DROP TABLE IF EXISTS `joel_diymenu_cate`;
CREATE TABLE `joel_diymenu_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT '0',
  `lv` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `soncate` text,
  `sorts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_diymenu_cate
-- ----------------------------
INSERT INTO `joel_diymenu_cate` VALUES ('1', '0', '0', '1', '微信商城', 'view', 'http://v1.weiqt.cn/wap/shop/labellist', '', null, null, null, '0');
INSERT INTO `joel_diymenu_cate` VALUES ('5', '0', '0', '1', '会员福利', 'view', 'http://v1.weiqt.cn/wap/vip/index', '', null, null, '', '0');

-- ----------------------------
-- Table structure for joel_diymenu_cate_copy
-- ----------------------------
DROP TABLE IF EXISTS `joel_diymenu_cate_copy`;
CREATE TABLE `joel_diymenu_cate_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT '0',
  `lv` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `soncate` text,
  `sorts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_diymenu_cate_copy
-- ----------------------------
INSERT INTO `joel_diymenu_cate_copy` VALUES ('1', '0', '0', '1', '微信商城', 'view', 'http://v1.weiqt.cn/wap/shop/index', '', null, null, null, '0');
INSERT INTO `joel_diymenu_cate_copy` VALUES ('5', '0', '0', '1', '会员福利', 'view', 'http://v1.weiqt.cn/wap/vip/index', '', null, null, '', '0');

-- ----------------------------
-- Table structure for joel_dzp
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp`;
CREATE TABLE `joel_dzp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cjmode` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stime` int(11) DEFAULT NULL,
  `etime` int(11) DEFAULT NULL,
  `cjtimes` int(11) DEFAULT NULL,
  `daytimes` int(11) DEFAULT NULL,
  `cjtype` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dzpimg1` varchar(255) DEFAULT NULL,
  `dzpimg2` varchar(255) DEFAULT NULL,
  `content` text,
  `jf` float DEFAULT NULL,
  `sj` float DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `updown` float DEFAULT NULL,
  `low` int(11) DEFAULT NULL,
  `ifcontrol` int(11) DEFAULT NULL,
  `isform` tinyint(1) DEFAULT NULL,
  `isgz` tinyint(1) DEFAULT NULL,
  `kstime` int(11) DEFAULT NULL,
  `jstime` int(11) DEFAULT NULL,
  `isdh` tinyint(1) DEFAULT NULL,
  `sharetitle` varchar(255) DEFAULT NULL,
  `sharecontent` text,
  `sharesrc` varchar(255) DEFAULT NULL,
  `needsubscribe` tinyint(1) DEFAULT NULL,
  `ifaddr` tinyint(1) DEFAULT NULL,
  `addrpic` varchar(255) DEFAULT NULL,
  `addrurl` varchar(255) DEFAULT NULL,
  `isfx` tinyint(1) DEFAULT NULL,
  `prefx` int(11) DEFAULT NULL,
  `getfxtimes` int(11) DEFAULT NULL,
  `maxfxtimes` int(11) DEFAULT NULL,
  `refreshtime` varchar(255) DEFAULT NULL,
  `zjrepeat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp
-- ----------------------------
INSERT INTO `joel_dzp` VALUES ('2', null, null, '幸运大转盘', '1453369878', '1454236218', '100', '5', null, '1', '1158', '1159', '', '1', '0', '1453370021', '135111111111', '上海', 'jf', '11859', '0.8', '10', '0', '0', '0', '1453369878', '1453369878', null, '幸运大转盘', '幸运大转盘幸运大转盘', '1158', '0', '0', '', 'http://', '0', '0', '0', '0', '', '0');
INSERT INTO `joel_dzp` VALUES ('4', null, null, '大转盘2', '1454053352', '1454226032', '1', '10', null, '0', '1158', '1159', '大转盘2', '2', '0', '1454053490', '021-3456789', '上海虹口大柏树', 'jf', '11863', '0.8', '10', '0', '0', '0', '1454313032', '1454053352', null, '大转盘2', '大转盘2', '', '0', '0', '', 'http://', '0', '0', '0', '0', '', '0');
INSERT INTO `joel_dzp` VALUES ('5', null, null, '大转盘2', '1454053352', '1454226032', '1', '10', null, '1', '1158', '1159', '大转盘2', '2', '0', '1454053493', '021-3456789', '上海虹口大柏树', 'jf', '11863', '0.8', '10', '0', '0', '0', '1454313032', '1454053352', null, '大转盘2', '大转盘2', '', '0', '0', '', 'http://', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for joel_dzp_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_fx`;
CREATE TABLE `joel_dzp_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_dzp_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_log`;
CREATE TABLE `joel_dzp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT '中奖  未中奖  等',
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_dzp_prize
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_prize`;
CREATE TABLE `joel_dzp_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `store` int(11) DEFAULT NULL COMMENT '库存',
  `sell` int(11) DEFAULT NULL COMMENT '已出售',
  `pname` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `odds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_prize
-- ----------------------------
INSERT INTO `joel_dzp_prize` VALUES ('17', '2', null, '5', '4', 'DFG', '1453376071', 'DFG', '0', '1/100000000000000');
INSERT INTO `joel_dzp_prize` VALUES ('18', '2', null, '1', '1', '1', '1453376762', 'iphone', '1', '1/100000000000000');

-- ----------------------------
-- Table structure for joel_dzp_vip
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_vip`;
CREATE TABLE `joel_dzp_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_vip
-- ----------------------------

-- ----------------------------
-- Table structure for joel_dzp_vip_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_vip_fx`;
CREATE TABLE `joel_dzp_vip_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `fxtimes` int(11) DEFAULT NULL,
  `gettimes` int(11) DEFAULT NULL,
  `usetimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_vip_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_dzp_zj
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_zj`;
CREATE TABLE `joel_dzp_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `vipopenid` varchar(255) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `prizename` varchar(255) DEFAULT NULL,
  `viptruename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_zj
-- ----------------------------

-- ----------------------------
-- Table structure for joel_dzp_zj_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_dzp_zj_log`;
CREATE TABLE `joel_dzp_zj_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_dzp_zj_log
-- ----------------------------
INSERT INTO `joel_dzp_zj_log` VALUES ('82', '2', null, '1454048126', '0', '8');

-- ----------------------------
-- Table structure for joel_express_area
-- ----------------------------
DROP TABLE IF EXISTS `joel_express_area`;
CREATE TABLE `joel_express_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `provids` varchar(255) DEFAULT NULL,
  `heavylist` varchar(255) DEFAULT NULL,
  `moneylist` varchar(255) DEFAULT NULL,
  `topmoney` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_express_area
-- ----------------------------
INSERT INTO `joel_express_area` VALUES ('1', '区域1', '|9|10|11|12|', '1,', '5,1,', null, '1450863328');
INSERT INTO `joel_express_area` VALUES ('2', '区域2', '|1|2|13|14|15|16|17|18|19|', '1,2,', '6,2,3,', null, '1451899459');
INSERT INTO `joel_express_area` VALUES ('3', '区域3', '|3|4|6|7|8|20|21|22|23|24|27|', '1,2,', '6,3,6,', null, '1451899472');
INSERT INTO `joel_express_area` VALUES ('4', '区域4', '|5|26|28|29|30|31|', '1,2,', '8,6.5,12,', null, '1451899482');

-- ----------------------------
-- Table structure for joel_express_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_express_set`;
CREATE TABLE `joel_express_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `express` varchar(255) DEFAULT NULL,
  `expressname` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_express_set
-- ----------------------------
INSERT INTO `joel_express_set` VALUES ('1', '5b99c435d51cbb38', 'yunda', '韵达快运', '1451665058');

-- ----------------------------
-- Table structure for joel_fxs_ads
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_ads`;
CREATE TABLE `joel_fxs_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fxs_ads
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fxs_log_sub
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_log_sub`;
CREATE TABLE `joel_fxs_log_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `issub` tinyint(1) DEFAULT '1' COMMENT '1为关注,2为取消关注',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fxs_log_sub
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fxs_log_tj
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_log_tj`;
CREATE TABLE `joel_fxs_log_tj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `xxnickname` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fxs_log_tj
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fxs_syslog
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_syslog`;
CREATE TABLE `joel_fxs_syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `fxprice` float DEFAULT NULL,
  `fxyj` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fxs_syslog
-- ----------------------------
INSERT INTO `joel_fxs_syslog` VALUES ('1', '1', '2', '2', '测试', null, 'test', '100', null, '1', '1526545095');

-- ----------------------------
-- Table structure for joel_fxs_tx
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_tx`;
CREATE TABLE `joel_fxs_tx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `txprice` float DEFAULT NULL,
  `txname` varchar(255) DEFAULT NULL,
  `txmobile` varchar(255) DEFAULT NULL,
  `txyh` varchar(255) DEFAULT NULL,
  `txfh` varchar(255) DEFAULT NULL,
  `txszd` varchar(255) DEFAULT NULL,
  `txcard` varchar(255) DEFAULT NULL,
  `txsqtime` int(11) DEFAULT NULL,
  `txtime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of joel_fxs_tx
-- ----------------------------
INSERT INTO `joel_fxs_tx` VALUES ('2', '1', '100', '发达', '13721218427', '中囯银行', '芜湖市支行', '芜湖市', '6228123456878989825', '1526545095', '1526545194', '2');
INSERT INTO `joel_fxs_tx` VALUES ('3', '1', '900', '发达', '13721218427', '中囯银行', '芜湖市支行', '芜湖市', '6228123456878989825', '1526545223', null, '1');

-- ----------------------------
-- Table structure for joel_fxs_user
-- ----------------------------
DROP TABLE IF EXISTS `joel_fxs_user`;
CREATE TABLE `joel_fxs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `path` varchar(510) DEFAULT '0',
  `lv` int(11) DEFAULT '1',
  `no` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userpass` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `money` float DEFAULT '0',
  `mobile` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `sonnum` int(11) DEFAULT NULL,
  `soncate` text,
  `total_xxyj` float DEFAULT '0',
  `total_xxlink` int(11) DEFAULT '0',
  `total_xxsub` int(11) DEFAULT '0',
  `total_xxunsub` int(11) DEFAULT '0',
  `total_xxbuy` int(11) DEFAULT '0',
  `txname` varchar(255) DEFAULT NULL,
  `txmobile` varchar(255) DEFAULT NULL,
  `txyh` varchar(255) DEFAULT NULL,
  `txfh` varchar(255) DEFAULT NULL,
  `txszd` varchar(255) DEFAULT NULL,
  `txcard` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `sorts` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `qrticket` varchar(520) DEFAULT NULL,
  `qrurl` varchar(520) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fxs_user
-- ----------------------------
INSERT INTO `joel_fxs_user` VALUES ('1', '0', '0', '1', '1', 'test', 'e10adc3949ba59abbe56e057f20f883e', '测试分销', '9000', '13721218427', '', '1', '2,', '0', '0', '0', '0', '0', '发达', '13721218427', '中囯银行', '芜湖市支行', '芜湖市', '6228123456878989825', '1525848030', '0', '1', null, null);
INSERT INTO `joel_fxs_user` VALUES ('2', '1', '0-1', '2', '911', '芜湖大白网络', 'e10adc3949ba59abbe56e057f20f883e', '分销测试', '0', '', '', '1', null, '0', '0', '0', '0', '0', '', '', '', '', '', '', '1526573162', '0', '1', null, null);
INSERT INTO `joel_fxs_user` VALUES ('5', '0', '0', '1', null, '风上司', 'e10adc3949ba59abbe56e057f20f883e', '风上司', '0', null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, null, null, null, '0', '1', null, null);
INSERT INTO `joel_fxs_user` VALUES ('7', '0', '0', '1', null, '1234', 'e10adc3949ba59abbe56e057f20f883e', '1234', '0', null, null, null, null, '0', '0', '0', '0', '0', null, null, null, null, null, null, null, '0', '1', null, null);

-- ----------------------------
-- Table structure for joel_fx_dslog
-- ----------------------------
DROP TABLE IF EXISTS `joel_fx_dslog`;
CREATE TABLE `joel_fx_dslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `fxprice` float DEFAULT NULL,
  `fxyj` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fx_dslog
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fx_log_sub
-- ----------------------------
DROP TABLE IF EXISTS `joel_fx_log_sub`;
CREATE TABLE `joel_fx_log_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `issub` tinyint(1) DEFAULT '1' COMMENT '1为关注,2为取消关注',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fx_log_sub
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fx_log_tj
-- ----------------------------
DROP TABLE IF EXISTS `joel_fx_log_tj`;
CREATE TABLE `joel_fx_log_tj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `xxnickname` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fx_log_tj
-- ----------------------------

-- ----------------------------
-- Table structure for joel_fx_syslog
-- ----------------------------
DROP TABLE IF EXISTS `joel_fx_syslog`;
CREATE TABLE `joel_fx_syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0',
  `oid` int(11) DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `fxprice` float DEFAULT NULL,
  `fxyj` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_fx_syslog
-- ----------------------------

-- ----------------------------
-- Table structure for joel_ggk
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk`;
CREATE TABLE `joel_ggk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cjmode` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stime` int(11) DEFAULT NULL,
  `etime` int(11) DEFAULT NULL,
  `cjtimes` int(11) DEFAULT NULL,
  `daytimes` int(11) DEFAULT NULL,
  `cjtype` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dzpimg` varchar(255) DEFAULT NULL,
  `content` text,
  `jf` float DEFAULT NULL,
  `sj` float DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `updown` float DEFAULT NULL,
  `low` int(11) DEFAULT NULL,
  `ifcontrol` int(11) DEFAULT NULL,
  `isform` tinyint(1) DEFAULT NULL,
  `isgz` tinyint(1) DEFAULT NULL,
  `kstime` int(11) DEFAULT NULL,
  `jstime` int(11) DEFAULT NULL,
  `isdh` tinyint(1) DEFAULT NULL,
  `sharetitle` varchar(255) DEFAULT NULL,
  `sharecontent` text,
  `sharesrc` varchar(255) DEFAULT NULL,
  `needsubscribe` tinyint(1) DEFAULT NULL,
  `ifaddr` tinyint(1) DEFAULT NULL,
  `addrpic` varchar(255) DEFAULT NULL,
  `addrurl` varchar(255) DEFAULT NULL,
  `isfx` tinyint(1) DEFAULT NULL,
  `prefx` int(11) DEFAULT NULL,
  `getfxtimes` int(11) DEFAULT NULL,
  `maxfxtimes` int(11) DEFAULT NULL,
  `refreshtime` varchar(255) DEFAULT NULL,
  `zjrepeat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk
-- ----------------------------
INSERT INTO `joel_ggk` VALUES ('7', null, null, '刮刮卡', '1455379233', '1455753633', '1000', '10', null, '1', '1162', '1.11111111111111111111。;;\r\n2.2222222222222222222。;;\r\n3.333333。;;\r\n4.4。', '0', '0', '1453376829', '1', '1', '', '11859', '0.8', '10', '0', '1', '0', '1453376793', '1453376793', null, '刮刮卡', '刮刮卡刮刮卡刮刮卡', '1162', '0', '0', '', 'http://', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for joel_ggk_acform
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_acform`;
CREATE TABLE `joel_ggk_acform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_acform
-- ----------------------------
INSERT INTO `joel_ggk_acform` VALUES ('13', null, '7', '刮刮卡', '', '23,24,25,26,', null, '1453377441');

-- ----------------------------
-- Table structure for joel_ggk_acform_data
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_acform_data`;
CREATE TABLE `joel_ggk_acform_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_acform_data
-- ----------------------------
INSERT INTO `joel_ggk_acform_data` VALUES ('1', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '', 'vid');
INSERT INTO `joel_ggk_acform_data` VALUES ('2', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '7', 'id');
INSERT INTO `joel_ggk_acform_data` VALUES ('3', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '郑伊凡', 'name');
INSERT INTO `joel_ggk_acform_data` VALUES ('4', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '男', 'sex');
INSERT INTO `joel_ggk_acform_data` VALUES ('5', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '过敏塞特JOJO', 'address');
INSERT INTO `joel_ggk_acform_data` VALUES ('6', null, '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '182', 'tel');

-- ----------------------------
-- Table structure for joel_ggk_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_fx`;
CREATE TABLE `joel_ggk_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_ggk_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_log`;
CREATE TABLE `joel_ggk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT '中奖  未中奖  等',
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_log
-- ----------------------------
INSERT INTO `joel_ggk_log` VALUES ('1', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432637', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('2', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432663', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('3', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432670', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('4', '7', null, 'o-_G9uAiMrptjre7g1TqPmNUkja0', '未中奖', '1455432674', '116.231.34.25', '11894');
INSERT INTO `joel_ggk_log` VALUES ('5', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432675', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('6', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432695', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('7', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432700', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('8', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432704', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('9', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '未中奖', '1455432710', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('10', '7', null, 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '获得三等奖', '1455432714', '116.231.34.25', '11886');
INSERT INTO `joel_ggk_log` VALUES ('11', '7', null, 'o-_G9uAiMrptjre7g1TqPmNUkja0', '获得三等奖', '1455432997', '116.231.34.25', '11894');

-- ----------------------------
-- Table structure for joel_ggk_prize
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_prize`;
CREATE TABLE `joel_ggk_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `store` int(11) DEFAULT NULL COMMENT '库存',
  `sell` int(11) DEFAULT NULL COMMENT '已出售',
  `pname` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `odds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_prize
-- ----------------------------
INSERT INTO `joel_ggk_prize` VALUES ('17', '7', null, '1', '0', 'ipad mini4', '1455432558', '一等奖', '1', '1/100000000000000');
INSERT INTO `joel_ggk_prize` VALUES ('18', '7', null, '10', '0', 'ipod touch 16g', '1455432529', '二等奖', '2', '1/100000');
INSERT INTO `joel_ggk_prize` VALUES ('19', '7', null, '50', '2', '阿萨德', '1455432586', '三等奖', '3', '1/1000');

-- ----------------------------
-- Table structure for joel_ggk_vip
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_vip`;
CREATE TABLE `joel_ggk_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_vip
-- ----------------------------

-- ----------------------------
-- Table structure for joel_ggk_vip_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_vip_fx`;
CREATE TABLE `joel_ggk_vip_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `fxtimes` int(11) DEFAULT NULL,
  `gettimes` int(11) DEFAULT NULL,
  `usetimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_vip_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_ggk_zj
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_zj`;
CREATE TABLE `joel_ggk_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `vipopenid` varchar(255) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `prizename` varchar(255) DEFAULT NULL,
  `viptruename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_zj
-- ----------------------------
INSERT INTO `joel_ggk_zj` VALUES ('1', '7', null, '11886', '我能在虹桥路飙车', 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '19', '阿萨德', null, null, null, '1455432714', '116.231.34.25', '56c0240a68937');
INSERT INTO `joel_ggk_zj` VALUES ('2', '7', null, '11894', '忘忧草', 'o-_G9uAiMrptjre7g1TqPmNUkja0', '19', '阿萨德', null, null, null, '1455432997', '116.231.34.25', '56c02525a562e');

-- ----------------------------
-- Table structure for joel_ggk_zj_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_ggk_zj_log`;
CREATE TABLE `joel_ggk_zj_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ggk_zj_log
-- ----------------------------
INSERT INTO `joel_ggk_zj_log` VALUES ('1', '7', null, '1455432637', '11859', '0');

-- ----------------------------
-- Table structure for joel_jys_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_jys_log`;
CREATE TABLE `joel_jys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `cutnum` float DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_jys_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_location_area
-- ----------------------------
DROP TABLE IF EXISTS `joel_location_area`;
CREATE TABLE `joel_location_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2998 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_location_area
-- ----------------------------
INSERT INTO `joel_location_area` VALUES ('1', '1', '东城区', '100010');
INSERT INTO `joel_location_area` VALUES ('2', '1', '西城区', '100032');
INSERT INTO `joel_location_area` VALUES ('3', '1', '崇文区', '100061');
INSERT INTO `joel_location_area` VALUES ('4', '1', '宣武区', '100054');
INSERT INTO `joel_location_area` VALUES ('5', '1', '朝阳区', '100020');
INSERT INTO `joel_location_area` VALUES ('6', '1', '丰台区', '100071');
INSERT INTO `joel_location_area` VALUES ('7', '1', '石景山区', '100043');
INSERT INTO `joel_location_area` VALUES ('8', '1', '海淀区', '100089');
INSERT INTO `joel_location_area` VALUES ('9', '1', '门头沟区', '102300');
INSERT INTO `joel_location_area` VALUES ('10', '1', '房山区', '102488');
INSERT INTO `joel_location_area` VALUES ('11', '1', '通州区', '101100');
INSERT INTO `joel_location_area` VALUES ('12', '1', '顺义区', '101300');
INSERT INTO `joel_location_area` VALUES ('13', '1', '昌平区', '102200');
INSERT INTO `joel_location_area` VALUES ('14', '1', '大兴区', '102600');
INSERT INTO `joel_location_area` VALUES ('15', '1', '怀柔区', '101400');
INSERT INTO `joel_location_area` VALUES ('16', '1', '平谷区', '101200');
INSERT INTO `joel_location_area` VALUES ('17', '1', '密云县', '101500');
INSERT INTO `joel_location_area` VALUES ('18', '1', '延庆县', '102100');
INSERT INTO `joel_location_area` VALUES ('19', '2', '和平区', '300041');
INSERT INTO `joel_location_area` VALUES ('20', '2', '河东区', '300171');
INSERT INTO `joel_location_area` VALUES ('21', '2', '河西区', '300202');
INSERT INTO `joel_location_area` VALUES ('22', '2', '南开区', '300100');
INSERT INTO `joel_location_area` VALUES ('23', '2', '河北区', '300143');
INSERT INTO `joel_location_area` VALUES ('24', '2', '红桥区', '300131');
INSERT INTO `joel_location_area` VALUES ('25', '2', '塘沽区', '300450');
INSERT INTO `joel_location_area` VALUES ('26', '2', '汉沽区', '300480');
INSERT INTO `joel_location_area` VALUES ('27', '2', '大港区', '300270');
INSERT INTO `joel_location_area` VALUES ('28', '2', '东丽区', '300300');
INSERT INTO `joel_location_area` VALUES ('29', '2', '西青区', '300380');
INSERT INTO `joel_location_area` VALUES ('30', '2', '津南区', '300350');
INSERT INTO `joel_location_area` VALUES ('31', '2', '北辰区', '300400');
INSERT INTO `joel_location_area` VALUES ('32', '2', '武清区', '301700');
INSERT INTO `joel_location_area` VALUES ('33', '2', '宝坻区', '301800');
INSERT INTO `joel_location_area` VALUES ('34', '2', '宁河县', '301500');
INSERT INTO `joel_location_area` VALUES ('35', '2', '静海县', '301600');
INSERT INTO `joel_location_area` VALUES ('36', '2', '蓟县', '301900');
INSERT INTO `joel_location_area` VALUES ('37', '2', '保税区', '300308');
INSERT INTO `joel_location_area` VALUES ('38', '2', '经济技术开发区', '300457');
INSERT INTO `joel_location_area` VALUES ('39', '2', '高新区', '300384');
INSERT INTO `joel_location_area` VALUES ('40', '2', '滨海新区', '300457');
INSERT INTO `joel_location_area` VALUES ('41', '3', '长安区', '050011');
INSERT INTO `joel_location_area` VALUES ('42', '3', '桥东区', '050011');
INSERT INTO `joel_location_area` VALUES ('43', '3', '桥西区', '050051');
INSERT INTO `joel_location_area` VALUES ('44', '3', '新华区', '050051');
INSERT INTO `joel_location_area` VALUES ('45', '3', '井陉矿区', '050100');
INSERT INTO `joel_location_area` VALUES ('46', '3', '裕华区', '050081');
INSERT INTO `joel_location_area` VALUES ('47', '3', '井陉县', '050300');
INSERT INTO `joel_location_area` VALUES ('48', '3', '正定县', '050800');
INSERT INTO `joel_location_area` VALUES ('49', '3', '栾城县', '051430');
INSERT INTO `joel_location_area` VALUES ('50', '3', '行唐县', '050600');
INSERT INTO `joel_location_area` VALUES ('51', '3', '灵寿县', '050500');
INSERT INTO `joel_location_area` VALUES ('52', '3', '高邑县', '051330');
INSERT INTO `joel_location_area` VALUES ('53', '3', '深泽县', '052560');
INSERT INTO `joel_location_area` VALUES ('54', '3', '赞皇县', '051230');
INSERT INTO `joel_location_area` VALUES ('55', '3', '无极县', '052400');
INSERT INTO `joel_location_area` VALUES ('56', '3', '平山县', '050400');
INSERT INTO `joel_location_area` VALUES ('57', '3', '元氏县', '051130');
INSERT INTO `joel_location_area` VALUES ('58', '3', '赵县', '051530');
INSERT INTO `joel_location_area` VALUES ('59', '3', '辛集市', '052300');
INSERT INTO `joel_location_area` VALUES ('60', '3', '藁城市', '052160');
INSERT INTO `joel_location_area` VALUES ('61', '3', '晋州市', '052200');
INSERT INTO `joel_location_area` VALUES ('62', '3', '新乐市', '050700');
INSERT INTO `joel_location_area` VALUES ('63', '3', '鹿泉市', '050200');
INSERT INTO `joel_location_area` VALUES ('64', '3', '高新技术开发区', '050035');
INSERT INTO `joel_location_area` VALUES ('65', '4', '路南区', '063017');
INSERT INTO `joel_location_area` VALUES ('66', '4', '路北区', '063015');
INSERT INTO `joel_location_area` VALUES ('67', '4', '古冶区', '063104');
INSERT INTO `joel_location_area` VALUES ('68', '4', '开平区', '063021');
INSERT INTO `joel_location_area` VALUES ('69', '4', '丰南区', '063300');
INSERT INTO `joel_location_area` VALUES ('70', '4', '丰润区', '064000');
INSERT INTO `joel_location_area` VALUES ('71', '4', '滦县', '063700');
INSERT INTO `joel_location_area` VALUES ('72', '4', '滦南县', '063500');
INSERT INTO `joel_location_area` VALUES ('73', '4', '乐亭县', '063600');
INSERT INTO `joel_location_area` VALUES ('74', '4', '迁西县', '064300');
INSERT INTO `joel_location_area` VALUES ('75', '4', '玉田县', '064100');
INSERT INTO `joel_location_area` VALUES ('76', '4', '唐海县', '063200');
INSERT INTO `joel_location_area` VALUES ('77', '4', '遵化市', '064200');
INSERT INTO `joel_location_area` VALUES ('78', '4', '迁安市', '064400');
INSERT INTO `joel_location_area` VALUES ('79', '4', '高新区', '063020');
INSERT INTO `joel_location_area` VALUES ('80', '4', '汉沽管理区', '301501');
INSERT INTO `joel_location_area` VALUES ('81', '4', '海港开发区', '063600');
INSERT INTO `joel_location_area` VALUES ('82', '4', '芦台开发区', '301501');
INSERT INTO `joel_location_area` VALUES ('83', '4', '南堡开发区', '063305');
INSERT INTO `joel_location_area` VALUES ('84', '4', '曹妃甸工业区', '063200');
INSERT INTO `joel_location_area` VALUES ('85', '5', '海港区', '066000');
INSERT INTO `joel_location_area` VALUES ('86', '5', '山海关区', '066200');
INSERT INTO `joel_location_area` VALUES ('87', '5', '北戴河区', '066100');
INSERT INTO `joel_location_area` VALUES ('88', '5', '青龙满族自治县', '066500');
INSERT INTO `joel_location_area` VALUES ('89', '5', '昌黎县', '066600');
INSERT INTO `joel_location_area` VALUES ('90', '5', '抚宁县', '066300');
INSERT INTO `joel_location_area` VALUES ('91', '5', '卢龙县', '066400');
INSERT INTO `joel_location_area` VALUES ('92', '5', '经济技术开发区', '066004');
INSERT INTO `joel_location_area` VALUES ('93', '6', '邯山区', '056001');
INSERT INTO `joel_location_area` VALUES ('94', '6', '丛台区', '056004');
INSERT INTO `joel_location_area` VALUES ('95', '6', '复兴区', '056003');
INSERT INTO `joel_location_area` VALUES ('96', '6', '峰峰矿区', '056200');
INSERT INTO `joel_location_area` VALUES ('97', '6', '邯郸县', '056100');
INSERT INTO `joel_location_area` VALUES ('98', '6', '临漳县', '056600');
INSERT INTO `joel_location_area` VALUES ('99', '6', '成安县', '056700');
INSERT INTO `joel_location_area` VALUES ('100', '6', '大名县', '056900');
INSERT INTO `joel_location_area` VALUES ('101', '6', '涉县', '056400');
INSERT INTO `joel_location_area` VALUES ('102', '6', '磁县', '056500');
INSERT INTO `joel_location_area` VALUES ('103', '6', '肥乡县', '057550');
INSERT INTO `joel_location_area` VALUES ('104', '6', '永年县', '057150');
INSERT INTO `joel_location_area` VALUES ('105', '6', '邱县', '057450');
INSERT INTO `joel_location_area` VALUES ('106', '6', '鸡泽县', '057350');
INSERT INTO `joel_location_area` VALUES ('107', '6', '广平县', '057650');
INSERT INTO `joel_location_area` VALUES ('108', '6', '馆陶县', '057750');
INSERT INTO `joel_location_area` VALUES ('109', '6', '魏县', '056800');
INSERT INTO `joel_location_area` VALUES ('110', '6', '曲周县', '057250');
INSERT INTO `joel_location_area` VALUES ('111', '6', '武安市', '056300');
INSERT INTO `joel_location_area` VALUES ('112', '6', '经济开发区', '056002');
INSERT INTO `joel_location_area` VALUES ('113', '7', '桥东区', '054001');
INSERT INTO `joel_location_area` VALUES ('114', '7', '桥西区', '054000');
INSERT INTO `joel_location_area` VALUES ('115', '7', '邢台县', '054001');
INSERT INTO `joel_location_area` VALUES ('116', '7', '临城县', '054300');
INSERT INTO `joel_location_area` VALUES ('117', '7', '内丘县', '054200');
INSERT INTO `joel_location_area` VALUES ('118', '7', '柏乡县', '055450');
INSERT INTO `joel_location_area` VALUES ('119', '7', '隆尧县', '055350');
INSERT INTO `joel_location_area` VALUES ('120', '7', '任县', '055150');
INSERT INTO `joel_location_area` VALUES ('121', '7', '南和县', '054400');
INSERT INTO `joel_location_area` VALUES ('122', '7', '宁晋县', '055550');
INSERT INTO `joel_location_area` VALUES ('123', '7', '巨鹿县', '055250');
INSERT INTO `joel_location_area` VALUES ('124', '7', '新河县', '051730');
INSERT INTO `joel_location_area` VALUES ('125', '7', '广宗县', '054600');
INSERT INTO `joel_location_area` VALUES ('126', '7', '平乡县', '054500');
INSERT INTO `joel_location_area` VALUES ('127', '7', '威县', '054700');
INSERT INTO `joel_location_area` VALUES ('128', '7', '清河县', '054800');
INSERT INTO `joel_location_area` VALUES ('129', '7', '临西县', '054900');
INSERT INTO `joel_location_area` VALUES ('130', '7', '南宫市', '055750');
INSERT INTO `joel_location_area` VALUES ('131', '7', '沙河市', '054100');
INSERT INTO `joel_location_area` VALUES ('132', '8', '新市区', '071052');
INSERT INTO `joel_location_area` VALUES ('133', '8', '南市区', '071000');
INSERT INTO `joel_location_area` VALUES ('134', '8', '北市区', '071000');
INSERT INTO `joel_location_area` VALUES ('135', '8', '满城县', '072150');
INSERT INTO `joel_location_area` VALUES ('136', '8', '清苑县', '071100');
INSERT INTO `joel_location_area` VALUES ('137', '8', '涞水县', '074100');
INSERT INTO `joel_location_area` VALUES ('138', '8', '阜平县', '073200');
INSERT INTO `joel_location_area` VALUES ('139', '8', '徐水县', '072550');
INSERT INTO `joel_location_area` VALUES ('140', '8', '定兴县', '072650');
INSERT INTO `joel_location_area` VALUES ('141', '8', '唐县', '072350');
INSERT INTO `joel_location_area` VALUES ('142', '8', '高阳县', '071500');
INSERT INTO `joel_location_area` VALUES ('143', '8', '容城县', '071700');
INSERT INTO `joel_location_area` VALUES ('144', '8', '涞源县', '074300');
INSERT INTO `joel_location_area` VALUES ('145', '8', '望都县', '072450');
INSERT INTO `joel_location_area` VALUES ('146', '8', '安新县', '071600');
INSERT INTO `joel_location_area` VALUES ('147', '8', '易县', '074200');
INSERT INTO `joel_location_area` VALUES ('148', '8', '曲阳县', '073100');
INSERT INTO `joel_location_area` VALUES ('149', '8', '蠡县', '071400');
INSERT INTO `joel_location_area` VALUES ('150', '8', '顺平县', '072250');
INSERT INTO `joel_location_area` VALUES ('151', '8', '博野县', '071300');
INSERT INTO `joel_location_area` VALUES ('152', '8', '雄县', '071800');
INSERT INTO `joel_location_area` VALUES ('153', '8', '涿州市', '072750');
INSERT INTO `joel_location_area` VALUES ('154', '8', '定州市', '073000');
INSERT INTO `joel_location_area` VALUES ('155', '8', '安国市', '071200');
INSERT INTO `joel_location_area` VALUES ('156', '8', '高碑店市', '074000');
INSERT INTO `joel_location_area` VALUES ('157', '9', '桥东区', '075000');
INSERT INTO `joel_location_area` VALUES ('158', '9', '桥西区', '075061');
INSERT INTO `joel_location_area` VALUES ('159', '9', '宣化区', '075100');
INSERT INTO `joel_location_area` VALUES ('160', '9', '下花园区', '075300');
INSERT INTO `joel_location_area` VALUES ('161', '9', '宣化县', '075100');
INSERT INTO `joel_location_area` VALUES ('162', '9', '张北县', '076450');
INSERT INTO `joel_location_area` VALUES ('163', '9', '康保县', '076650');
INSERT INTO `joel_location_area` VALUES ('164', '9', '沽源县', '076550');
INSERT INTO `joel_location_area` VALUES ('165', '9', '尚义县', '076750');
INSERT INTO `joel_location_area` VALUES ('166', '9', '蔚县', '075700');
INSERT INTO `joel_location_area` VALUES ('167', '9', '阳原县', '075800');
INSERT INTO `joel_location_area` VALUES ('168', '9', '怀安县', '076150');
INSERT INTO `joel_location_area` VALUES ('169', '9', '万全县', '076250');
INSERT INTO `joel_location_area` VALUES ('170', '9', '怀来县', '075400');
INSERT INTO `joel_location_area` VALUES ('171', '9', '涿鹿县', '075600');
INSERT INTO `joel_location_area` VALUES ('172', '9', '赤城县', '075500');
INSERT INTO `joel_location_area` VALUES ('173', '9', '崇礼县', '076350');
INSERT INTO `joel_location_area` VALUES ('174', '10', '双桥区', '067000');
INSERT INTO `joel_location_area` VALUES ('175', '10', '双滦区', '067000');
INSERT INTO `joel_location_area` VALUES ('176', '10', '鹰手营子矿区', '067200');
INSERT INTO `joel_location_area` VALUES ('177', '10', '承德县', '067400');
INSERT INTO `joel_location_area` VALUES ('178', '10', '兴隆县', '067300');
INSERT INTO `joel_location_area` VALUES ('179', '10', '平泉县', '067500');
INSERT INTO `joel_location_area` VALUES ('180', '10', '滦平县', '068250');
INSERT INTO `joel_location_area` VALUES ('181', '10', '隆化县', '068150');
INSERT INTO `joel_location_area` VALUES ('182', '10', '丰宁满族自治县', '068350');
INSERT INTO `joel_location_area` VALUES ('183', '10', '宽城满族自治县', '067600');
INSERT INTO `joel_location_area` VALUES ('184', '10', '围场满族蒙古族自治县', '068450');
INSERT INTO `joel_location_area` VALUES ('185', '11', '新华区', '061000');
INSERT INTO `joel_location_area` VALUES ('186', '11', '运河区', '061000');
INSERT INTO `joel_location_area` VALUES ('187', '11', '沧县', '061000');
INSERT INTO `joel_location_area` VALUES ('188', '11', '青县', '062650');
INSERT INTO `joel_location_area` VALUES ('189', '11', '东光县', '061600');
INSERT INTO `joel_location_area` VALUES ('190', '11', '海兴县', '061200');
INSERT INTO `joel_location_area` VALUES ('191', '11', '盐山县', '061300');
INSERT INTO `joel_location_area` VALUES ('192', '11', '肃宁县', '062350');
INSERT INTO `joel_location_area` VALUES ('193', '11', '南皮县', '061500');
INSERT INTO `joel_location_area` VALUES ('194', '11', '吴桥县', '061800');
INSERT INTO `joel_location_area` VALUES ('195', '11', '献县', '062250');
INSERT INTO `joel_location_area` VALUES ('196', '11', '孟村回族自治县', '061400');
INSERT INTO `joel_location_area` VALUES ('197', '11', '泊头市', '062150');
INSERT INTO `joel_location_area` VALUES ('198', '11', '任丘市', '062550');
INSERT INTO `joel_location_area` VALUES ('199', '11', '黄骅市', '061100');
INSERT INTO `joel_location_area` VALUES ('200', '11', '河间市', '062450');
INSERT INTO `joel_location_area` VALUES ('201', '12', '安次区', '065000');
INSERT INTO `joel_location_area` VALUES ('202', '12', '广阳区', '065000');
INSERT INTO `joel_location_area` VALUES ('203', '12', '固安县', '065500');
INSERT INTO `joel_location_area` VALUES ('204', '12', '永清县', '065600');
INSERT INTO `joel_location_area` VALUES ('205', '12', '香河县', '065400');
INSERT INTO `joel_location_area` VALUES ('206', '12', '大城县', '065900');
INSERT INTO `joel_location_area` VALUES ('207', '12', '文安县', '065800');
INSERT INTO `joel_location_area` VALUES ('208', '12', '大厂回族自治县', '065300');
INSERT INTO `joel_location_area` VALUES ('209', '12', '霸州市', '065700');
INSERT INTO `joel_location_area` VALUES ('210', '12', '三河市', '065200');
INSERT INTO `joel_location_area` VALUES ('211', '12', '开发区', '065001');
INSERT INTO `joel_location_area` VALUES ('212', '13', '桃城区', '053000');
INSERT INTO `joel_location_area` VALUES ('213', '13', '枣强县', '053100');
INSERT INTO `joel_location_area` VALUES ('214', '13', '武邑县', '053400');
INSERT INTO `joel_location_area` VALUES ('215', '13', '武强县', '053300');
INSERT INTO `joel_location_area` VALUES ('216', '13', '饶阳县', '053900');
INSERT INTO `joel_location_area` VALUES ('217', '13', '安平县', '053600');
INSERT INTO `joel_location_area` VALUES ('218', '13', '故城县', '253800');
INSERT INTO `joel_location_area` VALUES ('219', '13', '景县', '053500');
INSERT INTO `joel_location_area` VALUES ('220', '13', '阜城县', '053700');
INSERT INTO `joel_location_area` VALUES ('221', '13', '冀州市', '053200');
INSERT INTO `joel_location_area` VALUES ('222', '13', '深州市', '053800');
INSERT INTO `joel_location_area` VALUES ('223', '14', '小店区', '030032');
INSERT INTO `joel_location_area` VALUES ('224', '14', '迎泽区', '030024');
INSERT INTO `joel_location_area` VALUES ('225', '14', '杏花岭区', '030001');
INSERT INTO `joel_location_area` VALUES ('226', '14', '尖草坪区', '030003');
INSERT INTO `joel_location_area` VALUES ('227', '14', '万柏林区', '030027');
INSERT INTO `joel_location_area` VALUES ('228', '14', '晋源区', '030025');
INSERT INTO `joel_location_area` VALUES ('229', '14', '清徐县', '030400');
INSERT INTO `joel_location_area` VALUES ('230', '14', '阳曲县', '030100');
INSERT INTO `joel_location_area` VALUES ('231', '14', '娄烦县', '030300');
INSERT INTO `joel_location_area` VALUES ('232', '14', '古交市', '030200');
INSERT INTO `joel_location_area` VALUES ('233', '15', '城区', '037008');
INSERT INTO `joel_location_area` VALUES ('234', '15', '矿区', '037001');
INSERT INTO `joel_location_area` VALUES ('235', '15', '南郊区', '037001');
INSERT INTO `joel_location_area` VALUES ('236', '15', '新荣区', '037002');
INSERT INTO `joel_location_area` VALUES ('237', '15', '阳高县', '038100');
INSERT INTO `joel_location_area` VALUES ('238', '15', '天镇县', '038200');
INSERT INTO `joel_location_area` VALUES ('239', '15', '广灵县', '037500');
INSERT INTO `joel_location_area` VALUES ('240', '15', '灵丘县', '034400');
INSERT INTO `joel_location_area` VALUES ('241', '15', '浑源县', '037400');
INSERT INTO `joel_location_area` VALUES ('242', '15', '左云县', '037100');
INSERT INTO `joel_location_area` VALUES ('243', '15', '大同县', '037300');
INSERT INTO `joel_location_area` VALUES ('244', '16', '城区', '045000');
INSERT INTO `joel_location_area` VALUES ('245', '16', '矿区', '045000');
INSERT INTO `joel_location_area` VALUES ('246', '16', '郊区', '045011');
INSERT INTO `joel_location_area` VALUES ('247', '16', '平定县', '045200');
INSERT INTO `joel_location_area` VALUES ('248', '16', '盂县', '045100');
INSERT INTO `joel_location_area` VALUES ('249', '17', '城区', '046011');
INSERT INTO `joel_location_area` VALUES ('250', '17', '郊区', '046011');
INSERT INTO `joel_location_area` VALUES ('251', '17', '长治县', '047100');
INSERT INTO `joel_location_area` VALUES ('252', '17', '襄垣县', '046200');
INSERT INTO `joel_location_area` VALUES ('253', '17', '屯留县', '046100');
INSERT INTO `joel_location_area` VALUES ('254', '17', '平顺县', '047400');
INSERT INTO `joel_location_area` VALUES ('255', '17', '黎城县', '047600');
INSERT INTO `joel_location_area` VALUES ('256', '17', '壶关县', '047300');
INSERT INTO `joel_location_area` VALUES ('257', '17', '长子县', '046600');
INSERT INTO `joel_location_area` VALUES ('258', '17', '武乡县', '046300');
INSERT INTO `joel_location_area` VALUES ('259', '17', '沁县', '046400');
INSERT INTO `joel_location_area` VALUES ('260', '17', '沁源县', '046500');
INSERT INTO `joel_location_area` VALUES ('261', '17', '潞城市', '047500');
INSERT INTO `joel_location_area` VALUES ('262', '18', '城区', '048000');
INSERT INTO `joel_location_area` VALUES ('263', '18', '沁水县', '048200');
INSERT INTO `joel_location_area` VALUES ('264', '18', '阳城县', '048100');
INSERT INTO `joel_location_area` VALUES ('265', '18', '陵川县', '048300');
INSERT INTO `joel_location_area` VALUES ('266', '18', '泽州县', '048012');
INSERT INTO `joel_location_area` VALUES ('267', '18', '高平市', '048400');
INSERT INTO `joel_location_area` VALUES ('268', '19', '朔城区', '038500');
INSERT INTO `joel_location_area` VALUES ('269', '19', '平鲁区', '038600');
INSERT INTO `joel_location_area` VALUES ('270', '19', '山阴县', '036900');
INSERT INTO `joel_location_area` VALUES ('271', '19', '应县', '037600');
INSERT INTO `joel_location_area` VALUES ('272', '19', '右玉县', '037200');
INSERT INTO `joel_location_area` VALUES ('273', '19', '怀仁县', '038300');
INSERT INTO `joel_location_area` VALUES ('274', '20', '榆次区', '030600');
INSERT INTO `joel_location_area` VALUES ('275', '20', '榆社县', '031800');
INSERT INTO `joel_location_area` VALUES ('276', '20', '左权县', '032600');
INSERT INTO `joel_location_area` VALUES ('277', '20', '和顺县', '032700');
INSERT INTO `joel_location_area` VALUES ('278', '20', '昔阳县', '045300');
INSERT INTO `joel_location_area` VALUES ('279', '20', '寿阳县', '045400');
INSERT INTO `joel_location_area` VALUES ('280', '20', '太谷县', '030800');
INSERT INTO `joel_location_area` VALUES ('281', '20', '祁县', '030900');
INSERT INTO `joel_location_area` VALUES ('282', '20', '平遥县', '031100');
INSERT INTO `joel_location_area` VALUES ('283', '20', '灵石县', '031300');
INSERT INTO `joel_location_area` VALUES ('284', '20', '介休市', '031200');
INSERT INTO `joel_location_area` VALUES ('285', '21', '盐湖区', '044000');
INSERT INTO `joel_location_area` VALUES ('286', '21', '临猗县', '044100');
INSERT INTO `joel_location_area` VALUES ('287', '21', '万荣县', '044200');
INSERT INTO `joel_location_area` VALUES ('288', '21', '闻喜县', '043800');
INSERT INTO `joel_location_area` VALUES ('289', '21', '稷山县', '043200');
INSERT INTO `joel_location_area` VALUES ('290', '21', '新绛县', '043100');
INSERT INTO `joel_location_area` VALUES ('291', '21', '绛县', '043600');
INSERT INTO `joel_location_area` VALUES ('292', '21', '垣曲县', '043700');
INSERT INTO `joel_location_area` VALUES ('293', '21', '夏县', '044400');
INSERT INTO `joel_location_area` VALUES ('294', '21', '平陆县', '044300');
INSERT INTO `joel_location_area` VALUES ('295', '21', '芮城县', '044600');
INSERT INTO `joel_location_area` VALUES ('296', '21', '永济市', '044500');
INSERT INTO `joel_location_area` VALUES ('297', '21', '河津市', '043300');
INSERT INTO `joel_location_area` VALUES ('298', '22', '忻府区', '034000');
INSERT INTO `joel_location_area` VALUES ('299', '22', '定襄县', '035400');
INSERT INTO `joel_location_area` VALUES ('300', '22', '五台县', '035500');
INSERT INTO `joel_location_area` VALUES ('301', '22', '代县', '034200');
INSERT INTO `joel_location_area` VALUES ('302', '22', '繁峙县', '034300');
INSERT INTO `joel_location_area` VALUES ('303', '22', '宁武县', '036700');
INSERT INTO `joel_location_area` VALUES ('304', '22', '静乐县', '035100');
INSERT INTO `joel_location_area` VALUES ('305', '22', '神池县', '036100');
INSERT INTO `joel_location_area` VALUES ('306', '22', '五寨县', '036200');
INSERT INTO `joel_location_area` VALUES ('307', '22', '岢岚县', '036300');
INSERT INTO `joel_location_area` VALUES ('308', '22', '河曲县', '036500');
INSERT INTO `joel_location_area` VALUES ('309', '22', '保德县', '036600');
INSERT INTO `joel_location_area` VALUES ('310', '22', '偏关县', '036400');
INSERT INTO `joel_location_area` VALUES ('311', '22', '原平市', '034100');
INSERT INTO `joel_location_area` VALUES ('312', '23', '尧都区', '041000');
INSERT INTO `joel_location_area` VALUES ('313', '23', '曲沃县', '043400');
INSERT INTO `joel_location_area` VALUES ('314', '23', '翼城县', '043500');
INSERT INTO `joel_location_area` VALUES ('315', '23', '襄汾县', '041500');
INSERT INTO `joel_location_area` VALUES ('316', '23', '洪洞县', '031600');
INSERT INTO `joel_location_area` VALUES ('317', '23', '古县', '042400');
INSERT INTO `joel_location_area` VALUES ('318', '23', '安泽县', '042500');
INSERT INTO `joel_location_area` VALUES ('319', '23', '浮山县', '042600');
INSERT INTO `joel_location_area` VALUES ('320', '23', '吉县', '042200');
INSERT INTO `joel_location_area` VALUES ('321', '23', '乡宁县', '042100');
INSERT INTO `joel_location_area` VALUES ('322', '23', '大宁县', '042300');
INSERT INTO `joel_location_area` VALUES ('323', '23', '隰县', '041300');
INSERT INTO `joel_location_area` VALUES ('324', '23', '永和县', '041400');
INSERT INTO `joel_location_area` VALUES ('325', '23', '蒲县', '041200');
INSERT INTO `joel_location_area` VALUES ('326', '23', '汾西县', '031500');
INSERT INTO `joel_location_area` VALUES ('327', '23', '侯马市', '043007');
INSERT INTO `joel_location_area` VALUES ('328', '23', '霍州市', '031400');
INSERT INTO `joel_location_area` VALUES ('329', '24', '离石区', '033000');
INSERT INTO `joel_location_area` VALUES ('330', '24', '文水县', '032100');
INSERT INTO `joel_location_area` VALUES ('331', '24', '交城县', '030500');
INSERT INTO `joel_location_area` VALUES ('332', '24', '兴县', '033600');
INSERT INTO `joel_location_area` VALUES ('333', '24', '临县', '033200');
INSERT INTO `joel_location_area` VALUES ('334', '24', '柳林县', '033300');
INSERT INTO `joel_location_area` VALUES ('335', '24', '石楼县', '032500');
INSERT INTO `joel_location_area` VALUES ('336', '24', '岚县', '033500');
INSERT INTO `joel_location_area` VALUES ('337', '24', '方山县', '033100');
INSERT INTO `joel_location_area` VALUES ('338', '24', '中阳县', '033400');
INSERT INTO `joel_location_area` VALUES ('339', '24', '交口县', '032400');
INSERT INTO `joel_location_area` VALUES ('340', '24', '孝义市', '032300');
INSERT INTO `joel_location_area` VALUES ('341', '24', '汾阳市', '032200');
INSERT INTO `joel_location_area` VALUES ('342', '25', '回民区', '010030');
INSERT INTO `joel_location_area` VALUES ('343', '25', '玉泉区', '010020');
INSERT INTO `joel_location_area` VALUES ('344', '25', '新城区', '010030');
INSERT INTO `joel_location_area` VALUES ('345', '25', '赛罕区', '010020');
INSERT INTO `joel_location_area` VALUES ('346', '25', '土默特左旗', '010100');
INSERT INTO `joel_location_area` VALUES ('347', '25', '托克托县', '010200');
INSERT INTO `joel_location_area` VALUES ('348', '25', '和林格尔县', '011500');
INSERT INTO `joel_location_area` VALUES ('349', '25', '清水河县', '011600');
INSERT INTO `joel_location_area` VALUES ('350', '25', '武川县', '011700');
INSERT INTO `joel_location_area` VALUES ('351', '26', '东河区', '014040');
INSERT INTO `joel_location_area` VALUES ('352', '26', '昆都仑区', '014010');
INSERT INTO `joel_location_area` VALUES ('353', '26', '青山区', '014030');
INSERT INTO `joel_location_area` VALUES ('354', '26', '石拐区', '014070');
INSERT INTO `joel_location_area` VALUES ('355', '26', '白云矿区', '014080');
INSERT INTO `joel_location_area` VALUES ('356', '26', '九原区', '014060');
INSERT INTO `joel_location_area` VALUES ('357', '26', '土默特右旗', '014100');
INSERT INTO `joel_location_area` VALUES ('358', '26', '固阳县', '014200');
INSERT INTO `joel_location_area` VALUES ('359', '26', '达尔罕茂明安联合旗', '014500');
INSERT INTO `joel_location_area` VALUES ('360', '27', '海勃湾区', '016000');
INSERT INTO `joel_location_area` VALUES ('361', '27', '海南区', '016030');
INSERT INTO `joel_location_area` VALUES ('362', '27', '乌达区', '016040');
INSERT INTO `joel_location_area` VALUES ('363', '28', '红山区', '024020');
INSERT INTO `joel_location_area` VALUES ('364', '28', '元宝山区', '024076');
INSERT INTO `joel_location_area` VALUES ('365', '28', '松山区', '024005');
INSERT INTO `joel_location_area` VALUES ('366', '28', '阿鲁科尔沁旗', '025550');
INSERT INTO `joel_location_area` VALUES ('367', '28', '巴林左旗', '025450');
INSERT INTO `joel_location_area` VALUES ('368', '28', '巴林右旗', '025150');
INSERT INTO `joel_location_area` VALUES ('369', '28', '林西县', '025250');
INSERT INTO `joel_location_area` VALUES ('370', '28', '克什克腾旗', '025350');
INSERT INTO `joel_location_area` VALUES ('371', '28', '翁牛特旗', '024500');
INSERT INTO `joel_location_area` VALUES ('372', '28', '喀喇沁旗', '024400');
INSERT INTO `joel_location_area` VALUES ('373', '28', '宁城县', '024200');
INSERT INTO `joel_location_area` VALUES ('374', '28', '敖汉旗', '024300');
INSERT INTO `joel_location_area` VALUES ('375', '28', '新城区', '025350');
INSERT INTO `joel_location_area` VALUES ('376', '29', '科尔沁区', '028000');
INSERT INTO `joel_location_area` VALUES ('377', '29', '科尔沁左翼中旗', '029300');
INSERT INTO `joel_location_area` VALUES ('378', '29', '科尔沁左翼后旗', '028100');
INSERT INTO `joel_location_area` VALUES ('379', '29', '开鲁县', '028400');
INSERT INTO `joel_location_area` VALUES ('380', '29', '库伦旗', '028200');
INSERT INTO `joel_location_area` VALUES ('381', '29', '奈曼旗', '028300');
INSERT INTO `joel_location_area` VALUES ('382', '29', '扎鲁特旗', '029100');
INSERT INTO `joel_location_area` VALUES ('383', '29', '霍林郭勒市', '029200');
INSERT INTO `joel_location_area` VALUES ('384', '30', '东胜区', '017000');
INSERT INTO `joel_location_area` VALUES ('385', '30', '达拉特旗', '014300');
INSERT INTO `joel_location_area` VALUES ('386', '30', '准格尔旗', '017100');
INSERT INTO `joel_location_area` VALUES ('387', '30', '鄂托克前旗', '016200');
INSERT INTO `joel_location_area` VALUES ('388', '30', '鄂托克旗', '016100');
INSERT INTO `joel_location_area` VALUES ('389', '30', '杭锦旗', '017400');
INSERT INTO `joel_location_area` VALUES ('390', '30', '乌审旗', '017300');
INSERT INTO `joel_location_area` VALUES ('391', '30', '伊金霍洛旗', '017200');
INSERT INTO `joel_location_area` VALUES ('392', '31', '海拉尔区', '021000');
INSERT INTO `joel_location_area` VALUES ('393', '31', '阿荣旗', '162750');
INSERT INTO `joel_location_area` VALUES ('394', '31', '莫力达瓦达斡尔族自治旗', '162850');
INSERT INTO `joel_location_area` VALUES ('395', '31', '鄂伦春自治旗', '165450');
INSERT INTO `joel_location_area` VALUES ('396', '31', '鄂温克族自治旗', '021100');
INSERT INTO `joel_location_area` VALUES ('397', '31', '陈巴尔虎旗', '021500');
INSERT INTO `joel_location_area` VALUES ('398', '31', '新巴尔虎左旗', '021200');
INSERT INTO `joel_location_area` VALUES ('399', '31', '新巴尔虎右旗', '021300');
INSERT INTO `joel_location_area` VALUES ('400', '31', '满洲里市', '021400');
INSERT INTO `joel_location_area` VALUES ('401', '31', '牙克石市', '022150');
INSERT INTO `joel_location_area` VALUES ('402', '31', '扎兰屯市', '162650');
INSERT INTO `joel_location_area` VALUES ('403', '31', '额尔古纳市', '022250');
INSERT INTO `joel_location_area` VALUES ('404', '31', '根河市', '022350');
INSERT INTO `joel_location_area` VALUES ('405', '32', '临河区', '015001');
INSERT INTO `joel_location_area` VALUES ('406', '32', '五原县', '015100');
INSERT INTO `joel_location_area` VALUES ('407', '32', '磴口县', '015200');
INSERT INTO `joel_location_area` VALUES ('408', '32', '乌拉特前旗', '014400');
INSERT INTO `joel_location_area` VALUES ('409', '32', '乌拉特中旗', '015300');
INSERT INTO `joel_location_area` VALUES ('410', '32', '乌拉特后旗', '015500');
INSERT INTO `joel_location_area` VALUES ('411', '32', '杭锦后旗', '015400');
INSERT INTO `joel_location_area` VALUES ('412', '33', '集宁区', '012000');
INSERT INTO `joel_location_area` VALUES ('413', '33', '卓资县', '012300');
INSERT INTO `joel_location_area` VALUES ('414', '33', '化德县', '013350');
INSERT INTO `joel_location_area` VALUES ('415', '33', '商都县', '013450');
INSERT INTO `joel_location_area` VALUES ('416', '33', '兴和县', '013650');
INSERT INTO `joel_location_area` VALUES ('417', '33', '凉城县', '013750');
INSERT INTO `joel_location_area` VALUES ('418', '33', '察哈尔右翼前旗', '012200');
INSERT INTO `joel_location_area` VALUES ('419', '33', '察哈尔右翼中旗', '013550');
INSERT INTO `joel_location_area` VALUES ('420', '33', '察哈尔右翼后旗', '012400');
INSERT INTO `joel_location_area` VALUES ('421', '33', '四子王旗', '011800');
INSERT INTO `joel_location_area` VALUES ('422', '33', '丰镇市', '012100');
INSERT INTO `joel_location_area` VALUES ('423', '34', '乌兰浩特市', '137401');
INSERT INTO `joel_location_area` VALUES ('424', '34', '阿尔山市', '137800');
INSERT INTO `joel_location_area` VALUES ('425', '34', '科尔沁右翼前旗', '137423');
INSERT INTO `joel_location_area` VALUES ('426', '34', '科尔沁右翼中旗', '029400');
INSERT INTO `joel_location_area` VALUES ('427', '34', '扎赉特旗', '137600');
INSERT INTO `joel_location_area` VALUES ('428', '34', '突泉县', '137500');
INSERT INTO `joel_location_area` VALUES ('429', '35', '二连浩特市', '011100');
INSERT INTO `joel_location_area` VALUES ('430', '35', '锡林浩特市', '026000');
INSERT INTO `joel_location_area` VALUES ('431', '35', '阿巴嘎旗', '011400');
INSERT INTO `joel_location_area` VALUES ('432', '35', '苏尼特左旗', '011300');
INSERT INTO `joel_location_area` VALUES ('433', '35', '苏尼特右旗', '011200');
INSERT INTO `joel_location_area` VALUES ('434', '35', '东乌珠穆沁旗', '026300');
INSERT INTO `joel_location_area` VALUES ('435', '35', '西乌珠穆沁旗', '026200');
INSERT INTO `joel_location_area` VALUES ('436', '35', '太仆寺旗', '027000');
INSERT INTO `joel_location_area` VALUES ('437', '35', '镶黄旗', '013250');
INSERT INTO `joel_location_area` VALUES ('438', '35', '正镶白旗', '013800');
INSERT INTO `joel_location_area` VALUES ('439', '35', '正蓝旗', '027200');
INSERT INTO `joel_location_area` VALUES ('440', '35', '多伦县', '027300');
INSERT INTO `joel_location_area` VALUES ('441', '36', '阿拉善左旗', '750306');
INSERT INTO `joel_location_area` VALUES ('442', '36', '阿拉善右旗', '737300');
INSERT INTO `joel_location_area` VALUES ('443', '36', '额济纳旗', '735400');
INSERT INTO `joel_location_area` VALUES ('444', '37', '和平区', '110001');
INSERT INTO `joel_location_area` VALUES ('445', '37', '沈河区', '110013');
INSERT INTO `joel_location_area` VALUES ('446', '37', '大东区', '110041');
INSERT INTO `joel_location_area` VALUES ('447', '37', '皇姑区', '110031');
INSERT INTO `joel_location_area` VALUES ('448', '37', '铁西区', '110021');
INSERT INTO `joel_location_area` VALUES ('449', '37', '苏家屯区', '110101');
INSERT INTO `joel_location_area` VALUES ('450', '37', '东陵区', '110015');
INSERT INTO `joel_location_area` VALUES ('451', '37', '沈北新区', '110121');
INSERT INTO `joel_location_area` VALUES ('452', '37', '于洪区', '110141');
INSERT INTO `joel_location_area` VALUES ('453', '37', '辽中县', '110200');
INSERT INTO `joel_location_area` VALUES ('454', '37', '康平县', '110500');
INSERT INTO `joel_location_area` VALUES ('455', '37', '法库县', '110400');
INSERT INTO `joel_location_area` VALUES ('456', '37', '新民市', '110300');
INSERT INTO `joel_location_area` VALUES ('457', '37', '经济技术开发区', '110141');
INSERT INTO `joel_location_area` VALUES ('458', '37', '浑南新区', '110179');
INSERT INTO `joel_location_area` VALUES ('459', '37', '新城子经济技术开发区', '110121');
INSERT INTO `joel_location_area` VALUES ('460', '38', '中山区', '116001');
INSERT INTO `joel_location_area` VALUES ('461', '38', '西岗区', '116011');
INSERT INTO `joel_location_area` VALUES ('462', '38', '沙河口区', '116021');
INSERT INTO `joel_location_area` VALUES ('463', '38', '甘井子区', '116033');
INSERT INTO `joel_location_area` VALUES ('464', '38', '旅顺口区', '116041');
INSERT INTO `joel_location_area` VALUES ('465', '38', '金州区', '116100');
INSERT INTO `joel_location_area` VALUES ('466', '38', '长海县', '116500');
INSERT INTO `joel_location_area` VALUES ('467', '38', '瓦房店市', '116300');
INSERT INTO `joel_location_area` VALUES ('468', '38', '普兰店市', '116200');
INSERT INTO `joel_location_area` VALUES ('469', '38', '庄河市', '116400');
INSERT INTO `joel_location_area` VALUES ('470', '38', '开发区', '116600');
INSERT INTO `joel_location_area` VALUES ('471', '38', '保税区', '116600');
INSERT INTO `joel_location_area` VALUES ('472', '39', '铁东区', '114001');
INSERT INTO `joel_location_area` VALUES ('473', '39', '铁西区', '114013');
INSERT INTO `joel_location_area` VALUES ('474', '39', '立山区', '114031');
INSERT INTO `joel_location_area` VALUES ('475', '39', '千山区', '114041');
INSERT INTO `joel_location_area` VALUES ('476', '39', '台安县', '114100');
INSERT INTO `joel_location_area` VALUES ('477', '39', '岫岩满族自治县', '114300');
INSERT INTO `joel_location_area` VALUES ('478', '39', '海城市', '114200');
INSERT INTO `joel_location_area` VALUES ('479', '40', '新抚区', '113008');
INSERT INTO `joel_location_area` VALUES ('480', '40', '东洲区', '113003');
INSERT INTO `joel_location_area` VALUES ('481', '40', '望花区', '113001');
INSERT INTO `joel_location_area` VALUES ('482', '40', '顺城区', '113006');
INSERT INTO `joel_location_area` VALUES ('483', '40', '抚顺县', '113006');
INSERT INTO `joel_location_area` VALUES ('484', '40', '新宾满族自治县', '113200');
INSERT INTO `joel_location_area` VALUES ('485', '40', '清原满族自治县', '113300');
INSERT INTO `joel_location_area` VALUES ('486', '41', '平山区', '117000');
INSERT INTO `joel_location_area` VALUES ('487', '41', '明山区', '117021');
INSERT INTO `joel_location_area` VALUES ('488', '41', '溪湖区', '117002');
INSERT INTO `joel_location_area` VALUES ('489', '41', '南芬区', '117014');
INSERT INTO `joel_location_area` VALUES ('490', '41', '本溪满族自治县', '117100');
INSERT INTO `joel_location_area` VALUES ('491', '41', '桓仁满族自治县', '117200');
INSERT INTO `joel_location_area` VALUES ('492', '42', '元宝区', '118000');
INSERT INTO `joel_location_area` VALUES ('493', '42', '振兴区', '118002');
INSERT INTO `joel_location_area` VALUES ('494', '42', '振安区', '118001');
INSERT INTO `joel_location_area` VALUES ('495', '42', '宽甸满族自治县', '118200');
INSERT INTO `joel_location_area` VALUES ('496', '42', '东港市', '118300');
INSERT INTO `joel_location_area` VALUES ('497', '42', '凤城市', '118100');
INSERT INTO `joel_location_area` VALUES ('498', '43', '古塔区', '121001');
INSERT INTO `joel_location_area` VALUES ('499', '43', '凌河区', '121000');
INSERT INTO `joel_location_area` VALUES ('500', '43', '太和区', '121011');
INSERT INTO `joel_location_area` VALUES ('501', '43', '黑山县', '121400');
INSERT INTO `joel_location_area` VALUES ('502', '43', '义县', '121100');
INSERT INTO `joel_location_area` VALUES ('503', '43', '凌海市', '121200');
INSERT INTO `joel_location_area` VALUES ('504', '43', '北宁市', '121300');
INSERT INTO `joel_location_area` VALUES ('505', '43', '松山新区', '121219');
INSERT INTO `joel_location_area` VALUES ('506', '43', '经济技术开发区', '121007');
INSERT INTO `joel_location_area` VALUES ('507', '44', '站前区', '115002');
INSERT INTO `joel_location_area` VALUES ('508', '44', '西市区', '115004');
INSERT INTO `joel_location_area` VALUES ('509', '44', '鲅鱼圈区', '115007');
INSERT INTO `joel_location_area` VALUES ('510', '44', '老边区', '115005');
INSERT INTO `joel_location_area` VALUES ('511', '44', '盖州市', '115200');
INSERT INTO `joel_location_area` VALUES ('512', '44', '大石桥市', '115100');
INSERT INTO `joel_location_area` VALUES ('513', '45', '海州区', '123000');
INSERT INTO `joel_location_area` VALUES ('514', '45', '新邱区', '123005');
INSERT INTO `joel_location_area` VALUES ('515', '45', '太平区', '123003');
INSERT INTO `joel_location_area` VALUES ('516', '45', '清河门区', '123006');
INSERT INTO `joel_location_area` VALUES ('517', '45', '细河区', '123000');
INSERT INTO `joel_location_area` VALUES ('518', '45', '阜新蒙古族自治县', '123100');
INSERT INTO `joel_location_area` VALUES ('519', '45', '彰武县', '123200');
INSERT INTO `joel_location_area` VALUES ('520', '46', '白塔区', '111000');
INSERT INTO `joel_location_area` VALUES ('521', '46', '文圣区', '111000');
INSERT INTO `joel_location_area` VALUES ('522', '46', '宏伟区', '111003');
INSERT INTO `joel_location_area` VALUES ('523', '46', '弓长岭区', '111008');
INSERT INTO `joel_location_area` VALUES ('524', '46', '太子河区', '111000');
INSERT INTO `joel_location_area` VALUES ('525', '46', '辽阳县', '111200');
INSERT INTO `joel_location_area` VALUES ('526', '46', '灯塔市', '111300');
INSERT INTO `joel_location_area` VALUES ('527', '47', '双台子区', '124000');
INSERT INTO `joel_location_area` VALUES ('528', '47', '兴隆台区', '124010');
INSERT INTO `joel_location_area` VALUES ('529', '47', '大洼县', '124200');
INSERT INTO `joel_location_area` VALUES ('530', '47', '盘山县', '124000');
INSERT INTO `joel_location_area` VALUES ('531', '48', '银州区', '112000');
INSERT INTO `joel_location_area` VALUES ('532', '48', '清河区', '112003');
INSERT INTO `joel_location_area` VALUES ('533', '48', '铁岭县', '112000');
INSERT INTO `joel_location_area` VALUES ('534', '48', '西丰县', '112400');
INSERT INTO `joel_location_area` VALUES ('535', '48', '昌图县', '112500');
INSERT INTO `joel_location_area` VALUES ('536', '48', '调兵山市', '112700');
INSERT INTO `joel_location_area` VALUES ('537', '48', '开原市', '112300');
INSERT INTO `joel_location_area` VALUES ('538', '49', '双塔区', '122000');
INSERT INTO `joel_location_area` VALUES ('539', '49', '龙城区', '122000');
INSERT INTO `joel_location_area` VALUES ('540', '49', '朝阳县', '122000');
INSERT INTO `joel_location_area` VALUES ('541', '49', '建平县', '122400');
INSERT INTO `joel_location_area` VALUES ('542', '49', '喀喇沁左翼蒙古族自治县', '122300');
INSERT INTO `joel_location_area` VALUES ('543', '49', '北票市', '122100');
INSERT INTO `joel_location_area` VALUES ('544', '49', '凌源市', '122500');
INSERT INTO `joel_location_area` VALUES ('545', '50', '连山区', '125001');
INSERT INTO `joel_location_area` VALUES ('546', '50', '龙港区', '125003');
INSERT INTO `joel_location_area` VALUES ('547', '50', '南票区', '125027');
INSERT INTO `joel_location_area` VALUES ('548', '50', '绥中县', '125200');
INSERT INTO `joel_location_area` VALUES ('549', '50', '建昌县', '125300');
INSERT INTO `joel_location_area` VALUES ('550', '50', '兴城市', '125100');
INSERT INTO `joel_location_area` VALUES ('551', '51', '南关区', '130022');
INSERT INTO `joel_location_area` VALUES ('552', '51', '宽城区', '130051');
INSERT INTO `joel_location_area` VALUES ('553', '51', '朝阳区', '130012');
INSERT INTO `joel_location_area` VALUES ('554', '51', '二道区', '130031');
INSERT INTO `joel_location_area` VALUES ('555', '51', '绿园区', '130062');
INSERT INTO `joel_location_area` VALUES ('556', '51', '双阳区', '130600');
INSERT INTO `joel_location_area` VALUES ('557', '51', '农安县', '130200');
INSERT INTO `joel_location_area` VALUES ('558', '51', '九台市', '130500');
INSERT INTO `joel_location_area` VALUES ('559', '51', '榆树市', '130400');
INSERT INTO `joel_location_area` VALUES ('560', '51', '德惠市', '130300');
INSERT INTO `joel_location_area` VALUES ('561', '51', '净月经济开发区', '130117');
INSERT INTO `joel_location_area` VALUES ('562', '51', '高新技术产业开发区', '130015');
INSERT INTO `joel_location_area` VALUES ('563', '51', '经济技术开发区', '130022');
INSERT INTO `joel_location_area` VALUES ('564', '52', '昌邑区', '132002');
INSERT INTO `joel_location_area` VALUES ('565', '52', '龙潭区', '132021');
INSERT INTO `joel_location_area` VALUES ('566', '52', '船营区', '132011');
INSERT INTO `joel_location_area` VALUES ('567', '52', '丰满区', '132013');
INSERT INTO `joel_location_area` VALUES ('568', '52', '永吉县', '132200');
INSERT INTO `joel_location_area` VALUES ('569', '52', '蛟河市', '132500');
INSERT INTO `joel_location_area` VALUES ('570', '52', '桦甸市', '132400');
INSERT INTO `joel_location_area` VALUES ('571', '52', '舒兰市', '132600');
INSERT INTO `joel_location_area` VALUES ('572', '52', '磐石市', '132300');
INSERT INTO `joel_location_area` VALUES ('573', '53', '铁西区', '136000');
INSERT INTO `joel_location_area` VALUES ('574', '53', '铁东区', '136001');
INSERT INTO `joel_location_area` VALUES ('575', '53', '梨树县', '136500');
INSERT INTO `joel_location_area` VALUES ('576', '53', '伊通满族自治县', '130700');
INSERT INTO `joel_location_area` VALUES ('577', '53', '公主岭市', '136100');
INSERT INTO `joel_location_area` VALUES ('578', '53', '双辽市', '136400');
INSERT INTO `joel_location_area` VALUES ('579', '54', '龙山区', '136200');
INSERT INTO `joel_location_area` VALUES ('580', '54', '西安区', '136201');
INSERT INTO `joel_location_area` VALUES ('581', '54', '东丰县', '136300');
INSERT INTO `joel_location_area` VALUES ('582', '54', '东辽县', '136600');
INSERT INTO `joel_location_area` VALUES ('583', '55', '东昌区', '134001');
INSERT INTO `joel_location_area` VALUES ('584', '55', '二道江区', '134003');
INSERT INTO `joel_location_area` VALUES ('585', '55', '通化县', '134100');
INSERT INTO `joel_location_area` VALUES ('586', '55', '辉南县', '135100');
INSERT INTO `joel_location_area` VALUES ('587', '55', '柳河县', '135300');
INSERT INTO `joel_location_area` VALUES ('588', '55', '梅河口市', '135000');
INSERT INTO `joel_location_area` VALUES ('589', '55', '集安市', '134200');
INSERT INTO `joel_location_area` VALUES ('590', '56', '八道江区', '134300');
INSERT INTO `joel_location_area` VALUES ('591', '56', '抚松县', '134500');
INSERT INTO `joel_location_area` VALUES ('592', '56', '靖宇县', '135200');
INSERT INTO `joel_location_area` VALUES ('593', '56', '长白朝鲜族自治县', '134400');
INSERT INTO `joel_location_area` VALUES ('594', '56', '江源县', '134700');
INSERT INTO `joel_location_area` VALUES ('595', '56', '临江市', '134600');
INSERT INTO `joel_location_area` VALUES ('596', '57', '宁江区', '138000');
INSERT INTO `joel_location_area` VALUES ('597', '57', '前郭尔罗斯蒙古族自治县', '138000');
INSERT INTO `joel_location_area` VALUES ('598', '57', '长岭县', '131500');
INSERT INTO `joel_location_area` VALUES ('599', '57', '乾安县', '131400');
INSERT INTO `joel_location_area` VALUES ('600', '57', '扶余县', '131200');
INSERT INTO `joel_location_area` VALUES ('601', '58', '洮北区', '137000');
INSERT INTO `joel_location_area` VALUES ('602', '58', '镇赉县', '137300');
INSERT INTO `joel_location_area` VALUES ('603', '58', '通榆县', '137200');
INSERT INTO `joel_location_area` VALUES ('604', '58', '洮南市', '137100');
INSERT INTO `joel_location_area` VALUES ('605', '58', '大安市', '131300');
INSERT INTO `joel_location_area` VALUES ('606', '59', '延吉市', '133000');
INSERT INTO `joel_location_area` VALUES ('607', '59', '图们市', '133100');
INSERT INTO `joel_location_area` VALUES ('608', '59', '敦化市', '133700');
INSERT INTO `joel_location_area` VALUES ('609', '59', '珲春市', '133300');
INSERT INTO `joel_location_area` VALUES ('610', '59', '龙井市', '133400');
INSERT INTO `joel_location_area` VALUES ('611', '59', '和龙市', '133500');
INSERT INTO `joel_location_area` VALUES ('612', '59', '汪清县', '133200');
INSERT INTO `joel_location_area` VALUES ('613', '59', '安图县', '133600');
INSERT INTO `joel_location_area` VALUES ('614', '60', '道里区', '150010');
INSERT INTO `joel_location_area` VALUES ('615', '60', '南岗区', '150006');
INSERT INTO `joel_location_area` VALUES ('616', '60', '道外区', '150020');
INSERT INTO `joel_location_area` VALUES ('617', '60', '香坊区', '150036');
INSERT INTO `joel_location_area` VALUES ('618', '60', '动力区', '150040');
INSERT INTO `joel_location_area` VALUES ('619', '60', '平房区', '150060');
INSERT INTO `joel_location_area` VALUES ('620', '60', '松北区', '150028');
INSERT INTO `joel_location_area` VALUES ('621', '60', '呼兰区', '150500');
INSERT INTO `joel_location_area` VALUES ('622', '60', '依兰县', '154800');
INSERT INTO `joel_location_area` VALUES ('623', '60', '方正县', '150800');
INSERT INTO `joel_location_area` VALUES ('624', '60', '宾县', '150400');
INSERT INTO `joel_location_area` VALUES ('625', '60', '巴彦县', '151800');
INSERT INTO `joel_location_area` VALUES ('626', '60', '木兰县', '151900');
INSERT INTO `joel_location_area` VALUES ('627', '60', '通河县', '150900');
INSERT INTO `joel_location_area` VALUES ('628', '60', '延寿县', '150700');
INSERT INTO `joel_location_area` VALUES ('629', '60', '阿城市', '150300');
INSERT INTO `joel_location_area` VALUES ('630', '60', '双城市', '150100');
INSERT INTO `joel_location_area` VALUES ('631', '60', '尚志市', '150600');
INSERT INTO `joel_location_area` VALUES ('632', '60', '五常市', '150200');
INSERT INTO `joel_location_area` VALUES ('633', '61', '龙沙区', '161000');
INSERT INTO `joel_location_area` VALUES ('634', '61', '建华区', '161006');
INSERT INTO `joel_location_area` VALUES ('635', '61', '铁锋区', '161000');
INSERT INTO `joel_location_area` VALUES ('636', '61', '昂昂溪区', '161031');
INSERT INTO `joel_location_area` VALUES ('637', '61', '富拉尔基区', '161041');
INSERT INTO `joel_location_area` VALUES ('638', '61', '碾子山区', '161046');
INSERT INTO `joel_location_area` VALUES ('639', '61', '梅里斯达斡尔族区', '161021');
INSERT INTO `joel_location_area` VALUES ('640', '61', '龙江县', '161100');
INSERT INTO `joel_location_area` VALUES ('641', '61', '依安县', '161500');
INSERT INTO `joel_location_area` VALUES ('642', '61', '泰来县', '162400');
INSERT INTO `joel_location_area` VALUES ('643', '61', '甘南县', '162100');
INSERT INTO `joel_location_area` VALUES ('644', '61', '富裕县', '161200');
INSERT INTO `joel_location_area` VALUES ('645', '61', '克山县', '161600');
INSERT INTO `joel_location_area` VALUES ('646', '61', '克东县', '164800');
INSERT INTO `joel_location_area` VALUES ('647', '61', '拜泉县', '164700');
INSERT INTO `joel_location_area` VALUES ('648', '61', '讷河市', '161300');
INSERT INTO `joel_location_area` VALUES ('649', '62', '鸡冠区', '158100');
INSERT INTO `joel_location_area` VALUES ('650', '62', '恒山区', '158130');
INSERT INTO `joel_location_area` VALUES ('651', '62', '滴道区', '158150');
INSERT INTO `joel_location_area` VALUES ('652', '62', '梨树区', '158160');
INSERT INTO `joel_location_area` VALUES ('653', '62', '城子河区', '158170');
INSERT INTO `joel_location_area` VALUES ('654', '62', '麻山区', '158180');
INSERT INTO `joel_location_area` VALUES ('655', '62', '鸡东县', '158200');
INSERT INTO `joel_location_area` VALUES ('656', '62', '虎林市', '158400');
INSERT INTO `joel_location_area` VALUES ('657', '62', '密山市', '158300');
INSERT INTO `joel_location_area` VALUES ('658', '63', '向阳区', '154100');
INSERT INTO `joel_location_area` VALUES ('659', '63', '工农区', '154101');
INSERT INTO `joel_location_area` VALUES ('660', '63', '南山区', '154104');
INSERT INTO `joel_location_area` VALUES ('661', '63', '兴安区', '154102');
INSERT INTO `joel_location_area` VALUES ('662', '63', '东山区', '154106');
INSERT INTO `joel_location_area` VALUES ('663', '63', '兴山区', '154105');
INSERT INTO `joel_location_area` VALUES ('664', '63', '萝北县', '154200');
INSERT INTO `joel_location_area` VALUES ('665', '63', '绥滨县', '156200');
INSERT INTO `joel_location_area` VALUES ('666', '64', '尖山区', '155100');
INSERT INTO `joel_location_area` VALUES ('667', '64', '岭东区', '155120');
INSERT INTO `joel_location_area` VALUES ('668', '64', '四方台区', '155130');
INSERT INTO `joel_location_area` VALUES ('669', '64', '宝山区', '155131');
INSERT INTO `joel_location_area` VALUES ('670', '64', '集贤县', '155900');
INSERT INTO `joel_location_area` VALUES ('671', '64', '友谊县', '155800');
INSERT INTO `joel_location_area` VALUES ('672', '64', '宝清县', '155600');
INSERT INTO `joel_location_area` VALUES ('673', '64', '饶河县', '155700');
INSERT INTO `joel_location_area` VALUES ('674', '65', '萨尔图区', '163001');
INSERT INTO `joel_location_area` VALUES ('675', '65', '龙凤区', '163711');
INSERT INTO `joel_location_area` VALUES ('676', '65', '让胡路区', '163712');
INSERT INTO `joel_location_area` VALUES ('677', '65', '红岗区', '163511');
INSERT INTO `joel_location_area` VALUES ('678', '65', '大同区', '163515');
INSERT INTO `joel_location_area` VALUES ('679', '65', '肇州县', '166400');
INSERT INTO `joel_location_area` VALUES ('680', '65', '肇源县', '166500');
INSERT INTO `joel_location_area` VALUES ('681', '65', '林甸县', '166300');
INSERT INTO `joel_location_area` VALUES ('682', '65', '杜尔伯特蒙古族自治县', '166200');
INSERT INTO `joel_location_area` VALUES ('683', '66', '伊春区', '153000');
INSERT INTO `joel_location_area` VALUES ('684', '66', '南岔区', '153100');
INSERT INTO `joel_location_area` VALUES ('685', '66', '友好区', '153031');
INSERT INTO `joel_location_area` VALUES ('686', '66', '西林区', '153025');
INSERT INTO `joel_location_area` VALUES ('687', '66', '翠峦区', '153013');
INSERT INTO `joel_location_area` VALUES ('688', '66', '新青区', '153036');
INSERT INTO `joel_location_area` VALUES ('689', '66', '美溪区', '153021');
INSERT INTO `joel_location_area` VALUES ('690', '66', '金山屯区', '153026');
INSERT INTO `joel_location_area` VALUES ('691', '66', '五营区', '153033');
INSERT INTO `joel_location_area` VALUES ('692', '66', '乌马河区', '153011');
INSERT INTO `joel_location_area` VALUES ('693', '66', '汤旺河区', '153037');
INSERT INTO `joel_location_area` VALUES ('694', '66', '带岭区', '153106');
INSERT INTO `joel_location_area` VALUES ('695', '66', '乌伊岭区', '153038');
INSERT INTO `joel_location_area` VALUES ('696', '66', '红星区', '153035');
INSERT INTO `joel_location_area` VALUES ('697', '66', '上甘岭区', '153032');
INSERT INTO `joel_location_area` VALUES ('698', '66', '嘉荫县', '153200');
INSERT INTO `joel_location_area` VALUES ('699', '66', '铁力市', '152500');
INSERT INTO `joel_location_area` VALUES ('700', '67', '向阳区', '154002');
INSERT INTO `joel_location_area` VALUES ('701', '67', '前进区', '154002');
INSERT INTO `joel_location_area` VALUES ('702', '67', '东风区', '154005');
INSERT INTO `joel_location_area` VALUES ('703', '67', '郊区', '154004');
INSERT INTO `joel_location_area` VALUES ('704', '67', '桦南县', '154400');
INSERT INTO `joel_location_area` VALUES ('705', '67', '桦川县', '154300');
INSERT INTO `joel_location_area` VALUES ('706', '67', '汤原县', '154700');
INSERT INTO `joel_location_area` VALUES ('707', '67', '抚远县', '156500');
INSERT INTO `joel_location_area` VALUES ('708', '67', '同江市', '156400');
INSERT INTO `joel_location_area` VALUES ('709', '67', '富锦市', '156100');
INSERT INTO `joel_location_area` VALUES ('710', '68', '新兴区', '154604');
INSERT INTO `joel_location_area` VALUES ('711', '68', '桃山区', '154600');
INSERT INTO `joel_location_area` VALUES ('712', '68', '茄子河区', '154622');
INSERT INTO `joel_location_area` VALUES ('713', '68', '勃利县', '154500');
INSERT INTO `joel_location_area` VALUES ('714', '69', '东安区', '157000');
INSERT INTO `joel_location_area` VALUES ('715', '69', '爱民区', '157009');
INSERT INTO `joel_location_area` VALUES ('716', '69', '阳明区', '157013');
INSERT INTO `joel_location_area` VALUES ('717', '69', '西安区', '157000');
INSERT INTO `joel_location_area` VALUES ('718', '69', '东宁县', '157200');
INSERT INTO `joel_location_area` VALUES ('719', '69', '林口县', '157600');
INSERT INTO `joel_location_area` VALUES ('720', '69', '绥芬河市', '157300');
INSERT INTO `joel_location_area` VALUES ('721', '69', '海林市', '157100');
INSERT INTO `joel_location_area` VALUES ('722', '69', '宁安市', '157400');
INSERT INTO `joel_location_area` VALUES ('723', '69', '穆棱市', '157500');
INSERT INTO `joel_location_area` VALUES ('724', '70', '爱辉区', '164300');
INSERT INTO `joel_location_area` VALUES ('725', '70', '嫩江县', '161400');
INSERT INTO `joel_location_area` VALUES ('726', '70', '逊克县', '164400');
INSERT INTO `joel_location_area` VALUES ('727', '70', '孙吴县', '164200');
INSERT INTO `joel_location_area` VALUES ('728', '70', '北安市', '164000');
INSERT INTO `joel_location_area` VALUES ('729', '70', '五大连池市', '164100');
INSERT INTO `joel_location_area` VALUES ('730', '71', '北林区', '152000');
INSERT INTO `joel_location_area` VALUES ('731', '71', '望奎县', '152100');
INSERT INTO `joel_location_area` VALUES ('732', '71', '兰西县', '151500');
INSERT INTO `joel_location_area` VALUES ('733', '71', '青冈县', '151600');
INSERT INTO `joel_location_area` VALUES ('734', '71', '庆安县', '152400');
INSERT INTO `joel_location_area` VALUES ('735', '71', '明水县', '151700');
INSERT INTO `joel_location_area` VALUES ('736', '71', '绥棱县', '152200');
INSERT INTO `joel_location_area` VALUES ('737', '71', '安达市', '151400');
INSERT INTO `joel_location_area` VALUES ('738', '71', '肇东市', '151100');
INSERT INTO `joel_location_area` VALUES ('739', '71', '海伦市', '152300');
INSERT INTO `joel_location_area` VALUES ('740', '72', '呼玛县', '165100');
INSERT INTO `joel_location_area` VALUES ('741', '72', '塔河县', '165200');
INSERT INTO `joel_location_area` VALUES ('742', '72', '漠河县', '165300');
INSERT INTO `joel_location_area` VALUES ('743', '72', '加格达奇区', '165000');
INSERT INTO `joel_location_area` VALUES ('744', '72', '松岭区', '165012');
INSERT INTO `joel_location_area` VALUES ('745', '72', '新林区', '165023');
INSERT INTO `joel_location_area` VALUES ('746', '72', '呼中区', '165036');
INSERT INTO `joel_location_area` VALUES ('747', '73', '黄浦区', '200001');
INSERT INTO `joel_location_area` VALUES ('748', '73', '卢湾区', '200020');
INSERT INTO `joel_location_area` VALUES ('749', '73', '徐汇区', '200030');
INSERT INTO `joel_location_area` VALUES ('750', '73', '长宁区', '200050');
INSERT INTO `joel_location_area` VALUES ('751', '73', '静安区', '200040');
INSERT INTO `joel_location_area` VALUES ('752', '73', '普陀区', '200333');
INSERT INTO `joel_location_area` VALUES ('753', '73', '闸北区', '200070');
INSERT INTO `joel_location_area` VALUES ('754', '73', '虹口区', '200080');
INSERT INTO `joel_location_area` VALUES ('755', '73', '杨浦区', '200082');
INSERT INTO `joel_location_area` VALUES ('756', '73', '闵行区', '201100');
INSERT INTO `joel_location_area` VALUES ('757', '73', '宝山区', '201900');
INSERT INTO `joel_location_area` VALUES ('758', '73', '嘉定区', '201800');
INSERT INTO `joel_location_area` VALUES ('759', '73', '浦东新区', '200135');
INSERT INTO `joel_location_area` VALUES ('760', '73', '金山区', '200540');
INSERT INTO `joel_location_area` VALUES ('761', '73', '松江区', '201600');
INSERT INTO `joel_location_area` VALUES ('762', '73', '青浦区', '201700');
INSERT INTO `joel_location_area` VALUES ('763', '73', '南汇区', '201300');
INSERT INTO `joel_location_area` VALUES ('764', '73', '奉贤区', '201400');
INSERT INTO `joel_location_area` VALUES ('765', '73', '崇明县', '202150');
INSERT INTO `joel_location_area` VALUES ('766', '74', '玄武区', '210018');
INSERT INTO `joel_location_area` VALUES ('767', '74', '白下区', '210002');
INSERT INTO `joel_location_area` VALUES ('768', '74', '秦淮区', '210001');
INSERT INTO `joel_location_area` VALUES ('769', '74', '建邺区', '210004');
INSERT INTO `joel_location_area` VALUES ('770', '74', '鼓楼区', '210009');
INSERT INTO `joel_location_area` VALUES ('771', '74', '下关区', '210011');
INSERT INTO `joel_location_area` VALUES ('772', '74', '浦口区', '211800');
INSERT INTO `joel_location_area` VALUES ('773', '74', '栖霞区', '210046');
INSERT INTO `joel_location_area` VALUES ('774', '74', '雨花台区', '210012');
INSERT INTO `joel_location_area` VALUES ('775', '74', '江宁区', '211100');
INSERT INTO `joel_location_area` VALUES ('776', '74', '六合区', '211500');
INSERT INTO `joel_location_area` VALUES ('777', '74', '溧水县', '211200');
INSERT INTO `joel_location_area` VALUES ('778', '74', '高淳县', '211300');
INSERT INTO `joel_location_area` VALUES ('779', '75', '崇安区', '214002');
INSERT INTO `joel_location_area` VALUES ('780', '75', '南长区', '214021');
INSERT INTO `joel_location_area` VALUES ('781', '75', '北塘区', '214044');
INSERT INTO `joel_location_area` VALUES ('782', '75', '锡山区', '214101');
INSERT INTO `joel_location_area` VALUES ('783', '75', '惠山区', '214174');
INSERT INTO `joel_location_area` VALUES ('784', '75', '滨湖区', '214062');
INSERT INTO `joel_location_area` VALUES ('785', '75', '江阴市', '214400');
INSERT INTO `joel_location_area` VALUES ('786', '75', '宜兴市', '214200');
INSERT INTO `joel_location_area` VALUES ('787', '75', '新区', '214028');
INSERT INTO `joel_location_area` VALUES ('788', '76', '云龙区', '221009');
INSERT INTO `joel_location_area` VALUES ('789', '76', '鼓楼区', '221005');
INSERT INTO `joel_location_area` VALUES ('790', '76', '九里区', '221140');
INSERT INTO `joel_location_area` VALUES ('791', '76', '泉山区', '221006');
INSERT INTO `joel_location_area` VALUES ('792', '76', '铜山县', '221116');
INSERT INTO `joel_location_area` VALUES ('793', '76', '贾汪区', '221011');
INSERT INTO `joel_location_area` VALUES ('794', '76', '丰县', '221700');
INSERT INTO `joel_location_area` VALUES ('795', '76', '沛县', '221600');
INSERT INTO `joel_location_area` VALUES ('796', '76', '睢宁县', '221200');
INSERT INTO `joel_location_area` VALUES ('797', '76', '新沂市', '221400');
INSERT INTO `joel_location_area` VALUES ('798', '76', '邳州市', '221300');
INSERT INTO `joel_location_area` VALUES ('799', '77', '天宁区', '213003');
INSERT INTO `joel_location_area` VALUES ('800', '77', '钟楼区', '213002');
INSERT INTO `joel_location_area` VALUES ('801', '77', '戚墅堰区', '213011');
INSERT INTO `joel_location_area` VALUES ('802', '77', '新北区', '213001');
INSERT INTO `joel_location_area` VALUES ('803', '77', '武进区', '213161');
INSERT INTO `joel_location_area` VALUES ('804', '77', '溧阳市', '213300');
INSERT INTO `joel_location_area` VALUES ('805', '77', '金坛市', '213200');
INSERT INTO `joel_location_area` VALUES ('806', '78', '沧浪区', '215006');
INSERT INTO `joel_location_area` VALUES ('807', '78', '平江区', '215005');
INSERT INTO `joel_location_area` VALUES ('808', '78', '金阊区', '215008');
INSERT INTO `joel_location_area` VALUES ('809', '78', '虎丘区', '215004');
INSERT INTO `joel_location_area` VALUES ('810', '78', '吴中区', '215128');
INSERT INTO `joel_location_area` VALUES ('811', '78', '相城区', '215131');
INSERT INTO `joel_location_area` VALUES ('812', '78', '常熟市', '215500');
INSERT INTO `joel_location_area` VALUES ('813', '78', '张家港市', '215600');
INSERT INTO `joel_location_area` VALUES ('814', '78', '昆山市', '215300');
INSERT INTO `joel_location_area` VALUES ('815', '78', '吴江市', '215200');
INSERT INTO `joel_location_area` VALUES ('816', '78', '太仓市', '215400');
INSERT INTO `joel_location_area` VALUES ('817', '78', '工业园区', '215028');
INSERT INTO `joel_location_area` VALUES ('818', '78', '高新区', '215011');
INSERT INTO `joel_location_area` VALUES ('819', '79', '崇川区', '226001');
INSERT INTO `joel_location_area` VALUES ('820', '79', '港闸区', '226001');
INSERT INTO `joel_location_area` VALUES ('821', '79', '海安县', '226600');
INSERT INTO `joel_location_area` VALUES ('822', '79', '如东县', '226400');
INSERT INTO `joel_location_area` VALUES ('823', '79', '启东市', '226200');
INSERT INTO `joel_location_area` VALUES ('824', '79', '如皋市', '226500');
INSERT INTO `joel_location_area` VALUES ('825', '79', '通州市', '226300');
INSERT INTO `joel_location_area` VALUES ('826', '79', '海门市', '226100');
INSERT INTO `joel_location_area` VALUES ('827', '79', '经济技术开发区', '226009');
INSERT INTO `joel_location_area` VALUES ('828', '80', '连云区', '222042');
INSERT INTO `joel_location_area` VALUES ('829', '80', '新浦区', '222003');
INSERT INTO `joel_location_area` VALUES ('830', '80', '海州区', '222023');
INSERT INTO `joel_location_area` VALUES ('831', '80', '赣榆县', '222100');
INSERT INTO `joel_location_area` VALUES ('832', '80', '东海县', '222300');
INSERT INTO `joel_location_area` VALUES ('833', '80', '灌云县', '222200');
INSERT INTO `joel_location_area` VALUES ('834', '80', '灌南县', '223500');
INSERT INTO `joel_location_area` VALUES ('835', '81', '清河区', '223001');
INSERT INTO `joel_location_area` VALUES ('836', '81', '楚州区', '223200');
INSERT INTO `joel_location_area` VALUES ('837', '81', '淮阴区', '223300');
INSERT INTO `joel_location_area` VALUES ('838', '81', '清浦区', '223002');
INSERT INTO `joel_location_area` VALUES ('839', '81', '涟水县', '223400');
INSERT INTO `joel_location_area` VALUES ('840', '81', '洪泽县', '223100');
INSERT INTO `joel_location_area` VALUES ('841', '81', '盱眙县', '211700');
INSERT INTO `joel_location_area` VALUES ('842', '81', '金湖县', '211600');
INSERT INTO `joel_location_area` VALUES ('843', '82', '亭湖区', '224005');
INSERT INTO `joel_location_area` VALUES ('844', '82', '盐都区', '224055');
INSERT INTO `joel_location_area` VALUES ('845', '82', '响水县', '224600');
INSERT INTO `joel_location_area` VALUES ('846', '82', '滨海县', '224500');
INSERT INTO `joel_location_area` VALUES ('847', '82', '阜宁县', '224400');
INSERT INTO `joel_location_area` VALUES ('848', '82', '射阳县', '224300');
INSERT INTO `joel_location_area` VALUES ('849', '82', '建湖县', '224700');
INSERT INTO `joel_location_area` VALUES ('850', '82', '东台市', '224200');
INSERT INTO `joel_location_area` VALUES ('851', '82', '大丰市', '224100');
INSERT INTO `joel_location_area` VALUES ('852', '83', '广陵区', '225002');
INSERT INTO `joel_location_area` VALUES ('853', '83', '邗江区', '225002');
INSERT INTO `joel_location_area` VALUES ('854', '83', '宝应县', '225800');
INSERT INTO `joel_location_area` VALUES ('855', '83', '仪征市', '211400');
INSERT INTO `joel_location_area` VALUES ('856', '83', '高邮市', '225600');
INSERT INTO `joel_location_area` VALUES ('857', '83', '江都市', '225200');
INSERT INTO `joel_location_area` VALUES ('858', '83', '维扬区', '225002');
INSERT INTO `joel_location_area` VALUES ('859', '83', '经济开发区', '225101');
INSERT INTO `joel_location_area` VALUES ('860', '84', '京口区', '212001');
INSERT INTO `joel_location_area` VALUES ('861', '84', '润州区', '212004');
INSERT INTO `joel_location_area` VALUES ('862', '84', '丹徒区', '212001');
INSERT INTO `joel_location_area` VALUES ('863', '84', '丹阳市', '212300');
INSERT INTO `joel_location_area` VALUES ('864', '84', '扬中市', '212200');
INSERT INTO `joel_location_area` VALUES ('865', '84', '句容市', '212400');
INSERT INTO `joel_location_area` VALUES ('866', '84', '新区', '212132');
INSERT INTO `joel_location_area` VALUES ('867', '85', '海陵区', '225300');
INSERT INTO `joel_location_area` VALUES ('868', '85', '高港区', '225321');
INSERT INTO `joel_location_area` VALUES ('869', '85', '兴化市', '225700');
INSERT INTO `joel_location_area` VALUES ('870', '85', '靖江市', '214500');
INSERT INTO `joel_location_area` VALUES ('871', '85', '泰兴市', '225400');
INSERT INTO `joel_location_area` VALUES ('872', '85', '姜堰市', '225500');
INSERT INTO `joel_location_area` VALUES ('873', '86', '宿城区', '223800');
INSERT INTO `joel_location_area` VALUES ('874', '86', '宿豫区', '223800');
INSERT INTO `joel_location_area` VALUES ('875', '86', '沭阳县', '223600');
INSERT INTO `joel_location_area` VALUES ('876', '86', '泗阳县', '223700');
INSERT INTO `joel_location_area` VALUES ('877', '86', '泗洪县', '223900');
INSERT INTO `joel_location_area` VALUES ('878', '87', '上城区', '310002');
INSERT INTO `joel_location_area` VALUES ('879', '87', '下城区', '310006');
INSERT INTO `joel_location_area` VALUES ('880', '87', '江干区', '310016');
INSERT INTO `joel_location_area` VALUES ('881', '87', '拱墅区', '310011');
INSERT INTO `joel_location_area` VALUES ('882', '87', '西湖区', '310013');
INSERT INTO `joel_location_area` VALUES ('883', '87', '滨江区', '310051');
INSERT INTO `joel_location_area` VALUES ('884', '87', '萧山区', '311200');
INSERT INTO `joel_location_area` VALUES ('885', '87', '余杭区', '311100');
INSERT INTO `joel_location_area` VALUES ('886', '87', '桐庐县', '311500');
INSERT INTO `joel_location_area` VALUES ('887', '87', '淳安县', '311700');
INSERT INTO `joel_location_area` VALUES ('888', '87', '建德市', '311600');
INSERT INTO `joel_location_area` VALUES ('889', '87', '富阳市', '311400');
INSERT INTO `joel_location_area` VALUES ('890', '87', '临安市', '311300');
INSERT INTO `joel_location_area` VALUES ('891', '88', '海曙区', '315000');
INSERT INTO `joel_location_area` VALUES ('892', '88', '江东区', '315040');
INSERT INTO `joel_location_area` VALUES ('893', '88', '江北区', '315040');
INSERT INTO `joel_location_area` VALUES ('894', '88', '北仑区', '315800');
INSERT INTO `joel_location_area` VALUES ('895', '88', '镇海区', '315200');
INSERT INTO `joel_location_area` VALUES ('896', '88', '鄞州区', '315100');
INSERT INTO `joel_location_area` VALUES ('897', '88', '象山县', '315700');
INSERT INTO `joel_location_area` VALUES ('898', '88', '宁海县', '315600');
INSERT INTO `joel_location_area` VALUES ('899', '88', '余姚市', '315400');
INSERT INTO `joel_location_area` VALUES ('900', '88', '慈溪市', '315300');
INSERT INTO `joel_location_area` VALUES ('901', '88', '奉化市', '315500');
INSERT INTO `joel_location_area` VALUES ('902', '89', '鹿城区', '325000');
INSERT INTO `joel_location_area` VALUES ('903', '89', '龙湾区', '325013');
INSERT INTO `joel_location_area` VALUES ('904', '89', '瓯海区', '325005');
INSERT INTO `joel_location_area` VALUES ('905', '89', '洞头县', '325700');
INSERT INTO `joel_location_area` VALUES ('906', '89', '永嘉县', '315100');
INSERT INTO `joel_location_area` VALUES ('907', '89', '平阳县', '325400');
INSERT INTO `joel_location_area` VALUES ('908', '89', '苍南县', '325800');
INSERT INTO `joel_location_area` VALUES ('909', '89', '文成县', '325300');
INSERT INTO `joel_location_area` VALUES ('910', '89', '泰顺县', '325500');
INSERT INTO `joel_location_area` VALUES ('911', '89', '瑞安市', '325200');
INSERT INTO `joel_location_area` VALUES ('912', '89', '乐清市', '325600');
INSERT INTO `joel_location_area` VALUES ('913', '90', '秀洲区', '314001');
INSERT INTO `joel_location_area` VALUES ('914', '90', '嘉善县', '314100');
INSERT INTO `joel_location_area` VALUES ('915', '90', '海盐县', '314300');
INSERT INTO `joel_location_area` VALUES ('916', '90', '海宁市', '314400');
INSERT INTO `joel_location_area` VALUES ('917', '90', '平湖市', '314200');
INSERT INTO `joel_location_area` VALUES ('918', '90', '桐乡市', '314500');
INSERT INTO `joel_location_area` VALUES ('919', '90', '南湖区', '314001');
INSERT INTO `joel_location_area` VALUES ('920', '91', '吴兴区', '313000');
INSERT INTO `joel_location_area` VALUES ('921', '91', '南浔区', '313009');
INSERT INTO `joel_location_area` VALUES ('922', '91', '德清县', '313200');
INSERT INTO `joel_location_area` VALUES ('923', '91', '长兴县', '313100');
INSERT INTO `joel_location_area` VALUES ('924', '91', '安吉县', '313300');
INSERT INTO `joel_location_area` VALUES ('925', '92', '越城区', '312000');
INSERT INTO `joel_location_area` VALUES ('926', '92', '绍兴县', '312000');
INSERT INTO `joel_location_area` VALUES ('927', '92', '新昌县', '312500');
INSERT INTO `joel_location_area` VALUES ('928', '92', '诸暨市', '311800');
INSERT INTO `joel_location_area` VALUES ('929', '92', '上虞市', '312300');
INSERT INTO `joel_location_area` VALUES ('930', '92', '嵊州市', '312400');
INSERT INTO `joel_location_area` VALUES ('931', '93', '婺城区', '321000');
INSERT INTO `joel_location_area` VALUES ('932', '93', '金东区', '321000');
INSERT INTO `joel_location_area` VALUES ('933', '93', '武义县', '321200');
INSERT INTO `joel_location_area` VALUES ('934', '93', '浦江县', '322200');
INSERT INTO `joel_location_area` VALUES ('935', '93', '磐安县', '322300');
INSERT INTO `joel_location_area` VALUES ('936', '93', '兰溪市', '321100');
INSERT INTO `joel_location_area` VALUES ('937', '93', '义乌市', '322000');
INSERT INTO `joel_location_area` VALUES ('938', '93', '东阳市', '322100');
INSERT INTO `joel_location_area` VALUES ('939', '93', '永康市', '321300');
INSERT INTO `joel_location_area` VALUES ('940', '94', '柯城区', '324100');
INSERT INTO `joel_location_area` VALUES ('941', '94', '衢江区', '324022');
INSERT INTO `joel_location_area` VALUES ('942', '94', '常山县', '324200');
INSERT INTO `joel_location_area` VALUES ('943', '94', '开化县', '324300');
INSERT INTO `joel_location_area` VALUES ('944', '94', '龙游县', '324400');
INSERT INTO `joel_location_area` VALUES ('945', '94', '江山市', '324100');
INSERT INTO `joel_location_area` VALUES ('946', '95', '定海区', '316000');
INSERT INTO `joel_location_area` VALUES ('947', '95', '普陀区', '316100');
INSERT INTO `joel_location_area` VALUES ('948', '95', '岱山县', '316200');
INSERT INTO `joel_location_area` VALUES ('949', '95', '嵊泗县', '202450');
INSERT INTO `joel_location_area` VALUES ('950', '96', '椒江区', '318000');
INSERT INTO `joel_location_area` VALUES ('951', '96', '路桥区', '318050');
INSERT INTO `joel_location_area` VALUES ('952', '96', '黄岩区', '318020');
INSERT INTO `joel_location_area` VALUES ('953', '96', '玉环县', '317600');
INSERT INTO `joel_location_area` VALUES ('954', '96', '三门县', '317100');
INSERT INTO `joel_location_area` VALUES ('955', '96', '天台县', '317200');
INSERT INTO `joel_location_area` VALUES ('956', '96', '仙居县', '317300');
INSERT INTO `joel_location_area` VALUES ('957', '96', '温岭市', '317500');
INSERT INTO `joel_location_area` VALUES ('958', '96', '临海市', '317000');
INSERT INTO `joel_location_area` VALUES ('959', '97', '莲都区', '323000');
INSERT INTO `joel_location_area` VALUES ('960', '97', '青田县', '323900');
INSERT INTO `joel_location_area` VALUES ('961', '97', '缙云县', '321400');
INSERT INTO `joel_location_area` VALUES ('962', '97', '遂昌县', '323300');
INSERT INTO `joel_location_area` VALUES ('963', '97', '松阳县', '323400');
INSERT INTO `joel_location_area` VALUES ('964', '97', '云和县', '323600');
INSERT INTO `joel_location_area` VALUES ('965', '97', '庆元县', '323800');
INSERT INTO `joel_location_area` VALUES ('966', '97', '景宁畲族自治县', '323500');
INSERT INTO `joel_location_area` VALUES ('967', '97', '龙泉市', '323700');
INSERT INTO `joel_location_area` VALUES ('968', '98', '瑶海区', '230011');
INSERT INTO `joel_location_area` VALUES ('969', '98', '庐阳区', '230001');
INSERT INTO `joel_location_area` VALUES ('970', '98', '蜀山区', '230031');
INSERT INTO `joel_location_area` VALUES ('971', '98', '包河区', '230041');
INSERT INTO `joel_location_area` VALUES ('972', '98', '长丰县', '231100');
INSERT INTO `joel_location_area` VALUES ('973', '98', '肥东县', '231600');
INSERT INTO `joel_location_area` VALUES ('974', '98', '肥西县', '231200');
INSERT INTO `joel_location_area` VALUES ('975', '98', '经济技术开发区', '230601');
INSERT INTO `joel_location_area` VALUES ('976', '98', '新站试验区', '230011');
INSERT INTO `joel_location_area` VALUES ('977', '98', '政务文化新区', '230066');
INSERT INTO `joel_location_area` VALUES ('978', '98', '高新技术产业开发区', '230088');
INSERT INTO `joel_location_area` VALUES ('979', '99', '镜湖区', '241000');
INSERT INTO `joel_location_area` VALUES ('980', '99', '鸠江区', '241000');
INSERT INTO `joel_location_area` VALUES ('981', '99', '芜湖县', '241100');
INSERT INTO `joel_location_area` VALUES ('982', '99', '繁昌县', '241200');
INSERT INTO `joel_location_area` VALUES ('983', '99', '南陵县', '242400');
INSERT INTO `joel_location_area` VALUES ('984', '99', '弋江区', '');
INSERT INTO `joel_location_area` VALUES ('985', '99', '三山区', '241000');
INSERT INTO `joel_location_area` VALUES ('986', '100', '龙子湖区', '233000');
INSERT INTO `joel_location_area` VALUES ('987', '100', '蚌山区', '233000');
INSERT INTO `joel_location_area` VALUES ('988', '100', '禹会区', '233000');
INSERT INTO `joel_location_area` VALUES ('989', '100', '淮上区', '233000');
INSERT INTO `joel_location_area` VALUES ('990', '100', '怀远县', '233400');
INSERT INTO `joel_location_area` VALUES ('991', '100', '五河县', '233300');
INSERT INTO `joel_location_area` VALUES ('992', '100', '固镇县', '233700');
INSERT INTO `joel_location_area` VALUES ('993', '101', '大通区', '232033');
INSERT INTO `joel_location_area` VALUES ('994', '101', '田家庵区', '232000');
INSERT INTO `joel_location_area` VALUES ('995', '101', '谢家集区', '232052');
INSERT INTO `joel_location_area` VALUES ('996', '101', '八公山区', '232072');
INSERT INTO `joel_location_area` VALUES ('997', '101', '潘集区', '232082');
INSERT INTO `joel_location_area` VALUES ('998', '101', '凤台县', '232100');
INSERT INTO `joel_location_area` VALUES ('999', '102', '雨山区', '243071');
INSERT INTO `joel_location_area` VALUES ('1000', '102', '花山区', '243000');
INSERT INTO `joel_location_area` VALUES ('1001', '102', '金家庄区', '243021');
INSERT INTO `joel_location_area` VALUES ('1002', '102', '当涂县', '243100');
INSERT INTO `joel_location_area` VALUES ('1003', '102', '经济技术开发区', '243041');
INSERT INTO `joel_location_area` VALUES ('1004', '103', '杜集区', '235000');
INSERT INTO `joel_location_area` VALUES ('1005', '103', '相山区', '235000');
INSERT INTO `joel_location_area` VALUES ('1006', '103', '烈山区', '235000');
INSERT INTO `joel_location_area` VALUES ('1007', '103', '濉溪县', '235100');
INSERT INTO `joel_location_area` VALUES ('1008', '104', '铜官山区', '244000');
INSERT INTO `joel_location_area` VALUES ('1009', '104', '狮子山区', '244000');
INSERT INTO `joel_location_area` VALUES ('1010', '104', '郊区', '244000');
INSERT INTO `joel_location_area` VALUES ('1011', '104', '铜陵县', '244100');
INSERT INTO `joel_location_area` VALUES ('1012', '105', '迎江区', '246001');
INSERT INTO `joel_location_area` VALUES ('1013', '105', '大观区', '246002');
INSERT INTO `joel_location_area` VALUES ('1014', '105', '怀宁县', '246100');
INSERT INTO `joel_location_area` VALUES ('1015', '105', '枞阳县', '246700');
INSERT INTO `joel_location_area` VALUES ('1016', '105', '潜山县', '246300');
INSERT INTO `joel_location_area` VALUES ('1017', '105', '太湖县', '246400');
INSERT INTO `joel_location_area` VALUES ('1018', '105', '宿松县', '246500');
INSERT INTO `joel_location_area` VALUES ('1019', '105', '望江县', '246200');
INSERT INTO `joel_location_area` VALUES ('1020', '105', '岳西县', '246600');
INSERT INTO `joel_location_area` VALUES ('1021', '105', '桐城市', '231400');
INSERT INTO `joel_location_area` VALUES ('1022', '105', '宜秀区', '246003');
INSERT INTO `joel_location_area` VALUES ('1023', '106', '屯溪区', '245000');
INSERT INTO `joel_location_area` VALUES ('1024', '106', '黄山区', '242700');
INSERT INTO `joel_location_area` VALUES ('1025', '106', '徽州区', '245061');
INSERT INTO `joel_location_area` VALUES ('1026', '106', '歙县', '245200');
INSERT INTO `joel_location_area` VALUES ('1027', '106', '休宁县', '245400');
INSERT INTO `joel_location_area` VALUES ('1028', '106', '黟县', '245500');
INSERT INTO `joel_location_area` VALUES ('1029', '106', '祁门县', '245600');
INSERT INTO `joel_location_area` VALUES ('1030', '107', '琅琊区', '239000');
INSERT INTO `joel_location_area` VALUES ('1031', '107', '南谯区', '239000');
INSERT INTO `joel_location_area` VALUES ('1032', '107', '来安县', '239200');
INSERT INTO `joel_location_area` VALUES ('1033', '107', '全椒县', '239500');
INSERT INTO `joel_location_area` VALUES ('1034', '107', '定远县', '233200');
INSERT INTO `joel_location_area` VALUES ('1035', '107', '凤阳县', '233100');
INSERT INTO `joel_location_area` VALUES ('1036', '107', '天长市', '239300');
INSERT INTO `joel_location_area` VALUES ('1037', '107', '明光市', '239400');
INSERT INTO `joel_location_area` VALUES ('1038', '108', '颍州区', '236001');
INSERT INTO `joel_location_area` VALUES ('1039', '108', '颍东区', '236058');
INSERT INTO `joel_location_area` VALUES ('1040', '108', '颍泉区', '236045');
INSERT INTO `joel_location_area` VALUES ('1041', '108', '临泉县', '236400');
INSERT INTO `joel_location_area` VALUES ('1042', '108', '太和县', '236600');
INSERT INTO `joel_location_area` VALUES ('1043', '108', '阜南县', '236300');
INSERT INTO `joel_location_area` VALUES ('1044', '108', '颍上县', '236200');
INSERT INTO `joel_location_area` VALUES ('1045', '108', '界首市', '236500');
INSERT INTO `joel_location_area` VALUES ('1046', '108', '经济开发区', '236112');
INSERT INTO `joel_location_area` VALUES ('1047', '109', '埇桥区', '234000');
INSERT INTO `joel_location_area` VALUES ('1048', '109', '砀山县', '235300');
INSERT INTO `joel_location_area` VALUES ('1049', '109', '萧县', '235200');
INSERT INTO `joel_location_area` VALUES ('1050', '109', '灵璧县', '234200');
INSERT INTO `joel_location_area` VALUES ('1051', '109', '泗县', '234300');
INSERT INTO `joel_location_area` VALUES ('1052', '110', '居巢区', '238000');
INSERT INTO `joel_location_area` VALUES ('1053', '110', '庐江县', '231500');
INSERT INTO `joel_location_area` VALUES ('1054', '110', '无为县', '238300');
INSERT INTO `joel_location_area` VALUES ('1055', '110', '含山县', '238100');
INSERT INTO `joel_location_area` VALUES ('1056', '110', '和县', '238200');
INSERT INTO `joel_location_area` VALUES ('1057', '111', '金安区', '237000');
INSERT INTO `joel_location_area` VALUES ('1058', '111', '裕安区', '237010');
INSERT INTO `joel_location_area` VALUES ('1059', '111', '寿县', '232200');
INSERT INTO `joel_location_area` VALUES ('1060', '111', '霍邱县', '237400');
INSERT INTO `joel_location_area` VALUES ('1061', '111', '舒城县', '231300');
INSERT INTO `joel_location_area` VALUES ('1062', '111', '金寨县', '237300');
INSERT INTO `joel_location_area` VALUES ('1063', '111', '霍山县', '237200');
INSERT INTO `joel_location_area` VALUES ('1064', '112', '谯城区', '236800');
INSERT INTO `joel_location_area` VALUES ('1065', '112', '涡阳县', '233600');
INSERT INTO `joel_location_area` VALUES ('1066', '112', '蒙城县', '233500');
INSERT INTO `joel_location_area` VALUES ('1067', '112', '利辛县', '236700');
INSERT INTO `joel_location_area` VALUES ('1068', '113', '贵池区', '247100');
INSERT INTO `joel_location_area` VALUES ('1069', '113', '东至县', '247200');
INSERT INTO `joel_location_area` VALUES ('1070', '113', '石台县', '245100');
INSERT INTO `joel_location_area` VALUES ('1071', '113', '青阳县', '242800');
INSERT INTO `joel_location_area` VALUES ('1072', '114', '宣州区', '242000');
INSERT INTO `joel_location_area` VALUES ('1073', '114', '郎溪县', '242100');
INSERT INTO `joel_location_area` VALUES ('1074', '114', '广德县', '242200');
INSERT INTO `joel_location_area` VALUES ('1075', '114', '泾县', '242500');
INSERT INTO `joel_location_area` VALUES ('1076', '114', '绩溪县', '245300');
INSERT INTO `joel_location_area` VALUES ('1077', '114', '旌德县', '242600');
INSERT INTO `joel_location_area` VALUES ('1078', '114', '宁国市', '242300');
INSERT INTO `joel_location_area` VALUES ('1079', '115', '鼓楼区', '350001');
INSERT INTO `joel_location_area` VALUES ('1080', '115', '台江区', '350004');
INSERT INTO `joel_location_area` VALUES ('1081', '115', '仓山区', '350007');
INSERT INTO `joel_location_area` VALUES ('1082', '115', '马尾区', '350015');
INSERT INTO `joel_location_area` VALUES ('1083', '115', '晋安区', '350011');
INSERT INTO `joel_location_area` VALUES ('1084', '115', '闽侯县', '350100');
INSERT INTO `joel_location_area` VALUES ('1085', '115', '连江县', '350500');
INSERT INTO `joel_location_area` VALUES ('1086', '115', '罗源县', '350600');
INSERT INTO `joel_location_area` VALUES ('1087', '115', '闽清县', '350800');
INSERT INTO `joel_location_area` VALUES ('1088', '115', '永泰县', '350700');
INSERT INTO `joel_location_area` VALUES ('1089', '115', '平潭县', '350400');
INSERT INTO `joel_location_area` VALUES ('1090', '115', '福清市', '350300');
INSERT INTO `joel_location_area` VALUES ('1091', '115', '长乐市', '350200');
INSERT INTO `joel_location_area` VALUES ('1092', '116', '思明区', '361001');
INSERT INTO `joel_location_area` VALUES ('1093', '116', '海沧区', '361026');
INSERT INTO `joel_location_area` VALUES ('1094', '116', '湖里区', '361006');
INSERT INTO `joel_location_area` VALUES ('1095', '116', '集美区', '361021');
INSERT INTO `joel_location_area` VALUES ('1096', '116', '同安区', '361100');
INSERT INTO `joel_location_area` VALUES ('1097', '116', '翔安区', '361101');
INSERT INTO `joel_location_area` VALUES ('1098', '116', '鼓浪屿区', '361002');
INSERT INTO `joel_location_area` VALUES ('1099', '116', '象屿保税区', '361006');
INSERT INTO `joel_location_area` VALUES ('1100', '116', '火炬高新区', '361006');
INSERT INTO `joel_location_area` VALUES ('1101', '117', '城厢区', '351100');
INSERT INTO `joel_location_area` VALUES ('1102', '117', '涵江区', '351111');
INSERT INTO `joel_location_area` VALUES ('1103', '117', '荔城区', '351100');
INSERT INTO `joel_location_area` VALUES ('1104', '117', '秀屿区', '351152');
INSERT INTO `joel_location_area` VALUES ('1105', '117', '仙游县', '351200');
INSERT INTO `joel_location_area` VALUES ('1106', '118', '梅列区', '365000');
INSERT INTO `joel_location_area` VALUES ('1107', '118', '三元区', '365001');
INSERT INTO `joel_location_area` VALUES ('1108', '118', '明溪县', '365200');
INSERT INTO `joel_location_area` VALUES ('1109', '118', '清流县', '365300');
INSERT INTO `joel_location_area` VALUES ('1110', '118', '宁化县', '365400');
INSERT INTO `joel_location_area` VALUES ('1111', '118', '大田县', '366100');
INSERT INTO `joel_location_area` VALUES ('1112', '118', '尤溪县', '365100');
INSERT INTO `joel_location_area` VALUES ('1113', '118', '沙县', '365500');
INSERT INTO `joel_location_area` VALUES ('1114', '118', '将乐县', '353300');
INSERT INTO `joel_location_area` VALUES ('1115', '118', '泰宁县', '354400');
INSERT INTO `joel_location_area` VALUES ('1116', '118', '建宁县', '354500');
INSERT INTO `joel_location_area` VALUES ('1117', '118', '永安市', '366000');
INSERT INTO `joel_location_area` VALUES ('1118', '119', '鲤城区', '362000');
INSERT INTO `joel_location_area` VALUES ('1119', '119', '丰泽区', '362000');
INSERT INTO `joel_location_area` VALUES ('1120', '119', '洛江区', '362011');
INSERT INTO `joel_location_area` VALUES ('1121', '119', '泉港区', '362114');
INSERT INTO `joel_location_area` VALUES ('1122', '119', '惠安县', '362100');
INSERT INTO `joel_location_area` VALUES ('1123', '119', '安溪县', '362400');
INSERT INTO `joel_location_area` VALUES ('1124', '119', '永春县', '362600');
INSERT INTO `joel_location_area` VALUES ('1125', '119', '德化县', '362500');
INSERT INTO `joel_location_area` VALUES ('1126', '119', '金门县', '362000');
INSERT INTO `joel_location_area` VALUES ('1127', '119', '石狮市', '362700');
INSERT INTO `joel_location_area` VALUES ('1128', '119', '晋江市', '362200');
INSERT INTO `joel_location_area` VALUES ('1129', '119', '南安市', '362300');
INSERT INTO `joel_location_area` VALUES ('1130', '119', '经济技术开发区', '362005');
INSERT INTO `joel_location_area` VALUES ('1131', '120', '芗城区', '363000');
INSERT INTO `joel_location_area` VALUES ('1132', '120', '龙文区', '363005');
INSERT INTO `joel_location_area` VALUES ('1133', '120', '云霄县', '363300');
INSERT INTO `joel_location_area` VALUES ('1134', '120', '漳浦县', '363200');
INSERT INTO `joel_location_area` VALUES ('1135', '120', '诏安县', '363500');
INSERT INTO `joel_location_area` VALUES ('1136', '120', '长泰县', '363900');
INSERT INTO `joel_location_area` VALUES ('1137', '120', '东山县', '363400');
INSERT INTO `joel_location_area` VALUES ('1138', '120', '南靖县', '363600');
INSERT INTO `joel_location_area` VALUES ('1139', '120', '平和县', '363700');
INSERT INTO `joel_location_area` VALUES ('1140', '120', '华安县', '363800');
INSERT INTO `joel_location_area` VALUES ('1141', '120', '龙海市', '363100');
INSERT INTO `joel_location_area` VALUES ('1142', '121', '延平区', '353000');
INSERT INTO `joel_location_area` VALUES ('1143', '121', '顺昌县', '353200');
INSERT INTO `joel_location_area` VALUES ('1144', '121', '浦城县', '353400');
INSERT INTO `joel_location_area` VALUES ('1145', '121', '光泽县', '354100');
INSERT INTO `joel_location_area` VALUES ('1146', '121', '松溪县', '353500');
INSERT INTO `joel_location_area` VALUES ('1147', '121', '政和县', '353600');
INSERT INTO `joel_location_area` VALUES ('1148', '121', '邵武市', '354000');
INSERT INTO `joel_location_area` VALUES ('1149', '121', '武夷山市', '354300');
INSERT INTO `joel_location_area` VALUES ('1150', '121', '建瓯市', '353100');
INSERT INTO `joel_location_area` VALUES ('1151', '121', '建阳市', '354200');
INSERT INTO `joel_location_area` VALUES ('1152', '122', '新罗区', '364000');
INSERT INTO `joel_location_area` VALUES ('1153', '122', '长汀县', '366300');
INSERT INTO `joel_location_area` VALUES ('1154', '122', '永定县', '364100');
INSERT INTO `joel_location_area` VALUES ('1155', '122', '上杭县', '364200');
INSERT INTO `joel_location_area` VALUES ('1156', '122', '武平县', '364300');
INSERT INTO `joel_location_area` VALUES ('1157', '122', '连城县', '366200');
INSERT INTO `joel_location_area` VALUES ('1158', '122', '漳平市', '364400');
INSERT INTO `joel_location_area` VALUES ('1159', '123', '蕉城区', '352100');
INSERT INTO `joel_location_area` VALUES ('1160', '123', '霞浦县', '355100');
INSERT INTO `joel_location_area` VALUES ('1161', '123', '古田县', '352200');
INSERT INTO `joel_location_area` VALUES ('1162', '123', '屏南县', '352300');
INSERT INTO `joel_location_area` VALUES ('1163', '123', '寿宁县', '355500');
INSERT INTO `joel_location_area` VALUES ('1164', '123', '周宁县', '355400');
INSERT INTO `joel_location_area` VALUES ('1165', '123', '柘荣县', '355300');
INSERT INTO `joel_location_area` VALUES ('1166', '123', '福安市', '355000');
INSERT INTO `joel_location_area` VALUES ('1167', '123', '福鼎市', '355200');
INSERT INTO `joel_location_area` VALUES ('1168', '124', '东湖区', '330006');
INSERT INTO `joel_location_area` VALUES ('1169', '124', '西湖区', '330009');
INSERT INTO `joel_location_area` VALUES ('1170', '124', '青云谱区', '330001');
INSERT INTO `joel_location_area` VALUES ('1171', '124', '湾里区', '330004');
INSERT INTO `joel_location_area` VALUES ('1172', '124', '青山湖区', '330029');
INSERT INTO `joel_location_area` VALUES ('1173', '124', '南昌县', '330200');
INSERT INTO `joel_location_area` VALUES ('1174', '124', '新建县', '330100');
INSERT INTO `joel_location_area` VALUES ('1175', '124', '安义县', '330500');
INSERT INTO `joel_location_area` VALUES ('1176', '124', '进贤县', '331700');
INSERT INTO `joel_location_area` VALUES ('1177', '124', '经济技术开发区', '330013');
INSERT INTO `joel_location_area` VALUES ('1178', '124', '红谷滩新区', '330038');
INSERT INTO `joel_location_area` VALUES ('1179', '124', '高新技术产业开发区', '330029');
INSERT INTO `joel_location_area` VALUES ('1180', '124', '桑海经济技术开发区', '330115');
INSERT INTO `joel_location_area` VALUES ('1181', '124', '英雄经济开发区', '330200');
INSERT INTO `joel_location_area` VALUES ('1182', '125', '昌江区', '333000');
INSERT INTO `joel_location_area` VALUES ('1183', '125', '珠山区', '333000');
INSERT INTO `joel_location_area` VALUES ('1184', '125', '浮梁县', '333400');
INSERT INTO `joel_location_area` VALUES ('1185', '125', '乐平市', '333300');
INSERT INTO `joel_location_area` VALUES ('1186', '126', '安源区', '337000');
INSERT INTO `joel_location_area` VALUES ('1187', '126', '湘东区', '337016');
INSERT INTO `joel_location_area` VALUES ('1188', '126', '莲花县', '337100');
INSERT INTO `joel_location_area` VALUES ('1189', '126', '上栗县', '337009');
INSERT INTO `joel_location_area` VALUES ('1190', '126', '芦溪县', '337053');
INSERT INTO `joel_location_area` VALUES ('1191', '127', '庐山区', '332005');
INSERT INTO `joel_location_area` VALUES ('1192', '127', '浔阳区', '332000');
INSERT INTO `joel_location_area` VALUES ('1193', '127', '九江县', '332100');
INSERT INTO `joel_location_area` VALUES ('1194', '127', '武宁县', '332300');
INSERT INTO `joel_location_area` VALUES ('1195', '127', '修水县', '332400');
INSERT INTO `joel_location_area` VALUES ('1196', '127', '永修县', '330300');
INSERT INTO `joel_location_area` VALUES ('1197', '127', '德安县', '330400');
INSERT INTO `joel_location_area` VALUES ('1198', '127', '星子县', '332800');
INSERT INTO `joel_location_area` VALUES ('1199', '127', '都昌县', '332600');
INSERT INTO `joel_location_area` VALUES ('1200', '127', '湖口县', '332500');
INSERT INTO `joel_location_area` VALUES ('1201', '127', '彭泽县', '332700');
INSERT INTO `joel_location_area` VALUES ('1202', '127', '瑞昌市', '332200');
INSERT INTO `joel_location_area` VALUES ('1203', '128', '渝水区', '338025');
INSERT INTO `joel_location_area` VALUES ('1204', '128', '分宜县', '336600');
INSERT INTO `joel_location_area` VALUES ('1205', '129', '月湖区', '335000');
INSERT INTO `joel_location_area` VALUES ('1206', '129', '余江县', '335200');
INSERT INTO `joel_location_area` VALUES ('1207', '129', '贵溪市', '335400');
INSERT INTO `joel_location_area` VALUES ('1208', '130', '章贡区', '341000');
INSERT INTO `joel_location_area` VALUES ('1209', '130', '赣县', '341100');
INSERT INTO `joel_location_area` VALUES ('1210', '130', '信丰县', '341600');
INSERT INTO `joel_location_area` VALUES ('1211', '130', '大余县', '341500');
INSERT INTO `joel_location_area` VALUES ('1212', '130', '上犹县', '341200');
INSERT INTO `joel_location_area` VALUES ('1213', '130', '崇义县', '341300');
INSERT INTO `joel_location_area` VALUES ('1214', '130', '安远县', '342100');
INSERT INTO `joel_location_area` VALUES ('1215', '130', '龙南县', '341700');
INSERT INTO `joel_location_area` VALUES ('1216', '130', '定南县', '341900');
INSERT INTO `joel_location_area` VALUES ('1217', '130', '全南县', '341800');
INSERT INTO `joel_location_area` VALUES ('1218', '130', '宁都县', '342800');
INSERT INTO `joel_location_area` VALUES ('1219', '130', '于都县', '342300');
INSERT INTO `joel_location_area` VALUES ('1220', '130', '兴国县', '342400');
INSERT INTO `joel_location_area` VALUES ('1221', '130', '会昌县', '342600');
INSERT INTO `joel_location_area` VALUES ('1222', '130', '寻乌县', '342200');
INSERT INTO `joel_location_area` VALUES ('1223', '130', '石城县', '342700');
INSERT INTO `joel_location_area` VALUES ('1224', '130', '瑞金市', '342500');
INSERT INTO `joel_location_area` VALUES ('1225', '130', '南康市', '341400');
INSERT INTO `joel_location_area` VALUES ('1226', '131', '吉州区', '343000');
INSERT INTO `joel_location_area` VALUES ('1227', '131', '青原区', '343009');
INSERT INTO `joel_location_area` VALUES ('1228', '131', '吉安县', '343100');
INSERT INTO `joel_location_area` VALUES ('1229', '131', '吉水县', '331600');
INSERT INTO `joel_location_area` VALUES ('1230', '131', '峡江县', '331400');
INSERT INTO `joel_location_area` VALUES ('1231', '131', '新干县', '331300');
INSERT INTO `joel_location_area` VALUES ('1232', '131', '永丰县', '331500');
INSERT INTO `joel_location_area` VALUES ('1233', '131', '泰和县', '343700');
INSERT INTO `joel_location_area` VALUES ('1234', '131', '遂川县', '343900');
INSERT INTO `joel_location_area` VALUES ('1235', '131', '万安县', '343800');
INSERT INTO `joel_location_area` VALUES ('1236', '131', '安福县', '343200');
INSERT INTO `joel_location_area` VALUES ('1237', '131', '永新县', '343400');
INSERT INTO `joel_location_area` VALUES ('1238', '131', '井冈山市', '343600');
INSERT INTO `joel_location_area` VALUES ('1239', '132', '袁州区', '336000');
INSERT INTO `joel_location_area` VALUES ('1240', '132', '奉新县', '330700');
INSERT INTO `joel_location_area` VALUES ('1241', '132', '万载县', '336100');
INSERT INTO `joel_location_area` VALUES ('1242', '132', '上高县', '336400');
INSERT INTO `joel_location_area` VALUES ('1243', '132', '宜丰县', '336300');
INSERT INTO `joel_location_area` VALUES ('1244', '132', '靖安县', '330600');
INSERT INTO `joel_location_area` VALUES ('1245', '132', '铜鼓县', '336200');
INSERT INTO `joel_location_area` VALUES ('1246', '132', '丰城市', '331100');
INSERT INTO `joel_location_area` VALUES ('1247', '132', '樟树市', '331200');
INSERT INTO `joel_location_area` VALUES ('1248', '132', '高安市', '330800');
INSERT INTO `joel_location_area` VALUES ('1249', '133', '临川区', '344100');
INSERT INTO `joel_location_area` VALUES ('1250', '133', '南城县', '344700');
INSERT INTO `joel_location_area` VALUES ('1251', '133', '黎川县', '344600');
INSERT INTO `joel_location_area` VALUES ('1252', '133', '南丰县', '344500');
INSERT INTO `joel_location_area` VALUES ('1253', '133', '崇仁县', '344200');
INSERT INTO `joel_location_area` VALUES ('1254', '133', '乐安县', '344300');
INSERT INTO `joel_location_area` VALUES ('1255', '133', '宜黄县', '344400');
INSERT INTO `joel_location_area` VALUES ('1256', '133', '金溪县', '344800');
INSERT INTO `joel_location_area` VALUES ('1257', '133', '资溪县', '335300');
INSERT INTO `joel_location_area` VALUES ('1258', '133', '东乡县', '331800');
INSERT INTO `joel_location_area` VALUES ('1259', '133', '广昌县', '344900');
INSERT INTO `joel_location_area` VALUES ('1260', '134', '信州区', '334000');
INSERT INTO `joel_location_area` VALUES ('1261', '134', '上饶县', '334100');
INSERT INTO `joel_location_area` VALUES ('1262', '134', '广丰县', '334600');
INSERT INTO `joel_location_area` VALUES ('1263', '134', '玉山县', '334700');
INSERT INTO `joel_location_area` VALUES ('1264', '134', '铅山县', '334500');
INSERT INTO `joel_location_area` VALUES ('1265', '134', '横峰县', '334300');
INSERT INTO `joel_location_area` VALUES ('1266', '134', '弋阳县', '334400');
INSERT INTO `joel_location_area` VALUES ('1267', '134', '余干县', '335100');
INSERT INTO `joel_location_area` VALUES ('1268', '134', '鄱阳县', '333100');
INSERT INTO `joel_location_area` VALUES ('1269', '134', '万年县', '335500');
INSERT INTO `joel_location_area` VALUES ('1270', '134', '婺源县', '333200');
INSERT INTO `joel_location_area` VALUES ('1271', '134', '德兴市', '334200');
INSERT INTO `joel_location_area` VALUES ('1272', '135', '历下区', '250014');
INSERT INTO `joel_location_area` VALUES ('1273', '135', '市中区', '250001');
INSERT INTO `joel_location_area` VALUES ('1274', '135', '槐荫区', '250022');
INSERT INTO `joel_location_area` VALUES ('1275', '135', '天桥区', '250031');
INSERT INTO `joel_location_area` VALUES ('1276', '135', '历城区', '250100');
INSERT INTO `joel_location_area` VALUES ('1277', '135', '长清区', '250300');
INSERT INTO `joel_location_area` VALUES ('1278', '135', '平阴县', '250400');
INSERT INTO `joel_location_area` VALUES ('1279', '135', '济阳县', '251400');
INSERT INTO `joel_location_area` VALUES ('1280', '135', '商河县', '251600');
INSERT INTO `joel_location_area` VALUES ('1281', '135', '章丘市', '250200');
INSERT INTO `joel_location_area` VALUES ('1282', '135', '高新区', '250101');
INSERT INTO `joel_location_area` VALUES ('1283', '135', '经济开发区', '250300');
INSERT INTO `joel_location_area` VALUES ('1284', '136', '市南区', '266001');
INSERT INTO `joel_location_area` VALUES ('1285', '136', '市北区', '266011');
INSERT INTO `joel_location_area` VALUES ('1286', '136', '四方区', '266031');
INSERT INTO `joel_location_area` VALUES ('1287', '136', '黄岛区', '266500');
INSERT INTO `joel_location_area` VALUES ('1288', '136', '崂山区', '266100');
INSERT INTO `joel_location_area` VALUES ('1289', '136', '李沧区', '266021');
INSERT INTO `joel_location_area` VALUES ('1290', '136', '城阳区', '266041');
INSERT INTO `joel_location_area` VALUES ('1291', '136', '胶州市', '266300');
INSERT INTO `joel_location_area` VALUES ('1292', '136', '即墨市', '266200');
INSERT INTO `joel_location_area` VALUES ('1293', '136', '平度市', '266700');
INSERT INTO `joel_location_area` VALUES ('1294', '136', '胶南市', '266400');
INSERT INTO `joel_location_area` VALUES ('1295', '136', '莱西市', '266600');
INSERT INTO `joel_location_area` VALUES ('1296', '137', '淄川区', '255100');
INSERT INTO `joel_location_area` VALUES ('1297', '137', '张店区', '255022');
INSERT INTO `joel_location_area` VALUES ('1298', '137', '博山区', '255200');
INSERT INTO `joel_location_area` VALUES ('1299', '137', '临淄区', '255400');
INSERT INTO `joel_location_area` VALUES ('1300', '137', '周村区', '255300');
INSERT INTO `joel_location_area` VALUES ('1301', '137', '桓台县', '256400');
INSERT INTO `joel_location_area` VALUES ('1302', '137', '高青县', '256300');
INSERT INTO `joel_location_area` VALUES ('1303', '137', '沂源县', '256100');
INSERT INTO `joel_location_area` VALUES ('1304', '137', '高新区', '255086');
INSERT INTO `joel_location_area` VALUES ('1305', '138', '市中区', '277101');
INSERT INTO `joel_location_area` VALUES ('1306', '138', '薛城区', '277000');
INSERT INTO `joel_location_area` VALUES ('1307', '138', '峄城区', '277300');
INSERT INTO `joel_location_area` VALUES ('1308', '138', '台儿庄区', '277400');
INSERT INTO `joel_location_area` VALUES ('1309', '138', '山亭区', '277200');
INSERT INTO `joel_location_area` VALUES ('1310', '138', '滕州市', '277500');
INSERT INTO `joel_location_area` VALUES ('1311', '139', '东营区', '257029');
INSERT INTO `joel_location_area` VALUES ('1312', '139', '河口区', '257200');
INSERT INTO `joel_location_area` VALUES ('1313', '139', '垦利县', '257500');
INSERT INTO `joel_location_area` VALUES ('1314', '139', '利津县', '257400');
INSERT INTO `joel_location_area` VALUES ('1315', '139', '广饶县', '257300');
INSERT INTO `joel_location_area` VALUES ('1316', '140', '芝罘区', '264001');
INSERT INTO `joel_location_area` VALUES ('1317', '140', '福山区', '265500');
INSERT INTO `joel_location_area` VALUES ('1318', '140', '牟平区', '264100');
INSERT INTO `joel_location_area` VALUES ('1319', '140', '莱山区', '264600');
INSERT INTO `joel_location_area` VALUES ('1320', '140', '长岛县', '265800');
INSERT INTO `joel_location_area` VALUES ('1321', '140', '龙口市', '265700');
INSERT INTO `joel_location_area` VALUES ('1322', '140', '莱阳市', '265200');
INSERT INTO `joel_location_area` VALUES ('1323', '140', '莱州市', '261400');
INSERT INTO `joel_location_area` VALUES ('1324', '140', '蓬莱市', '265600');
INSERT INTO `joel_location_area` VALUES ('1325', '140', '招远市', '265400');
INSERT INTO `joel_location_area` VALUES ('1326', '140', '栖霞市', '265300');
INSERT INTO `joel_location_area` VALUES ('1327', '140', '海阳市', '265100');
INSERT INTO `joel_location_area` VALUES ('1328', '140', '开发区', '264006');
INSERT INTO `joel_location_area` VALUES ('1329', '141', '潍城区', '261021');
INSERT INTO `joel_location_area` VALUES ('1330', '141', '寒亭区', '261100');
INSERT INTO `joel_location_area` VALUES ('1331', '141', '坊子区', '261200');
INSERT INTO `joel_location_area` VALUES ('1332', '141', '奎文区', '261031');
INSERT INTO `joel_location_area` VALUES ('1333', '141', '临朐县', '262600');
INSERT INTO `joel_location_area` VALUES ('1334', '141', '昌乐县', '262400');
INSERT INTO `joel_location_area` VALUES ('1335', '141', '青州市', '262500');
INSERT INTO `joel_location_area` VALUES ('1336', '141', '诸城市', '262200');
INSERT INTO `joel_location_area` VALUES ('1337', '141', '寿光市', '262700');
INSERT INTO `joel_location_area` VALUES ('1338', '141', '安丘市', '262100');
INSERT INTO `joel_location_area` VALUES ('1339', '141', '高密市', '261500');
INSERT INTO `joel_location_area` VALUES ('1340', '141', '昌邑市', '261300');
INSERT INTO `joel_location_area` VALUES ('1341', '141', '经济开发区', '261061');
INSERT INTO `joel_location_area` VALUES ('1342', '141', '滨海经济开发区', '262737');
INSERT INTO `joel_location_area` VALUES ('1343', '141', '高新技术开发区', '261061');
INSERT INTO `joel_location_area` VALUES ('1344', '141', '出口加工区', '261205');
INSERT INTO `joel_location_area` VALUES ('1345', '142', '市中区', '272133');
INSERT INTO `joel_location_area` VALUES ('1346', '142', '任城区', '272113');
INSERT INTO `joel_location_area` VALUES ('1347', '142', '微山县', '277600');
INSERT INTO `joel_location_area` VALUES ('1348', '142', '鱼台县', '272300');
INSERT INTO `joel_location_area` VALUES ('1349', '142', '金乡县', '272200');
INSERT INTO `joel_location_area` VALUES ('1350', '142', '嘉祥县', '272400');
INSERT INTO `joel_location_area` VALUES ('1351', '142', '汶上县', '272501');
INSERT INTO `joel_location_area` VALUES ('1352', '142', '泗水县', '273200');
INSERT INTO `joel_location_area` VALUES ('1353', '142', '梁山县', '272600');
INSERT INTO `joel_location_area` VALUES ('1354', '142', '曲阜市', '273100');
INSERT INTO `joel_location_area` VALUES ('1355', '142', '兖州市', '272000');
INSERT INTO `joel_location_area` VALUES ('1356', '142', '邹城市', '273500');
INSERT INTO `joel_location_area` VALUES ('1357', '143', '泰山区', '271000');
INSERT INTO `joel_location_area` VALUES ('1358', '143', '岱岳区', '271000');
INSERT INTO `joel_location_area` VALUES ('1359', '143', '宁阳县', '271400');
INSERT INTO `joel_location_area` VALUES ('1360', '143', '东平县', '271500');
INSERT INTO `joel_location_area` VALUES ('1361', '143', '新泰市', '271200');
INSERT INTO `joel_location_area` VALUES ('1362', '143', '肥城市', '271600');
INSERT INTO `joel_location_area` VALUES ('1363', '144', '环翠区', '264200');
INSERT INTO `joel_location_area` VALUES ('1364', '144', '文登市', '264400');
INSERT INTO `joel_location_area` VALUES ('1365', '144', '荣成市', '264300');
INSERT INTO `joel_location_area` VALUES ('1366', '144', '乳山市', '264500');
INSERT INTO `joel_location_area` VALUES ('1367', '144', '经济技术开发区', '264205');
INSERT INTO `joel_location_area` VALUES ('1368', '144', '高技术开发区', '264209');
INSERT INTO `joel_location_area` VALUES ('1369', '145', '东港区', '276800');
INSERT INTO `joel_location_area` VALUES ('1370', '145', '岚山区', '276808');
INSERT INTO `joel_location_area` VALUES ('1371', '145', '五莲县', '272300');
INSERT INTO `joel_location_area` VALUES ('1372', '145', '莒县', '266500');
INSERT INTO `joel_location_area` VALUES ('1373', '146', '莱城区', '271100');
INSERT INTO `joel_location_area` VALUES ('1374', '146', '钢城区', '271100');
INSERT INTO `joel_location_area` VALUES ('1375', '147', '兰山区', '276002');
INSERT INTO `joel_location_area` VALUES ('1376', '147', '罗庄区', '276022');
INSERT INTO `joel_location_area` VALUES ('1377', '147', '河东区', '276034');
INSERT INTO `joel_location_area` VALUES ('1378', '147', '沂南县', '276300');
INSERT INTO `joel_location_area` VALUES ('1379', '147', '郯城县', '276100');
INSERT INTO `joel_location_area` VALUES ('1380', '147', '沂水县', '276400');
INSERT INTO `joel_location_area` VALUES ('1381', '147', '苍山县', '277700');
INSERT INTO `joel_location_area` VALUES ('1382', '147', '费县', '273400');
INSERT INTO `joel_location_area` VALUES ('1383', '147', '平邑县', '273300');
INSERT INTO `joel_location_area` VALUES ('1384', '147', '莒南县', '276600');
INSERT INTO `joel_location_area` VALUES ('1385', '147', '蒙阴县', '276200');
INSERT INTO `joel_location_area` VALUES ('1386', '147', '临沭县', '276700');
INSERT INTO `joel_location_area` VALUES ('1387', '148', '德城区', '253011');
INSERT INTO `joel_location_area` VALUES ('1388', '148', '陵县', '253500');
INSERT INTO `joel_location_area` VALUES ('1389', '148', '宁津县', '253400');
INSERT INTO `joel_location_area` VALUES ('1390', '148', '庆云县', '253700');
INSERT INTO `joel_location_area` VALUES ('1391', '148', '临邑县', '251500');
INSERT INTO `joel_location_area` VALUES ('1392', '148', '齐河县', '251100');
INSERT INTO `joel_location_area` VALUES ('1393', '148', '平原县', '253100');
INSERT INTO `joel_location_area` VALUES ('1394', '148', '夏津县', '253200');
INSERT INTO `joel_location_area` VALUES ('1395', '148', '武城县', '253300');
INSERT INTO `joel_location_area` VALUES ('1396', '148', '乐陵市', '253600');
INSERT INTO `joel_location_area` VALUES ('1397', '148', '禹城市', '251200');
INSERT INTO `joel_location_area` VALUES ('1398', '149', '东昌府区', '252000');
INSERT INTO `joel_location_area` VALUES ('1399', '149', '阳谷县', '252300');
INSERT INTO `joel_location_area` VALUES ('1400', '149', '莘县', '252400');
INSERT INTO `joel_location_area` VALUES ('1401', '149', '茌平县', '252100');
INSERT INTO `joel_location_area` VALUES ('1402', '149', '东阿县', '252200');
INSERT INTO `joel_location_area` VALUES ('1403', '149', '冠县', '252500');
INSERT INTO `joel_location_area` VALUES ('1404', '149', '高唐县', '252800');
INSERT INTO `joel_location_area` VALUES ('1405', '149', '临清市', '252600');
INSERT INTO `joel_location_area` VALUES ('1406', '150', '滨城区', '256613');
INSERT INTO `joel_location_area` VALUES ('1407', '150', '惠民县', '251700');
INSERT INTO `joel_location_area` VALUES ('1408', '150', '阳信县', '251800');
INSERT INTO `joel_location_area` VALUES ('1409', '150', '无棣县', '251900');
INSERT INTO `joel_location_area` VALUES ('1410', '150', '沾化县', '256800');
INSERT INTO `joel_location_area` VALUES ('1411', '150', '博兴县', '256500');
INSERT INTO `joel_location_area` VALUES ('1412', '150', '邹平县', '256200');
INSERT INTO `joel_location_area` VALUES ('1413', '151', '牡丹区', '274009');
INSERT INTO `joel_location_area` VALUES ('1414', '151', '曹县', '274400');
INSERT INTO `joel_location_area` VALUES ('1415', '151', '单县', '274300');
INSERT INTO `joel_location_area` VALUES ('1416', '151', '成武县', '274200');
INSERT INTO `joel_location_area` VALUES ('1417', '151', '巨野县', '274900');
INSERT INTO `joel_location_area` VALUES ('1418', '151', '郓城县', '274700');
INSERT INTO `joel_location_area` VALUES ('1419', '151', '鄄城县', '274600');
INSERT INTO `joel_location_area` VALUES ('1420', '151', '定陶县', '274100');
INSERT INTO `joel_location_area` VALUES ('1421', '151', '东明县', '274500');
INSERT INTO `joel_location_area` VALUES ('1422', '152', '中原区', '450007');
INSERT INTO `joel_location_area` VALUES ('1423', '152', '二七区', '450052');
INSERT INTO `joel_location_area` VALUES ('1424', '152', '管城回族区', '450000');
INSERT INTO `joel_location_area` VALUES ('1425', '152', '金水区', '450003');
INSERT INTO `joel_location_area` VALUES ('1426', '152', '上街区', '450041');
INSERT INTO `joel_location_area` VALUES ('1427', '152', '中牟县', '451450');
INSERT INTO `joel_location_area` VALUES ('1428', '152', '巩义市', '451200');
INSERT INTO `joel_location_area` VALUES ('1429', '152', '荥阳市', '450100');
INSERT INTO `joel_location_area` VALUES ('1430', '152', '新密市', '452300');
INSERT INTO `joel_location_area` VALUES ('1431', '152', '新郑市', '451100');
INSERT INTO `joel_location_area` VALUES ('1432', '152', '登封市', '452470');
INSERT INTO `joel_location_area` VALUES ('1433', '152', '高新技术开发区', '450001');
INSERT INTO `joel_location_area` VALUES ('1434', '152', '惠济区', '450053');
INSERT INTO `joel_location_area` VALUES ('1435', '152', '经济技术开发区', '450016');
INSERT INTO `joel_location_area` VALUES ('1436', '152', '郑东新区', '450008');
INSERT INTO `joel_location_area` VALUES ('1437', '152', '出口加工区', '450016');
INSERT INTO `joel_location_area` VALUES ('1438', '153', '龙亭区', '475100');
INSERT INTO `joel_location_area` VALUES ('1439', '153', '顺河回族区', '475000');
INSERT INTO `joel_location_area` VALUES ('1440', '153', '鼓楼区', '475000');
INSERT INTO `joel_location_area` VALUES ('1441', '153', '杞县', '475200');
INSERT INTO `joel_location_area` VALUES ('1442', '153', '通许县', '475400');
INSERT INTO `joel_location_area` VALUES ('1443', '153', '尉氏县', '475500');
INSERT INTO `joel_location_area` VALUES ('1444', '153', '开封县', '475100');
INSERT INTO `joel_location_area` VALUES ('1445', '153', '兰考县', '475300');
INSERT INTO `joel_location_area` VALUES ('1446', '153', '金明区', '475003');
INSERT INTO `joel_location_area` VALUES ('1447', '153', '禹王台区', '475003');
INSERT INTO `joel_location_area` VALUES ('1448', '154', '老城区', '471002');
INSERT INTO `joel_location_area` VALUES ('1449', '154', '西工区', '471000');
INSERT INTO `joel_location_area` VALUES ('1450', '154', '瀍河回族区', '471002');
INSERT INTO `joel_location_area` VALUES ('1451', '154', '涧西区', '471003');
INSERT INTO `joel_location_area` VALUES ('1452', '154', '吉利区', '471012');
INSERT INTO `joel_location_area` VALUES ('1453', '154', '洛龙区', '471000');
INSERT INTO `joel_location_area` VALUES ('1454', '154', '孟津县', '471100');
INSERT INTO `joel_location_area` VALUES ('1455', '154', '新安县', '471800');
INSERT INTO `joel_location_area` VALUES ('1456', '154', '栾川县', '471500');
INSERT INTO `joel_location_area` VALUES ('1457', '154', '嵩县', '471400');
INSERT INTO `joel_location_area` VALUES ('1458', '154', '汝阳县', '471200');
INSERT INTO `joel_location_area` VALUES ('1459', '154', '宜阳县', '471600');
INSERT INTO `joel_location_area` VALUES ('1460', '154', '洛宁县', '471700');
INSERT INTO `joel_location_area` VALUES ('1461', '154', '伊川县', '471300');
INSERT INTO `joel_location_area` VALUES ('1462', '154', '偃师市', '471900');
INSERT INTO `joel_location_area` VALUES ('1463', '154', '高新技术开发区', '471003');
INSERT INTO `joel_location_area` VALUES ('1464', '154', '经济技术开发区', '471023');
INSERT INTO `joel_location_area` VALUES ('1465', '155', '新华区', '467002');
INSERT INTO `joel_location_area` VALUES ('1466', '155', '卫东区', '467021');
INSERT INTO `joel_location_area` VALUES ('1467', '155', '石龙区', '467045');
INSERT INTO `joel_location_area` VALUES ('1468', '155', '湛河区', '467000');
INSERT INTO `joel_location_area` VALUES ('1469', '155', '宝丰县', '467400');
INSERT INTO `joel_location_area` VALUES ('1470', '155', '叶县', '467200');
INSERT INTO `joel_location_area` VALUES ('1471', '155', '鲁山县', '467300');
INSERT INTO `joel_location_area` VALUES ('1472', '155', '郏县', '467100');
INSERT INTO `joel_location_area` VALUES ('1473', '155', '舞钢市', '462500');
INSERT INTO `joel_location_area` VALUES ('1474', '155', '汝州市', '467500');
INSERT INTO `joel_location_area` VALUES ('1475', '156', '文峰区', '455000');
INSERT INTO `joel_location_area` VALUES ('1476', '156', '北关区', '455001');
INSERT INTO `joel_location_area` VALUES ('1477', '156', '殷都区', '455004');
INSERT INTO `joel_location_area` VALUES ('1478', '156', '龙安区', '455001');
INSERT INTO `joel_location_area` VALUES ('1479', '156', '安阳县', '455000');
INSERT INTO `joel_location_area` VALUES ('1480', '156', '汤阴县', '456150');
INSERT INTO `joel_location_area` VALUES ('1481', '156', '滑县', '456400');
INSERT INTO `joel_location_area` VALUES ('1482', '156', '内黄县', '456350');
INSERT INTO `joel_location_area` VALUES ('1483', '156', '林州市', '456500');
INSERT INTO `joel_location_area` VALUES ('1484', '157', '鹤山区', '458010');
INSERT INTO `joel_location_area` VALUES ('1485', '157', '山城区', '458000');
INSERT INTO `joel_location_area` VALUES ('1486', '157', '淇滨区', '458000');
INSERT INTO `joel_location_area` VALUES ('1487', '157', '浚县', '456250');
INSERT INTO `joel_location_area` VALUES ('1488', '157', '淇县', '456750');
INSERT INTO `joel_location_area` VALUES ('1489', '158', '红旗区', '453000');
INSERT INTO `joel_location_area` VALUES ('1490', '158', '卫滨区', '453000');
INSERT INTO `joel_location_area` VALUES ('1491', '158', '凤泉区', '453011');
INSERT INTO `joel_location_area` VALUES ('1492', '158', '牧野区', '453002');
INSERT INTO `joel_location_area` VALUES ('1493', '158', '新乡县', '453700');
INSERT INTO `joel_location_area` VALUES ('1494', '158', '获嘉县', '453800');
INSERT INTO `joel_location_area` VALUES ('1495', '158', '原阳县', '453500');
INSERT INTO `joel_location_area` VALUES ('1496', '158', '延津县', '453200');
INSERT INTO `joel_location_area` VALUES ('1497', '158', '封丘县', '453300');
INSERT INTO `joel_location_area` VALUES ('1498', '158', '长垣县', '453400');
INSERT INTO `joel_location_area` VALUES ('1499', '158', '卫辉市', '453100');
INSERT INTO `joel_location_area` VALUES ('1500', '158', '辉县市', '453600');
INSERT INTO `joel_location_area` VALUES ('1501', '159', '解放区', '454000');
INSERT INTO `joel_location_area` VALUES ('1502', '159', '中站区', '454191');
INSERT INTO `joel_location_area` VALUES ('1503', '159', '马村区', '454171');
INSERT INTO `joel_location_area` VALUES ('1504', '159', '山阳区', '454002');
INSERT INTO `joel_location_area` VALUES ('1505', '159', '修武县', '454350');
INSERT INTO `joel_location_area` VALUES ('1506', '159', '博爱县', '454450');
INSERT INTO `joel_location_area` VALUES ('1507', '159', '武陟县', '454950');
INSERT INTO `joel_location_area` VALUES ('1508', '159', '温县', '454850');
INSERT INTO `joel_location_area` VALUES ('1509', '159', '沁阳市', '454550');
INSERT INTO `joel_location_area` VALUES ('1510', '159', '孟州市', '454750');
INSERT INTO `joel_location_area` VALUES ('1511', '160', '华龙区', '457001');
INSERT INTO `joel_location_area` VALUES ('1512', '160', '清丰县', '457300');
INSERT INTO `joel_location_area` VALUES ('1513', '160', '南乐县', '457400');
INSERT INTO `joel_location_area` VALUES ('1514', '160', '范县', '457500');
INSERT INTO `joel_location_area` VALUES ('1515', '160', '台前县', '457600');
INSERT INTO `joel_location_area` VALUES ('1516', '160', '濮阳县', '457100');
INSERT INTO `joel_location_area` VALUES ('1517', '161', '魏都区', '461000');
INSERT INTO `joel_location_area` VALUES ('1518', '161', '许昌县', '461100');
INSERT INTO `joel_location_area` VALUES ('1519', '161', '鄢陵县', '461200');
INSERT INTO `joel_location_area` VALUES ('1520', '161', '襄城县', '461700');
INSERT INTO `joel_location_area` VALUES ('1521', '161', '禹州市', '461670');
INSERT INTO `joel_location_area` VALUES ('1522', '161', '长葛市', '461500');
INSERT INTO `joel_location_area` VALUES ('1523', '162', '源汇区', '462000');
INSERT INTO `joel_location_area` VALUES ('1524', '162', '郾城区', '462300');
INSERT INTO `joel_location_area` VALUES ('1525', '162', '召陵区', '462300');
INSERT INTO `joel_location_area` VALUES ('1526', '162', '舞阳县', '462400');
INSERT INTO `joel_location_area` VALUES ('1527', '162', '临颍县', '462600');
INSERT INTO `joel_location_area` VALUES ('1528', '163', '湖滨区', '472000');
INSERT INTO `joel_location_area` VALUES ('1529', '163', '渑池县', '472400');
INSERT INTO `joel_location_area` VALUES ('1530', '163', '陕县', '472100');
INSERT INTO `joel_location_area` VALUES ('1531', '163', '卢氏县', '472200');
INSERT INTO `joel_location_area` VALUES ('1532', '163', '义马市', '472300');
INSERT INTO `joel_location_area` VALUES ('1533', '163', '灵宝市', '472500');
INSERT INTO `joel_location_area` VALUES ('1534', '164', '宛城区', '473001');
INSERT INTO `joel_location_area` VALUES ('1535', '164', '卧龙区', '473003');
INSERT INTO `joel_location_area` VALUES ('1536', '164', '南召县', '474650');
INSERT INTO `joel_location_area` VALUES ('1537', '164', '方城县', '473200');
INSERT INTO `joel_location_area` VALUES ('1538', '164', '西峡县', '474550');
INSERT INTO `joel_location_area` VALUES ('1539', '164', '镇平县', '474250');
INSERT INTO `joel_location_area` VALUES ('1540', '164', '内乡县', '474350');
INSERT INTO `joel_location_area` VALUES ('1541', '164', '淅川县', '474450');
INSERT INTO `joel_location_area` VALUES ('1542', '164', '社旗县', '473300');
INSERT INTO `joel_location_area` VALUES ('1543', '164', '唐河县', '473400');
INSERT INTO `joel_location_area` VALUES ('1544', '164', '新野县', '473500');
INSERT INTO `joel_location_area` VALUES ('1545', '164', '桐柏县', '474750');
INSERT INTO `joel_location_area` VALUES ('1546', '164', '邓州市', '474150');
INSERT INTO `joel_location_area` VALUES ('1547', '165', '梁园区', '476000');
INSERT INTO `joel_location_area` VALUES ('1548', '165', '睢阳区', '476100');
INSERT INTO `joel_location_area` VALUES ('1549', '165', '民权县', '476800');
INSERT INTO `joel_location_area` VALUES ('1550', '165', '睢县', '476900');
INSERT INTO `joel_location_area` VALUES ('1551', '165', '宁陵县', '476700');
INSERT INTO `joel_location_area` VALUES ('1552', '165', '柘城县', '476200');
INSERT INTO `joel_location_area` VALUES ('1553', '165', '虞城县', '476300');
INSERT INTO `joel_location_area` VALUES ('1554', '165', '夏邑县', '476400');
INSERT INTO `joel_location_area` VALUES ('1555', '165', '永城市', '476600');
INSERT INTO `joel_location_area` VALUES ('1556', '166', '浉河区', '464000');
INSERT INTO `joel_location_area` VALUES ('1557', '166', '平桥区', '464100');
INSERT INTO `joel_location_area` VALUES ('1558', '166', '罗山县', '464200');
INSERT INTO `joel_location_area` VALUES ('1559', '166', '光山县', '465450');
INSERT INTO `joel_location_area` VALUES ('1560', '166', '新县', '465550');
INSERT INTO `joel_location_area` VALUES ('1561', '166', '商城县', '465350');
INSERT INTO `joel_location_area` VALUES ('1562', '166', '固始县', '465250');
INSERT INTO `joel_location_area` VALUES ('1563', '166', '潢川县', '465150');
INSERT INTO `joel_location_area` VALUES ('1564', '166', '淮滨县', '464400');
INSERT INTO `joel_location_area` VALUES ('1565', '166', '息县', '464300');
INSERT INTO `joel_location_area` VALUES ('1566', '167', '川汇区', '466000');
INSERT INTO `joel_location_area` VALUES ('1567', '167', '扶沟县', '461300');
INSERT INTO `joel_location_area` VALUES ('1568', '167', '西华县', '466600');
INSERT INTO `joel_location_area` VALUES ('1569', '167', '商水县', '466100');
INSERT INTO `joel_location_area` VALUES ('1570', '167', '沈丘县', '466300');
INSERT INTO `joel_location_area` VALUES ('1571', '167', '郸城县', '477150');
INSERT INTO `joel_location_area` VALUES ('1572', '167', '淮阳县', '466700');
INSERT INTO `joel_location_area` VALUES ('1573', '167', '太康县', '461400');
INSERT INTO `joel_location_area` VALUES ('1574', '167', '鹿邑县', '477200');
INSERT INTO `joel_location_area` VALUES ('1575', '167', '项城市', '466200');
INSERT INTO `joel_location_area` VALUES ('1576', '168', '驿城区', '463000');
INSERT INTO `joel_location_area` VALUES ('1577', '168', '西平县', '463900');
INSERT INTO `joel_location_area` VALUES ('1578', '168', '上蔡县', '463800');
INSERT INTO `joel_location_area` VALUES ('1579', '168', '平舆县', '463400');
INSERT INTO `joel_location_area` VALUES ('1580', '168', '正阳县', '463600');
INSERT INTO `joel_location_area` VALUES ('1581', '168', '确山县', '463200');
INSERT INTO `joel_location_area` VALUES ('1582', '168', '泌阳县', '463700');
INSERT INTO `joel_location_area` VALUES ('1583', '168', '汝南县', '463300');
INSERT INTO `joel_location_area` VALUES ('1584', '168', '遂平县', '463100');
INSERT INTO `joel_location_area` VALUES ('1585', '168', '新蔡县', '463500');
INSERT INTO `joel_location_area` VALUES ('1586', '169', '济源市', '454650');
INSERT INTO `joel_location_area` VALUES ('1587', '170', '江岸区', '430014');
INSERT INTO `joel_location_area` VALUES ('1588', '170', '江汉区', '430021');
INSERT INTO `joel_location_area` VALUES ('1589', '170', '硚口区', '430033');
INSERT INTO `joel_location_area` VALUES ('1590', '170', '汉阳区', '430050');
INSERT INTO `joel_location_area` VALUES ('1591', '170', '武昌区', '430061');
INSERT INTO `joel_location_area` VALUES ('1592', '170', '青山区', '430080');
INSERT INTO `joel_location_area` VALUES ('1593', '170', '洪山区', '430070');
INSERT INTO `joel_location_area` VALUES ('1594', '170', '东西湖区', '430040');
INSERT INTO `joel_location_area` VALUES ('1595', '170', '汉南区', '430090');
INSERT INTO `joel_location_area` VALUES ('1596', '170', '蔡甸区', '430100');
INSERT INTO `joel_location_area` VALUES ('1597', '170', '江夏区', '430200');
INSERT INTO `joel_location_area` VALUES ('1598', '170', '黄陂区', '432200');
INSERT INTO `joel_location_area` VALUES ('1599', '170', '新洲区', '431400');
INSERT INTO `joel_location_area` VALUES ('1600', '171', '黄石港区', '435000');
INSERT INTO `joel_location_area` VALUES ('1601', '171', '西塞山区', '435001');
INSERT INTO `joel_location_area` VALUES ('1602', '171', '下陆区', '435005');
INSERT INTO `joel_location_area` VALUES ('1603', '171', '铁山区', '435006');
INSERT INTO `joel_location_area` VALUES ('1604', '171', '阳新县', '435200');
INSERT INTO `joel_location_area` VALUES ('1605', '171', '大冶市', '435100');
INSERT INTO `joel_location_area` VALUES ('1606', '172', '茅箭区', '442012');
INSERT INTO `joel_location_area` VALUES ('1607', '172', '张湾区', '442001');
INSERT INTO `joel_location_area` VALUES ('1608', '172', '郧县', '442500');
INSERT INTO `joel_location_area` VALUES ('1609', '172', '郧西县', '442600');
INSERT INTO `joel_location_area` VALUES ('1610', '172', '竹山县', '442200');
INSERT INTO `joel_location_area` VALUES ('1611', '172', '竹溪县', '442300');
INSERT INTO `joel_location_area` VALUES ('1612', '172', '房县', '442100');
INSERT INTO `joel_location_area` VALUES ('1613', '172', '丹江口市', '442700');
INSERT INTO `joel_location_area` VALUES ('1614', '173', '西陵区', '443000');
INSERT INTO `joel_location_area` VALUES ('1615', '173', '伍家岗区', '443001');
INSERT INTO `joel_location_area` VALUES ('1616', '173', '点军区', '443006');
INSERT INTO `joel_location_area` VALUES ('1617', '173', '虢亭区', '443007');
INSERT INTO `joel_location_area` VALUES ('1618', '173', '夷陵区', '443100');
INSERT INTO `joel_location_area` VALUES ('1619', '173', '远安县', '444200');
INSERT INTO `joel_location_area` VALUES ('1620', '173', '兴山县', '443711');
INSERT INTO `joel_location_area` VALUES ('1621', '173', '秭归县', '443600');
INSERT INTO `joel_location_area` VALUES ('1622', '173', '长阳土家族自治县', '443500');
INSERT INTO `joel_location_area` VALUES ('1623', '173', '五峰土家族自治县', '443400');
INSERT INTO `joel_location_area` VALUES ('1624', '173', '宜都市', '443300');
INSERT INTO `joel_location_area` VALUES ('1625', '173', '当阳市', '444100');
INSERT INTO `joel_location_area` VALUES ('1626', '173', '枝江市', '443200');
INSERT INTO `joel_location_area` VALUES ('1627', '173', '经济技术开发区', '443003');
INSERT INTO `joel_location_area` VALUES ('1628', '174', '襄城区', '441021');
INSERT INTO `joel_location_area` VALUES ('1629', '174', '樊城区', '441001');
INSERT INTO `joel_location_area` VALUES ('1630', '174', '襄阳区', '441100');
INSERT INTO `joel_location_area` VALUES ('1631', '174', '南漳县', '441500');
INSERT INTO `joel_location_area` VALUES ('1632', '174', '谷城县', '441700');
INSERT INTO `joel_location_area` VALUES ('1633', '174', '保康县', '441600');
INSERT INTO `joel_location_area` VALUES ('1634', '174', '老河口市', '441800');
INSERT INTO `joel_location_area` VALUES ('1635', '174', '枣阳市', '441200');
INSERT INTO `joel_location_area` VALUES ('1636', '174', '宜城市', '441400');
INSERT INTO `joel_location_area` VALUES ('1637', '175', '梁子湖区', '436064');
INSERT INTO `joel_location_area` VALUES ('1638', '175', '华容区', '436030');
INSERT INTO `joel_location_area` VALUES ('1639', '175', '鄂城区', '436000');
INSERT INTO `joel_location_area` VALUES ('1640', '176', '东宝区', '448004');
INSERT INTO `joel_location_area` VALUES ('1641', '176', '掇刀区', '448124');
INSERT INTO `joel_location_area` VALUES ('1642', '176', '京山县', '431800');
INSERT INTO `joel_location_area` VALUES ('1643', '176', '沙洋县', '448200');
INSERT INTO `joel_location_area` VALUES ('1644', '176', '钟祥市', '431900');
INSERT INTO `joel_location_area` VALUES ('1645', '177', '孝南区', '432100');
INSERT INTO `joel_location_area` VALUES ('1646', '177', '孝昌县', '432900');
INSERT INTO `joel_location_area` VALUES ('1647', '177', '大悟县', '432800');
INSERT INTO `joel_location_area` VALUES ('1648', '177', '云梦县', '432500');
INSERT INTO `joel_location_area` VALUES ('1649', '177', '应城市', '432400');
INSERT INTO `joel_location_area` VALUES ('1650', '177', '安陆市', '432600');
INSERT INTO `joel_location_area` VALUES ('1651', '177', '汉川市', '432300');
INSERT INTO `joel_location_area` VALUES ('1652', '178', '沙市区', '434000');
INSERT INTO `joel_location_area` VALUES ('1653', '178', '荆州区', '434020');
INSERT INTO `joel_location_area` VALUES ('1654', '178', '公安县', '434300');
INSERT INTO `joel_location_area` VALUES ('1655', '178', '监利县', '433300');
INSERT INTO `joel_location_area` VALUES ('1656', '178', '江陵县', '434101');
INSERT INTO `joel_location_area` VALUES ('1657', '178', '石首市', '434400');
INSERT INTO `joel_location_area` VALUES ('1658', '178', '洪湖市', '433200');
INSERT INTO `joel_location_area` VALUES ('1659', '178', '松滋市', '434200');
INSERT INTO `joel_location_area` VALUES ('1660', '179', '黄州区', '438000');
INSERT INTO `joel_location_area` VALUES ('1661', '179', '团风县', '438000');
INSERT INTO `joel_location_area` VALUES ('1662', '179', '红安县', '438401');
INSERT INTO `joel_location_area` VALUES ('1663', '179', '罗田县', '438600');
INSERT INTO `joel_location_area` VALUES ('1664', '179', '英山县', '438700');
INSERT INTO `joel_location_area` VALUES ('1665', '179', '浠水县', '438200');
INSERT INTO `joel_location_area` VALUES ('1666', '179', '蕲春县', '435300');
INSERT INTO `joel_location_area` VALUES ('1667', '179', '黄梅县', '435500');
INSERT INTO `joel_location_area` VALUES ('1668', '179', '麻城市', '438300');
INSERT INTO `joel_location_area` VALUES ('1669', '179', '武穴市', '435400');
INSERT INTO `joel_location_area` VALUES ('1670', '180', '咸安区', '437000');
INSERT INTO `joel_location_area` VALUES ('1671', '180', '嘉鱼县', '437200');
INSERT INTO `joel_location_area` VALUES ('1672', '180', '通城县', '437400');
INSERT INTO `joel_location_area` VALUES ('1673', '180', '崇阳县', '437500');
INSERT INTO `joel_location_area` VALUES ('1674', '180', '通山县', '437600');
INSERT INTO `joel_location_area` VALUES ('1675', '180', '赤壁市', '437300');
INSERT INTO `joel_location_area` VALUES ('1676', '181', '曾都区', '441300');
INSERT INTO `joel_location_area` VALUES ('1677', '181', '广水市', '432700');
INSERT INTO `joel_location_area` VALUES ('1678', '182', '恩施市', '445000');
INSERT INTO `joel_location_area` VALUES ('1679', '182', '利川市', '445400');
INSERT INTO `joel_location_area` VALUES ('1680', '182', '建始县', '445300');
INSERT INTO `joel_location_area` VALUES ('1681', '182', '巴东县', '444300');
INSERT INTO `joel_location_area` VALUES ('1682', '182', '宣恩县', '445500');
INSERT INTO `joel_location_area` VALUES ('1683', '182', '咸丰县', '445600');
INSERT INTO `joel_location_area` VALUES ('1684', '182', '来凤县', '445700');
INSERT INTO `joel_location_area` VALUES ('1685', '182', '鹤峰县', '445800');
INSERT INTO `joel_location_area` VALUES ('1686', '183', '仙桃市', '433000');
INSERT INTO `joel_location_area` VALUES ('1687', '183', '潜江市', '433100');
INSERT INTO `joel_location_area` VALUES ('1688', '183', '天门市', '431700');
INSERT INTO `joel_location_area` VALUES ('1689', '183', '神农架林区', '442400');
INSERT INTO `joel_location_area` VALUES ('1690', '184', '芙蓉区', '410011');
INSERT INTO `joel_location_area` VALUES ('1691', '184', '天心区', '410011');
INSERT INTO `joel_location_area` VALUES ('1692', '184', '岳麓区', '410006');
INSERT INTO `joel_location_area` VALUES ('1693', '184', '开福区', '410008');
INSERT INTO `joel_location_area` VALUES ('1694', '184', '雨花区', '410011');
INSERT INTO `joel_location_area` VALUES ('1695', '184', '长沙县', '410100');
INSERT INTO `joel_location_area` VALUES ('1696', '184', '望城县', '410200');
INSERT INTO `joel_location_area` VALUES ('1697', '184', '宁乡县', '410600');
INSERT INTO `joel_location_area` VALUES ('1698', '184', '浏阳市', '410300');
INSERT INTO `joel_location_area` VALUES ('1699', '185', '荷塘区', '412000');
INSERT INTO `joel_location_area` VALUES ('1700', '185', '芦淞区', '412000');
INSERT INTO `joel_location_area` VALUES ('1701', '185', '石峰区', '412005');
INSERT INTO `joel_location_area` VALUES ('1702', '185', '天元区', '412007');
INSERT INTO `joel_location_area` VALUES ('1703', '185', '株洲县', '412100');
INSERT INTO `joel_location_area` VALUES ('1704', '185', '攸县', '412300');
INSERT INTO `joel_location_area` VALUES ('1705', '185', '茶陵县', '412400');
INSERT INTO `joel_location_area` VALUES ('1706', '185', '炎陵县', '412500');
INSERT INTO `joel_location_area` VALUES ('1707', '185', '醴陵市', '412200');
INSERT INTO `joel_location_area` VALUES ('1708', '186', '雨湖区', '411100');
INSERT INTO `joel_location_area` VALUES ('1709', '186', '岳塘区', '411101');
INSERT INTO `joel_location_area` VALUES ('1710', '186', '湘潭县', '411228');
INSERT INTO `joel_location_area` VALUES ('1711', '186', '湘乡市', '411400');
INSERT INTO `joel_location_area` VALUES ('1712', '186', '韶山市', '411300');
INSERT INTO `joel_location_area` VALUES ('1713', '187', '珠晖区', '421002');
INSERT INTO `joel_location_area` VALUES ('1714', '187', '雁峰区', '421001');
INSERT INTO `joel_location_area` VALUES ('1715', '187', '石鼓区', '421001');
INSERT INTO `joel_location_area` VALUES ('1716', '187', '蒸湘区', '421001');
INSERT INTO `joel_location_area` VALUES ('1717', '187', '南岳区', '421900');
INSERT INTO `joel_location_area` VALUES ('1718', '187', '衡阳县', '421200');
INSERT INTO `joel_location_area` VALUES ('1719', '187', '衡南县', '421131');
INSERT INTO `joel_location_area` VALUES ('1720', '187', '衡山县', '421300');
INSERT INTO `joel_location_area` VALUES ('1721', '187', '衡东县', '421400');
INSERT INTO `joel_location_area` VALUES ('1722', '187', '祁东县', '421600');
INSERT INTO `joel_location_area` VALUES ('1723', '187', '耒阳市', '421800');
INSERT INTO `joel_location_area` VALUES ('1724', '187', '常宁市', '421500');
INSERT INTO `joel_location_area` VALUES ('1725', '188', '双清区', '422001');
INSERT INTO `joel_location_area` VALUES ('1726', '188', '大祥区', '422000');
INSERT INTO `joel_location_area` VALUES ('1727', '188', '北塔区', '422007');
INSERT INTO `joel_location_area` VALUES ('1728', '188', '邵东县', '422800');
INSERT INTO `joel_location_area` VALUES ('1729', '188', '新邵县', '422900');
INSERT INTO `joel_location_area` VALUES ('1730', '188', '邵阳县', '422100');
INSERT INTO `joel_location_area` VALUES ('1731', '188', '隆回县', '422200');
INSERT INTO `joel_location_area` VALUES ('1732', '188', '洞口县', '422300');
INSERT INTO `joel_location_area` VALUES ('1733', '188', '绥宁县', '422600');
INSERT INTO `joel_location_area` VALUES ('1734', '188', '新宁县', '422700');
INSERT INTO `joel_location_area` VALUES ('1735', '188', '城步苗族自治县', '422500');
INSERT INTO `joel_location_area` VALUES ('1736', '188', '武冈市', '422400');
INSERT INTO `joel_location_area` VALUES ('1737', '189', '岳阳楼区', '414000');
INSERT INTO `joel_location_area` VALUES ('1738', '189', '云溪区', '414009');
INSERT INTO `joel_location_area` VALUES ('1739', '189', '君山区', '414005');
INSERT INTO `joel_location_area` VALUES ('1740', '189', '岳阳县', '414100');
INSERT INTO `joel_location_area` VALUES ('1741', '189', '华容县', '414200');
INSERT INTO `joel_location_area` VALUES ('1742', '189', '湘阴县', '410500');
INSERT INTO `joel_location_area` VALUES ('1743', '189', '平江县', '414500');
INSERT INTO `joel_location_area` VALUES ('1744', '189', '汨罗市', '414400');
INSERT INTO `joel_location_area` VALUES ('1745', '189', '临湘市', '414300');
INSERT INTO `joel_location_area` VALUES ('1746', '190', '武陵区', '415000');
INSERT INTO `joel_location_area` VALUES ('1747', '190', '鼎城区', '415101');
INSERT INTO `joel_location_area` VALUES ('1748', '190', '安乡县', '415600');
INSERT INTO `joel_location_area` VALUES ('1749', '190', '汉寿县', '415900');
INSERT INTO `joel_location_area` VALUES ('1750', '190', '澧县', '415500');
INSERT INTO `joel_location_area` VALUES ('1751', '190', '临澧县', '415200');
INSERT INTO `joel_location_area` VALUES ('1752', '190', '桃源县', '415700');
INSERT INTO `joel_location_area` VALUES ('1753', '190', '石门县', '415300');
INSERT INTO `joel_location_area` VALUES ('1754', '190', '津市市', '415400');
INSERT INTO `joel_location_area` VALUES ('1755', '191', '永定区', '427000');
INSERT INTO `joel_location_area` VALUES ('1756', '191', '武陵源区', '427400');
INSERT INTO `joel_location_area` VALUES ('1757', '191', '慈利县', '427200');
INSERT INTO `joel_location_area` VALUES ('1758', '191', '桑植县', '427100');
INSERT INTO `joel_location_area` VALUES ('1759', '192', '资阳区', '413001');
INSERT INTO `joel_location_area` VALUES ('1760', '192', '赫山区', '413002');
INSERT INTO `joel_location_area` VALUES ('1761', '192', '南县', '413200');
INSERT INTO `joel_location_area` VALUES ('1762', '192', '桃江县', '413400');
INSERT INTO `joel_location_area` VALUES ('1763', '192', '安化县', '413500');
INSERT INTO `joel_location_area` VALUES ('1764', '192', '沅江市', '413100');
INSERT INTO `joel_location_area` VALUES ('1765', '193', '北湖区', '423000');
INSERT INTO `joel_location_area` VALUES ('1766', '193', '苏仙区', '423000');
INSERT INTO `joel_location_area` VALUES ('1767', '193', '桂阳县', '424400');
INSERT INTO `joel_location_area` VALUES ('1768', '193', '宜章县', '424200');
INSERT INTO `joel_location_area` VALUES ('1769', '193', '永兴县', '423300');
INSERT INTO `joel_location_area` VALUES ('1770', '193', '嘉禾县', '424500');
INSERT INTO `joel_location_area` VALUES ('1771', '193', '临武县', '424300');
INSERT INTO `joel_location_area` VALUES ('1772', '193', '汝城县', '424100');
INSERT INTO `joel_location_area` VALUES ('1773', '193', '桂东县', '423500');
INSERT INTO `joel_location_area` VALUES ('1774', '193', '安仁县', '423600');
INSERT INTO `joel_location_area` VALUES ('1775', '193', '资兴市', '423400');
INSERT INTO `joel_location_area` VALUES ('1776', '194', '冷水滩区', '425100');
INSERT INTO `joel_location_area` VALUES ('1777', '194', '祁阳县', '426100');
INSERT INTO `joel_location_area` VALUES ('1778', '194', '东安县', '425900');
INSERT INTO `joel_location_area` VALUES ('1779', '194', '双牌县', '425200');
INSERT INTO `joel_location_area` VALUES ('1780', '194', '道县', '425300');
INSERT INTO `joel_location_area` VALUES ('1781', '194', '江永县', '425400');
INSERT INTO `joel_location_area` VALUES ('1782', '194', '宁远县', '425600');
INSERT INTO `joel_location_area` VALUES ('1783', '194', '蓝山县', '425800');
INSERT INTO `joel_location_area` VALUES ('1784', '194', '新田县', '425700');
INSERT INTO `joel_location_area` VALUES ('1785', '194', '江华瑶族自治县', '425500');
INSERT INTO `joel_location_area` VALUES ('1786', '194', '零陵区', '425002');
INSERT INTO `joel_location_area` VALUES ('1787', '195', '鹤城区', '418000');
INSERT INTO `joel_location_area` VALUES ('1788', '195', '中方县', '418005');
INSERT INTO `joel_location_area` VALUES ('1789', '195', '沅陵县', '419600');
INSERT INTO `joel_location_area` VALUES ('1790', '195', '辰溪县', '419500');
INSERT INTO `joel_location_area` VALUES ('1791', '195', '溆浦县', '419300');
INSERT INTO `joel_location_area` VALUES ('1792', '195', '会同县', '418300');
INSERT INTO `joel_location_area` VALUES ('1793', '195', '麻阳苗族自治县', '419400');
INSERT INTO `joel_location_area` VALUES ('1794', '195', '新晃侗族自治县', '419200');
INSERT INTO `joel_location_area` VALUES ('1795', '195', '芷江侗族自治县', '419100');
INSERT INTO `joel_location_area` VALUES ('1796', '195', '靖州苗族侗族自治县', '418400');
INSERT INTO `joel_location_area` VALUES ('1797', '195', '通道侗族自治县', '418500');
INSERT INTO `joel_location_area` VALUES ('1798', '195', '洪江市', '418116');
INSERT INTO `joel_location_area` VALUES ('1799', '196', '娄星区', '417000');
INSERT INTO `joel_location_area` VALUES ('1800', '196', '双峰县', '417700');
INSERT INTO `joel_location_area` VALUES ('1801', '196', '新化县', '417600');
INSERT INTO `joel_location_area` VALUES ('1802', '196', '冷水江市', '417500');
INSERT INTO `joel_location_area` VALUES ('1803', '196', '涟源市', '417100');
INSERT INTO `joel_location_area` VALUES ('1804', '197', '吉首市', '416000');
INSERT INTO `joel_location_area` VALUES ('1805', '197', '泸溪县', '416100');
INSERT INTO `joel_location_area` VALUES ('1806', '197', '凤凰县', '416200');
INSERT INTO `joel_location_area` VALUES ('1807', '197', '花垣县', '416400');
INSERT INTO `joel_location_area` VALUES ('1808', '197', '保靖县', '416500');
INSERT INTO `joel_location_area` VALUES ('1809', '197', '古丈县', '416300');
INSERT INTO `joel_location_area` VALUES ('1810', '197', '永顺县', '416700');
INSERT INTO `joel_location_area` VALUES ('1811', '197', '龙山县', '416800');
INSERT INTO `joel_location_area` VALUES ('1812', '198', '荔湾区', '510145');
INSERT INTO `joel_location_area` VALUES ('1813', '198', '越秀区', '510030');
INSERT INTO `joel_location_area` VALUES ('1814', '198', '海珠区', '510220');
INSERT INTO `joel_location_area` VALUES ('1815', '198', '天河区', '510630');
INSERT INTO `joel_location_area` VALUES ('1816', '198', '白云区', '510080');
INSERT INTO `joel_location_area` VALUES ('1817', '198', '黄埔区', '510700');
INSERT INTO `joel_location_area` VALUES ('1818', '198', '番禺区', '511400');
INSERT INTO `joel_location_area` VALUES ('1819', '198', '花都区', '510800');
INSERT INTO `joel_location_area` VALUES ('1820', '198', '增城市', '511300');
INSERT INTO `joel_location_area` VALUES ('1821', '198', '从化市', '510900');
INSERT INTO `joel_location_area` VALUES ('1822', '198', '南沙区', '511400');
INSERT INTO `joel_location_area` VALUES ('1823', '198', '萝岗区', '510100');
INSERT INTO `joel_location_area` VALUES ('1824', '199', '武江区', '512026');
INSERT INTO `joel_location_area` VALUES ('1825', '199', '浈江区', '512023');
INSERT INTO `joel_location_area` VALUES ('1826', '199', '曲江区', '512100');
INSERT INTO `joel_location_area` VALUES ('1827', '199', '始兴县', '512500');
INSERT INTO `joel_location_area` VALUES ('1828', '199', '仁化县', '512300');
INSERT INTO `joel_location_area` VALUES ('1829', '199', '翁源县', '512600');
INSERT INTO `joel_location_area` VALUES ('1830', '199', '乳源瑶族自治县', '512700');
INSERT INTO `joel_location_area` VALUES ('1831', '199', '新丰县', '511100');
INSERT INTO `joel_location_area` VALUES ('1832', '199', '乐昌市', '512200');
INSERT INTO `joel_location_area` VALUES ('1833', '199', '南雄市', '512400');
INSERT INTO `joel_location_area` VALUES ('1834', '200', '罗湖区', '518001');
INSERT INTO `joel_location_area` VALUES ('1835', '200', '福田区', '518033');
INSERT INTO `joel_location_area` VALUES ('1836', '200', '南山区', '518052');
INSERT INTO `joel_location_area` VALUES ('1837', '200', '宝安区', '518101');
INSERT INTO `joel_location_area` VALUES ('1838', '200', '龙岗区', '518116');
INSERT INTO `joel_location_area` VALUES ('1839', '200', '盐田区', '518083');
INSERT INTO `joel_location_area` VALUES ('1840', '200', '光明新区', '518107');
INSERT INTO `joel_location_area` VALUES ('1841', '200', '坪山新区', '518118');
INSERT INTO `joel_location_area` VALUES ('1842', '201', '香洲区', '519000');
INSERT INTO `joel_location_area` VALUES ('1843', '201', '斗门区', '519100');
INSERT INTO `joel_location_area` VALUES ('1844', '201', '金湾区', '519090');
INSERT INTO `joel_location_area` VALUES ('1845', '202', '龙湖区', '515041');
INSERT INTO `joel_location_area` VALUES ('1846', '202', '金平区', '515041');
INSERT INTO `joel_location_area` VALUES ('1847', '202', '濠江区', '515071');
INSERT INTO `joel_location_area` VALUES ('1848', '202', '潮阳区', '515100');
INSERT INTO `joel_location_area` VALUES ('1849', '202', '潮南区', '515144');
INSERT INTO `joel_location_area` VALUES ('1850', '202', '澄海区', '515800');
INSERT INTO `joel_location_area` VALUES ('1851', '202', '南澳县', '515900');
INSERT INTO `joel_location_area` VALUES ('1852', '203', '禅城区', '528000');
INSERT INTO `joel_location_area` VALUES ('1853', '203', '南海区', '528200');
INSERT INTO `joel_location_area` VALUES ('1854', '203', '顺德区', '528300');
INSERT INTO `joel_location_area` VALUES ('1855', '203', '三水区', '528100');
INSERT INTO `joel_location_area` VALUES ('1856', '203', '高明区', '528500');
INSERT INTO `joel_location_area` VALUES ('1857', '204', '蓬江区', '529051');
INSERT INTO `joel_location_area` VALUES ('1858', '204', '江海区', '529000');
INSERT INTO `joel_location_area` VALUES ('1859', '204', '新会区', '529100');
INSERT INTO `joel_location_area` VALUES ('1860', '204', '台山市', '529211');
INSERT INTO `joel_location_area` VALUES ('1861', '204', '开平市', '529312');
INSERT INTO `joel_location_area` VALUES ('1862', '204', '鹤山市', '529711');
INSERT INTO `joel_location_area` VALUES ('1863', '204', '恩平市', '529411');
INSERT INTO `joel_location_area` VALUES ('1864', '205', '赤坎区', '524033');
INSERT INTO `joel_location_area` VALUES ('1865', '205', '霞山区', '524002');
INSERT INTO `joel_location_area` VALUES ('1866', '205', '坡头区', '524057');
INSERT INTO `joel_location_area` VALUES ('1867', '205', '麻章区', '524003');
INSERT INTO `joel_location_area` VALUES ('1868', '205', '遂溪县', '524300');
INSERT INTO `joel_location_area` VALUES ('1869', '205', '徐闻县', '524100');
INSERT INTO `joel_location_area` VALUES ('1870', '205', '廉江市', '524400');
INSERT INTO `joel_location_area` VALUES ('1871', '205', '雷州市', '524200');
INSERT INTO `joel_location_area` VALUES ('1872', '205', '吴川市', '524500');
INSERT INTO `joel_location_area` VALUES ('1873', '205', '开发区', '524022');
INSERT INTO `joel_location_area` VALUES ('1874', '206', '茂南区', '525011');
INSERT INTO `joel_location_area` VALUES ('1875', '206', '茂港区', '525027');
INSERT INTO `joel_location_area` VALUES ('1876', '206', '电白县', '525400');
INSERT INTO `joel_location_area` VALUES ('1877', '206', '高州市', '525200');
INSERT INTO `joel_location_area` VALUES ('1878', '206', '化州市', '525100');
INSERT INTO `joel_location_area` VALUES ('1879', '206', '信宜市', '525300');
INSERT INTO `joel_location_area` VALUES ('1880', '207', '端州区', '526040');
INSERT INTO `joel_location_area` VALUES ('1881', '207', '鼎湖区', '526070');
INSERT INTO `joel_location_area` VALUES ('1882', '207', '广宁县', '526300');
INSERT INTO `joel_location_area` VALUES ('1883', '207', '怀集县', '526400');
INSERT INTO `joel_location_area` VALUES ('1884', '207', '封开县', '526500');
INSERT INTO `joel_location_area` VALUES ('1885', '207', '德庆县', '526600');
INSERT INTO `joel_location_area` VALUES ('1886', '207', '高要市', '526100');
INSERT INTO `joel_location_area` VALUES ('1887', '207', '四会市', '526200');
INSERT INTO `joel_location_area` VALUES ('1888', '207', '高新技术产业开发区', '526238');
INSERT INTO `joel_location_area` VALUES ('1889', '208', '惠城区', '516001');
INSERT INTO `joel_location_area` VALUES ('1890', '208', '惠阳区', '516200');
INSERT INTO `joel_location_area` VALUES ('1891', '208', '博罗县', '516100');
INSERT INTO `joel_location_area` VALUES ('1892', '208', '惠东县', '516300');
INSERT INTO `joel_location_area` VALUES ('1893', '208', '龙门县', '516800');
INSERT INTO `joel_location_area` VALUES ('1894', '208', '大亚湾区', '516080');
INSERT INTO `joel_location_area` VALUES ('1895', '208', '仲恺高新区', '516080');
INSERT INTO `joel_location_area` VALUES ('1896', '209', '梅江区', '514000');
INSERT INTO `joel_location_area` VALUES ('1897', '209', '梅县', '514733');
INSERT INTO `joel_location_area` VALUES ('1898', '209', '大埔县', '514200');
INSERT INTO `joel_location_area` VALUES ('1899', '209', '丰顺县', '514300');
INSERT INTO `joel_location_area` VALUES ('1900', '209', '五华县', '514400');
INSERT INTO `joel_location_area` VALUES ('1901', '209', '平远县', '514600');
INSERT INTO `joel_location_area` VALUES ('1902', '209', '蕉岭县', '514100');
INSERT INTO `joel_location_area` VALUES ('1903', '209', '兴宁市', '514500');
INSERT INTO `joel_location_area` VALUES ('1904', '210', '城区', '516601');
INSERT INTO `joel_location_area` VALUES ('1905', '210', '陆丰市', '516500');
INSERT INTO `joel_location_area` VALUES ('1906', '210', '海丰县', '516400');
INSERT INTO `joel_location_area` VALUES ('1907', '210', '陆河县', '516700');
INSERT INTO `joel_location_area` VALUES ('1908', '211', '源城区', '517000');
INSERT INTO `joel_location_area` VALUES ('1909', '211', '紫金县', '517400');
INSERT INTO `joel_location_area` VALUES ('1910', '211', '龙川县', '517300');
INSERT INTO `joel_location_area` VALUES ('1911', '211', '连平县', '517100');
INSERT INTO `joel_location_area` VALUES ('1912', '211', '和平县', '517200');
INSERT INTO `joel_location_area` VALUES ('1913', '211', '东源县', '517500');
INSERT INTO `joel_location_area` VALUES ('1914', '212', '江城区', '529525');
INSERT INTO `joel_location_area` VALUES ('1915', '212', '阳西县', '529800');
INSERT INTO `joel_location_area` VALUES ('1916', '212', '阳东县', '529931');
INSERT INTO `joel_location_area` VALUES ('1917', '212', '阳春市', '529611');
INSERT INTO `joel_location_area` VALUES ('1918', '213', '清城区', '511500');
INSERT INTO `joel_location_area` VALUES ('1919', '213', '佛冈县', '511600');
INSERT INTO `joel_location_area` VALUES ('1920', '213', '阳山县', '513100');
INSERT INTO `joel_location_area` VALUES ('1921', '213', '连山壮族瑶族自治县', '513200');
INSERT INTO `joel_location_area` VALUES ('1922', '213', '连南瑶族自治县', '513300');
INSERT INTO `joel_location_area` VALUES ('1923', '213', '清新县', '511800');
INSERT INTO `joel_location_area` VALUES ('1924', '213', '英德市', '513000');
INSERT INTO `joel_location_area` VALUES ('1925', '213', '连州市', '513401');
INSERT INTO `joel_location_area` VALUES ('1926', '214', '南城区', '523000');
INSERT INTO `joel_location_area` VALUES ('1927', '214', '石龙镇', '523021');
INSERT INTO `joel_location_area` VALUES ('1928', '214', '长安镇', '523068');
INSERT INTO `joel_location_area` VALUES ('1929', '214', '虎门镇', '523061');
INSERT INTO `joel_location_area` VALUES ('1930', '214', '横沥镇', '523032');
INSERT INTO `joel_location_area` VALUES ('1931', '214', '寮步镇', '523058');
INSERT INTO `joel_location_area` VALUES ('1932', '214', '黄江镇', '523054');
INSERT INTO `joel_location_area` VALUES ('1933', '214', '清溪镇', '523046');
INSERT INTO `joel_location_area` VALUES ('1934', '214', '莞城区', '523000');
INSERT INTO `joel_location_area` VALUES ('1935', '214', '万江区', '523050');
INSERT INTO `joel_location_area` VALUES ('1936', '214', '东城区', '523000');
INSERT INTO `joel_location_area` VALUES ('1937', '214', '石碣镇', '523024');
INSERT INTO `joel_location_area` VALUES ('1938', '214', '茶山镇', '523029');
INSERT INTO `joel_location_area` VALUES ('1939', '214', '石排镇', '523025');
INSERT INTO `joel_location_area` VALUES ('1940', '214', '企石镇', '523027');
INSERT INTO `joel_location_area` VALUES ('1941', '214', '桥头镇', '523038');
INSERT INTO `joel_location_area` VALUES ('1942', '214', '谢岗镇', '523044');
INSERT INTO `joel_location_area` VALUES ('1943', '214', '东坑镇', '523034');
INSERT INTO `joel_location_area` VALUES ('1944', '214', '常平镇', '523036');
INSERT INTO `joel_location_area` VALUES ('1945', '214', '大朗镇', '523056');
INSERT INTO `joel_location_area` VALUES ('1946', '214', '塘厦镇', '523710');
INSERT INTO `joel_location_area` VALUES ('1947', '214', '凤岗镇', '523048');
INSERT INTO `joel_location_area` VALUES ('1948', '214', '厚街镇', '523071');
INSERT INTO `joel_location_area` VALUES ('1949', '214', '沙田镇', '523073');
INSERT INTO `joel_location_area` VALUES ('1950', '214', '道滘镇', '523170');
INSERT INTO `joel_location_area` VALUES ('1951', '214', '洪梅镇', '523083');
INSERT INTO `joel_location_area` VALUES ('1952', '214', '麻涌镇', '523078');
INSERT INTO `joel_location_area` VALUES ('1953', '214', '中堂镇', '523075');
INSERT INTO `joel_location_area` VALUES ('1954', '214', '高埗镇', '523270');
INSERT INTO `joel_location_area` VALUES ('1955', '214', '樟木头镇', '523041');
INSERT INTO `joel_location_area` VALUES ('1956', '214', '大岭山镇', '523074');
INSERT INTO `joel_location_area` VALUES ('1957', '214', '望牛墩镇', '523077');
INSERT INTO `joel_location_area` VALUES ('1958', '215', '中山市', '528403');
INSERT INTO `joel_location_area` VALUES ('1959', '216', '湘桥区', '521000');
INSERT INTO `joel_location_area` VALUES ('1960', '216', '潮安县', '515638');
INSERT INTO `joel_location_area` VALUES ('1961', '216', '饶平县', '515700');
INSERT INTO `joel_location_area` VALUES ('1962', '217', '榕城区', '522095');
INSERT INTO `joel_location_area` VALUES ('1963', '217', '揭东县', '515554');
INSERT INTO `joel_location_area` VALUES ('1964', '217', '揭西县', '515400');
INSERT INTO `joel_location_area` VALUES ('1965', '217', '惠来县', '515200');
INSERT INTO `joel_location_area` VALUES ('1966', '217', '普宁市', '515300');
INSERT INTO `joel_location_area` VALUES ('1967', '217', '东山区', '522031');
INSERT INTO `joel_location_area` VALUES ('1968', '217', '普侨区', '515339');
INSERT INTO `joel_location_area` VALUES ('1969', '217', '大南山侨区', '515237');
INSERT INTO `joel_location_area` VALUES ('1970', '218', '云城区', '527300');
INSERT INTO `joel_location_area` VALUES ('1971', '218', '新兴县', '527400');
INSERT INTO `joel_location_area` VALUES ('1972', '218', '郁南县', '527100');
INSERT INTO `joel_location_area` VALUES ('1973', '218', '云安县', '527500');
INSERT INTO `joel_location_area` VALUES ('1974', '218', '罗定市', '527200');
INSERT INTO `joel_location_area` VALUES ('1975', '219', '兴宁区', '530012');
INSERT INTO `joel_location_area` VALUES ('1976', '219', '青秀区', '530022');
INSERT INTO `joel_location_area` VALUES ('1977', '219', '江南区', '530031');
INSERT INTO `joel_location_area` VALUES ('1978', '219', '西乡塘区', '530001');
INSERT INTO `joel_location_area` VALUES ('1979', '219', '良庆区', '530200');
INSERT INTO `joel_location_area` VALUES ('1980', '219', '邕宁区', '530200');
INSERT INTO `joel_location_area` VALUES ('1981', '219', '武鸣县', '530100');
INSERT INTO `joel_location_area` VALUES ('1982', '219', '隆安县', '532700');
INSERT INTO `joel_location_area` VALUES ('1983', '219', '马山县', '530600');
INSERT INTO `joel_location_area` VALUES ('1984', '219', '上林县', '530500');
INSERT INTO `joel_location_area` VALUES ('1985', '219', '宾阳县', '530400');
INSERT INTO `joel_location_area` VALUES ('1986', '219', '横县', '530300');
INSERT INTO `joel_location_area` VALUES ('1987', '220', '城中区', '545001');
INSERT INTO `joel_location_area` VALUES ('1988', '220', '鱼峰区', '545005');
INSERT INTO `joel_location_area` VALUES ('1989', '220', '柳南区', '545005');
INSERT INTO `joel_location_area` VALUES ('1990', '220', '柳北区', '545001');
INSERT INTO `joel_location_area` VALUES ('1991', '220', '柳江县', '545100');
INSERT INTO `joel_location_area` VALUES ('1992', '220', '柳城县', '545200');
INSERT INTO `joel_location_area` VALUES ('1993', '220', '鹿寨县', '545600');
INSERT INTO `joel_location_area` VALUES ('1994', '220', '融安县', '545400');
INSERT INTO `joel_location_area` VALUES ('1995', '220', '融水苗族自治县', '545300');
INSERT INTO `joel_location_area` VALUES ('1996', '220', '三江侗族自治县', '545500');
INSERT INTO `joel_location_area` VALUES ('1997', '221', '秀峰区', '541001');
INSERT INTO `joel_location_area` VALUES ('1998', '221', '叠彩区', '541001');
INSERT INTO `joel_location_area` VALUES ('1999', '221', '象山区', '541002');
INSERT INTO `joel_location_area` VALUES ('2000', '221', '七星区', '541004');
INSERT INTO `joel_location_area` VALUES ('2001', '221', '雁山区', '541006');
INSERT INTO `joel_location_area` VALUES ('2002', '221', '阳朔县', '541900');
INSERT INTO `joel_location_area` VALUES ('2003', '221', '临桂县', '541100');
INSERT INTO `joel_location_area` VALUES ('2004', '221', '灵川县', '541200');
INSERT INTO `joel_location_area` VALUES ('2005', '221', '全州县', '541500');
INSERT INTO `joel_location_area` VALUES ('2006', '221', '兴安县', '541300');
INSERT INTO `joel_location_area` VALUES ('2007', '221', '永福县', '541800');
INSERT INTO `joel_location_area` VALUES ('2008', '221', '灌阳县', '541600');
INSERT INTO `joel_location_area` VALUES ('2009', '221', '龙胜各族自治县', '541700');
INSERT INTO `joel_location_area` VALUES ('2010', '221', '资源县', '541400');
INSERT INTO `joel_location_area` VALUES ('2011', '221', '平乐县', '542400');
INSERT INTO `joel_location_area` VALUES ('2012', '221', '荔浦县', '546600');
INSERT INTO `joel_location_area` VALUES ('2013', '221', '恭城瑶族自治县', '542500');
INSERT INTO `joel_location_area` VALUES ('2014', '222', '万秀区', '543000');
INSERT INTO `joel_location_area` VALUES ('2015', '222', '蝶山区', '543002');
INSERT INTO `joel_location_area` VALUES ('2016', '222', '长洲区', '543002');
INSERT INTO `joel_location_area` VALUES ('2017', '222', '苍梧县', '543100');
INSERT INTO `joel_location_area` VALUES ('2018', '222', '藤县', '543300');
INSERT INTO `joel_location_area` VALUES ('2019', '222', '蒙山县', '546700');
INSERT INTO `joel_location_area` VALUES ('2020', '222', '岑溪市', '543200');
INSERT INTO `joel_location_area` VALUES ('2021', '223', '海城区', '536000');
INSERT INTO `joel_location_area` VALUES ('2022', '223', '银海区', '536000');
INSERT INTO `joel_location_area` VALUES ('2023', '223', '铁山港区', '536017');
INSERT INTO `joel_location_area` VALUES ('2024', '223', '合浦县', '536100');
INSERT INTO `joel_location_area` VALUES ('2025', '224', '港口区', '538001');
INSERT INTO `joel_location_area` VALUES ('2026', '224', '防城区', '538021');
INSERT INTO `joel_location_area` VALUES ('2027', '224', '上思县', '535500');
INSERT INTO `joel_location_area` VALUES ('2028', '224', '东兴市', '538100');
INSERT INTO `joel_location_area` VALUES ('2029', '225', '钦南区', '535000');
INSERT INTO `joel_location_area` VALUES ('2030', '225', '钦北区', '535000');
INSERT INTO `joel_location_area` VALUES ('2031', '225', '灵山县', '535400');
INSERT INTO `joel_location_area` VALUES ('2032', '225', '浦北县', '535300');
INSERT INTO `joel_location_area` VALUES ('2033', '225', '钦州港经济开发区', '535008');
INSERT INTO `joel_location_area` VALUES ('2034', '226', '港北区', '537100');
INSERT INTO `joel_location_area` VALUES ('2035', '226', '港南区', '537132');
INSERT INTO `joel_location_area` VALUES ('2036', '226', '覃塘区', '537121');
INSERT INTO `joel_location_area` VALUES ('2037', '226', '平南县', '537300');
INSERT INTO `joel_location_area` VALUES ('2038', '226', '桂平市', '537200');
INSERT INTO `joel_location_area` VALUES ('2039', '227', '玉州区', '537000');
INSERT INTO `joel_location_area` VALUES ('2040', '227', '容县', '537500');
INSERT INTO `joel_location_area` VALUES ('2041', '227', '陆川县', '537700');
INSERT INTO `joel_location_area` VALUES ('2042', '227', '博白县', '537600');
INSERT INTO `joel_location_area` VALUES ('2043', '227', '兴业县', '537800');
INSERT INTO `joel_location_area` VALUES ('2044', '227', '北流市', '537400');
INSERT INTO `joel_location_area` VALUES ('2045', '228', '右江区', '533000');
INSERT INTO `joel_location_area` VALUES ('2046', '228', '田阳县', '533600');
INSERT INTO `joel_location_area` VALUES ('2047', '228', '田东县', '531500');
INSERT INTO `joel_location_area` VALUES ('2048', '228', '平果县', '531400');
INSERT INTO `joel_location_area` VALUES ('2049', '228', '德保县', '533700');
INSERT INTO `joel_location_area` VALUES ('2050', '228', '靖西县', '533800');
INSERT INTO `joel_location_area` VALUES ('2051', '228', '那坡县', '533900');
INSERT INTO `joel_location_area` VALUES ('2052', '228', '凌云县', '533100');
INSERT INTO `joel_location_area` VALUES ('2053', '228', '乐业县', '533200');
INSERT INTO `joel_location_area` VALUES ('2054', '228', '田林县', '533300');
INSERT INTO `joel_location_area` VALUES ('2055', '228', '西林县', '533500');
INSERT INTO `joel_location_area` VALUES ('2056', '228', '隆林各族自治县', '533400');
INSERT INTO `joel_location_area` VALUES ('2057', '229', '八步区', '542800');
INSERT INTO `joel_location_area` VALUES ('2058', '229', '昭平县', '546800');
INSERT INTO `joel_location_area` VALUES ('2059', '229', '钟山县', '542600');
INSERT INTO `joel_location_area` VALUES ('2060', '229', '富川瑶族自治县', '542700');
INSERT INTO `joel_location_area` VALUES ('2061', '230', '金城江区', '547000');
INSERT INTO `joel_location_area` VALUES ('2062', '230', '南丹县', '547200');
INSERT INTO `joel_location_area` VALUES ('2063', '230', '天峨县', '547300');
INSERT INTO `joel_location_area` VALUES ('2064', '230', '凤山县', '547600');
INSERT INTO `joel_location_area` VALUES ('2065', '230', '东兰县', '547400');
INSERT INTO `joel_location_area` VALUES ('2066', '230', '罗城仫佬族自治县', '546400');
INSERT INTO `joel_location_area` VALUES ('2067', '230', '环江毛南族自治县', '547100');
INSERT INTO `joel_location_area` VALUES ('2068', '230', '巴马瑶族自治县', '547500');
INSERT INTO `joel_location_area` VALUES ('2069', '230', '都安瑶族自治县', '530700');
INSERT INTO `joel_location_area` VALUES ('2070', '230', '大化瑶族自治县', '530800');
INSERT INTO `joel_location_area` VALUES ('2071', '230', '宜州市', '546300');
INSERT INTO `joel_location_area` VALUES ('2072', '231', '兴宾区', '546100');
INSERT INTO `joel_location_area` VALUES ('2073', '231', '忻城县', '546200');
INSERT INTO `joel_location_area` VALUES ('2074', '231', '象州县', '545800');
INSERT INTO `joel_location_area` VALUES ('2075', '231', '武宣县', '545900');
INSERT INTO `joel_location_area` VALUES ('2076', '231', '金秀瑶族自治县', '545700');
INSERT INTO `joel_location_area` VALUES ('2077', '231', '合山市', '546500');
INSERT INTO `joel_location_area` VALUES ('2078', '232', '江洲区', '532200');
INSERT INTO `joel_location_area` VALUES ('2079', '232', '扶绥县', '532100');
INSERT INTO `joel_location_area` VALUES ('2080', '232', '宁明县', '532500');
INSERT INTO `joel_location_area` VALUES ('2081', '232', '龙州县', '532400');
INSERT INTO `joel_location_area` VALUES ('2082', '232', '大新县', '532300');
INSERT INTO `joel_location_area` VALUES ('2083', '232', '天等县', '532800');
INSERT INTO `joel_location_area` VALUES ('2084', '232', '凭祥市', '532600');
INSERT INTO `joel_location_area` VALUES ('2085', '233', '秀英区', '570311');
INSERT INTO `joel_location_area` VALUES ('2086', '233', '龙华区', '570105');
INSERT INTO `joel_location_area` VALUES ('2087', '233', '琼山区', '571100');
INSERT INTO `joel_location_area` VALUES ('2088', '233', '美兰区', '570203');
INSERT INTO `joel_location_area` VALUES ('2089', '234', '河西区', '572000');
INSERT INTO `joel_location_area` VALUES ('2090', '234', '河东区', '572000');
INSERT INTO `joel_location_area` VALUES ('2091', '234', '田独镇', '572011');
INSERT INTO `joel_location_area` VALUES ('2092', '234', '凤凰镇', '572023');
INSERT INTO `joel_location_area` VALUES ('2093', '234', '三亚市', '572000');
INSERT INTO `joel_location_area` VALUES ('2094', '234', '崖城镇', '572025');
INSERT INTO `joel_location_area` VALUES ('2095', '234', '天涯镇', '572029');
INSERT INTO `joel_location_area` VALUES ('2096', '234', '育才乡', '572032');
INSERT INTO `joel_location_area` VALUES ('2097', '234', '海棠湾镇', '572014');
INSERT INTO `joel_location_area` VALUES ('2098', '235', '五指山市', '572200');
INSERT INTO `joel_location_area` VALUES ('2099', '235', '琼海市', '571400');
INSERT INTO `joel_location_area` VALUES ('2100', '235', '儋州市', '571700');
INSERT INTO `joel_location_area` VALUES ('2101', '235', '文昌市', '571300');
INSERT INTO `joel_location_area` VALUES ('2102', '235', '万宁市', '571500');
INSERT INTO `joel_location_area` VALUES ('2103', '235', '东方市', '572600');
INSERT INTO `joel_location_area` VALUES ('2104', '235', '定安县', '571200');
INSERT INTO `joel_location_area` VALUES ('2105', '235', '屯昌县', '571600');
INSERT INTO `joel_location_area` VALUES ('2106', '235', '澄迈县', '571900');
INSERT INTO `joel_location_area` VALUES ('2107', '235', '临高县', '571800');
INSERT INTO `joel_location_area` VALUES ('2108', '235', '白沙黎族自治县', '572800');
INSERT INTO `joel_location_area` VALUES ('2109', '235', '昌江黎族自治县', '572700');
INSERT INTO `joel_location_area` VALUES ('2110', '235', '乐东黎族自治县', '572500');
INSERT INTO `joel_location_area` VALUES ('2111', '235', '陵水黎族自治县', '572400');
INSERT INTO `joel_location_area` VALUES ('2112', '235', '保亭黎族苗族自治县', '572300');
INSERT INTO `joel_location_area` VALUES ('2113', '235', '琼中黎族苗族自治县', '572900');
INSERT INTO `joel_location_area` VALUES ('2114', '235', '西、南、中沙群岛办事处', '573100');
INSERT INTO `joel_location_area` VALUES ('2115', '236', '万州区', '404100');
INSERT INTO `joel_location_area` VALUES ('2116', '236', '涪陵区', '408000');
INSERT INTO `joel_location_area` VALUES ('2117', '236', '渝中区', '400010');
INSERT INTO `joel_location_area` VALUES ('2118', '236', '大渡口区', '400080');
INSERT INTO `joel_location_area` VALUES ('2119', '236', '江北区', '400020');
INSERT INTO `joel_location_area` VALUES ('2120', '236', '沙坪坝区', '400030');
INSERT INTO `joel_location_area` VALUES ('2121', '236', '九龙坡区', '400050');
INSERT INTO `joel_location_area` VALUES ('2122', '236', '南岸区', '400064');
INSERT INTO `joel_location_area` VALUES ('2123', '236', '北碚区', '400700');
INSERT INTO `joel_location_area` VALUES ('2124', '236', '万盛区', '400800');
INSERT INTO `joel_location_area` VALUES ('2125', '236', '双桥区', '400900');
INSERT INTO `joel_location_area` VALUES ('2126', '236', '渝北区', '401120');
INSERT INTO `joel_location_area` VALUES ('2127', '236', '巴南区', '401320');
INSERT INTO `joel_location_area` VALUES ('2128', '236', '黔江区', '409700');
INSERT INTO `joel_location_area` VALUES ('2129', '236', '长寿区', '401220');
INSERT INTO `joel_location_area` VALUES ('2130', '236', '綦江县', '401420');
INSERT INTO `joel_location_area` VALUES ('2131', '236', '潼南县', '402660');
INSERT INTO `joel_location_area` VALUES ('2132', '236', '铜梁县', '402560');
INSERT INTO `joel_location_area` VALUES ('2133', '236', '大足县', '402360');
INSERT INTO `joel_location_area` VALUES ('2134', '236', '荣昌县', '402460');
INSERT INTO `joel_location_area` VALUES ('2135', '236', '璧山县', '402760');
INSERT INTO `joel_location_area` VALUES ('2136', '236', '梁平县', '405200');
INSERT INTO `joel_location_area` VALUES ('2137', '236', '城口县', '405900');
INSERT INTO `joel_location_area` VALUES ('2138', '236', '丰都县', '408200');
INSERT INTO `joel_location_area` VALUES ('2139', '236', '垫江县', '408300');
INSERT INTO `joel_location_area` VALUES ('2140', '236', '武隆县', '408500');
INSERT INTO `joel_location_area` VALUES ('2141', '236', '忠县', '404300');
INSERT INTO `joel_location_area` VALUES ('2142', '236', '开县', '405400');
INSERT INTO `joel_location_area` VALUES ('2143', '236', '云阳县', '404500');
INSERT INTO `joel_location_area` VALUES ('2144', '236', '奉节县', '404600');
INSERT INTO `joel_location_area` VALUES ('2145', '236', '巫山县', '404700');
INSERT INTO `joel_location_area` VALUES ('2146', '236', '巫溪县', '405800');
INSERT INTO `joel_location_area` VALUES ('2147', '236', '石柱土家族自治县', '409100');
INSERT INTO `joel_location_area` VALUES ('2148', '236', '秀山土家族苗族自治县', '409900');
INSERT INTO `joel_location_area` VALUES ('2149', '236', '酉阳土家族苗族自治县', '409800');
INSERT INTO `joel_location_area` VALUES ('2150', '236', '彭水苗族土家族自治县', '409600');
INSERT INTO `joel_location_area` VALUES ('2151', '236', '高新区', '400039');
INSERT INTO `joel_location_area` VALUES ('2152', '236', '江津区', '402260');
INSERT INTO `joel_location_area` VALUES ('2153', '236', '合川区', '401520');
INSERT INTO `joel_location_area` VALUES ('2154', '236', '永川区', '402160');
INSERT INTO `joel_location_area` VALUES ('2155', '236', '南川区', '408400');
INSERT INTO `joel_location_area` VALUES ('2156', '237', '锦江区', '610021');
INSERT INTO `joel_location_area` VALUES ('2157', '237', '青羊区', '610031');
INSERT INTO `joel_location_area` VALUES ('2158', '237', '金牛区', '610036');
INSERT INTO `joel_location_area` VALUES ('2159', '237', '武侯区', '610041');
INSERT INTO `joel_location_area` VALUES ('2160', '237', '成华区', '610066');
INSERT INTO `joel_location_area` VALUES ('2161', '237', '龙泉驿区', '610100');
INSERT INTO `joel_location_area` VALUES ('2162', '237', '青白江区', '610300');
INSERT INTO `joel_location_area` VALUES ('2163', '237', '新都区', '610500');
INSERT INTO `joel_location_area` VALUES ('2164', '237', '温江区', '611130');
INSERT INTO `joel_location_area` VALUES ('2165', '237', '金堂县', '610400');
INSERT INTO `joel_location_area` VALUES ('2166', '237', '双流县', '610200');
INSERT INTO `joel_location_area` VALUES ('2167', '237', '郫县', '611700');
INSERT INTO `joel_location_area` VALUES ('2168', '237', '大邑县', '611300');
INSERT INTO `joel_location_area` VALUES ('2169', '237', '蒲江县', '611630');
INSERT INTO `joel_location_area` VALUES ('2170', '237', '新津县', '611430');
INSERT INTO `joel_location_area` VALUES ('2171', '237', '都江堰市', '611830');
INSERT INTO `joel_location_area` VALUES ('2172', '237', '彭州市', '611930');
INSERT INTO `joel_location_area` VALUES ('2173', '237', '邛崃市', '611530');
INSERT INTO `joel_location_area` VALUES ('2174', '237', '崇州市', '611230');
INSERT INTO `joel_location_area` VALUES ('2175', '237', '高新区', '610041');
INSERT INTO `joel_location_area` VALUES ('2176', '237', '高新西区', '611731');
INSERT INTO `joel_location_area` VALUES ('2177', '238', '自流井区', '643000');
INSERT INTO `joel_location_area` VALUES ('2178', '238', '贡井区', '643020');
INSERT INTO `joel_location_area` VALUES ('2179', '238', '大安区', '643010');
INSERT INTO `joel_location_area` VALUES ('2180', '238', '沿滩区', '643030');
INSERT INTO `joel_location_area` VALUES ('2181', '238', '荣县', '643100');
INSERT INTO `joel_location_area` VALUES ('2182', '238', '富顺县', '643200');
INSERT INTO `joel_location_area` VALUES ('2183', '239', '东区', '617067');
INSERT INTO `joel_location_area` VALUES ('2184', '239', '西区', '617068');
INSERT INTO `joel_location_area` VALUES ('2185', '239', '仁和区', '617061');
INSERT INTO `joel_location_area` VALUES ('2186', '239', '米易县', '617200');
INSERT INTO `joel_location_area` VALUES ('2187', '239', '盐边县', '617100');
INSERT INTO `joel_location_area` VALUES ('2188', '240', '江阳区', '646000');
INSERT INTO `joel_location_area` VALUES ('2189', '240', '纳溪区', '646300');
INSERT INTO `joel_location_area` VALUES ('2190', '240', '龙马潭区', '646000');
INSERT INTO `joel_location_area` VALUES ('2191', '240', '泸县', '646106');
INSERT INTO `joel_location_area` VALUES ('2192', '240', '合江县', '646200');
INSERT INTO `joel_location_area` VALUES ('2193', '240', '叙永县', '646400');
INSERT INTO `joel_location_area` VALUES ('2194', '240', '古蔺县', '646500');
INSERT INTO `joel_location_area` VALUES ('2195', '241', '旌阳区', '618000');
INSERT INTO `joel_location_area` VALUES ('2196', '241', '中江县', '618100');
INSERT INTO `joel_location_area` VALUES ('2197', '241', '罗江县', '618500');
INSERT INTO `joel_location_area` VALUES ('2198', '241', '广汉市', '618300');
INSERT INTO `joel_location_area` VALUES ('2199', '241', '什邡市', '618400');
INSERT INTO `joel_location_area` VALUES ('2200', '241', '绵竹市', '618200');
INSERT INTO `joel_location_area` VALUES ('2201', '242', '涪城区', '621000');
INSERT INTO `joel_location_area` VALUES ('2202', '242', '游仙区', '621022');
INSERT INTO `joel_location_area` VALUES ('2203', '242', '三台县', '621100');
INSERT INTO `joel_location_area` VALUES ('2204', '242', '盐亭县', '621600');
INSERT INTO `joel_location_area` VALUES ('2205', '242', '安县', '622650');
INSERT INTO `joel_location_area` VALUES ('2206', '242', '梓潼县', '622150');
INSERT INTO `joel_location_area` VALUES ('2207', '242', '北川羌族自治县', '622750');
INSERT INTO `joel_location_area` VALUES ('2208', '242', '平武县', '622550');
INSERT INTO `joel_location_area` VALUES ('2209', '242', '江油市', '621700');
INSERT INTO `joel_location_area` VALUES ('2210', '242', '农科区', '621023');
INSERT INTO `joel_location_area` VALUES ('2211', '242', '经济技术开发区', '621000');
INSERT INTO `joel_location_area` VALUES ('2212', '242', '高新区', '621000');
INSERT INTO `joel_location_area` VALUES ('2213', '242', '仙海区', '621007');
INSERT INTO `joel_location_area` VALUES ('2214', '243', '利州区', '628017');
INSERT INTO `joel_location_area` VALUES ('2215', '243', '元坝区', '628017');
INSERT INTO `joel_location_area` VALUES ('2216', '243', '朝天区', '628017');
INSERT INTO `joel_location_area` VALUES ('2217', '243', '旺苍县', '628200');
INSERT INTO `joel_location_area` VALUES ('2218', '243', '青川县', '628100');
INSERT INTO `joel_location_area` VALUES ('2219', '243', '剑阁县', '628300');
INSERT INTO `joel_location_area` VALUES ('2220', '243', '苍溪县', '628400');
INSERT INTO `joel_location_area` VALUES ('2221', '244', '船山区', '629000');
INSERT INTO `joel_location_area` VALUES ('2222', '244', '安居区', '629000');
INSERT INTO `joel_location_area` VALUES ('2223', '244', '蓬溪县', '629100');
INSERT INTO `joel_location_area` VALUES ('2224', '244', '射洪县', '629200');
INSERT INTO `joel_location_area` VALUES ('2225', '244', '大英县', '629300');
INSERT INTO `joel_location_area` VALUES ('2226', '245', '市中区', '641000');
INSERT INTO `joel_location_area` VALUES ('2227', '245', '东兴区', '641100');
INSERT INTO `joel_location_area` VALUES ('2228', '245', '威远县', '642450');
INSERT INTO `joel_location_area` VALUES ('2229', '245', '资中县', '641200');
INSERT INTO `joel_location_area` VALUES ('2230', '245', '隆昌县', '642150');
INSERT INTO `joel_location_area` VALUES ('2231', '246', '市中区', '614000');
INSERT INTO `joel_location_area` VALUES ('2232', '246', '沙湾区', '614900');
INSERT INTO `joel_location_area` VALUES ('2233', '246', '五通桥区', '614800');
INSERT INTO `joel_location_area` VALUES ('2234', '246', '金口河区', '614700');
INSERT INTO `joel_location_area` VALUES ('2235', '246', '犍为县', '614400');
INSERT INTO `joel_location_area` VALUES ('2236', '246', '井研县', '613100');
INSERT INTO `joel_location_area` VALUES ('2237', '246', '夹江县', '614100');
INSERT INTO `joel_location_area` VALUES ('2238', '246', '沐川县', '614500');
INSERT INTO `joel_location_area` VALUES ('2239', '246', '峨边彝族自治县', '614300');
INSERT INTO `joel_location_area` VALUES ('2240', '246', '马边彝族自治县', '614600');
INSERT INTO `joel_location_area` VALUES ('2241', '246', '峨眉山市', '614200');
INSERT INTO `joel_location_area` VALUES ('2242', '247', '顺庆区', '637000');
INSERT INTO `joel_location_area` VALUES ('2243', '247', '高坪区', '637100');
INSERT INTO `joel_location_area` VALUES ('2244', '247', '嘉陵区', '637100');
INSERT INTO `joel_location_area` VALUES ('2245', '247', '南部县', '637300');
INSERT INTO `joel_location_area` VALUES ('2246', '247', '营山县', '637700');
INSERT INTO `joel_location_area` VALUES ('2247', '247', '蓬安县', '637800');
INSERT INTO `joel_location_area` VALUES ('2248', '247', '仪陇县', '637600');
INSERT INTO `joel_location_area` VALUES ('2249', '247', '西充县', '637200');
INSERT INTO `joel_location_area` VALUES ('2250', '247', '阆中市', '637400');
INSERT INTO `joel_location_area` VALUES ('2251', '248', '东坡区', '620010');
INSERT INTO `joel_location_area` VALUES ('2252', '248', '仁寿县', '620500');
INSERT INTO `joel_location_area` VALUES ('2253', '248', '彭山县', '620860');
INSERT INTO `joel_location_area` VALUES ('2254', '248', '洪雅县', '620360');
INSERT INTO `joel_location_area` VALUES ('2255', '248', '丹棱县', '620200');
INSERT INTO `joel_location_area` VALUES ('2256', '248', '青神县', '620460');
INSERT INTO `joel_location_area` VALUES ('2257', '249', '翠屏区', '644000');
INSERT INTO `joel_location_area` VALUES ('2258', '249', '宜宾县', '644600');
INSERT INTO `joel_location_area` VALUES ('2259', '249', '南溪县', '644100');
INSERT INTO `joel_location_area` VALUES ('2260', '249', '江安县', '644200');
INSERT INTO `joel_location_area` VALUES ('2261', '249', '长宁县', '644300');
INSERT INTO `joel_location_area` VALUES ('2262', '249', '高县', '645150');
INSERT INTO `joel_location_area` VALUES ('2263', '249', '珙县', '644500');
INSERT INTO `joel_location_area` VALUES ('2264', '249', '筠连县', '645250');
INSERT INTO `joel_location_area` VALUES ('2265', '249', '兴文县', '644400');
INSERT INTO `joel_location_area` VALUES ('2266', '249', '屏山县', '645350');
INSERT INTO `joel_location_area` VALUES ('2267', '250', '广安区', '638000');
INSERT INTO `joel_location_area` VALUES ('2268', '250', '岳池县', '638300');
INSERT INTO `joel_location_area` VALUES ('2269', '250', '武胜县', '638400');
INSERT INTO `joel_location_area` VALUES ('2270', '250', '邻水县', '638500');
INSERT INTO `joel_location_area` VALUES ('2271', '250', '华蓥市', '638600');
INSERT INTO `joel_location_area` VALUES ('2272', '251', '通川区', '635000');
INSERT INTO `joel_location_area` VALUES ('2273', '251', '达县', '635000');
INSERT INTO `joel_location_area` VALUES ('2274', '251', '宣汉县', '636150');
INSERT INTO `joel_location_area` VALUES ('2275', '251', '开江县', '636250');
INSERT INTO `joel_location_area` VALUES ('2276', '251', '大竹县', '635100');
INSERT INTO `joel_location_area` VALUES ('2277', '251', '渠县', '635200');
INSERT INTO `joel_location_area` VALUES ('2278', '251', '万源市', '636350');
INSERT INTO `joel_location_area` VALUES ('2279', '252', '雨城区', '625000');
INSERT INTO `joel_location_area` VALUES ('2280', '252', '名山县', '625100');
INSERT INTO `joel_location_area` VALUES ('2281', '252', '荥经县', '625200');
INSERT INTO `joel_location_area` VALUES ('2282', '252', '汉源县', '625300');
INSERT INTO `joel_location_area` VALUES ('2283', '252', '石棉县', '625400');
INSERT INTO `joel_location_area` VALUES ('2284', '252', '天全县', '625500');
INSERT INTO `joel_location_area` VALUES ('2285', '252', '芦山县', '625600');
INSERT INTO `joel_location_area` VALUES ('2286', '252', '宝兴县', '625700');
INSERT INTO `joel_location_area` VALUES ('2287', '253', '巴州区', '636001');
INSERT INTO `joel_location_area` VALUES ('2288', '253', '通江县', '636700');
INSERT INTO `joel_location_area` VALUES ('2289', '253', '南江县', '636600');
INSERT INTO `joel_location_area` VALUES ('2290', '253', '平昌县', '636400');
INSERT INTO `joel_location_area` VALUES ('2291', '254', '雁江区', '641300');
INSERT INTO `joel_location_area` VALUES ('2292', '254', '安岳县', '642350');
INSERT INTO `joel_location_area` VALUES ('2293', '254', '乐至县', '641500');
INSERT INTO `joel_location_area` VALUES ('2294', '254', '简阳市', '641400');
INSERT INTO `joel_location_area` VALUES ('2295', '255', '汶川县', '623000');
INSERT INTO `joel_location_area` VALUES ('2296', '255', '理县', '623100');
INSERT INTO `joel_location_area` VALUES ('2297', '255', '茂县', '623200');
INSERT INTO `joel_location_area` VALUES ('2298', '255', '松潘县', '623300');
INSERT INTO `joel_location_area` VALUES ('2299', '255', '九寨沟县', '623400');
INSERT INTO `joel_location_area` VALUES ('2300', '255', '金川县', '624100');
INSERT INTO `joel_location_area` VALUES ('2301', '255', '小金县', '624200');
INSERT INTO `joel_location_area` VALUES ('2302', '255', '黑水县', '623500');
INSERT INTO `joel_location_area` VALUES ('2303', '255', '马尔康县', '624000');
INSERT INTO `joel_location_area` VALUES ('2304', '255', '壤塘县', '624300');
INSERT INTO `joel_location_area` VALUES ('2305', '255', '阿坝县', '624600');
INSERT INTO `joel_location_area` VALUES ('2306', '255', '若尔盖县', '624500');
INSERT INTO `joel_location_area` VALUES ('2307', '255', '红原县', '624400');
INSERT INTO `joel_location_area` VALUES ('2308', '256', '康定县', '626000');
INSERT INTO `joel_location_area` VALUES ('2309', '256', '泸定县', '626100');
INSERT INTO `joel_location_area` VALUES ('2310', '256', '丹巴县', '626300');
INSERT INTO `joel_location_area` VALUES ('2311', '256', '九龙县', '626200');
INSERT INTO `joel_location_area` VALUES ('2312', '256', '雅江县', '627450');
INSERT INTO `joel_location_area` VALUES ('2313', '256', '道孚县', '626400');
INSERT INTO `joel_location_area` VALUES ('2314', '256', '炉霍县', '626500');
INSERT INTO `joel_location_area` VALUES ('2315', '256', '甘孜县', '626700');
INSERT INTO `joel_location_area` VALUES ('2316', '256', '新龙县', '626800');
INSERT INTO `joel_location_area` VALUES ('2317', '256', '德格县', '627250');
INSERT INTO `joel_location_area` VALUES ('2318', '256', '白玉县', '627150');
INSERT INTO `joel_location_area` VALUES ('2319', '256', '石渠县', '627350');
INSERT INTO `joel_location_area` VALUES ('2320', '256', '色达县', '626600');
INSERT INTO `joel_location_area` VALUES ('2321', '256', '理塘县', '627550');
INSERT INTO `joel_location_area` VALUES ('2322', '256', '巴塘县', '627650');
INSERT INTO `joel_location_area` VALUES ('2323', '256', '乡城县', '627850');
INSERT INTO `joel_location_area` VALUES ('2324', '256', '稻城县', '627750');
INSERT INTO `joel_location_area` VALUES ('2325', '256', '得荣县', '627950');
INSERT INTO `joel_location_area` VALUES ('2326', '257', '西昌市', '615000');
INSERT INTO `joel_location_area` VALUES ('2327', '257', '木里藏族自治县', '615800');
INSERT INTO `joel_location_area` VALUES ('2328', '257', '盐源县', '615700');
INSERT INTO `joel_location_area` VALUES ('2329', '257', '德昌县', '615500');
INSERT INTO `joel_location_area` VALUES ('2330', '257', '会理县', '615100');
INSERT INTO `joel_location_area` VALUES ('2331', '257', '会东县', '615200');
INSERT INTO `joel_location_area` VALUES ('2332', '257', '宁南县', '615400');
INSERT INTO `joel_location_area` VALUES ('2333', '257', '普格县', '615300');
INSERT INTO `joel_location_area` VALUES ('2334', '257', '布拖县', '615350');
INSERT INTO `joel_location_area` VALUES ('2335', '257', '金阳县', '616250');
INSERT INTO `joel_location_area` VALUES ('2336', '257', '昭觉县', '616150');
INSERT INTO `joel_location_area` VALUES ('2337', '257', '喜德县', '616750');
INSERT INTO `joel_location_area` VALUES ('2338', '257', '冕宁县', '615600');
INSERT INTO `joel_location_area` VALUES ('2339', '257', '越西县', '616650');
INSERT INTO `joel_location_area` VALUES ('2340', '257', '甘洛县', '616850');
INSERT INTO `joel_location_area` VALUES ('2341', '257', '美姑县', '616450');
INSERT INTO `joel_location_area` VALUES ('2342', '257', '雷波县', '616550');
INSERT INTO `joel_location_area` VALUES ('2343', '258', '南明区', '550001');
INSERT INTO `joel_location_area` VALUES ('2344', '258', '云岩区', '550001');
INSERT INTO `joel_location_area` VALUES ('2345', '258', '花溪区', '550025');
INSERT INTO `joel_location_area` VALUES ('2346', '258', '乌当区', '550018');
INSERT INTO `joel_location_area` VALUES ('2347', '258', '白云区', '550014');
INSERT INTO `joel_location_area` VALUES ('2348', '258', '小河区', '550009');
INSERT INTO `joel_location_area` VALUES ('2349', '258', '开阳县', '550300');
INSERT INTO `joel_location_area` VALUES ('2350', '258', '息烽县', '551100');
INSERT INTO `joel_location_area` VALUES ('2351', '258', '修文县', '550200');
INSERT INTO `joel_location_area` VALUES ('2352', '258', '清镇市', '551400');
INSERT INTO `joel_location_area` VALUES ('2353', '258', '金阳新区', '550081');
INSERT INTO `joel_location_area` VALUES ('2354', '259', '钟山区', '553000');
INSERT INTO `joel_location_area` VALUES ('2355', '259', '六枝特区', '553400');
INSERT INTO `joel_location_area` VALUES ('2356', '259', '水城县', '553000');
INSERT INTO `joel_location_area` VALUES ('2357', '259', '盘县', '561601');
INSERT INTO `joel_location_area` VALUES ('2358', '260', '红花岗区', '563000');
INSERT INTO `joel_location_area` VALUES ('2359', '260', '汇川区', '563000');
INSERT INTO `joel_location_area` VALUES ('2360', '260', '遵义县', '563100');
INSERT INTO `joel_location_area` VALUES ('2361', '260', '桐梓县', '563200');
INSERT INTO `joel_location_area` VALUES ('2362', '260', '绥阳县', '563300');
INSERT INTO `joel_location_area` VALUES ('2363', '260', '正安县', '563400');
INSERT INTO `joel_location_area` VALUES ('2364', '260', '道真仡佬族苗族自治县', '563500');
INSERT INTO `joel_location_area` VALUES ('2365', '260', '务川仡佬族苗族自治县', '564300');
INSERT INTO `joel_location_area` VALUES ('2366', '260', '凤冈县', '564200');
INSERT INTO `joel_location_area` VALUES ('2367', '260', '湄潭县', '564100');
INSERT INTO `joel_location_area` VALUES ('2368', '260', '余庆县', '564400');
INSERT INTO `joel_location_area` VALUES ('2369', '260', '习水县', '564600');
INSERT INTO `joel_location_area` VALUES ('2370', '260', '赤水市', '564700');
INSERT INTO `joel_location_area` VALUES ('2371', '260', '仁怀市', '564500');
INSERT INTO `joel_location_area` VALUES ('2372', '261', '西秀区', '561000');
INSERT INTO `joel_location_area` VALUES ('2373', '261', '平坝县', '561100');
INSERT INTO `joel_location_area` VALUES ('2374', '261', '普定县', '562100');
INSERT INTO `joel_location_area` VALUES ('2375', '261', '镇宁布依族苗族自治县', '561200');
INSERT INTO `joel_location_area` VALUES ('2376', '261', '关岭布依族苗族自治县', '561300');
INSERT INTO `joel_location_area` VALUES ('2377', '261', '紫云苗族布依族自治县', '550800');
INSERT INTO `joel_location_area` VALUES ('2378', '262', '铜仁市', '554300');
INSERT INTO `joel_location_area` VALUES ('2379', '262', '江口县', '554400');
INSERT INTO `joel_location_area` VALUES ('2380', '262', '玉屏侗族自治县', '554004');
INSERT INTO `joel_location_area` VALUES ('2381', '262', '石阡县', '555100');
INSERT INTO `joel_location_area` VALUES ('2382', '262', '思南县', '565100');
INSERT INTO `joel_location_area` VALUES ('2383', '262', '印江土家族苗族自治县', '555200');
INSERT INTO `joel_location_area` VALUES ('2384', '262', '德江县', '565200');
INSERT INTO `joel_location_area` VALUES ('2385', '262', '沿河土家族自治县', '565300');
INSERT INTO `joel_location_area` VALUES ('2386', '262', '松桃苗族自治县', '554100');
INSERT INTO `joel_location_area` VALUES ('2387', '262', '万山特区', '554200');
INSERT INTO `joel_location_area` VALUES ('2388', '263', '兴义市', '562400');
INSERT INTO `joel_location_area` VALUES ('2389', '263', '兴仁县', '562300');
INSERT INTO `joel_location_area` VALUES ('2390', '263', '普安县', '561500');
INSERT INTO `joel_location_area` VALUES ('2391', '263', '晴隆县', '561400');
INSERT INTO `joel_location_area` VALUES ('2392', '263', '贞丰县', '562200');
INSERT INTO `joel_location_area` VALUES ('2393', '263', '望谟县', '552300');
INSERT INTO `joel_location_area` VALUES ('2394', '263', '册亨县', '552200');
INSERT INTO `joel_location_area` VALUES ('2395', '263', '安龙县', '552400');
INSERT INTO `joel_location_area` VALUES ('2396', '264', '毕节市', '551700');
INSERT INTO `joel_location_area` VALUES ('2397', '264', '大方县', '551600');
INSERT INTO `joel_location_area` VALUES ('2398', '264', '黔西县', '551500');
INSERT INTO `joel_location_area` VALUES ('2399', '264', '金沙县', '551800');
INSERT INTO `joel_location_area` VALUES ('2400', '264', '织金县', '552100');
INSERT INTO `joel_location_area` VALUES ('2401', '264', '纳雍县', '553300');
INSERT INTO `joel_location_area` VALUES ('2402', '264', '威宁彝族回族苗族自治县', '553100');
INSERT INTO `joel_location_area` VALUES ('2403', '264', '赫章县', '553200');
INSERT INTO `joel_location_area` VALUES ('2404', '265', '凯里市', '556000');
INSERT INTO `joel_location_area` VALUES ('2405', '265', '黄平县', '556100');
INSERT INTO `joel_location_area` VALUES ('2406', '265', '施秉县', '556200');
INSERT INTO `joel_location_area` VALUES ('2407', '265', '三穗县', '556500');
INSERT INTO `joel_location_area` VALUES ('2408', '265', '镇远县', '557700');
INSERT INTO `joel_location_area` VALUES ('2409', '265', '岑巩县', '557800');
INSERT INTO `joel_location_area` VALUES ('2410', '265', '天柱县', '556600');
INSERT INTO `joel_location_area` VALUES ('2411', '265', '锦屏县', '556700');
INSERT INTO `joel_location_area` VALUES ('2412', '265', '剑河县', '556400');
INSERT INTO `joel_location_area` VALUES ('2413', '265', '台江县', '556300');
INSERT INTO `joel_location_area` VALUES ('2414', '265', '黎平县', '557300');
INSERT INTO `joel_location_area` VALUES ('2415', '265', '榕江县', '557200');
INSERT INTO `joel_location_area` VALUES ('2416', '265', '从江县', '557400');
INSERT INTO `joel_location_area` VALUES ('2417', '265', '雷山县', '557100');
INSERT INTO `joel_location_area` VALUES ('2418', '265', '麻江县', '557600');
INSERT INTO `joel_location_area` VALUES ('2419', '265', '丹寨县', '557500');
INSERT INTO `joel_location_area` VALUES ('2420', '266', '都匀市', '558000');
INSERT INTO `joel_location_area` VALUES ('2421', '266', '福泉市', '550500');
INSERT INTO `joel_location_area` VALUES ('2422', '266', '荔波县', '558400');
INSERT INTO `joel_location_area` VALUES ('2423', '266', '贵定县', '551300');
INSERT INTO `joel_location_area` VALUES ('2424', '266', '瓮安县', '550400');
INSERT INTO `joel_location_area` VALUES ('2425', '266', '独山县', '558200');
INSERT INTO `joel_location_area` VALUES ('2426', '266', '平塘县', '558300');
INSERT INTO `joel_location_area` VALUES ('2427', '266', '罗甸县', '550100');
INSERT INTO `joel_location_area` VALUES ('2428', '266', '长顺县', '550700');
INSERT INTO `joel_location_area` VALUES ('2429', '266', '龙里县', '551200');
INSERT INTO `joel_location_area` VALUES ('2430', '266', '惠水县', '550600');
INSERT INTO `joel_location_area` VALUES ('2431', '266', '三都水族自治县', '558100');
INSERT INTO `joel_location_area` VALUES ('2432', '267', '五华区', '650032');
INSERT INTO `joel_location_area` VALUES ('2433', '267', '盘龙区', '650051');
INSERT INTO `joel_location_area` VALUES ('2434', '267', '官渡区', '650220');
INSERT INTO `joel_location_area` VALUES ('2435', '267', '西山区', '650100');
INSERT INTO `joel_location_area` VALUES ('2436', '267', '东川区', '654100');
INSERT INTO `joel_location_area` VALUES ('2437', '267', '呈贡县', '650500');
INSERT INTO `joel_location_area` VALUES ('2438', '267', '晋宁县', '650600');
INSERT INTO `joel_location_area` VALUES ('2439', '267', '富民县', '650400');
INSERT INTO `joel_location_area` VALUES ('2440', '267', '宜良县', '652100');
INSERT INTO `joel_location_area` VALUES ('2441', '267', '石林彝族自治县', '652200');
INSERT INTO `joel_location_area` VALUES ('2442', '267', '嵩明县', '651700');
INSERT INTO `joel_location_area` VALUES ('2443', '267', '禄劝彝族苗族自治县', '651500');
INSERT INTO `joel_location_area` VALUES ('2444', '267', '寻甸回族彝族自治县', '655200');
INSERT INTO `joel_location_area` VALUES ('2445', '267', '安宁市', '650300');
INSERT INTO `joel_location_area` VALUES ('2446', '268', '麒麟区', '655000');
INSERT INTO `joel_location_area` VALUES ('2447', '268', '马龙县', '655100');
INSERT INTO `joel_location_area` VALUES ('2448', '268', '陆良县', '655600');
INSERT INTO `joel_location_area` VALUES ('2449', '268', '师宗县', '655700');
INSERT INTO `joel_location_area` VALUES ('2450', '268', '罗平县', '655800');
INSERT INTO `joel_location_area` VALUES ('2451', '268', '富源县', '655500');
INSERT INTO `joel_location_area` VALUES ('2452', '268', '会泽县', '654200');
INSERT INTO `joel_location_area` VALUES ('2453', '268', '沾益县', '655331');
INSERT INTO `joel_location_area` VALUES ('2454', '268', '宣威市', '655400');
INSERT INTO `joel_location_area` VALUES ('2455', '269', '红塔区', '653100');
INSERT INTO `joel_location_area` VALUES ('2456', '269', '江川县', '652600');
INSERT INTO `joel_location_area` VALUES ('2457', '269', '澄江县', '652500');
INSERT INTO `joel_location_area` VALUES ('2458', '269', '通海县', '652700');
INSERT INTO `joel_location_area` VALUES ('2459', '269', '华宁县', '652800');
INSERT INTO `joel_location_area` VALUES ('2460', '269', '易门县', '651100');
INSERT INTO `joel_location_area` VALUES ('2461', '269', '峨山彝族自治县', '653200');
INSERT INTO `joel_location_area` VALUES ('2462', '269', '新平彝族傣族自治县', '653400');
INSERT INTO `joel_location_area` VALUES ('2463', '269', '元江哈尼族彝族傣族自治县', '653300');
INSERT INTO `joel_location_area` VALUES ('2464', '270', '隆阳区', '678000');
INSERT INTO `joel_location_area` VALUES ('2465', '270', '施甸县', '678200');
INSERT INTO `joel_location_area` VALUES ('2466', '270', '腾冲县', '679100');
INSERT INTO `joel_location_area` VALUES ('2467', '270', '龙陵县', '678300');
INSERT INTO `joel_location_area` VALUES ('2468', '270', '昌宁县', '678100');
INSERT INTO `joel_location_area` VALUES ('2469', '271', '昭阳区', '657000');
INSERT INTO `joel_location_area` VALUES ('2470', '271', '鲁甸县', '657100');
INSERT INTO `joel_location_area` VALUES ('2471', '271', '巧家县', '654600');
INSERT INTO `joel_location_area` VALUES ('2472', '271', '盐津县', '657500');
INSERT INTO `joel_location_area` VALUES ('2473', '271', '大关县', '657400');
INSERT INTO `joel_location_area` VALUES ('2474', '271', '永善县', '657300');
INSERT INTO `joel_location_area` VALUES ('2475', '271', '绥江县', '657700');
INSERT INTO `joel_location_area` VALUES ('2476', '271', '镇雄县', '657200');
INSERT INTO `joel_location_area` VALUES ('2477', '271', '彝良县', '657600');
INSERT INTO `joel_location_area` VALUES ('2478', '271', '威信县', '657900');
INSERT INTO `joel_location_area` VALUES ('2479', '271', '水富县', '657800');
INSERT INTO `joel_location_area` VALUES ('2480', '272', '古城区', '674100');
INSERT INTO `joel_location_area` VALUES ('2481', '272', '玉龙纳西族自治县', '674100');
INSERT INTO `joel_location_area` VALUES ('2482', '272', '永胜县', '674200');
INSERT INTO `joel_location_area` VALUES ('2483', '272', '华坪县', '674800');
INSERT INTO `joel_location_area` VALUES ('2484', '272', '宁蒗彝族自治县', '674300');
INSERT INTO `joel_location_area` VALUES ('2485', '273', '思茅区', '665000');
INSERT INTO `joel_location_area` VALUES ('2486', '273', '宁洱哈尼族彝族自治县', '665100');
INSERT INTO `joel_location_area` VALUES ('2487', '273', '墨江哈尼族自治县', '654800');
INSERT INTO `joel_location_area` VALUES ('2488', '273', '景东彝族自治县', '676200');
INSERT INTO `joel_location_area` VALUES ('2489', '273', '景谷傣族彝族自治县', '666400');
INSERT INTO `joel_location_area` VALUES ('2490', '273', '镇沅彝族哈尼族拉祜族自治县', '666500');
INSERT INTO `joel_location_area` VALUES ('2491', '273', '江城哈尼族彝族自治县', '665900');
INSERT INTO `joel_location_area` VALUES ('2492', '273', '孟连傣族拉祜族佤族自治县', '665800');
INSERT INTO `joel_location_area` VALUES ('2493', '273', '澜沧拉祜族自治县', '665600');
INSERT INTO `joel_location_area` VALUES ('2494', '273', '西盟佤族自治县', '665700');
INSERT INTO `joel_location_area` VALUES ('2495', '274', '临翔区', '677000');
INSERT INTO `joel_location_area` VALUES ('2496', '274', '凤庆县', '675900');
INSERT INTO `joel_location_area` VALUES ('2497', '274', '云县', '675800');
INSERT INTO `joel_location_area` VALUES ('2498', '274', '永德县', '677600');
INSERT INTO `joel_location_area` VALUES ('2499', '274', '镇康县', '677704');
INSERT INTO `joel_location_area` VALUES ('2500', '274', '双江拉祜族佤族布朗族傣族自治县', '677300');
INSERT INTO `joel_location_area` VALUES ('2501', '274', '耿马傣族佤族自治县', '677500');
INSERT INTO `joel_location_area` VALUES ('2502', '274', '沧源佤族自治县', '677400');
INSERT INTO `joel_location_area` VALUES ('2503', '275', '楚雄市', '675000');
INSERT INTO `joel_location_area` VALUES ('2504', '275', '双柏县', '675100');
INSERT INTO `joel_location_area` VALUES ('2505', '275', '牟定县', '675500');
INSERT INTO `joel_location_area` VALUES ('2506', '275', '南华县', '675200');
INSERT INTO `joel_location_area` VALUES ('2507', '275', '姚安县', '675300');
INSERT INTO `joel_location_area` VALUES ('2508', '275', '大姚县', '675400');
INSERT INTO `joel_location_area` VALUES ('2509', '275', '永仁县', '651400');
INSERT INTO `joel_location_area` VALUES ('2510', '275', '元谋县', '651300');
INSERT INTO `joel_location_area` VALUES ('2511', '275', '武定县', '651600');
INSERT INTO `joel_location_area` VALUES ('2512', '275', '禄丰县', '651200');
INSERT INTO `joel_location_area` VALUES ('2513', '276', '个旧市', '661000');
INSERT INTO `joel_location_area` VALUES ('2514', '276', '开远市', '661600');
INSERT INTO `joel_location_area` VALUES ('2515', '276', '蒙自县', '661100');
INSERT INTO `joel_location_area` VALUES ('2516', '276', '屏边苗族自治县', '661200');
INSERT INTO `joel_location_area` VALUES ('2517', '276', '建水县', '654300');
INSERT INTO `joel_location_area` VALUES ('2518', '276', '石屏县', '662200');
INSERT INTO `joel_location_area` VALUES ('2519', '276', '弥勒县', '652300');
INSERT INTO `joel_location_area` VALUES ('2520', '276', '泸西县', '652400');
INSERT INTO `joel_location_area` VALUES ('2521', '276', '元阳县', '662400');
INSERT INTO `joel_location_area` VALUES ('2522', '276', '红河县', '654400');
INSERT INTO `joel_location_area` VALUES ('2523', '276', '金平苗族瑶族傣族自治县', '661500');
INSERT INTO `joel_location_area` VALUES ('2524', '276', '绿春县', '662500');
INSERT INTO `joel_location_area` VALUES ('2525', '276', '河口瑶族自治县', '661300');
INSERT INTO `joel_location_area` VALUES ('2526', '277', '文山县', '663000');
INSERT INTO `joel_location_area` VALUES ('2527', '277', '砚山县', '663100');
INSERT INTO `joel_location_area` VALUES ('2528', '277', '西畴县', '663500');
INSERT INTO `joel_location_area` VALUES ('2529', '277', '麻栗坡县', '663600');
INSERT INTO `joel_location_area` VALUES ('2530', '277', '马关县', '663700');
INSERT INTO `joel_location_area` VALUES ('2531', '277', '丘北县', '663200');
INSERT INTO `joel_location_area` VALUES ('2532', '277', '广南县', '663300');
INSERT INTO `joel_location_area` VALUES ('2533', '277', '富宁县', '663400');
INSERT INTO `joel_location_area` VALUES ('2534', '278', '景洪市', '666100');
INSERT INTO `joel_location_area` VALUES ('2535', '278', '勐海县', '666200');
INSERT INTO `joel_location_area` VALUES ('2536', '278', '勐腊县', '666300');
INSERT INTO `joel_location_area` VALUES ('2537', '279', '大理市', '671000');
INSERT INTO `joel_location_area` VALUES ('2538', '279', '漾濞彝族自治县', '672500');
INSERT INTO `joel_location_area` VALUES ('2539', '279', '祥云县', '672100');
INSERT INTO `joel_location_area` VALUES ('2540', '279', '宾川县', '671600');
INSERT INTO `joel_location_area` VALUES ('2541', '279', '弥渡县', '675600');
INSERT INTO `joel_location_area` VALUES ('2542', '279', '南涧彝族自治县', '675700');
INSERT INTO `joel_location_area` VALUES ('2543', '279', '巍山彝族回族自治县', '672400');
INSERT INTO `joel_location_area` VALUES ('2544', '279', '永平县', '672600');
INSERT INTO `joel_location_area` VALUES ('2545', '279', '云龙县', '672700');
INSERT INTO `joel_location_area` VALUES ('2546', '279', '洱源县', '671200');
INSERT INTO `joel_location_area` VALUES ('2547', '279', '剑川县', '671300');
INSERT INTO `joel_location_area` VALUES ('2548', '279', '鹤庆县', '671500');
INSERT INTO `joel_location_area` VALUES ('2549', '280', '瑞丽市', '678600');
INSERT INTO `joel_location_area` VALUES ('2550', '280', '潞西市', '678400');
INSERT INTO `joel_location_area` VALUES ('2551', '280', '梁河县', '679200');
INSERT INTO `joel_location_area` VALUES ('2552', '280', '盈江县', '679300');
INSERT INTO `joel_location_area` VALUES ('2553', '280', '陇川县', '678700');
INSERT INTO `joel_location_area` VALUES ('2554', '281', '泸水县', '673100');
INSERT INTO `joel_location_area` VALUES ('2555', '281', '福贡县', '673400');
INSERT INTO `joel_location_area` VALUES ('2556', '281', '贡山独龙族怒族自治县', '673500');
INSERT INTO `joel_location_area` VALUES ('2557', '281', '兰坪白族普米族自治县', '671400');
INSERT INTO `joel_location_area` VALUES ('2558', '282', '香格里拉县', '674400');
INSERT INTO `joel_location_area` VALUES ('2559', '282', '德钦县', '674500');
INSERT INTO `joel_location_area` VALUES ('2560', '282', '维西傈僳族自治县', '674600');
INSERT INTO `joel_location_area` VALUES ('2561', '283', '城关区', '850000');
INSERT INTO `joel_location_area` VALUES ('2562', '283', '林周县', '852000');
INSERT INTO `joel_location_area` VALUES ('2563', '283', '当雄县', '851500');
INSERT INTO `joel_location_area` VALUES ('2564', '283', '尼木县', '851300');
INSERT INTO `joel_location_area` VALUES ('2565', '283', '曲水县', '850600');
INSERT INTO `joel_location_area` VALUES ('2566', '283', '堆龙德庆县', '851400');
INSERT INTO `joel_location_area` VALUES ('2567', '283', '达孜县', '850100');
INSERT INTO `joel_location_area` VALUES ('2568', '283', '墨竹工卡县', '850200');
INSERT INTO `joel_location_area` VALUES ('2569', '284', '昌都县', '854000');
INSERT INTO `joel_location_area` VALUES ('2570', '284', '江达县', '854100');
INSERT INTO `joel_location_area` VALUES ('2571', '284', '贡觉县', '854200');
INSERT INTO `joel_location_area` VALUES ('2572', '284', '类乌齐县', '855600');
INSERT INTO `joel_location_area` VALUES ('2573', '284', '丁青县', '855700');
INSERT INTO `joel_location_area` VALUES ('2574', '284', '察雅县', '854300');
INSERT INTO `joel_location_area` VALUES ('2575', '284', '八宿县', '854600');
INSERT INTO `joel_location_area` VALUES ('2576', '284', '左贡县', '854400');
INSERT INTO `joel_location_area` VALUES ('2577', '284', '芒康县', '854500');
INSERT INTO `joel_location_area` VALUES ('2578', '284', '洛隆县', '855400');
INSERT INTO `joel_location_area` VALUES ('2579', '284', '边坝县', '855500');
INSERT INTO `joel_location_area` VALUES ('2580', '285', '乃东县', '856100');
INSERT INTO `joel_location_area` VALUES ('2581', '285', '扎囊县', '850800');
INSERT INTO `joel_location_area` VALUES ('2582', '285', '贡嘎县', '850700');
INSERT INTO `joel_location_area` VALUES ('2583', '285', '桑日县', '856200');
INSERT INTO `joel_location_area` VALUES ('2584', '285', '琼结县', '856800');
INSERT INTO `joel_location_area` VALUES ('2585', '285', '曲松县', '856300');
INSERT INTO `joel_location_area` VALUES ('2586', '285', '措美县', '856900');
INSERT INTO `joel_location_area` VALUES ('2587', '285', '洛扎县', '851200');
INSERT INTO `joel_location_area` VALUES ('2588', '285', '加查县', '856400');
INSERT INTO `joel_location_area` VALUES ('2589', '285', '隆子县', '856600');
INSERT INTO `joel_location_area` VALUES ('2590', '285', '错那县', '856700');
INSERT INTO `joel_location_area` VALUES ('2591', '285', '浪卡子县', '851000');
INSERT INTO `joel_location_area` VALUES ('2592', '286', '日喀则市', '857000');
INSERT INTO `joel_location_area` VALUES ('2593', '286', '南木林县', '857100');
INSERT INTO `joel_location_area` VALUES ('2594', '286', '江孜县', '857400');
INSERT INTO `joel_location_area` VALUES ('2595', '286', '定日县', '858200');
INSERT INTO `joel_location_area` VALUES ('2596', '286', '萨迦县', '857800');
INSERT INTO `joel_location_area` VALUES ('2597', '286', '拉孜县', '858100');
INSERT INTO `joel_location_area` VALUES ('2598', '286', '昂仁县', '858500');
INSERT INTO `joel_location_area` VALUES ('2599', '286', '谢通门县', '858900');
INSERT INTO `joel_location_area` VALUES ('2600', '286', '白朗县', '857300');
INSERT INTO `joel_location_area` VALUES ('2601', '286', '仁布县', '857200');
INSERT INTO `joel_location_area` VALUES ('2602', '286', '康马县', '857500');
INSERT INTO `joel_location_area` VALUES ('2603', '286', '定结县', '857900');
INSERT INTO `joel_location_area` VALUES ('2604', '286', '仲巴县', '858800');
INSERT INTO `joel_location_area` VALUES ('2605', '286', '亚东县', '857600');
INSERT INTO `joel_location_area` VALUES ('2606', '286', '吉隆县', '858700');
INSERT INTO `joel_location_area` VALUES ('2607', '286', '聂拉木县', '858300');
INSERT INTO `joel_location_area` VALUES ('2608', '286', '萨嘎县', '857800');
INSERT INTO `joel_location_area` VALUES ('2609', '286', '岗巴县', '857700');
INSERT INTO `joel_location_area` VALUES ('2610', '287', '那曲县', '852000');
INSERT INTO `joel_location_area` VALUES ('2611', '287', '嘉黎县', '852400');
INSERT INTO `joel_location_area` VALUES ('2612', '287', '比如县', '852300');
INSERT INTO `joel_location_area` VALUES ('2613', '287', '聂荣县', '853500');
INSERT INTO `joel_location_area` VALUES ('2614', '287', '安多县', '852600');
INSERT INTO `joel_location_area` VALUES ('2615', '287', '申扎县', '853100');
INSERT INTO `joel_location_area` VALUES ('2616', '287', '索县', '852200');
INSERT INTO `joel_location_area` VALUES ('2617', '287', '班戈县', '852500');
INSERT INTO `joel_location_area` VALUES ('2618', '287', '巴青县', '852100');
INSERT INTO `joel_location_area` VALUES ('2619', '287', '尼玛县', '853200');
INSERT INTO `joel_location_area` VALUES ('2620', '288', '普兰县', '859500');
INSERT INTO `joel_location_area` VALUES ('2621', '288', '札达县', '859600');
INSERT INTO `joel_location_area` VALUES ('2622', '288', '噶尔县', '859400');
INSERT INTO `joel_location_area` VALUES ('2623', '288', '日土县', '859700');
INSERT INTO `joel_location_area` VALUES ('2624', '288', '革吉县', '859100');
INSERT INTO `joel_location_area` VALUES ('2625', '288', '改则县', '859200');
INSERT INTO `joel_location_area` VALUES ('2626', '288', '措勤县', '859300');
INSERT INTO `joel_location_area` VALUES ('2627', '289', '林芝县', '850400');
INSERT INTO `joel_location_area` VALUES ('2628', '289', '工布江达县', '850300');
INSERT INTO `joel_location_area` VALUES ('2629', '289', '米林县', '860500');
INSERT INTO `joel_location_area` VALUES ('2630', '289', '墨脱县', '855300');
INSERT INTO `joel_location_area` VALUES ('2631', '289', '波密县', '855200');
INSERT INTO `joel_location_area` VALUES ('2632', '289', '察隅县', '855100');
INSERT INTO `joel_location_area` VALUES ('2633', '289', '朗县', '856500');
INSERT INTO `joel_location_area` VALUES ('2634', '290', '新城区', '710004');
INSERT INTO `joel_location_area` VALUES ('2635', '290', '碑林区', '710001');
INSERT INTO `joel_location_area` VALUES ('2636', '290', '莲湖区', '710003');
INSERT INTO `joel_location_area` VALUES ('2637', '290', '灞桥区', '710038');
INSERT INTO `joel_location_area` VALUES ('2638', '290', '未央区', '710014');
INSERT INTO `joel_location_area` VALUES ('2639', '290', '雁塔区', '710061');
INSERT INTO `joel_location_area` VALUES ('2640', '290', '阎良区', '710087');
INSERT INTO `joel_location_area` VALUES ('2641', '290', '临潼区', '710600');
INSERT INTO `joel_location_area` VALUES ('2642', '290', '长安区', '710100');
INSERT INTO `joel_location_area` VALUES ('2643', '290', '蓝田县', '710500');
INSERT INTO `joel_location_area` VALUES ('2644', '290', '周至县', '710400');
INSERT INTO `joel_location_area` VALUES ('2645', '290', '户县', '710300');
INSERT INTO `joel_location_area` VALUES ('2646', '290', '高陵县', '710200');
INSERT INTO `joel_location_area` VALUES ('2647', '290', '高新区', '710075');
INSERT INTO `joel_location_area` VALUES ('2648', '291', '王益区', '727000');
INSERT INTO `joel_location_area` VALUES ('2649', '291', '印台区', '727007');
INSERT INTO `joel_location_area` VALUES ('2650', '291', '耀州区', '727100');
INSERT INTO `joel_location_area` VALUES ('2651', '291', '宜君县', '727200');
INSERT INTO `joel_location_area` VALUES ('2652', '291', '新区', '727100');
INSERT INTO `joel_location_area` VALUES ('2653', '292', '渭滨区', '721000');
INSERT INTO `joel_location_area` VALUES ('2654', '292', '金台区', '721000');
INSERT INTO `joel_location_area` VALUES ('2655', '292', '陈仓区', '721300');
INSERT INTO `joel_location_area` VALUES ('2656', '292', '凤翔县', '721400');
INSERT INTO `joel_location_area` VALUES ('2657', '292', '岐山县', '722400');
INSERT INTO `joel_location_area` VALUES ('2658', '292', '扶风县', '722200');
INSERT INTO `joel_location_area` VALUES ('2659', '292', '眉县', '722300');
INSERT INTO `joel_location_area` VALUES ('2660', '292', '陇县', '721200');
INSERT INTO `joel_location_area` VALUES ('2661', '292', '千阳县', '721100');
INSERT INTO `joel_location_area` VALUES ('2662', '292', '麟游县', '721500');
INSERT INTO `joel_location_area` VALUES ('2663', '292', '凤县', '721700');
INSERT INTO `joel_location_area` VALUES ('2664', '292', '太白县', '721600');
INSERT INTO `joel_location_area` VALUES ('2665', '293', '秦都区', '712000');
INSERT INTO `joel_location_area` VALUES ('2666', '293', '渭城区', '712000');
INSERT INTO `joel_location_area` VALUES ('2667', '293', '杨陵区', '712100');
INSERT INTO `joel_location_area` VALUES ('2668', '293', '三原县', '713800');
INSERT INTO `joel_location_area` VALUES ('2669', '293', '泾阳县', '713700');
INSERT INTO `joel_location_area` VALUES ('2670', '293', '兴平市', '713100');
INSERT INTO `joel_location_area` VALUES ('2671', '293', '乾县', '713300');
INSERT INTO `joel_location_area` VALUES ('2672', '293', '礼泉县', '713200');
INSERT INTO `joel_location_area` VALUES ('2673', '293', '永寿县', '713400');
INSERT INTO `joel_location_area` VALUES ('2674', '293', '彬县', '713500');
INSERT INTO `joel_location_area` VALUES ('2675', '293', '长武县', '713600');
INSERT INTO `joel_location_area` VALUES ('2676', '293', '旬邑县', '711300');
INSERT INTO `joel_location_area` VALUES ('2677', '293', '淳化县', '711200');
INSERT INTO `joel_location_area` VALUES ('2678', '293', '武功县', '712200');
INSERT INTO `joel_location_area` VALUES ('2679', '294', '临渭区', '714000');
INSERT INTO `joel_location_area` VALUES ('2680', '294', '华县', '714100');
INSERT INTO `joel_location_area` VALUES ('2681', '294', '潼关县', '714300');
INSERT INTO `joel_location_area` VALUES ('2682', '294', '大荔县', '715100');
INSERT INTO `joel_location_area` VALUES ('2683', '294', '合阳县', '715300');
INSERT INTO `joel_location_area` VALUES ('2684', '294', '澄城县', '715200');
INSERT INTO `joel_location_area` VALUES ('2685', '294', '蒲城县', '715500');
INSERT INTO `joel_location_area` VALUES ('2686', '294', '白水县', '715600');
INSERT INTO `joel_location_area` VALUES ('2687', '294', '富平县', '711700');
INSERT INTO `joel_location_area` VALUES ('2688', '294', '韩城市', '715400');
INSERT INTO `joel_location_area` VALUES ('2689', '294', '华阴市', '714200');
INSERT INTO `joel_location_area` VALUES ('2690', '295', '宝塔区', '716000');
INSERT INTO `joel_location_area` VALUES ('2691', '295', '延长县', '717100');
INSERT INTO `joel_location_area` VALUES ('2692', '295', '延川县', '717200');
INSERT INTO `joel_location_area` VALUES ('2693', '295', '子长县', '717300');
INSERT INTO `joel_location_area` VALUES ('2694', '295', '安塞县', '717400');
INSERT INTO `joel_location_area` VALUES ('2695', '295', '志丹县', '717500');
INSERT INTO `joel_location_area` VALUES ('2696', '295', '吴旗县', '717600');
INSERT INTO `joel_location_area` VALUES ('2697', '295', '甘泉县', '716100');
INSERT INTO `joel_location_area` VALUES ('2698', '295', '富县', '727500');
INSERT INTO `joel_location_area` VALUES ('2699', '295', '洛川县', '727400');
INSERT INTO `joel_location_area` VALUES ('2700', '295', '宜川县', '716200');
INSERT INTO `joel_location_area` VALUES ('2701', '295', '黄龙县', '715700');
INSERT INTO `joel_location_area` VALUES ('2702', '295', '黄陵县', '727300');
INSERT INTO `joel_location_area` VALUES ('2703', '296', '汉台区', '723000');
INSERT INTO `joel_location_area` VALUES ('2704', '296', '南郑县', '723100');
INSERT INTO `joel_location_area` VALUES ('2705', '296', '城固县', '723200');
INSERT INTO `joel_location_area` VALUES ('2706', '296', '洋县', '723300');
INSERT INTO `joel_location_area` VALUES ('2707', '296', '西乡县', '723500');
INSERT INTO `joel_location_area` VALUES ('2708', '296', '勉县', '724200');
INSERT INTO `joel_location_area` VALUES ('2709', '296', '宁强县', '724400');
INSERT INTO `joel_location_area` VALUES ('2710', '296', '略阳县', '724300');
INSERT INTO `joel_location_area` VALUES ('2711', '296', '镇巴县', '723600');
INSERT INTO `joel_location_area` VALUES ('2712', '296', '留坝县', '724100');
INSERT INTO `joel_location_area` VALUES ('2713', '296', '佛坪县', '723400');
INSERT INTO `joel_location_area` VALUES ('2714', '296', '经济开发区', '723000');
INSERT INTO `joel_location_area` VALUES ('2715', '297', '榆阳区', '719000');
INSERT INTO `joel_location_area` VALUES ('2716', '297', '神木县', '719300');
INSERT INTO `joel_location_area` VALUES ('2717', '297', '府谷县', '719400');
INSERT INTO `joel_location_area` VALUES ('2718', '297', '横山县', '719100');
INSERT INTO `joel_location_area` VALUES ('2719', '297', '靖边县', '718500');
INSERT INTO `joel_location_area` VALUES ('2720', '297', '定边县', '718600');
INSERT INTO `joel_location_area` VALUES ('2721', '297', '绥德县', '718000');
INSERT INTO `joel_location_area` VALUES ('2722', '297', '米脂县', '718100');
INSERT INTO `joel_location_area` VALUES ('2723', '297', '佳县', '719200');
INSERT INTO `joel_location_area` VALUES ('2724', '297', '吴堡县', '718200');
INSERT INTO `joel_location_area` VALUES ('2725', '297', '清涧县', '718300');
INSERT INTO `joel_location_area` VALUES ('2726', '297', '子洲县', '718400');
INSERT INTO `joel_location_area` VALUES ('2727', '298', '汉滨区', '725000');
INSERT INTO `joel_location_area` VALUES ('2728', '298', '汉阴县', '725100');
INSERT INTO `joel_location_area` VALUES ('2729', '298', '石泉县', '725200');
INSERT INTO `joel_location_area` VALUES ('2730', '298', '宁陕县', '711600');
INSERT INTO `joel_location_area` VALUES ('2731', '298', '紫阳县', '725300');
INSERT INTO `joel_location_area` VALUES ('2732', '298', '岚皋县', '725400');
INSERT INTO `joel_location_area` VALUES ('2733', '298', '平利县', '725500');
INSERT INTO `joel_location_area` VALUES ('2734', '298', '镇坪县', '725600');
INSERT INTO `joel_location_area` VALUES ('2735', '298', '旬阳县', '725700');
INSERT INTO `joel_location_area` VALUES ('2736', '298', '白河县', '725800');
INSERT INTO `joel_location_area` VALUES ('2737', '299', '商州区', '726000');
INSERT INTO `joel_location_area` VALUES ('2738', '299', '洛南县', '726100');
INSERT INTO `joel_location_area` VALUES ('2739', '299', '丹凤县', '726200');
INSERT INTO `joel_location_area` VALUES ('2740', '299', '商南县', '726300');
INSERT INTO `joel_location_area` VALUES ('2741', '299', '山阳县', '726400');
INSERT INTO `joel_location_area` VALUES ('2742', '299', '镇安县', '711500');
INSERT INTO `joel_location_area` VALUES ('2743', '299', '柞水县', '711400');
INSERT INTO `joel_location_area` VALUES ('2744', '300', '城关区', '730030');
INSERT INTO `joel_location_area` VALUES ('2745', '300', '七里河区', '730050');
INSERT INTO `joel_location_area` VALUES ('2746', '300', '西固区', '730060');
INSERT INTO `joel_location_area` VALUES ('2747', '300', '安宁区', '730070');
INSERT INTO `joel_location_area` VALUES ('2748', '300', '红古区', '730080');
INSERT INTO `joel_location_area` VALUES ('2749', '300', '永登县', '730300');
INSERT INTO `joel_location_area` VALUES ('2750', '300', '皋兰县', '730200');
INSERT INTO `joel_location_area` VALUES ('2751', '300', '榆中县', '730100');
INSERT INTO `joel_location_area` VALUES ('2752', '301', '嘉峪关市', '735100');
INSERT INTO `joel_location_area` VALUES ('2753', '302', '金川区', '737103');
INSERT INTO `joel_location_area` VALUES ('2754', '302', '永昌县', '737200');
INSERT INTO `joel_location_area` VALUES ('2755', '303', '白银区', '730900');
INSERT INTO `joel_location_area` VALUES ('2756', '303', '平川区', '730913');
INSERT INTO `joel_location_area` VALUES ('2757', '303', '靖远县', '730600');
INSERT INTO `joel_location_area` VALUES ('2758', '303', '会宁县', '730700');
INSERT INTO `joel_location_area` VALUES ('2759', '303', '景泰县', '730400');
INSERT INTO `joel_location_area` VALUES ('2760', '304', '秦州区', '741000');
INSERT INTO `joel_location_area` VALUES ('2761', '304', '麦积区', '741020');
INSERT INTO `joel_location_area` VALUES ('2762', '304', '清水县', '741400');
INSERT INTO `joel_location_area` VALUES ('2763', '304', '秦安县', '741600');
INSERT INTO `joel_location_area` VALUES ('2764', '304', '甘谷县', '741200');
INSERT INTO `joel_location_area` VALUES ('2765', '304', '武山县', '741300');
INSERT INTO `joel_location_area` VALUES ('2766', '304', '张家川回族自治县', '741500');
INSERT INTO `joel_location_area` VALUES ('2767', '305', '凉州区', '733000');
INSERT INTO `joel_location_area` VALUES ('2768', '305', '民勤县', '733300');
INSERT INTO `joel_location_area` VALUES ('2769', '305', '古浪县', '733100');
INSERT INTO `joel_location_area` VALUES ('2770', '305', '天祝藏族自治县', '733200');
INSERT INTO `joel_location_area` VALUES ('2771', '306', '甘州区', '734000');
INSERT INTO `joel_location_area` VALUES ('2772', '306', '肃南裕固族自治县', '734400');
INSERT INTO `joel_location_area` VALUES ('2773', '306', '民乐县', '734500');
INSERT INTO `joel_location_area` VALUES ('2774', '306', '临泽县', '734200');
INSERT INTO `joel_location_area` VALUES ('2775', '306', '高台县', '734300');
INSERT INTO `joel_location_area` VALUES ('2776', '306', '山丹县', '734100');
INSERT INTO `joel_location_area` VALUES ('2777', '307', '崆峒区', '744000');
INSERT INTO `joel_location_area` VALUES ('2778', '307', '泾川县', '744300');
INSERT INTO `joel_location_area` VALUES ('2779', '307', '灵台县', '744400');
INSERT INTO `joel_location_area` VALUES ('2780', '307', '崇信县', '744200');
INSERT INTO `joel_location_area` VALUES ('2781', '307', '华亭县', '744100');
INSERT INTO `joel_location_area` VALUES ('2782', '307', '庄浪县', '744600');
INSERT INTO `joel_location_area` VALUES ('2783', '307', '静宁县', '743400');
INSERT INTO `joel_location_area` VALUES ('2784', '308', '肃州区', '735000');
INSERT INTO `joel_location_area` VALUES ('2785', '308', '金塔县', '735300');
INSERT INTO `joel_location_area` VALUES ('2786', '308', '安西县', '736100');
INSERT INTO `joel_location_area` VALUES ('2787', '308', '肃北蒙古族自治县', '736300');
INSERT INTO `joel_location_area` VALUES ('2788', '308', '阿克塞哈萨克族自治县', '736400');
INSERT INTO `joel_location_area` VALUES ('2789', '308', '玉门市', '735200');
INSERT INTO `joel_location_area` VALUES ('2790', '308', '敦煌市', '736200');
INSERT INTO `joel_location_area` VALUES ('2791', '309', '西峰区', '745000');
INSERT INTO `joel_location_area` VALUES ('2792', '309', '庆城县', '745100');
INSERT INTO `joel_location_area` VALUES ('2793', '309', '环县', '745700');
INSERT INTO `joel_location_area` VALUES ('2794', '309', '华池县', '745600');
INSERT INTO `joel_location_area` VALUES ('2795', '309', '合水县', '745400');
INSERT INTO `joel_location_area` VALUES ('2796', '309', '正宁县', '745300');
INSERT INTO `joel_location_area` VALUES ('2797', '309', '宁县', '745200');
INSERT INTO `joel_location_area` VALUES ('2798', '309', '镇原县', '744500');
INSERT INTO `joel_location_area` VALUES ('2799', '310', '安定区', '744300');
INSERT INTO `joel_location_area` VALUES ('2800', '310', '通渭县', '743300');
INSERT INTO `joel_location_area` VALUES ('2801', '310', '陇西县', '748100');
INSERT INTO `joel_location_area` VALUES ('2802', '310', '渭源县', '748200');
INSERT INTO `joel_location_area` VALUES ('2803', '310', '临洮县', '730500');
INSERT INTO `joel_location_area` VALUES ('2804', '310', '漳县', '748300');
INSERT INTO `joel_location_area` VALUES ('2805', '310', '岷县', '748400');
INSERT INTO `joel_location_area` VALUES ('2806', '311', '武都区', '746000');
INSERT INTO `joel_location_area` VALUES ('2807', '311', '成县', '742500');
INSERT INTO `joel_location_area` VALUES ('2808', '311', '文县', '746400');
INSERT INTO `joel_location_area` VALUES ('2809', '311', '宕昌县', '748500');
INSERT INTO `joel_location_area` VALUES ('2810', '311', '康县', '746500');
INSERT INTO `joel_location_area` VALUES ('2811', '311', '西和县', '742100');
INSERT INTO `joel_location_area` VALUES ('2812', '311', '礼县', '742200');
INSERT INTO `joel_location_area` VALUES ('2813', '311', '徽县', '742300');
INSERT INTO `joel_location_area` VALUES ('2814', '311', '两当县', '742400');
INSERT INTO `joel_location_area` VALUES ('2815', '312', '临夏市', '731100');
INSERT INTO `joel_location_area` VALUES ('2816', '312', '临夏县', '731800');
INSERT INTO `joel_location_area` VALUES ('2817', '312', '康乐县', '731500');
INSERT INTO `joel_location_area` VALUES ('2818', '312', '永靖县', '731600');
INSERT INTO `joel_location_area` VALUES ('2819', '312', '广河县', '731300');
INSERT INTO `joel_location_area` VALUES ('2820', '312', '和政县', '731200');
INSERT INTO `joel_location_area` VALUES ('2821', '312', '东乡族自治县', '731400');
INSERT INTO `joel_location_area` VALUES ('2822', '312', '积石山保安族东乡族撒拉族自治县', '731700');
INSERT INTO `joel_location_area` VALUES ('2823', '313', '合作市', '747000');
INSERT INTO `joel_location_area` VALUES ('2824', '313', '临潭县', '747500');
INSERT INTO `joel_location_area` VALUES ('2825', '313', '卓尼县', '747600');
INSERT INTO `joel_location_area` VALUES ('2826', '313', '舟曲县', '746300');
INSERT INTO `joel_location_area` VALUES ('2827', '313', '迭部县', '747400');
INSERT INTO `joel_location_area` VALUES ('2828', '313', '玛曲县', '747300');
INSERT INTO `joel_location_area` VALUES ('2829', '313', '碌曲县', '747200');
INSERT INTO `joel_location_area` VALUES ('2830', '313', '夏河县', '747100');
INSERT INTO `joel_location_area` VALUES ('2831', '314', '城东区', '810000');
INSERT INTO `joel_location_area` VALUES ('2832', '314', '城中区', '810000');
INSERT INTO `joel_location_area` VALUES ('2833', '314', '城西区', '810000');
INSERT INTO `joel_location_area` VALUES ('2834', '314', '城北区', '810000');
INSERT INTO `joel_location_area` VALUES ('2835', '314', '大通回族土族自治县', '810100');
INSERT INTO `joel_location_area` VALUES ('2836', '314', '湟中县', '811600');
INSERT INTO `joel_location_area` VALUES ('2837', '314', '湟源县', '812100');
INSERT INTO `joel_location_area` VALUES ('2838', '315', '平安县', '810600');
INSERT INTO `joel_location_area` VALUES ('2839', '315', '民和回族土族自治县', '810800');
INSERT INTO `joel_location_area` VALUES ('2840', '315', '乐都县', '810700');
INSERT INTO `joel_location_area` VALUES ('2841', '315', '互助土族自治县', '810500');
INSERT INTO `joel_location_area` VALUES ('2842', '315', '化隆回族自治县', '810900');
INSERT INTO `joel_location_area` VALUES ('2843', '315', '循化撒拉族自治县', '811100');
INSERT INTO `joel_location_area` VALUES ('2844', '316', '门源回族自治县', '810300');
INSERT INTO `joel_location_area` VALUES ('2845', '316', '祁连县', '810400');
INSERT INTO `joel_location_area` VALUES ('2846', '316', '海晏县', '812200');
INSERT INTO `joel_location_area` VALUES ('2847', '316', '刚察县', '812300');
INSERT INTO `joel_location_area` VALUES ('2848', '317', '同仁县', '811300');
INSERT INTO `joel_location_area` VALUES ('2849', '317', '尖扎县', '811200');
INSERT INTO `joel_location_area` VALUES ('2850', '317', '泽库县', '811400');
INSERT INTO `joel_location_area` VALUES ('2851', '317', '河南蒙古族自治县', '811500');
INSERT INTO `joel_location_area` VALUES ('2852', '318', '共和县', '813000');
INSERT INTO `joel_location_area` VALUES ('2853', '318', '同德县', '813200');
INSERT INTO `joel_location_area` VALUES ('2854', '318', '贵德县', '811700');
INSERT INTO `joel_location_area` VALUES ('2855', '318', '兴海县', '813300');
INSERT INTO `joel_location_area` VALUES ('2856', '318', '贵南县', '813100');
INSERT INTO `joel_location_area` VALUES ('2857', '319', '玛沁县', '814000');
INSERT INTO `joel_location_area` VALUES ('2858', '319', '班玛县', '814300');
INSERT INTO `joel_location_area` VALUES ('2859', '319', '甘德县', '814100');
INSERT INTO `joel_location_area` VALUES ('2860', '319', '达日县', '814200');
INSERT INTO `joel_location_area` VALUES ('2861', '319', '久治县', '624700');
INSERT INTO `joel_location_area` VALUES ('2862', '319', '玛多县', '813500');
INSERT INTO `joel_location_area` VALUES ('2863', '320', '玉树县', '815000');
INSERT INTO `joel_location_area` VALUES ('2864', '320', '杂多县', '815300');
INSERT INTO `joel_location_area` VALUES ('2865', '320', '称多县', '815100');
INSERT INTO `joel_location_area` VALUES ('2866', '320', '治多县', '815400');
INSERT INTO `joel_location_area` VALUES ('2867', '320', '囊谦县', '815200');
INSERT INTO `joel_location_area` VALUES ('2868', '320', '曲麻莱县', '815500');
INSERT INTO `joel_location_area` VALUES ('2869', '321', '格尔木市', '816000');
INSERT INTO `joel_location_area` VALUES ('2870', '321', '德令哈市', '817000');
INSERT INTO `joel_location_area` VALUES ('2871', '321', '乌兰县', '817100');
INSERT INTO `joel_location_area` VALUES ('2872', '321', '都兰县', '816100');
INSERT INTO `joel_location_area` VALUES ('2873', '321', '天峻县', '817200');
INSERT INTO `joel_location_area` VALUES ('2874', '321', '大柴旦行委', '817300');
INSERT INTO `joel_location_area` VALUES ('2875', '322', '兴庆区', '750001');
INSERT INTO `joel_location_area` VALUES ('2876', '322', '西夏区', '750021');
INSERT INTO `joel_location_area` VALUES ('2877', '322', '金凤区', '750011');
INSERT INTO `joel_location_area` VALUES ('2878', '322', '永宁县', '750100');
INSERT INTO `joel_location_area` VALUES ('2879', '322', '贺兰县', '750200');
INSERT INTO `joel_location_area` VALUES ('2880', '322', '灵武市', '750004');
INSERT INTO `joel_location_area` VALUES ('2881', '323', '大武口区', '753000');
INSERT INTO `joel_location_area` VALUES ('2882', '323', '惠农区', '753600');
INSERT INTO `joel_location_area` VALUES ('2883', '323', '平罗县', '753400');
INSERT INTO `joel_location_area` VALUES ('2884', '324', '利通区', '751100');
INSERT INTO `joel_location_area` VALUES ('2885', '324', '盐池县', '751500');
INSERT INTO `joel_location_area` VALUES ('2886', '324', '同心县', '751300');
INSERT INTO `joel_location_area` VALUES ('2887', '324', '青铜峡市', '751600');
INSERT INTO `joel_location_area` VALUES ('2888', '325', '原州区', '756000');
INSERT INTO `joel_location_area` VALUES ('2889', '325', '西吉县', '756200');
INSERT INTO `joel_location_area` VALUES ('2890', '325', '隆德县', '756300');
INSERT INTO `joel_location_area` VALUES ('2891', '325', '泾源县', '756400');
INSERT INTO `joel_location_area` VALUES ('2892', '325', '彭阳县', '756500');
INSERT INTO `joel_location_area` VALUES ('2893', '326', '沙坡头区', '755000');
INSERT INTO `joel_location_area` VALUES ('2894', '326', '中宁县', '755100');
INSERT INTO `joel_location_area` VALUES ('2895', '326', '海原县', '755200');
INSERT INTO `joel_location_area` VALUES ('2896', '327', '天山区', '830000');
INSERT INTO `joel_location_area` VALUES ('2897', '327', '沙依巴克区', '830002');
INSERT INTO `joel_location_area` VALUES ('2898', '327', '新市区', '830011');
INSERT INTO `joel_location_area` VALUES ('2899', '327', '水磨沟区', '830017');
INSERT INTO `joel_location_area` VALUES ('2900', '327', '头屯河区', '830022');
INSERT INTO `joel_location_area` VALUES ('2901', '327', '达坂城区', '830039');
INSERT INTO `joel_location_area` VALUES ('2902', '327', '米东区', '830019');
INSERT INTO `joel_location_area` VALUES ('2903', '327', '乌鲁木齐县', '830063');
INSERT INTO `joel_location_area` VALUES ('2904', '328', '独山子区', '834021');
INSERT INTO `joel_location_area` VALUES ('2905', '328', '克拉玛依区', '834000');
INSERT INTO `joel_location_area` VALUES ('2906', '328', '白碱滩区', '834008');
INSERT INTO `joel_location_area` VALUES ('2907', '328', '乌尔禾区', '834012');
INSERT INTO `joel_location_area` VALUES ('2908', '329', '吐鲁番市', '838000');
INSERT INTO `joel_location_area` VALUES ('2909', '329', '鄯善县', '838200');
INSERT INTO `joel_location_area` VALUES ('2910', '329', '托克逊县', '838100');
INSERT INTO `joel_location_area` VALUES ('2911', '330', '哈密市', '839000');
INSERT INTO `joel_location_area` VALUES ('2912', '330', '巴里坤哈萨克自治县', '839200');
INSERT INTO `joel_location_area` VALUES ('2913', '330', '伊吾县', '839300');
INSERT INTO `joel_location_area` VALUES ('2914', '331', '昌吉市', '831100');
INSERT INTO `joel_location_area` VALUES ('2915', '331', '阜康市', '831500');
INSERT INTO `joel_location_area` VALUES ('2916', '331', '米泉市', '831400');
INSERT INTO `joel_location_area` VALUES ('2917', '331', '呼图壁县', '831200');
INSERT INTO `joel_location_area` VALUES ('2918', '331', '玛纳斯县', '832200');
INSERT INTO `joel_location_area` VALUES ('2919', '331', '奇台县', '831800');
INSERT INTO `joel_location_area` VALUES ('2920', '331', '吉木萨尔县', '831700');
INSERT INTO `joel_location_area` VALUES ('2921', '331', '木垒哈萨克自治县', '831900');
INSERT INTO `joel_location_area` VALUES ('2922', '332', '博乐市', '833400');
INSERT INTO `joel_location_area` VALUES ('2923', '332', '精河县', '833300');
INSERT INTO `joel_location_area` VALUES ('2924', '332', '温泉县', '833500');
INSERT INTO `joel_location_area` VALUES ('2925', '333', '库尔勒市', '841000');
INSERT INTO `joel_location_area` VALUES ('2926', '333', '轮台县', '841600');
INSERT INTO `joel_location_area` VALUES ('2927', '333', '尉犁县', '841500');
INSERT INTO `joel_location_area` VALUES ('2928', '333', '若羌县', '841800');
INSERT INTO `joel_location_area` VALUES ('2929', '333', '且末县', '841900');
INSERT INTO `joel_location_area` VALUES ('2930', '333', '焉耆回族自治县', '841100');
INSERT INTO `joel_location_area` VALUES ('2931', '333', '和静县', '841300');
INSERT INTO `joel_location_area` VALUES ('2932', '333', '和硕县', '841200');
INSERT INTO `joel_location_area` VALUES ('2933', '333', '博湖县', '841400');
INSERT INTO `joel_location_area` VALUES ('2934', '334', '阿克苏市', '843000');
INSERT INTO `joel_location_area` VALUES ('2935', '334', '温宿县', '843100');
INSERT INTO `joel_location_area` VALUES ('2936', '334', '库车县', '842000');
INSERT INTO `joel_location_area` VALUES ('2937', '334', '沙雅县', '842200');
INSERT INTO `joel_location_area` VALUES ('2938', '334', '新和县', '842100');
INSERT INTO `joel_location_area` VALUES ('2939', '334', '拜城县', '842300');
INSERT INTO `joel_location_area` VALUES ('2940', '334', '乌什县', '843400');
INSERT INTO `joel_location_area` VALUES ('2941', '334', '阿瓦提县', '843200');
INSERT INTO `joel_location_area` VALUES ('2942', '334', '柯坪县', '843600');
INSERT INTO `joel_location_area` VALUES ('2943', '335', '阿图什市', '845350');
INSERT INTO `joel_location_area` VALUES ('2944', '335', '阿克陶县', '845550');
INSERT INTO `joel_location_area` VALUES ('2945', '335', '阿合奇县', '843500');
INSERT INTO `joel_location_area` VALUES ('2946', '335', '乌恰县', '845450');
INSERT INTO `joel_location_area` VALUES ('2947', '336', '喀什市', '844000');
INSERT INTO `joel_location_area` VALUES ('2948', '336', '疏附县', '844100');
INSERT INTO `joel_location_area` VALUES ('2949', '336', '疏勒县', '844200');
INSERT INTO `joel_location_area` VALUES ('2950', '336', '英吉沙县', '844500');
INSERT INTO `joel_location_area` VALUES ('2951', '336', '泽普县', '844800');
INSERT INTO `joel_location_area` VALUES ('2952', '336', '莎车县', '844700');
INSERT INTO `joel_location_area` VALUES ('2953', '336', '叶城县', '844900');
INSERT INTO `joel_location_area` VALUES ('2954', '336', '麦盖提县', '844600');
INSERT INTO `joel_location_area` VALUES ('2955', '336', '岳普湖县', '844400');
INSERT INTO `joel_location_area` VALUES ('2956', '336', '伽师县', '844300');
INSERT INTO `joel_location_area` VALUES ('2957', '336', '巴楚县', '843800');
INSERT INTO `joel_location_area` VALUES ('2958', '336', '塔什库尔干塔吉克自治县', '845250');
INSERT INTO `joel_location_area` VALUES ('2959', '337', '和田市', '848000');
INSERT INTO `joel_location_area` VALUES ('2960', '337', '和田县', '848000');
INSERT INTO `joel_location_area` VALUES ('2961', '337', '墨玉县', '848100');
INSERT INTO `joel_location_area` VALUES ('2962', '337', '皮山县', '845150');
INSERT INTO `joel_location_area` VALUES ('2963', '337', '洛浦县', '848200');
INSERT INTO `joel_location_area` VALUES ('2964', '337', '策勒县', '848300');
INSERT INTO `joel_location_area` VALUES ('2965', '337', '于田县', '848400');
INSERT INTO `joel_location_area` VALUES ('2966', '337', '民丰县', '848500');
INSERT INTO `joel_location_area` VALUES ('2967', '338', '伊宁市', '835000');
INSERT INTO `joel_location_area` VALUES ('2968', '338', '奎屯市', '833200');
INSERT INTO `joel_location_area` VALUES ('2969', '338', '伊宁县', '835100');
INSERT INTO `joel_location_area` VALUES ('2970', '338', '察布查尔锡伯自治县', '835300');
INSERT INTO `joel_location_area` VALUES ('2971', '338', '霍城县', '835200');
INSERT INTO `joel_location_area` VALUES ('2972', '338', '巩留县', '835400');
INSERT INTO `joel_location_area` VALUES ('2973', '338', '新源县', '835800');
INSERT INTO `joel_location_area` VALUES ('2974', '338', '昭苏县', '835600');
INSERT INTO `joel_location_area` VALUES ('2975', '338', '特克斯县', '835500');
INSERT INTO `joel_location_area` VALUES ('2976', '338', '尼勒克县', '835700');
INSERT INTO `joel_location_area` VALUES ('2977', '339', '塔城市', '834700');
INSERT INTO `joel_location_area` VALUES ('2978', '339', '乌苏市', '833300');
INSERT INTO `joel_location_area` VALUES ('2979', '339', '额敏县', '834600');
INSERT INTO `joel_location_area` VALUES ('2980', '339', '沙湾县', '832100');
INSERT INTO `joel_location_area` VALUES ('2981', '339', '托里县', '834500');
INSERT INTO `joel_location_area` VALUES ('2982', '339', '裕民县', '834800');
INSERT INTO `joel_location_area` VALUES ('2983', '339', '和布克赛尔蒙古自治县', '834400');
INSERT INTO `joel_location_area` VALUES ('2984', '340', '阿勒泰市', '836500');
INSERT INTO `joel_location_area` VALUES ('2985', '340', '布尔津县', '836600');
INSERT INTO `joel_location_area` VALUES ('2986', '340', '富蕴县', '836100');
INSERT INTO `joel_location_area` VALUES ('2987', '340', '福海县', '836400');
INSERT INTO `joel_location_area` VALUES ('2988', '340', '哈巴河县', '836700');
INSERT INTO `joel_location_area` VALUES ('2989', '340', '青河县', '836200');
INSERT INTO `joel_location_area` VALUES ('2990', '340', '吉木乃县', '836800');
INSERT INTO `joel_location_area` VALUES ('2991', '341', '石河子市', '832000');
INSERT INTO `joel_location_area` VALUES ('2992', '341', '阿拉尔市', '843300');
INSERT INTO `joel_location_area` VALUES ('2993', '341', '图木舒克市', '843806');
INSERT INTO `joel_location_area` VALUES ('2994', '341', '五家渠市', '831300');
INSERT INTO `joel_location_area` VALUES ('2995', '342', '香港', '860600');
INSERT INTO `joel_location_area` VALUES ('2996', '343', '澳门', '860700');
INSERT INTO `joel_location_area` VALUES ('2997', '344', '台湾', '860800');

-- ----------------------------
-- Table structure for joel_location_city
-- ----------------------------
DROP TABLE IF EXISTS `joel_location_city`;
CREATE TABLE `joel_location_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_location_city
-- ----------------------------
INSERT INTO `joel_location_city` VALUES ('1', '1', '北京市');
INSERT INTO `joel_location_city` VALUES ('2', '2', '天津市');
INSERT INTO `joel_location_city` VALUES ('3', '3', '石家庄市');
INSERT INTO `joel_location_city` VALUES ('4', '3', '唐山市');
INSERT INTO `joel_location_city` VALUES ('5', '3', '秦皇岛市');
INSERT INTO `joel_location_city` VALUES ('6', '3', '邯郸市');
INSERT INTO `joel_location_city` VALUES ('7', '3', '邢台市');
INSERT INTO `joel_location_city` VALUES ('8', '3', '保定市');
INSERT INTO `joel_location_city` VALUES ('9', '3', '张家口市');
INSERT INTO `joel_location_city` VALUES ('10', '3', '承德市');
INSERT INTO `joel_location_city` VALUES ('11', '3', '沧州市');
INSERT INTO `joel_location_city` VALUES ('12', '3', '廊坊市');
INSERT INTO `joel_location_city` VALUES ('13', '3', '衡水市');
INSERT INTO `joel_location_city` VALUES ('14', '4', '太原市');
INSERT INTO `joel_location_city` VALUES ('15', '4', '大同市');
INSERT INTO `joel_location_city` VALUES ('16', '4', '阳泉市');
INSERT INTO `joel_location_city` VALUES ('17', '4', '长治市');
INSERT INTO `joel_location_city` VALUES ('18', '4', '晋城市');
INSERT INTO `joel_location_city` VALUES ('19', '4', '朔州市');
INSERT INTO `joel_location_city` VALUES ('20', '4', '晋中市');
INSERT INTO `joel_location_city` VALUES ('21', '4', '运城市');
INSERT INTO `joel_location_city` VALUES ('22', '4', '忻州市');
INSERT INTO `joel_location_city` VALUES ('23', '4', '临汾市');
INSERT INTO `joel_location_city` VALUES ('24', '4', '吕梁市');
INSERT INTO `joel_location_city` VALUES ('25', '5', '呼和浩特市');
INSERT INTO `joel_location_city` VALUES ('26', '5', '包头市');
INSERT INTO `joel_location_city` VALUES ('27', '5', '乌海市');
INSERT INTO `joel_location_city` VALUES ('28', '5', '赤峰市');
INSERT INTO `joel_location_city` VALUES ('29', '5', '通辽市');
INSERT INTO `joel_location_city` VALUES ('30', '5', '鄂尔多斯市');
INSERT INTO `joel_location_city` VALUES ('31', '5', '呼伦贝尔市');
INSERT INTO `joel_location_city` VALUES ('32', '5', '巴彦淖尔市');
INSERT INTO `joel_location_city` VALUES ('33', '5', '乌兰察布市');
INSERT INTO `joel_location_city` VALUES ('34', '5', '兴安盟');
INSERT INTO `joel_location_city` VALUES ('35', '5', '锡林郭勒盟');
INSERT INTO `joel_location_city` VALUES ('36', '5', '阿拉善盟');
INSERT INTO `joel_location_city` VALUES ('37', '6', '沈阳市');
INSERT INTO `joel_location_city` VALUES ('38', '6', '大连市');
INSERT INTO `joel_location_city` VALUES ('39', '6', '鞍山市');
INSERT INTO `joel_location_city` VALUES ('40', '6', '抚顺市');
INSERT INTO `joel_location_city` VALUES ('41', '6', '本溪市');
INSERT INTO `joel_location_city` VALUES ('42', '6', '丹东市');
INSERT INTO `joel_location_city` VALUES ('43', '6', '锦州市');
INSERT INTO `joel_location_city` VALUES ('44', '6', '营口市');
INSERT INTO `joel_location_city` VALUES ('45', '6', '阜新市');
INSERT INTO `joel_location_city` VALUES ('46', '6', '辽阳市');
INSERT INTO `joel_location_city` VALUES ('47', '6', '盘锦市');
INSERT INTO `joel_location_city` VALUES ('48', '6', '铁岭市');
INSERT INTO `joel_location_city` VALUES ('49', '6', '朝阳市');
INSERT INTO `joel_location_city` VALUES ('50', '6', '葫芦岛市');
INSERT INTO `joel_location_city` VALUES ('51', '7', '长春市');
INSERT INTO `joel_location_city` VALUES ('52', '7', '吉林市');
INSERT INTO `joel_location_city` VALUES ('53', '7', '四平市');
INSERT INTO `joel_location_city` VALUES ('54', '7', '辽源市');
INSERT INTO `joel_location_city` VALUES ('55', '7', '通化市');
INSERT INTO `joel_location_city` VALUES ('56', '7', '白山市');
INSERT INTO `joel_location_city` VALUES ('57', '7', '松原市');
INSERT INTO `joel_location_city` VALUES ('58', '7', '白城市');
INSERT INTO `joel_location_city` VALUES ('59', '7', '延边朝鲜族自治州');
INSERT INTO `joel_location_city` VALUES ('60', '8', '哈尔滨市');
INSERT INTO `joel_location_city` VALUES ('61', '8', '齐齐哈尔市');
INSERT INTO `joel_location_city` VALUES ('62', '8', '鸡西市');
INSERT INTO `joel_location_city` VALUES ('63', '8', '鹤岗市');
INSERT INTO `joel_location_city` VALUES ('64', '8', '双鸭山市');
INSERT INTO `joel_location_city` VALUES ('65', '8', '大庆市');
INSERT INTO `joel_location_city` VALUES ('66', '8', '伊春市');
INSERT INTO `joel_location_city` VALUES ('67', '8', '佳木斯市');
INSERT INTO `joel_location_city` VALUES ('68', '8', '七台河市');
INSERT INTO `joel_location_city` VALUES ('69', '8', '牡丹江市');
INSERT INTO `joel_location_city` VALUES ('70', '8', '黑河市');
INSERT INTO `joel_location_city` VALUES ('71', '8', '绥化市');
INSERT INTO `joel_location_city` VALUES ('72', '8', '大兴安岭地区');
INSERT INTO `joel_location_city` VALUES ('73', '9', '上海市');
INSERT INTO `joel_location_city` VALUES ('74', '10', '南京市');
INSERT INTO `joel_location_city` VALUES ('75', '10', '无锡市');
INSERT INTO `joel_location_city` VALUES ('76', '10', '徐州市');
INSERT INTO `joel_location_city` VALUES ('77', '10', '常州市');
INSERT INTO `joel_location_city` VALUES ('78', '10', '苏州市');
INSERT INTO `joel_location_city` VALUES ('79', '10', '南通市');
INSERT INTO `joel_location_city` VALUES ('80', '10', '连云港市');
INSERT INTO `joel_location_city` VALUES ('81', '10', '淮安市');
INSERT INTO `joel_location_city` VALUES ('82', '10', '盐城市');
INSERT INTO `joel_location_city` VALUES ('83', '10', '扬州市');
INSERT INTO `joel_location_city` VALUES ('84', '10', '镇江市');
INSERT INTO `joel_location_city` VALUES ('85', '10', '泰州市');
INSERT INTO `joel_location_city` VALUES ('86', '10', '宿迁市');
INSERT INTO `joel_location_city` VALUES ('87', '11', '杭州市');
INSERT INTO `joel_location_city` VALUES ('88', '11', '宁波市');
INSERT INTO `joel_location_city` VALUES ('89', '11', '温州市');
INSERT INTO `joel_location_city` VALUES ('90', '11', '嘉兴市');
INSERT INTO `joel_location_city` VALUES ('91', '11', '湖州市');
INSERT INTO `joel_location_city` VALUES ('92', '11', '绍兴市');
INSERT INTO `joel_location_city` VALUES ('93', '11', '金华市');
INSERT INTO `joel_location_city` VALUES ('94', '11', '衢州市');
INSERT INTO `joel_location_city` VALUES ('95', '11', '舟山市');
INSERT INTO `joel_location_city` VALUES ('96', '11', '台州市');
INSERT INTO `joel_location_city` VALUES ('97', '11', '丽水市');
INSERT INTO `joel_location_city` VALUES ('98', '12', '合肥市');
INSERT INTO `joel_location_city` VALUES ('99', '12', '芜湖市');
INSERT INTO `joel_location_city` VALUES ('100', '12', '蚌埠市');
INSERT INTO `joel_location_city` VALUES ('101', '12', '淮南市');
INSERT INTO `joel_location_city` VALUES ('102', '12', '马鞍山市');
INSERT INTO `joel_location_city` VALUES ('103', '12', '淮北市');
INSERT INTO `joel_location_city` VALUES ('104', '12', '铜陵市');
INSERT INTO `joel_location_city` VALUES ('105', '12', '安庆市');
INSERT INTO `joel_location_city` VALUES ('106', '12', '黄山市');
INSERT INTO `joel_location_city` VALUES ('107', '12', '滁州市');
INSERT INTO `joel_location_city` VALUES ('108', '12', '阜阳市');
INSERT INTO `joel_location_city` VALUES ('109', '12', '宿州市');
INSERT INTO `joel_location_city` VALUES ('110', '12', '巢湖市');
INSERT INTO `joel_location_city` VALUES ('111', '12', '六安市');
INSERT INTO `joel_location_city` VALUES ('112', '12', '亳州市');
INSERT INTO `joel_location_city` VALUES ('113', '12', '池州市');
INSERT INTO `joel_location_city` VALUES ('114', '12', '宣城市');
INSERT INTO `joel_location_city` VALUES ('115', '13', '福州市');
INSERT INTO `joel_location_city` VALUES ('116', '13', '厦门市');
INSERT INTO `joel_location_city` VALUES ('117', '13', '莆田市');
INSERT INTO `joel_location_city` VALUES ('118', '13', '三明市');
INSERT INTO `joel_location_city` VALUES ('119', '13', '泉州市');
INSERT INTO `joel_location_city` VALUES ('120', '13', '漳州市');
INSERT INTO `joel_location_city` VALUES ('121', '13', '南平市');
INSERT INTO `joel_location_city` VALUES ('122', '13', '龙岩市');
INSERT INTO `joel_location_city` VALUES ('123', '13', '宁德市');
INSERT INTO `joel_location_city` VALUES ('124', '14', '南昌市');
INSERT INTO `joel_location_city` VALUES ('125', '14', '景德镇市');
INSERT INTO `joel_location_city` VALUES ('126', '14', '萍乡市');
INSERT INTO `joel_location_city` VALUES ('127', '14', '九江市');
INSERT INTO `joel_location_city` VALUES ('128', '14', '新余市');
INSERT INTO `joel_location_city` VALUES ('129', '14', '鹰潭市');
INSERT INTO `joel_location_city` VALUES ('130', '14', '赣州市');
INSERT INTO `joel_location_city` VALUES ('131', '14', '吉安市');
INSERT INTO `joel_location_city` VALUES ('132', '14', '宜春市');
INSERT INTO `joel_location_city` VALUES ('133', '14', '抚州市');
INSERT INTO `joel_location_city` VALUES ('134', '14', '上饶市');
INSERT INTO `joel_location_city` VALUES ('135', '15', '济南市');
INSERT INTO `joel_location_city` VALUES ('136', '15', '青岛市');
INSERT INTO `joel_location_city` VALUES ('137', '15', '淄博市');
INSERT INTO `joel_location_city` VALUES ('138', '15', '枣庄市');
INSERT INTO `joel_location_city` VALUES ('139', '15', '东营市');
INSERT INTO `joel_location_city` VALUES ('140', '15', '烟台市');
INSERT INTO `joel_location_city` VALUES ('141', '15', '潍坊市');
INSERT INTO `joel_location_city` VALUES ('142', '15', '济宁市');
INSERT INTO `joel_location_city` VALUES ('143', '15', '泰安市');
INSERT INTO `joel_location_city` VALUES ('144', '15', '威海市');
INSERT INTO `joel_location_city` VALUES ('145', '15', '日照市');
INSERT INTO `joel_location_city` VALUES ('146', '15', '莱芜市');
INSERT INTO `joel_location_city` VALUES ('147', '15', '临沂市');
INSERT INTO `joel_location_city` VALUES ('148', '15', '德州市');
INSERT INTO `joel_location_city` VALUES ('149', '15', '聊城市');
INSERT INTO `joel_location_city` VALUES ('150', '15', '滨州市');
INSERT INTO `joel_location_city` VALUES ('151', '15', '菏泽市');
INSERT INTO `joel_location_city` VALUES ('152', '16', '郑州市');
INSERT INTO `joel_location_city` VALUES ('153', '16', '开封市');
INSERT INTO `joel_location_city` VALUES ('154', '16', '洛阳市');
INSERT INTO `joel_location_city` VALUES ('155', '16', '平顶山市');
INSERT INTO `joel_location_city` VALUES ('156', '16', '安阳市');
INSERT INTO `joel_location_city` VALUES ('157', '16', '鹤壁市');
INSERT INTO `joel_location_city` VALUES ('158', '16', '新乡市');
INSERT INTO `joel_location_city` VALUES ('159', '16', '焦作市');
INSERT INTO `joel_location_city` VALUES ('160', '16', '濮阳市');
INSERT INTO `joel_location_city` VALUES ('161', '16', '许昌市');
INSERT INTO `joel_location_city` VALUES ('162', '16', '漯河市');
INSERT INTO `joel_location_city` VALUES ('163', '16', '三门峡市');
INSERT INTO `joel_location_city` VALUES ('164', '16', '南阳市');
INSERT INTO `joel_location_city` VALUES ('165', '16', '商丘市');
INSERT INTO `joel_location_city` VALUES ('166', '16', '信阳市');
INSERT INTO `joel_location_city` VALUES ('167', '16', '周口市');
INSERT INTO `joel_location_city` VALUES ('168', '16', '驻马店市');
INSERT INTO `joel_location_city` VALUES ('169', '16', '济源市');
INSERT INTO `joel_location_city` VALUES ('170', '17', '武汉市');
INSERT INTO `joel_location_city` VALUES ('171', '17', '黄石市');
INSERT INTO `joel_location_city` VALUES ('172', '17', '十堰市');
INSERT INTO `joel_location_city` VALUES ('173', '17', '宜昌市');
INSERT INTO `joel_location_city` VALUES ('174', '17', '襄樊市');
INSERT INTO `joel_location_city` VALUES ('175', '17', '鄂州市');
INSERT INTO `joel_location_city` VALUES ('176', '17', '荆门市');
INSERT INTO `joel_location_city` VALUES ('177', '17', '孝感市');
INSERT INTO `joel_location_city` VALUES ('178', '17', '荆州市');
INSERT INTO `joel_location_city` VALUES ('179', '17', '黄冈市');
INSERT INTO `joel_location_city` VALUES ('180', '17', '咸宁市');
INSERT INTO `joel_location_city` VALUES ('181', '17', '随州市');
INSERT INTO `joel_location_city` VALUES ('182', '17', '恩施土家族苗族自治州');
INSERT INTO `joel_location_city` VALUES ('183', '17', '省直辖县级行政单位');
INSERT INTO `joel_location_city` VALUES ('184', '18', '长沙市');
INSERT INTO `joel_location_city` VALUES ('185', '18', '株洲市');
INSERT INTO `joel_location_city` VALUES ('186', '18', '湘潭市');
INSERT INTO `joel_location_city` VALUES ('187', '18', '衡阳市');
INSERT INTO `joel_location_city` VALUES ('188', '18', '邵阳市');
INSERT INTO `joel_location_city` VALUES ('189', '18', '岳阳市');
INSERT INTO `joel_location_city` VALUES ('190', '18', '常德市');
INSERT INTO `joel_location_city` VALUES ('191', '18', '张家界市');
INSERT INTO `joel_location_city` VALUES ('192', '18', '益阳市');
INSERT INTO `joel_location_city` VALUES ('193', '18', '郴州市');
INSERT INTO `joel_location_city` VALUES ('194', '18', '永州市');
INSERT INTO `joel_location_city` VALUES ('195', '18', '怀化市');
INSERT INTO `joel_location_city` VALUES ('196', '18', '娄底市');
INSERT INTO `joel_location_city` VALUES ('197', '18', '湘西土家族苗族自治州');
INSERT INTO `joel_location_city` VALUES ('198', '19', '广州市');
INSERT INTO `joel_location_city` VALUES ('199', '19', '韶关市');
INSERT INTO `joel_location_city` VALUES ('200', '19', '深圳市');
INSERT INTO `joel_location_city` VALUES ('201', '19', '珠海市');
INSERT INTO `joel_location_city` VALUES ('202', '19', '汕头市');
INSERT INTO `joel_location_city` VALUES ('203', '19', '佛山市');
INSERT INTO `joel_location_city` VALUES ('204', '19', '江门市');
INSERT INTO `joel_location_city` VALUES ('205', '19', '湛江市');
INSERT INTO `joel_location_city` VALUES ('206', '19', '茂名市');
INSERT INTO `joel_location_city` VALUES ('207', '19', '肇庆市');
INSERT INTO `joel_location_city` VALUES ('208', '19', '惠州市');
INSERT INTO `joel_location_city` VALUES ('209', '19', '梅州市');
INSERT INTO `joel_location_city` VALUES ('210', '19', '汕尾市');
INSERT INTO `joel_location_city` VALUES ('211', '19', '河源市');
INSERT INTO `joel_location_city` VALUES ('212', '19', '阳江市');
INSERT INTO `joel_location_city` VALUES ('213', '19', '清远市');
INSERT INTO `joel_location_city` VALUES ('214', '19', '东莞市');
INSERT INTO `joel_location_city` VALUES ('215', '19', '中山市');
INSERT INTO `joel_location_city` VALUES ('216', '19', '潮州市');
INSERT INTO `joel_location_city` VALUES ('217', '19', '揭阳市');
INSERT INTO `joel_location_city` VALUES ('218', '19', '云浮市');
INSERT INTO `joel_location_city` VALUES ('219', '20', '南宁市');
INSERT INTO `joel_location_city` VALUES ('220', '20', '柳州市');
INSERT INTO `joel_location_city` VALUES ('221', '20', '桂林市');
INSERT INTO `joel_location_city` VALUES ('222', '20', '梧州市');
INSERT INTO `joel_location_city` VALUES ('223', '20', '北海市');
INSERT INTO `joel_location_city` VALUES ('224', '20', '防城港市');
INSERT INTO `joel_location_city` VALUES ('225', '20', '钦州市');
INSERT INTO `joel_location_city` VALUES ('226', '20', '贵港市');
INSERT INTO `joel_location_city` VALUES ('227', '20', '玉林市');
INSERT INTO `joel_location_city` VALUES ('228', '20', '百色市');
INSERT INTO `joel_location_city` VALUES ('229', '20', '贺州市');
INSERT INTO `joel_location_city` VALUES ('230', '20', '河池市');
INSERT INTO `joel_location_city` VALUES ('231', '20', '来宾市');
INSERT INTO `joel_location_city` VALUES ('232', '20', '崇左市');
INSERT INTO `joel_location_city` VALUES ('233', '21', '海口市');
INSERT INTO `joel_location_city` VALUES ('234', '21', '三亚市');
INSERT INTO `joel_location_city` VALUES ('235', '21', '省直辖县级行政单位');
INSERT INTO `joel_location_city` VALUES ('236', '22', '重庆市');
INSERT INTO `joel_location_city` VALUES ('237', '23', '成都市');
INSERT INTO `joel_location_city` VALUES ('238', '23', '自贡市');
INSERT INTO `joel_location_city` VALUES ('239', '23', '攀枝花市');
INSERT INTO `joel_location_city` VALUES ('240', '23', '泸州市');
INSERT INTO `joel_location_city` VALUES ('241', '23', '德阳市');
INSERT INTO `joel_location_city` VALUES ('242', '23', '绵阳市');
INSERT INTO `joel_location_city` VALUES ('243', '23', '广元市');
INSERT INTO `joel_location_city` VALUES ('244', '23', '遂宁市');
INSERT INTO `joel_location_city` VALUES ('245', '23', '内江市');
INSERT INTO `joel_location_city` VALUES ('246', '23', '乐山市');
INSERT INTO `joel_location_city` VALUES ('247', '23', '南充市');
INSERT INTO `joel_location_city` VALUES ('248', '23', '眉山市');
INSERT INTO `joel_location_city` VALUES ('249', '23', '宜宾市');
INSERT INTO `joel_location_city` VALUES ('250', '23', '广安市');
INSERT INTO `joel_location_city` VALUES ('251', '23', '达州市');
INSERT INTO `joel_location_city` VALUES ('252', '23', '雅安市');
INSERT INTO `joel_location_city` VALUES ('253', '23', '巴中市');
INSERT INTO `joel_location_city` VALUES ('254', '23', '资阳市');
INSERT INTO `joel_location_city` VALUES ('255', '23', '阿坝藏族羌族自治州');
INSERT INTO `joel_location_city` VALUES ('256', '23', '甘孜藏族自治州');
INSERT INTO `joel_location_city` VALUES ('257', '23', '凉山彝族自治州');
INSERT INTO `joel_location_city` VALUES ('258', '24', '贵阳市');
INSERT INTO `joel_location_city` VALUES ('259', '24', '六盘水市');
INSERT INTO `joel_location_city` VALUES ('260', '24', '遵义市');
INSERT INTO `joel_location_city` VALUES ('261', '24', '安顺市');
INSERT INTO `joel_location_city` VALUES ('262', '24', '铜仁地区');
INSERT INTO `joel_location_city` VALUES ('263', '24', '黔西南布依族苗族自治州');
INSERT INTO `joel_location_city` VALUES ('264', '24', '毕节地区');
INSERT INTO `joel_location_city` VALUES ('265', '24', '黔东南苗族侗族自治州');
INSERT INTO `joel_location_city` VALUES ('266', '24', '黔南布依族苗族自治州');
INSERT INTO `joel_location_city` VALUES ('267', '25', '昆明市');
INSERT INTO `joel_location_city` VALUES ('268', '25', '曲靖市');
INSERT INTO `joel_location_city` VALUES ('269', '25', '玉溪市');
INSERT INTO `joel_location_city` VALUES ('270', '25', '保山市');
INSERT INTO `joel_location_city` VALUES ('271', '25', '昭通市');
INSERT INTO `joel_location_city` VALUES ('272', '25', '丽江市');
INSERT INTO `joel_location_city` VALUES ('273', '25', '普洱市');
INSERT INTO `joel_location_city` VALUES ('274', '25', '临沧市');
INSERT INTO `joel_location_city` VALUES ('275', '25', '楚雄彝族自治州');
INSERT INTO `joel_location_city` VALUES ('276', '25', '红河哈尼族彝族自治州');
INSERT INTO `joel_location_city` VALUES ('277', '25', '文山壮族苗族自治州');
INSERT INTO `joel_location_city` VALUES ('278', '25', '西双版纳傣族自治州');
INSERT INTO `joel_location_city` VALUES ('279', '25', '大理白族自治州');
INSERT INTO `joel_location_city` VALUES ('280', '25', '德宏傣族景颇族自治州');
INSERT INTO `joel_location_city` VALUES ('281', '25', '怒江傈僳族自治州');
INSERT INTO `joel_location_city` VALUES ('282', '25', '迪庆藏族自治州');
INSERT INTO `joel_location_city` VALUES ('283', '26', '拉萨市');
INSERT INTO `joel_location_city` VALUES ('284', '26', '昌都地区');
INSERT INTO `joel_location_city` VALUES ('285', '26', '山南地区');
INSERT INTO `joel_location_city` VALUES ('286', '26', '日喀则地区');
INSERT INTO `joel_location_city` VALUES ('287', '26', '那曲地区');
INSERT INTO `joel_location_city` VALUES ('288', '26', '阿里地区');
INSERT INTO `joel_location_city` VALUES ('289', '26', '林芝地区');
INSERT INTO `joel_location_city` VALUES ('290', '27', '西安市');
INSERT INTO `joel_location_city` VALUES ('291', '27', '铜川市');
INSERT INTO `joel_location_city` VALUES ('292', '27', '宝鸡市');
INSERT INTO `joel_location_city` VALUES ('293', '27', '咸阳市');
INSERT INTO `joel_location_city` VALUES ('294', '27', '渭南市');
INSERT INTO `joel_location_city` VALUES ('295', '27', '延安市');
INSERT INTO `joel_location_city` VALUES ('296', '27', '汉中市');
INSERT INTO `joel_location_city` VALUES ('297', '27', '榆林市');
INSERT INTO `joel_location_city` VALUES ('298', '27', '安康市');
INSERT INTO `joel_location_city` VALUES ('299', '27', '商洛市');
INSERT INTO `joel_location_city` VALUES ('300', '28', '兰州市');
INSERT INTO `joel_location_city` VALUES ('301', '28', '嘉峪关市');
INSERT INTO `joel_location_city` VALUES ('302', '28', '金昌市');
INSERT INTO `joel_location_city` VALUES ('303', '28', '白银市');
INSERT INTO `joel_location_city` VALUES ('304', '28', '天水市');
INSERT INTO `joel_location_city` VALUES ('305', '28', '武威市');
INSERT INTO `joel_location_city` VALUES ('306', '28', '张掖市');
INSERT INTO `joel_location_city` VALUES ('307', '28', '平凉市');
INSERT INTO `joel_location_city` VALUES ('308', '28', '酒泉市');
INSERT INTO `joel_location_city` VALUES ('309', '28', '庆阳市');
INSERT INTO `joel_location_city` VALUES ('310', '28', '定西市');
INSERT INTO `joel_location_city` VALUES ('311', '28', '陇南市');
INSERT INTO `joel_location_city` VALUES ('312', '28', '临夏回族自治州');
INSERT INTO `joel_location_city` VALUES ('313', '28', '甘南藏族自治州');
INSERT INTO `joel_location_city` VALUES ('314', '29', '西宁市');
INSERT INTO `joel_location_city` VALUES ('315', '29', '海东地区');
INSERT INTO `joel_location_city` VALUES ('316', '29', '海北藏族自治州');
INSERT INTO `joel_location_city` VALUES ('317', '29', '黄南藏族自治州');
INSERT INTO `joel_location_city` VALUES ('318', '29', '海南藏族自治州');
INSERT INTO `joel_location_city` VALUES ('319', '29', '果洛藏族自治州');
INSERT INTO `joel_location_city` VALUES ('320', '29', '玉树藏族自治州');
INSERT INTO `joel_location_city` VALUES ('321', '29', '海西蒙古族藏族自治州');
INSERT INTO `joel_location_city` VALUES ('322', '30', '银川市');
INSERT INTO `joel_location_city` VALUES ('323', '30', '石嘴山市');
INSERT INTO `joel_location_city` VALUES ('324', '30', '吴忠市');
INSERT INTO `joel_location_city` VALUES ('325', '30', '固原市');
INSERT INTO `joel_location_city` VALUES ('326', '30', '中卫市');
INSERT INTO `joel_location_city` VALUES ('327', '31', '乌鲁木齐市');
INSERT INTO `joel_location_city` VALUES ('328', '31', '克拉玛依市');
INSERT INTO `joel_location_city` VALUES ('329', '31', '吐鲁番地区');
INSERT INTO `joel_location_city` VALUES ('330', '31', '哈密地区');
INSERT INTO `joel_location_city` VALUES ('331', '31', '昌吉回族自治州');
INSERT INTO `joel_location_city` VALUES ('332', '31', '博尔塔拉蒙古自治州');
INSERT INTO `joel_location_city` VALUES ('333', '31', '巴音郭楞蒙古自治州');
INSERT INTO `joel_location_city` VALUES ('334', '31', '阿克苏地区');
INSERT INTO `joel_location_city` VALUES ('335', '31', '克孜勒苏柯尔克孜自治州');
INSERT INTO `joel_location_city` VALUES ('336', '31', '喀什地区');
INSERT INTO `joel_location_city` VALUES ('337', '31', '和田地区');
INSERT INTO `joel_location_city` VALUES ('338', '31', '伊犁哈萨克自治州');
INSERT INTO `joel_location_city` VALUES ('339', '31', '塔城地区');
INSERT INTO `joel_location_city` VALUES ('340', '31', '阿勒泰地区');
INSERT INTO `joel_location_city` VALUES ('341', '31', '省直辖县级行政单位');
INSERT INTO `joel_location_city` VALUES ('342', '32', '香港');
INSERT INTO `joel_location_city` VALUES ('343', '33', '澳门');
INSERT INTO `joel_location_city` VALUES ('344', '34', '台湾');

-- ----------------------------
-- Table structure for joel_location_province
-- ----------------------------
DROP TABLE IF EXISTS `joel_location_province`;
CREATE TABLE `joel_location_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_location_province
-- ----------------------------
INSERT INTO `joel_location_province` VALUES ('1', '北京');
INSERT INTO `joel_location_province` VALUES ('2', '天津');
INSERT INTO `joel_location_province` VALUES ('3', '河北');
INSERT INTO `joel_location_province` VALUES ('4', '山西');
INSERT INTO `joel_location_province` VALUES ('5', '内蒙古');
INSERT INTO `joel_location_province` VALUES ('6', '辽宁');
INSERT INTO `joel_location_province` VALUES ('7', '吉林');
INSERT INTO `joel_location_province` VALUES ('8', '黑龙江');
INSERT INTO `joel_location_province` VALUES ('9', '上海');
INSERT INTO `joel_location_province` VALUES ('10', '江苏');
INSERT INTO `joel_location_province` VALUES ('11', '浙江');
INSERT INTO `joel_location_province` VALUES ('12', '安徽');
INSERT INTO `joel_location_province` VALUES ('13', '福建');
INSERT INTO `joel_location_province` VALUES ('14', '江西');
INSERT INTO `joel_location_province` VALUES ('15', '山东');
INSERT INTO `joel_location_province` VALUES ('16', '河南');
INSERT INTO `joel_location_province` VALUES ('17', '湖北');
INSERT INTO `joel_location_province` VALUES ('18', '湖南');
INSERT INTO `joel_location_province` VALUES ('19', '广东');
INSERT INTO `joel_location_province` VALUES ('20', '广西');
INSERT INTO `joel_location_province` VALUES ('21', '海南');
INSERT INTO `joel_location_province` VALUES ('22', '重庆');
INSERT INTO `joel_location_province` VALUES ('23', '四川');
INSERT INTO `joel_location_province` VALUES ('24', '贵州');
INSERT INTO `joel_location_province` VALUES ('25', '云南');
INSERT INTO `joel_location_province` VALUES ('26', '西藏');
INSERT INTO `joel_location_province` VALUES ('27', '陕西');
INSERT INTO `joel_location_province` VALUES ('28', '甘肃');
INSERT INTO `joel_location_province` VALUES ('29', '青海');
INSERT INTO `joel_location_province` VALUES ('30', '宁夏');
INSERT INTO `joel_location_province` VALUES ('31', '新疆');
INSERT INTO `joel_location_province` VALUES ('32', '香港');
INSERT INTO `joel_location_province` VALUES ('33', '澳门');
INSERT INTO `joel_location_province` VALUES ('34', '台湾');

-- ----------------------------
-- Table structure for joel_md
-- ----------------------------
DROP TABLE IF EXISTS `joel_md`;
CREATE TABLE `joel_md` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_md
-- ----------------------------

-- ----------------------------
-- Table structure for joel_md_group
-- ----------------------------
DROP TABLE IF EXISTS `joel_md_group`;
CREATE TABLE `joel_md_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT '无',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_md_group
-- ----------------------------

-- ----------------------------
-- Table structure for joel_news
-- ----------------------------
DROP TABLE IF EXISTS `joel_news`;
CREATE TABLE `joel_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL DEFAULT '',
  `pic` char(100) NOT NULL DEFAULT '',
  `summary` char(200) NOT NULL DEFAULT '',
  `content` longtext,
  `ctime` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `istg` tinyint(1) DEFAULT NULL,
  `read` int(11) DEFAULT '0',
  `like` int(11) DEFAULT '0',
  `isform` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_news
-- ----------------------------
INSERT INTO `joel_news` VALUES ('1', '0', '2015年上海第一食品吉林·白城食品节', '1163', '2015白城食品节金秋亮相', '&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;&lt;p class=&quot;subtitle&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/p&gt;&lt;p&gt;\r\n			&lt;/p&gt;&lt;p class=&quot;summary&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房\r\n产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己\r\n的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/p&gt;', '1454383167', 'wap', '0', '11', '0', null);
INSERT INTO `joel_news` VALUES ('2', '0', '上海西郊“白城馆”盛大开业', '1163', '2015年10月22日，西郊“白城馆”盛大开业', '&lt;p class=&quot;subtitle&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 楷体,楷体_GB2312,SimKai; font-size: 36px;&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '1454389555', 'wap', '0', '17', '0', null);
INSERT INTO `joel_news` VALUES ('3', '0', 'QQ公众账号新赢利时代，健佳科技日进万粉的不二选择！', '1164', 'QQ公众账号新赢利时代，健佳科技日进万粉的不二选择！', '&lt;p&gt;								&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400275995712.jpg&quot; style=&quot;float:none;&quot; title=&quot;img1.jpg&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400277951518.jpg&quot; title=&quot;img2.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400289606963.jpg&quot; title=&quot;img3.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400292747634.jpg&quot; title=&quot;img4.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;', '1454477915', 'wap', '1', '305', '0', '1');

-- ----------------------------
-- Table structure for joel_news_form
-- ----------------------------
DROP TABLE IF EXISTS `joel_news_form`;
CREATE TABLE `joel_news_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_news_form
-- ----------------------------
INSERT INTO `joel_news_form` VALUES ('1', '3', '1', '健佳', '上海', '郑伊凡', '18268252687', '1454478055');
INSERT INTO `joel_news_form` VALUES ('2', '3', '5', '上海', '喝的', '唐定海', '18655159011', '1454580816');
INSERT INTO `joel_news_form` VALUES ('3', '3', '12', '连我咖啡餐饮管理有限公司', '上海', '朱耀', '13311750771', '1454669213');
INSERT INTO `joel_news_form` VALUES ('4', '3', '12', '个人', '黄浦', 'Annie ', '13501828779', '1454670408');
INSERT INTO `joel_news_form` VALUES ('5', '3', '12', '曹方敏', '上海浦东新区', '曹方敏', '18217532645', '1454671125');

-- ----------------------------
-- Table structure for joel_news_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_news_log`;
CREATE TABLE `joel_news_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(255) NOT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_news_log
-- ----------------------------
INSERT INTO `joel_news_log` VALUES ('9', '3', '5', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2mDibr8TVLMtHyaQet6mwInKuBL8ogV8CcptLQliaW3UJ8D4lbmFOibfP8ffHy2CGyARgQwOiasNvjjib6gVjNzNv83y/0', '木头', 'o-_G9uHQJ3opJIFhwSmC_9AjbeAY', '1454401034');
INSERT INTO `joel_news_log` VALUES ('10', '3', '5', 'http://wx.qlogo.cn/mmopen/3MgEsFZZKlib9M4xuk8PaMRJrC25wmziaEicaMLkAKicDDDfeRaresdloiavbZXygM3dicPianDrM7awOAYgxGrFlNcxME4ZzKQwlJn/0', '陈金', 'o-_G9uDh3oqSIsLxnPi1vjYOlNTM', '1454401415');
INSERT INTO `joel_news_log` VALUES ('18', '3', '1', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2nFQGLNVU6Ryu29hCSMK22yZ9dhP0aNH7I2tX2ze9EErILRQETOxlXBegWPTlMkunD87w8eMS1KLwazUvSqLnlY/0', '-', 'o-_G9uLKsfj7JNjagLcrxoN0_iAs', '1454405318');
INSERT INTO `joel_news_log` VALUES ('19', '3', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBpe0gBhlzNsvhHpzia8ZMz1AI19A5pibWrAiaR76Jdya4kopgo9rc8aGAibXQZM9rdOY5qJG0K7Zogcg/0', '风逝', 'o-_G9uJ8jPP2A1dNdCX1noI5h2uU', '1454405342');
INSERT INTO `joel_news_log` VALUES ('20', '3', '5', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2mDibr8TVLMtH1sqla3BTt3ezBrx4IGlAzsp0w6wvHPuZpZ4AExg8tNVXo6x2DxONXHFDTicDTRcK2nevAye4LCZG/0', '里卡帅·伊泽克涛', 'o-_G9uKWnrfBFLS2yrEH8ieiaCfE', '1454405482');
INSERT INTO `joel_news_log` VALUES ('21', '3', '1', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXYEKibxrYo0J8D6SM2BTPXaLMhX87Y71wS5Nic10FAvtN2LPTQtLc9vbAQAjXm6xLX5yWzRASG8kIu/0', '谷雨', 'o-_G9uBkGPHPCFOD4wLlA5AJi-rY', '1454405791');
INSERT INTO `joel_news_log` VALUES ('22', '3', '5', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKhible1d5T4IaVgDJHpibaRibKoyyRWmOUTI7Bayum3ych8J4VzMMvG7V98dajOCLqND5787QiahCdWg/0', 'kevin', 'o-_G9uN2-behNvnYAGVr6IK7eB1s', '1454414087');
INSERT INTO `joel_news_log` VALUES ('23', '3', '5', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXQ85r9UEl03zjgnibmBv7M6GbknWeb0C5EUIoYCBRnK17Sniag4Bs9Z3W2yZX7icK8q5o37ANN2hiaon/0', '伟清-和谐心态引发和谐事态', 'o-_G9uJD3hKUhqHO_c5HcuoFehv8', '1454414105');
INSERT INTO `joel_news_log` VALUES ('24', '3', '12', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXYEKibxrYo0J8D6SM2BTPXaLMhX87Y71wS5Nic10FAvtN2LPTQtLc9vbAQAjXm6xLX5yWzRASG8kIu/0', '谷雨', 'o-_G9uBkGPHPCFOD4wLlA5AJi-rY', '1454668474');
INSERT INTO `joel_news_log` VALUES ('25', '3', '12', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2mDibr8TVLMtH1sqla3BTt3ezBrx4IGlAzsp0w6wvHPuZpZ4AExg8tNVXo6x2DxONXHFDTicDTRcK2nevAye4LCZG/0', '里卡帅·伊泽克涛', 'o-_G9uKWnrfBFLS2yrEH8ieiaCfE', '1454668555');
INSERT INTO `joel_news_log` VALUES ('26', '3', '12', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2mDibr8TVLMtH6gORMqbK7kKpeYnuz1awFziazs6EY7XXoU4oTP20VX5rnGtkiaTuBPQX4D1ysbiazB6wGwvv4pNEUb/0', '亦冰-Leo', 'o-_G9uK6kk85b-y3EbL7YMxwZDmY', '1454669126');
INSERT INTO `joel_news_log` VALUES ('27', '3', '12', 'http://wx.qlogo.cn/mmopen/9rx0janLO7zsGUicLyD12iaPlrgue4ZcnWGiazBq8zgiaGHTTkrhhUS8tC8n2q0HSHXgWGArBrfmI5wyBicNWLUuSnA/0', '汤晨', 'o-_G9uOOXLsTyFU2VopOZEcIvqM0', '1454669315');
INSERT INTO `joel_news_log` VALUES ('28', '3', '12', 'http://wx.qlogo.cn/mmopen/rKBCaRcVshPPyfHWxrqxibs6EjgX5bktVsCsRQPEkH7FKica0hFvjhcJZp0R9nQCPtCQG1Mhuc5v8mVp3E6REVFFyqjtdVRQ2M/0', 'Jay Yan', 'o-_G9uKHkMS16mGl_YHe7vM-Dl6Q', '1454669976');
INSERT INTO `joel_news_log` VALUES ('29', '3', '12', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXVCY5sSVOfxjhhLicoab1Xd4iaNQugG42umfRGwicBkBBIkoVJtayZBGhoZCEpyxyOkxibnCMuwzM2qJ/0', '赵太', 'o-_G9uPZWB3kexBF1b6tbPZ8x4sA', '1454670352');
INSERT INTO `joel_news_log` VALUES ('30', '3', '12', 'http://wx.qlogo.cn/mmopen/3MgEsFZZKl8CEViaEkPQ9DYKaibDSjuzibs7TLsSHmeQCTIncBj036jtjA37zZDeOUQButqwDCnZt9AGUsUvHjJ6kgvoA4MvSjG/0', '曹方敏', 'o-_G9uArFaLrG3GsWBXUxBUdRTTE', '1454671073');
INSERT INTO `joel_news_log` VALUES ('31', '3', '10', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXadLKkzEq6uia3zJquBEAz7LM7GHs7Hkico3dDmWf7ZMgTUYDSBeFIDpDSlPN6EichFjcs3LJmf0z7W/0', '  Liffey', 'o-_G9uAs_MoNurSQi0iKThzseq7c', '1454802651');
INSERT INTO `joel_news_log` VALUES ('32', '3', '10', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7Yu5UuC6TQOGlibia8UXlxbL014hlTFgZRiaOibLIp5vRwT10hibb4362jboRpeZeDXkoRwyNTJXHOHAw/0', 'Shu', 'o-_G9uDW4AAQPF3we8H65LRXGia4', '1454803443');
INSERT INTO `joel_news_log` VALUES ('33', '3', '10', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXYdhTMeOdxBNRribTqnHzC8Vw8s2faetyfAibr3sszNkUDLaibSHMQaC2c7iav5j0LbqpXicUWk1SHeGC/0', '晓军', 'o-_G9uM2qOIs0VfcXaVOqK88-GZE', '1454803512');
INSERT INTO `joel_news_log` VALUES ('34', '3', '10', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXdNZpcCNjjpV2diacYRvxuvibsDwceoF9875XfxnOkMzDvDkVLLG2TQVpXFcYcnEYE7iaFeUK4FS4vt/0', '雷欧纳德 杨', 'o-_G9uPAr6eYwQX-H6J_U1HEMJ3s', '1454803948');
INSERT INTO `joel_news_log` VALUES ('35', '3', '10', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7pvacTpOvM3kGCn5fnTfVnU3QeNtibrXIjaU7fPesiacbyXIghk89dJHoVLsRypkbeGISXG63lSXSw/0', '陈小贱', 'o-_G9uPQj6lqqRYcdqTrTgW-Wq6U', '1454804461');
INSERT INTO `joel_news_log` VALUES ('36', '3', '10', 'http://wx.qlogo.cn/mmopen/rKBCaRcVshPPyfHWxrqxibs6EjgX5bktVsCsRQPEkH7FKica0hFvjhcJZp0R9nQCPtCQG1Mhuc5v8mVp3E6REVFFyqjtdVRQ2M/0', 'Jay Yan', 'o-_G9uKHkMS16mGl_YHe7vM-Dl6Q', '1454805253');
INSERT INTO `joel_news_log` VALUES ('37', '3', '10', 'http://wx.qlogo.cn/mmopen/3MgEsFZZKlib9M4xuk8PaMQQ8KGToDCYw4GIcZvAoBEGic9RtIzFaUetELruiaCL1XWx92NlR1XgdAXiaAic0YeXdkibhIgSNIrePx/0', '浮殇年華', 'o-_G9uBxbOgMSVZk4EQCZHLHEovk', '1454805725');
INSERT INTO `joel_news_log` VALUES ('38', '3', '10', 'http://wx.qlogo.cn/mmopen/vwYJc7uvm2mDibr8TVLMtHwgqyHZicqKuuen0CGEkaibO1KtzaDUx4LMpYnZ1one4yoFvhAwNYnwcQyULqc2afosLBDTYE2qmlf/0', '楚留香', 'o-_G9uHsH4snTKyLtWf7Po2GcuEM', '1454806235');
INSERT INTO `joel_news_log` VALUES ('39', '3', '10', 'http://wx.qlogo.cn/mmopen/9rx0janLO7ydNnCic5kAWXZK7ToBZDMmm76YSSv0CtHtcGEWfiaJCLqnY9iacaGibEWRnru5ibOCUZYYJDG1Fpicf7a1pfwWC8fzXC/0', '谢一', 'o-_G9uLtWM6UVIhMPLnXcKXmOBUU', '1454811179');
INSERT INTO `joel_news_log` VALUES ('40', '3', '12', 'http://wx.qlogo.cn/mmopen/rKBCaRcVshPPyfHWxrqxiblDsabrjd9D2R5PBBDqLGd1bSQNSBBqzsGzvx1nOqKl2wDoz3Psmfex3GqlSMzm1wSQ5fOjwZI8A/0', '赵', 'o-_G9uHCazJQOIilywZ1Yl_LUl98', '1454811242');
INSERT INTO `joel_news_log` VALUES ('41', '3', '10', 'http://wx.qlogo.cn/mmopen/rKBCaRcVshPPyfHWxrqxibrwCEJSr3Oo5pWBRE4MJQStRYib3avfFzFVZ4dSAsP21rbo67oMyTtpKic4q4aWwm0Xd7B4icL5xFAt/0', '高晨', 'o-_G9uFNGTjqTZPUQ6IRi7YZJ2Ak', '1454817705');

-- ----------------------------
-- Table structure for joel_ptg_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_ptg_log`;
CREATE TABLE `joel_ptg_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `oid` varchar(255) DEFAULT NULL,
  `vipid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `isgroup` tinyint(1) DEFAULT '0',
  `groupmax` int(11) DEFAULT '1',
  `groupprice` float(10,0) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `closetime` int(11) DEFAULT NULL,
  `closeadmin` varchar(255) DEFAULT NULL,
  `ptgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ptg_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_ptg_order
-- ----------------------------
DROP TABLE IF EXISTS `joel_ptg_order`;
CREATE TABLE `joel_ptg_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` varchar(255) DEFAULT NULL,
  `ptgid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `payprice` float DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_ptg_order
-- ----------------------------

-- ----------------------------
-- Table structure for joel_represent
-- ----------------------------
DROP TABLE IF EXISTS `joel_represent`;
CREATE TABLE `joel_represent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` int(11) DEFAULT NULL,
  `utop` int(11) DEFAULT NULL,
  `uleft` int(11) DEFAULT NULL,
  `uimgtop` int(11) DEFAULT NULL,
  `uimgleft` int(11) DEFAULT NULL,
  `mtop` int(11) DEFAULT NULL,
  `mleft` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_represent
-- ----------------------------
INSERT INTO `joel_represent` VALUES ('1', '1176', '280', '150', '120', '30', '300', '170');

-- ----------------------------
-- Table structure for joel_search_words
-- ----------------------------
DROP TABLE IF EXISTS `joel_search_words`;
CREATE TABLE `joel_search_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_search_words
-- ----------------------------
INSERT INTO `joel_search_words` VALUES ('1', '年香玉咖啡玉米豆', '18', '1');
INSERT INTO `joel_search_words` VALUES ('2', '东北骄子五年陈酿', '18', '1');
INSERT INTO `joel_search_words` VALUES ('3', '祖姥姥', '41', '1');
INSERT INTO `joel_search_words` VALUES ('4', '东北骄子', '16', '1');
INSERT INTO `joel_search_words` VALUES ('5', '东北土豆粉', '1', '1');
INSERT INTO `joel_search_words` VALUES ('6', '面粉', '1', '1');
INSERT INTO `joel_search_words` VALUES ('7', '油', '1', '1');
INSERT INTO `joel_search_words` VALUES ('8', '洮宝', '3', '1');
INSERT INTO `joel_search_words` VALUES ('9', '绿豆', '1', '1');
INSERT INTO `joel_search_words` VALUES ('10', '酸菜', '3', '1');
INSERT INTO `joel_search_words` VALUES ('11', '家的味道原生态大米5kg', '2', '1');
INSERT INTO `joel_search_words` VALUES ('12', '萄宝', '1', '1');
INSERT INTO `joel_search_words` VALUES ('13', '橄榄油', '4', '1');
INSERT INTO `joel_search_words` VALUES ('14', '尿不湿', '1', '1');
INSERT INTO `joel_search_words` VALUES ('15', '粉丝', '4', '1');
INSERT INTO `joel_search_words` VALUES ('16', '粉条', '3', '1');
INSERT INTO `joel_search_words` VALUES ('17', '弄盾', '1', '1');
INSERT INTO `joel_search_words` VALUES ('18', '农盾', '1', '1');
INSERT INTO `joel_search_words` VALUES ('19', '笨油坊', '1', '1');
INSERT INTO `joel_search_words` VALUES ('20', '农', '3', '1');
INSERT INTO `joel_search_words` VALUES ('21', '东北', '2', '1');
INSERT INTO `joel_search_words` VALUES ('22', '骄子红', '1', '1');
INSERT INTO `joel_search_words` VALUES ('23', '到保', '1', '1');
INSERT INTO `joel_search_words` VALUES ('24', '芸豆', '2', '1');
INSERT INTO `joel_search_words` VALUES ('25', '黑豆有', '1', '1');
INSERT INTO `joel_search_words` VALUES ('26', '黑豆', '2', '1');
INSERT INTO `joel_search_words` VALUES ('27', '瓜子', '2', '1');
INSERT INTO `joel_search_words` VALUES ('28', '双河碧系列小米月子米小黄米新米杂粮', '1', '1');
INSERT INTO `joel_search_words` VALUES ('29', '双河碧', '4', '1');
INSERT INTO `joel_search_words` VALUES ('30', '紫', '2', '1');
INSERT INTO `joel_search_words` VALUES ('31', '大米', '5', '1');
INSERT INTO `joel_search_words` VALUES ('32', '葵花油', '6', '1');
INSERT INTO `joel_search_words` VALUES ('33', '酒伴侣', '2', '1');
INSERT INTO `joel_search_words` VALUES ('34', '百年美酒', '5', '1');
INSERT INTO `joel_search_words` VALUES ('35', '五香蛋', '1', '1');
INSERT INTO `joel_search_words` VALUES ('36', '香酒', '2', '1');
INSERT INTO `joel_search_words` VALUES ('37', '新安屯', '1', '1');
INSERT INTO `joel_search_words` VALUES ('38', '虎头', '4', '1');
INSERT INTO `joel_search_words` VALUES ('39', '虎', '1', '1');
INSERT INTO `joel_search_words` VALUES ('40', '服装', '1', '1');
INSERT INTO `joel_search_words` VALUES ('41', '苏', '2', '1');
INSERT INTO `joel_search_words` VALUES ('42', '天然弱', '1', '1');

-- ----------------------------
-- Table structure for joel_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_set`;
CREATE TABLE `joel_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxname` varchar(255) DEFAULT NULL,
  `wxurl` varchar(255) DEFAULT NULL,
  `wxsummary` varchar(255) DEFAULT NULL,
  `wxsuburl` varchar(255) DEFAULT NULL,
  `wxappid` varchar(255) DEFAULT NULL,
  `wxappsecret` varchar(255) DEFAULT NULL,
  `wxtoken` varchar(255) DEFAULT NULL,
  `wxmchid` varchar(255) DEFAULT NULL,
  `wxmchkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_set
-- ----------------------------
INSERT INTO `joel_set` VALUES ('1', '大白课堂V1版', '#', '首页', '#', 'wxc27d79fcd5b54811', '347af23c2f1c5b4c6eef1080ec890396', '', '', '');

-- ----------------------------
-- Table structure for joel_shop_ads
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_ads`;
CREATE TABLE `joel_shop_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `ispc` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_ads
-- ----------------------------
INSERT INTO `joel_shop_ads` VALUES ('7', 'b', '', '1169', '#', '', '0');
INSERT INTO `joel_shop_ads` VALUES ('13', '11', '', '1168', '#', '', '0');
INSERT INTO `joel_shop_ads` VALUES ('17', 'PC轮播', 'PC轮播', '933', '#', 'PC轮播', '1');
INSERT INTO `joel_shop_ads` VALUES ('18', 'PC轮播', '', '1007', '#', '', '1');

-- ----------------------------
-- Table structure for joel_shop_basket
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_basket`;
CREATE TABLE `joel_shop_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `ptgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2942 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_basket
-- ----------------------------
INSERT INTO `joel_shop_basket` VALUES ('15', '0', '18', '3', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('61', '0', '58', '41', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('63', '0', '56', '34', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('82', '0', '38', '68', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('83', '0', '163', '85', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('92', '0', '227', '80', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('94', '0', '234', '69', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('105', '0', '320', '82', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('111', '0', '388', '67', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('258', '0', '569', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('266', '0', '609', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('268', '0', '611', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('386', '0', '682', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('397', '0', '688', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('401', '0', '691', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('419', '0', '551', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('425', '0', '364', '89', '', '20', null);
INSERT INTO `joel_shop_basket` VALUES ('428', '0', '595', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('445', '0', '830', '59', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('454', '0', '862', '89', '', '200', null);
INSERT INTO `joel_shop_basket` VALUES ('457', '0', '802', '60', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('462', '0', '428', '50', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('478', '0', '123', '71', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('479', '0', '123', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('480', '0', '123', '70', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('490', '0', '1233', '77', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('505', '0', '1472', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('526', '0', '1484', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('528', '0', '1486', '89', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('569', '0', '336', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('571', '0', '785', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('574', '0', '1570', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('596', '0', '1588', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('615', '0', '1597', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('619', '0', '1604', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('623', '0', '1592', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('627', '0', '1610', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('630', '0', '1615', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('731', '0', '1677', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('791', '0', '1709', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('794', '0', '1703', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('796', '0', '1716', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('863', '0', '1711', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('874', '0', '1796', '5', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('893', '0', '1935', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('955', '0', '1971', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('967', '0', '1977', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('974', '0', '1932', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('993', '0', '2122', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1042', '0', '676', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1044', '0', '319', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1047', '0', '2378', '89', '', '36', null);
INSERT INTO `joel_shop_basket` VALUES ('1048', '0', '2430', '89', '', '20', null);
INSERT INTO `joel_shop_basket` VALUES ('1061', '0', '2121', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1072', '0', '1613', '139', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1096', '0', '783', '67', '', '4', null);
INSERT INTO `joel_shop_basket` VALUES ('1103', '0', '20', '69', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1116', '0', '674', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1160', '0', '2632', '86', '', '5', null);
INSERT INTO `joel_shop_basket` VALUES ('1161', '0', '2632', '87', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1163', '0', '1038', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1169', '0', '2540', '102', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1256', '0', '1038', '115', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1268', '0', '2451', '151', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1278', '0', '2748', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1284', '0', '428', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1357', '0', '77', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1358', '0', '1637', '136', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1378', '0', '820', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1391', '0', '3012', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1415', '0', '3120', '153', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1425', '0', '1931', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1447', '0', '1931', '129', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1448', '0', '1931', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1500', '0', '98', '172', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1501', '0', '98', '169', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1509', '0', '1459', '155', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1536', '0', '4', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1541', '0', '102', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1542', '0', '385', '115', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1545', '0', '2963', '157', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1583', '0', '1640', '136', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1584', '0', '3121', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1588', '0', '476', '60', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1595', '0', '3020', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1596', '0', '3020', '61', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1597', '0', '3020', '60', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1598', '0', '3020', '67', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1599', '0', '3020', '172', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1600', '0', '3020', '157', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1601', '0', '426', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1607', '0', '3751', '129', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1608', '0', '458', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1611', '0', '3785', '139', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('1612', '0', '527', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1613', '0', '525', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1619', '0', '3827', '128', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1623', '0', '3804', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1627', '0', '3827', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1653', '0', '3889', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1666', '0', '2384', '139', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1668', '0', '2384', '131', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1669', '0', '3952', '67', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1683', '0', '4300', '182', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1698', '0', '3502', '134', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1699', '0', '2987', '62', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1701', '0', '3431', '182', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1702', '0', '4349', '113', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1718', '0', '3518', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1731', '0', '3866', '113', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1732', '0', '3261', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1744', '0', '3751', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1760', '0', '1421', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1761', '0', '1421', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1762', '0', '1421', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1812', '0', '73', '129', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1826', '0', '3999', '163', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1851', '0', '3705', '159', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1852', '0', '3705', '162', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1862', '0', '828', '158', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1863', '0', '828', '159', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1864', '0', '828', '155', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1865', '0', '828', '131', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1866', '0', '112', '161', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('1916', '0', '4508', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1920', '0', '53', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1921', '0', '50', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1926', '0', '3752', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1927', '0', '3752', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1938', '0', '4699', '129', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('1940', '0', '3671', '116', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1941', '0', '4736', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1942', '0', '4753', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1943', '0', '4753', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1945', '0', '4396', '161', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1962', '0', '27', '164', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1963', '0', '4886', '87', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1964', '0', '4886', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1973', '0', '3642', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1996', '0', '3025', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('1997', '0', '3340', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2025', '0', '906', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2040', '0', '2248', '151', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2050', '0', '4304', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2053', '0', '5183', '129', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('2066', '0', '2', '198', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2110', '0', '5333', '87', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2111', '0', '1504', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2112', '0', '1504', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2118', '0', '2824', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2119', '0', '2824', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2132', '0', '5318', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2133', '0', '5318', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2134', '0', '5064', '107', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2144', '0', '92', '63', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2146', '0', '4489', '26', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2161', '0', '127', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2168', '0', '5574', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2169', '0', '5574', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2170', '0', '5574', '115', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2174', '0', '3058', '100', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2175', '0', '3058', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2176', '0', '3058', '160', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2177', '0', '3058', '51', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2187', '0', '5822', '159', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2191', '0', '2987', '87', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('2192', '0', '2987', '67', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2197', '0', '5974', '159', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2198', '0', '239', '37', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2202', '0', '5747', '104', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2231', '0', '5853', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2232', '0', '5853', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2233', '0', '6157', '16', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2238', '0', '6211', '107', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2239', '0', '6289', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2252', '0', '6346', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2254', '0', '6367', '152', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2261', '0', '5652', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2276', '0', '6639', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2277', '0', '5937', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2282', '0', '6624', '67', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2304', '0', '6742', '115', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2306', '0', '6595', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2307', '0', '6929', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2308', '0', '6983', '97', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2309', '0', '6916', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2310', '0', '246', '70', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2313', '0', '7221', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2318', '0', '28', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2321', '0', '7437', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2322', '0', '7449', '83', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2323', '0', '7328', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2338', '0', '7579', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2339', '0', '1629', '89', '', '10', null);
INSERT INTO `joel_shop_basket` VALUES ('2355', '0', '2223', '67', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2356', '0', '7858', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2357', '0', '7867', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2363', '0', '4738', '87', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2366', '0', '355', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2369', '0', '8448', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2374', '0', '8790', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2375', '0', '6933', '115', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2376', '0', '6933', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2377', '0', '6933', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2384', '0', '7033', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2385', '0', '5735', '152', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2387', '0', '9164', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2388', '0', '9225', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2389', '0', '9260', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2411', '0', '71', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2414', '0', '9399', '104', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2430', '0', '9963', '26', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2432', '0', '9967', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2453', '0', '10025', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2461', '0', '10036', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2462', '0', '10030', '205', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2463', '0', '10087', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2465', '0', '10115', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2466', '0', '9971', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2470', '0', '1161', '69', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2471', '0', '10183', '26', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2472', '0', '10183', '152', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2473', '0', '7160', '62', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2474', '0', '9961', '161', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2475', '0', '9142', '113', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2477', '0', '10315', '162', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2478', '0', '10311', '108', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2489', '0', '10608', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2503', '0', '981', '115', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2512', '0', '5312', '161', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2569', '0', '4682', '100', '', '7', null);
INSERT INTO `joel_shop_basket` VALUES ('2582', '0', '516', '40', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2583', '0', '516', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2591', '0', '10853', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2592', '0', '10814', '107', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2593', '0', '7490', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2594', '0', '11053', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2595', '0', '5662', '152', '', '15', null);
INSERT INTO `joel_shop_basket` VALUES ('2596', '0', '7062', '152', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2598', '0', '5662', '181', '', '10', null);
INSERT INTO `joel_shop_basket` VALUES ('2599', '0', '7147', '107', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2613', '0', '17', '144', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2623', '0', '404', '60', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2625', '0', '5544', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2627', '0', '11274', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2632', '0', '7', '99', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2634', '0', '7', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2635', '0', '11287', '99', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2637', '0', '11473', '4', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2638', '0', '5325', '4', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2640', '0', '5325', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2666', '0', '11576', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2669', '0', '11587', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2679', '0', '5192', '150', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2682', '0', '6483', '154', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2684', '0', '11687', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2685', '0', '11686', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2687', '0', '6', '248', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2688', '0', '6854', '248', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2689', '0', '8406', '116', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2691', '0', '5049', '248', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2694', '0', '10672', '150', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2695', '0', '4703', '60', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2696', '0', '4703', '158', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2698', '0', '5434', '84', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2701', '0', '7972', '46', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2702', '0', '10485', '248', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2705', '0', '5963', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2706', '0', '5963', '111', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2707', '0', '5956', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2708', '0', '5956', '111', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2709', '0', '11773', '86', '', '2', null);
INSERT INTO `joel_shop_basket` VALUES ('2710', '0', '33', '18', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2711', '0', '6150', '100', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2714', '0', '7656', '248', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2715', '0', '7656', '18', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2716', '0', '7245', '248', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2717', '0', '6203', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2718', '0', '6203', '89', '', '3', null);
INSERT INTO `joel_shop_basket` VALUES ('2721', '0', '7475', '248', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2722', '0', '7475', '129', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2726', '0', '10645', '86', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2727', '0', '131', '128', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2728', '0', '1', '29', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2729', '0', '1', '29', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2730', '0', '1', '29', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2731', '0', '1', '29', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2732', '0', '1', '29', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2930', '1', '11886', '70', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2934', '0', '11888', '89', '', '1', null);
INSERT INTO `joel_shop_basket` VALUES ('2941', '0', '11913', '5', null, '1', '19');

-- ----------------------------
-- Table structure for joel_shop_cate
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_cate`;
CREATE TABLE `joel_shop_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT '0',
  `lv` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `soncate` text,
  `sorts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_cate
-- ----------------------------
INSERT INTO `joel_shop_cate` VALUES ('5', '0', '0', '1', '大白课程', '0', '', null, '0');
INSERT INTO `joel_shop_cate` VALUES ('6', '0', '0', '1', '大白书院', '0', '', null, '0');

-- ----------------------------
-- Table structure for joel_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_goods`;
CREATE TABLE `joel_shop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spu` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `lid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `indexpic` varchar(255) DEFAULT NULL,
  `listpic` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `goods_url` varchar(255) DEFAULT NULL COMMENT '商品链接',
  `summary` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `oprice` float DEFAULT '0',
  `unit` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `sorts` int(11) DEFAULT '0',
  `clicks` int(11) DEFAULT '0',
  `sells` int(11) DEFAULT '0',
  `dissells` int(11) DEFAULT '0',
  `issku` tinyint(1) DEFAULT '0',
  `ismy` tinyint(1) DEFAULT NULL,
  `issells` tinyint(1) DEFAULT '0',
  `iscut` tinyint(1) DEFAULT NULL,
  `cutmax` decimal(10,0) DEFAULT NULL,
  `cutlow` decimal(10,0) DEFAULT NULL,
  `cuttop` decimal(10,0) DEFAULT NULL,
  `skuinfo` longtext,
  `content` longtext,
  `status` tinyint(1) DEFAULT '1',
  `introduction` varchar(255) DEFAULT NULL,
  `heavy` float DEFAULT NULL,
  `isgroup` tinyint(1) DEFAULT NULL,
  `groupmax` decimal(10,0) DEFAULT NULL,
  `groupprice` float(11,2) DEFAULT NULL,
  `vipfx1rate` int(11) DEFAULT '0',
  `vipfx2rate` int(11) DEFAULT '0',
  `vipfx3rate` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_goods
-- ----------------------------
INSERT INTO `joel_shop_goods` VALUES ('1', null, '1', '1,', '微信大师系统（0元体验装）', null, '1170', '1170', '1170', null, '微信大师系统（0元预约体验装）', '0', '9800', '', '100', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; width: 0px; height: 0px; clear: both; word-wrap: break-word !important;&quot;&gt;&lt;/section&gt;&lt;p style=&quot;;margin-bottom:0;line-height:28px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 微软雅黑, sans-serif; color: black;font-size:16px&quot;&gt;微信大师是专门针对微信公众账号提供营销推广服务的第三方平台。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:black&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:black&quot;&gt;微信大师拥有国内领先技术，专注专营所以成就专业。微信大师研发出丰富完善的微推广模板，营销品牌涉及房产、酒店、汽车、旅游、教育、商城、网站、团购、休闲娱乐等多领域，前期调研、微站设计、活动策划、后期运营一站式服务，为各中小型企业量身打造适合自己的微营销方案，以精准的营销策略，极大程度地推广客户的产品及服务。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;em&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21;font-style:normal&quot;&gt;三大板块助力微营销：&lt;/span&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;1、&lt;span style=&quot;font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &amp;#39;Times New Roman&amp;#39;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;em&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21;font-style:normal&quot;&gt;基础建设：LBS回复 微推送 微留言 微相册 微预约 底部导航 ……&lt;/span&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0 24px;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;2&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、&lt;em&gt;&lt;span style=&quot;font-style: normal&quot;&gt;营销互动：优惠卷 刮刮卡 大转盘 微投票 一战到底 微社区 ……&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;3&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、&lt;em&gt;&lt;span style=&quot;font-style: normal&quot;&gt;业务板块：微官网 微会员 微信墙 数据魔方 微客服 ……&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/strong&gt;&lt;img class=&quot;hytd-wxds&quot; src=&quot;http://pc.weiqt.cn/Public/home/img/hytd-wxds.png&quot; style=&quot;font-size: medium; padding: 0px; margin: 1em 0px 0px; font-family: 微软雅黑; color: rgb(0, 0, 0); line-height: normal;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; color: rgb(0, 176, 240); word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;功能列表（部分）：&lt;/strong&gt;&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;img data-s=&quot;300,640&quot; data-type=&quot;png&quot; data-src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKBXebTpYnZQqGsTo5Aa4oiavNz3zMeJf31jwgQfUVYDk22MyR1eXlrtA/0?wx_fmt=png&quot; data-ratio=&quot;0.3952569169960474&quot; data-w=&quot;&quot; src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKBXebTpYnZQqGsTo5Aa4oiavNz3zMeJf31jwgQfUVYDk22MyR1eXlrtA/640?wx_fmt=png&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: auto !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;&quot;/&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;他们都在用微信大师：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;img data-s=&quot;300,640&quot; data-type=&quot;png&quot; data-src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKyWgkIxWCPQQx3yoZ0OVK5ZS7ffzP5uqxcHNeYtpFARrSOuxm3ciahvw/0?wx_fmt=png&quot; data-ratio=&quot;0.6739130434782609&quot; data-w=&quot;&quot; src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKyWgkIxWCPQQx3yoZ0OVK5ZS7ffzP5uqxcHNeYtpFARrSOuxm3ciahvw/640?wx_fmt=png&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1&quot; style=&quot;line-height: 20.4799995422363px; margin: 0px; padding: 0px; max-width: 100%; height: auto !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;微企通战略合作伙伴：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;img data-s=&quot;300,640&quot; data-type=&quot;jpeg&quot; data-src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/0?wx_fmt=jpeg&quot; data-ratio=&quot;0.5454545454545454&quot; data-w=&quot;&quot; src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: auto !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '1', '微信大师系统（0元预约体验装）', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('2', null, '0', '1,', '分销系统（0元体验装）', null, '1170', '1170', '1170', null, '微信分销系统（0元预约体验装）', '0', '36000', '套', '100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '&lt;p style=&quot;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:black&quot;&gt;分销系统是“微商城&lt;span&gt;+&lt;/span&gt;返利”的一体化微信分销交易平台。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;;margin-bottom:0;line-height:25px&quot;&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:black&quot;&gt;定制化服务、多而全的功能为企业提供一体化解决方案。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:black&quot;&gt;依托微企通系统的力量实现低成本、高控制、底资本、高市场覆盖率，快速搭建一个全网的销售渠道。做到人人皆是业务员、人人皆是渠道商。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;em&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33); font-style: normal;font-size:16px&quot;&gt;微企通分销系统亮点：&lt;/span&gt;&lt;/strong&gt;&lt;/em&gt;&lt;em&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;1&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、定制化服务，装修风格商家定&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;2&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、出售源代码，客户数据、二次开发自己掌握&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;3&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、渠道、会员双版本，更有花鼓系统玩转分销&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;4&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、支持&lt;span&gt;SKU&lt;/span&gt;属性，&lt;span&gt;SPU&lt;/span&gt;技术对接&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;5&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、老平台客户沉淀，&lt;span&gt;CPS&lt;/span&gt;联盟，二度人脉、人人中介、互动体验等微信新玩法新营销沉淀、转化、激活粉丝&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;6&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、各个平台的商品库存和订单数据同步，对接各大系统&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0 0 0;line-height: 25px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;7&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:11px;font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;;color:#D81E21&quot;&gt;、支持微信支付、支付宝支付、银行卡支付、财付通支付、环迅支付等多种支付方式&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; white-space: normal; word-wrap: break-word !important;&quot;&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;&quot;&gt;&lt;img src=&quot;http://v1.weiqt.cn/upload/20160205/14546464062733.jpg&quot; _src=&quot;http://v1.weiqt.cn/upload/20160205/14546464062733.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: pre-wrap; word-wrap: break-word !important;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;/p&gt;&lt;section class=&quot;135article&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 20.4799995422363px; white-space: normal; word-wrap: break-word !important;&quot;&gt;&lt;section data-id=&quot;84261&quot; class=&quot;135editor&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; border: 0px none; font-family: 微软雅黑; word-wrap: break-word !important;&quot;&gt;&lt;section style=&quot;margin: 5px 0px; padding: 0px; max-width: 100%; border: 0px rgb(198, 198, 199); word-wrap: break-word !important;&quot;&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: 25px; color: inherit; border-color: rgb(198, 198, 199); word-wrap: break-word !important;&quot;&gt;&lt;section data-width=&quot;50px&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: 25px; width: 50px; float: left; border-top-width: 2px; border-top-style: solid; border-color: rgb(198, 198, 199); border-left-width: 2px; border-left-style: solid; color: inherit; word-wrap: break-word !important;&quot;&gt;&lt;/section&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; display: inline-block; color: rgb(70, 70, 72); clear: both; border-color: rgb(198, 198, 199); word-wrap: break-word !important;&quot;&gt;&lt;/section&gt;&lt;/section&gt;&lt;section class=&quot;135brush&quot; data-style=&quot;color: rgb(51, 51, 51); font-size: 1em; line-height: 1.75em; word-break: break-all; word-wrap: break-word; text-align: justify;&quot; style=&quot;margin: -0.8em 0.3em; padding: 0.8em; max-width: 100%; color: inherit; border-color: rgb(198, 198, 199); word-wrap: break-word !important;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;快速构建分销网络，轻松成为分销商&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;双线购物，手机端操作，方便快捷&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; line-height: 25.6000003814697px; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;聚焦粉丝转化，&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; line-height: 1.6em; color: inherit; word-wrap: break-word !important;&quot;&gt;沉淀客户，精准营销&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;构建社交平台，人人电商，口碑传播&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;装修风格随心而变&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;第三方便捷登录&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;多种支付方式并存&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;库存订单智能管理&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; text-align: center; word-wrap: break-word !important;&quot;&gt;&lt;strong&gt;那么，这款分销系统适合你吗？&lt;/strong&gt;&lt;/p&gt;&lt;/section&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: 25px; color: inherit; border-color: rgb(198, 198, 199); word-wrap: break-word !important;&quot;&gt;&lt;section data-width=&quot;50px&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: 25px; width: 50px; float: right; border-bottom-width: 2px; border-bottom-style: solid; border-color: rgb(198, 198, 199); border-right-width: 2px; border-right-style: solid; color: inherit; word-wrap: break-word !important;&quot;&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;section style=&quot;margin: 0px; padding: 0px; max-width: 100%; width: 0px; height: 0px; clear: both; word-wrap: break-word !important;&quot;&gt;&lt;/section&gt;&lt;/section&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;font-family: 微软雅黑; line-height: 25.6000003814697px;&quot;&gt;他们都在使用分销系统：&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;font-family: 微软雅黑; line-height: 25.6000003814697px;&quot;&gt;&lt;img src=&quot;http://v1.weiqt.cn/upload/20160205/14546463774979.jpg&quot; _src=&quot;http://v1.weiqt.cn/upload/20160205/14546463774979.jpg&quot;/&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/section&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: 微软雅黑; line-height: 25.6000003814697px; word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;line-height: 25.6000003814697px;&quot;&gt;微企通战略合作伙伴：&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: 微软雅黑; line-height: 25.6000003814697px; word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;&gt;&lt;img data-s=&quot;300,640&quot; data-type=&quot;jpeg&quot; data-src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/0?wx_fmt=jpeg&quot; data-ratio=&quot;0.5454545454545454&quot; data-w=&quot;&quot; src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: auto !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;&quot;/&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;', '1', '微信分销系统', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('3', null, '2', '1,', '商圈系统（0元体验装）', null, '1170', '1170', '1170', null, '商圈系统（0元体验装）', '0', '68000', '套', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 微软雅黑, sans-serif; color: black;&quot;&gt;微商圈是基于微信公众平台企业应用的自助式服务模式。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: black;&quot;&gt;在移动互联的普及下，微商圈是传统企业电商转型利器，能“攻”亦能“守”，是传统企业突围的绝佳战略机遇。微商圈帮助企业实现基于微信公众平台的客户服务、产品推介、互动营销、市场调查、产品订单等运营与系统功能服务。系统全方位、多角度考虑到网民，会员，商家，平台运营方各自的需求，设计出促进运营方、商家、消费者多方共赢的产品。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;系统亮点：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;1、消费资金汇到商圈，运营方将获取巨大的现金流。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;2、“白赚钱”功能，用户只要参与商圈相关活动，分享转发带动消费即可获得丰厚的虚拟币值。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;3、独立的商圈管理者后台、独立的商家后台、独立的财务管理系统&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;4、商家免费入驻。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;5、首页呈现、频道分类、商家推荐、产品清单、产品介绍、购物订单、支付结算、检索分类、订单列表、收藏夹、个人中心、资料设置、虚拟&lt;span style=&quot;font-size: 11px;&quot;&gt;币中心功能应有尽有。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;&lt;img src=&quot;http://v1.weiqt.cn/upload/20160205/14546467485340.png&quot; _src=&quot;http://v1.weiqt.cn/upload/20160205/14546467485340.png&quot;/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 17.0666675567627px;&quot;&gt;&lt;strong&gt;他们都在使用微商圈系统：&lt;/strong&gt;&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 17.0666675567627px; word-wrap: break-word !important;&quot;&gt;&lt;img src=&quot;http://v1.weiqt.cn/upload/20160205/14546468753739.jpg&quot; _src=&quot;http://v1.weiqt.cn/upload/20160205/14546468753739.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 17.0666675567627px; word-wrap: break-word !important;&quot;&gt;微企通战略合作伙伴：&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 17.0666675567627px; word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; max-width: 100%; word-wrap: break-word !important;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; clear: both; min-height: 1em; white-space: normal; color: rgb(62, 62, 62); font-family: &amp;#39;Helvetica Neue&amp;#39;, Helvetica, &amp;#39;Hiragino Sans GB&amp;#39;, &amp;#39;Microsoft YaHei&amp;#39;, Arial, sans-serif; line-height: 17.0666675567627px; word-wrap: break-word !important;&quot;&gt;&lt;img data-s=&quot;300,640&quot; data-type=&quot;jpeg&quot; data-src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/0?wx_fmt=jpeg&quot; data-ratio=&quot;0.5454545454545454&quot; data-w=&quot;&quot; src=&quot;http://mmbiz.qpic.cn/mmbiz/BW9RzzBJblG0CxQ3gKCUyoe1lWYZfYHKwB993K0WvmqvybPTKttlibC4xHiak9xPWWY0UxRF3elnyLpAGIQJnPxg/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1&quot; style=&quot;margin: 0px; padding: 0px; max-width: 100%; height: auto !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; line-height: 25px; white-space: normal;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;span style=&quot;font-size: 11px; font-family: 微软雅黑, sans-serif; color: rgb(216, 30, 33);&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '1', '商圈系统（0元体验装）', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('4', null, '0', '1,', 'QQ公众账号大号预约', null, '1173', '1173', '1173', null, 'QQ公众号开抢，公测期日进万粉！健佳微企通助您一臂之力！', '0', '0', '套', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '&lt;p&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400275995712.jpg&quot; style=&quot;float:none;&quot; title=&quot;img1.jpg&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400277951518.jpg&quot; title=&quot;img2.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400289606963.jpg&quot; title=&quot;img3.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;img src=&quot;/public/cms/ueditor/php/upload//img/20160202/1454400292747634.jpg&quot; title=&quot;img4.jpg&quot; style=&quot;float: none;&quot;/&gt;&lt;/p&gt;', '1', 'QQ公众账号大号预约', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('5', null, '0', '1,', '测试商品', null, '', '', '', null, '测试商品', '100', '100', '个', '299', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', 'a:1:{i:0;a:4:{s:6:\"attrid\";s:2:\"48\";s:9:\"attrlabel\";s:6:\"级别\";s:5:\"items\";a:3:{i:4863;s:6:\"一级\";i:4864;s:6:\"二级\";i:4865;s:6:\"三级\";}s:7:\"checked\";s:15:\"4863,4864,4865,\";}}', '&lt;p&gt;测试商品&lt;/p&gt;', '1', '测试商品', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('6', null, '0', '1,', '微信测试', null, null, '1178', null, 'https://www.localhost:81', '', '100', '100', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '', '1', '微信测试', '0', null, null, null, '10', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('7', null, '0', '1,', '大白课堂', null, null, '13', null, 'https://www.localhost:81', '', '199', '199', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '&lt;p&gt;大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试大白课堂测试&lt;/p&gt;', '1', '大白课堂测试', '0', null, null, null, '10', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('8', null, '0', '1,', '新增的测试商品', null, null, '33', null, 'https://www.baidu.com/', '', '100', '100', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '&lt;h4 id=&quot;一使用字符组代替分支条件&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;一、使用字符组代替分支条件&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg. 使用[a-d]表示a~d之间的字母，而不是使用(a|b|c|d)&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;language-php hljs  has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-function&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;function&lt;/span&gt; &lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;regTest&lt;/span&gt;&lt;span class=&quot;hljs-params&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;)&lt;/span&gt;{&lt;/span&gt;\r\n &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;=microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;); &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;preg_match(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;);\r\n &amp;nbsp; &amp;nbsp;} &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;echo&lt;/span&gt; &lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;waste time(s): &amp;#39;&lt;/span&gt;,number_format(microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;)-&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;, &lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;10&lt;/span&gt;),&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;lt;br&amp;gt;&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;15&lt;/span&gt;;&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//最好设大数，eg.1000&lt;/span&gt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;#39;&lt;/span&gt;;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){ &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;.=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;abababcdefg&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案1：分支条件&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^(a|b|c|d|e|f|g)+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案2：字符组&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[a-g]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案3：同方案2&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[abcdefg]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;2&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;3&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;4&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;5&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;6&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;7&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;8&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;9&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;10&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;11&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;12&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;13&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;14&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;15&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;16&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;17&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;18&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&lt;img src=&quot;https://img-blog.csdn.net/2018061015063952?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3h4X3h4eHh4eHh4eHgxMTIw/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70&quot; alt=&quot;这里写图片描述&quot; title=&quot;&quot; style=&quot;outline: 0px; margin: 24px 0px; max-width: 100%; word-break: break-all; cursor: zoom-in;&quot;/&gt;&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;可以看出使用字符组比使用分支条件速度快很多。这是由于在匹配单个字符的时候，引擎会把[abc]这样的字符组视为一个元素，而不是3个元素（a、b、c）。整个元素作为匹配迭代的一个单元，不需要进行三次迭代，从而提高匹配效率。&lt;/p&gt;&lt;h4 id=&quot;二优化选择最左端的匹配结果&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;二、优化选择最左端的匹配结果&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;对于传统NFA引擎来说，因为引擎一旦找到匹配结果就会停下来，而不会去尝试正则表达式的每一种可能（PHP中的preg函数就属于传统型NFA引擎）。&lt;/p&gt;&lt;h4 id=&quot;三标准量词是匹配优先的&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;三、标准量词是匹配优先的&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;若用量词约束某个表达式，那么在匹配成功前，进行的尝试次数有下限和上限。eg.&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;preg_match(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;/w*(d+)/&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;copy2003y&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$match&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这条正则表达式匹配的$1结果应该是3。解释如下：当正则引擎用“w*(d+)”匹配字符串copy2003y时，会先用“w*”匹配字符串copy2003y。而“w*”会匹配字符串copy2003y的所有字符，然后再交给“d+”匹配剩下的字符串，而剩下的没有了。这时，“w*”规则会不情愿地吐出一个字符，给“d+”匹配。同时，在吐出字符之前，记录一个点，这个点就是用于回溯的点。然后“d+”匹配y，发现不能匹配成功，此时会要求“w*”再吐出一个字符；“w*”先记录一个回溯的点，再吐出一个字符。这时，“w*”匹配结果只有copy200，已经吐出3y。“d+”再去匹配3，发现匹配成功，会通知引擎，并且直接显示出来。所以，“(d+)”的结果是3，而不是2003。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;如果改为非贪婪模式呢？“w*?(d+)”匹配的结果就应该是2003。由于“w*?”是非贪婪，正则引擎会用表达式“w*?”每次仅匹配一个字符串，然后再将控制权交给后面的“(d+)”匹配下一个字符，同时记录一个点，用于匹配不成功时，返回这里再次匹配。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;尽量以组为单位进行匹配，使用固话分组就能避免无休止的匹配。&lt;/p&gt;&lt;h4 id=&quot;四谨慎用点号元字符尽可能不用星号和加号这样的任意量词&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;四、谨慎用点号元字符，尽可能不用星号和加号这样的任意量词&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;只要能确定范围（eg.“w”），就不要用点号；只要能够预测重复次数，就不要用量词。假设一条微博消息的XML正文部分结构如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs r has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&amp;lt;span class=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;...&lt;/span&gt;&amp;lt;/span&amp;gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;正文中无尖括号，写法如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs handlebars has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;xml&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;[^&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;]{1,200}&lt;/span&gt;&amp;lt;/&lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;或者：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs xml has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;.*&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;/&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;上述第一种代码的思路要好于第二种，原因如下：&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、使用“[^&amp;lt;]”，保证了文本的范围不会超过下一个小于号所在位置&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、明确长度范围{1,200}，依据是一条微博消息大致的字符长度范围是固定的，现在微博字数长度限制是140个字。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;同时，能使用懒惰匹配就坚决不用贪婪匹配。&lt;/p&gt;&lt;h4 id=&quot;五尽量使用字符串函数处理代替&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;五、尽量使用字符串函数处理代替&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;使用字符串函数和正则表达式都可以处理字符串，两者相比，字符串函数处理的效率更高。当然，有些情况几乎是非正则表达式不能胜任的，或者不用正则表达式的成本太高，这些情况不得不用正则表达式。&lt;/p&gt;&lt;h4 id=&quot;六合理使用括号&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;六、合理使用括号&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;每使用一个普通括号()，而不是非捕获型括号(?:)，就会保留一部分内存等着再次访问。&lt;/p&gt;&lt;h4 id=&quot;七起始行描点优化&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;七、起始、行描点优化&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;能确定起止位置，使用^能提高匹配的速度。同理，使用$标记结尾，正则引擎则会从符合条件的长度处开始匹配，略过目标字符串中许多可能的字符。在写正则表达式时，应该将描点独立出来，例如“^(?:abc|123)”比“^123|^abc”效率高，而“^(abc)”比“(^abc)”效率更高。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;这个原则不适用于所有正则引擎。比如在PCRE中，二者效率相当。&lt;/p&gt;&lt;h4 id=&quot;八量词等价转换的效率差异&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;八、量词等价转换的效率差异&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;例如在PHP中，使用“ddd”和“d{3}”，或者“====”和“={4}”，它们之间的效率几乎没有差别。但是使用其他语言可能就会有比较明显的性能差异了。&lt;/p&gt;&lt;h4 id=&quot;九对大而全的表达式进行拆分&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;九、对大而全的表达式进行拆分&lt;/h4&gt;&lt;h4 id=&quot;十使用正则以外的解决方案&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;十、使用正则以外的解决方案&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg.&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、 同五；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、在某项目需要分析PHP代码，分离出对应的函数调用（以及源代码对应的位置）。虽然这些正则表达式也可以实现，但无论从效率还是代码复杂度方面考虑，这都不是最有方法。PHP已经内置解析器的接口PHP Tokenizer。使用PHP Tokenizer能简单、高效、准确地分析出PHP源代码的组成；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;3、在解析URL时没必要使用正则表达式，使用parse_url函数即可；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;4、在获取HTTP头时，也可以使用get_headers函数；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;5、在进行输入校验时，可以使用filter_var函数，如：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;filter_var(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$email&lt;/span&gt;,FILTER_VALIDATE_EMAIL);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;6、如果在JavaScript里，可以使用DOM代替一些正则匹配。&lt;/p&gt;', '1', '微信测试', '0', null, null, null, '10', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('9', null, '0', '1,', '新增微信测试', null, null, '4', null, 'https://www.baidu.com/', '', '100', '100', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '&lt;h4 id=&quot;一使用字符组代替分支条件&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;一、使用字符组代替分支条件&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg. 使用[a-d]表示a~d之间的字母，而不是使用(a|b|c|d)&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;language-php hljs  has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-function&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;function&lt;/span&gt; &lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;regTest&lt;/span&gt;&lt;span class=&quot;hljs-params&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;)&lt;/span&gt;{&lt;/span&gt;\r\n &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;=microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;); &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;preg_match(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;);\r\n &amp;nbsp; &amp;nbsp;} &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;echo&lt;/span&gt; &lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;waste time(s): &amp;#39;&lt;/span&gt;,number_format(microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;)-&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;, &lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;10&lt;/span&gt;),&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;lt;br&amp;gt;&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;15&lt;/span&gt;;&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//最好设大数，eg.1000&lt;/span&gt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;#39;&lt;/span&gt;;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){ &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;.=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;abababcdefg&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案1：分支条件&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^(a|b|c|d|e|f|g)+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案2：字符组&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[a-g]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案3：同方案2&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[abcdefg]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;2&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;3&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;4&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;5&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;6&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;7&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;8&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;9&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;10&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;11&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;12&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;13&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;14&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;15&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;16&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;17&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;18&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&lt;img src=&quot;https://img-blog.csdn.net/2018061015063952?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3h4X3h4eHh4eHh4eHgxMTIw/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70&quot; alt=&quot;这里写图片描述&quot; title=&quot;&quot; style=&quot;outline: 0px; margin: 24px 0px; max-width: 100%; word-break: break-all; cursor: zoom-in;&quot;/&gt;&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;可以看出使用字符组比使用分支条件速度快很多。这是由于在匹配单个字符的时候，引擎会把[abc]这样的字符组视为一个元素，而不是3个元素（a、b、c）。整个元素作为匹配迭代的一个单元，不需要进行三次迭代，从而提高匹配效率。&lt;/p&gt;&lt;h4 id=&quot;二优化选择最左端的匹配结果&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;二、优化选择最左端的匹配结果&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;对于传统NFA引擎来说，因为引擎一旦找到匹配结果就会停下来，而不会去尝试正则表达式的每一种可能（PHP中的preg函数就属于传统型NFA引擎）。&lt;/p&gt;&lt;h4 id=&quot;三标准量词是匹配优先的&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;三、标准量词是匹配优先的&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;若用量词约束某个表达式，那么在匹配成功前，进行的尝试次数有下限和上限。eg.&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;preg_match(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;/w*(d+)/&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;copy2003y&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$match&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这条正则表达式匹配的$1结果应该是3。解释如下：当正则引擎用“w*(d+)”匹配字符串copy2003y时，会先用“w*”匹配字符串copy2003y。而“w*”会匹配字符串copy2003y的所有字符，然后再交给“d+”匹配剩下的字符串，而剩下的没有了。这时，“w*”规则会不情愿地吐出一个字符，给“d+”匹配。同时，在吐出字符之前，记录一个点，这个点就是用于回溯的点。然后“d+”匹配y，发现不能匹配成功，此时会要求“w*”再吐出一个字符；“w*”先记录一个回溯的点，再吐出一个字符。这时，“w*”匹配结果只有copy200，已经吐出3y。“d+”再去匹配3，发现匹配成功，会通知引擎，并且直接显示出来。所以，“(d+)”的结果是3，而不是2003。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;如果改为非贪婪模式呢？“w*?(d+)”匹配的结果就应该是2003。由于“w*?”是非贪婪，正则引擎会用表达式“w*?”每次仅匹配一个字符串，然后再将控制权交给后面的“(d+)”匹配下一个字符，同时记录一个点，用于匹配不成功时，返回这里再次匹配。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;尽量以组为单位进行匹配，使用固话分组就能避免无休止的匹配。&lt;/p&gt;&lt;h4 id=&quot;四谨慎用点号元字符尽可能不用星号和加号这样的任意量词&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;四、谨慎用点号元字符，尽可能不用星号和加号这样的任意量词&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;只要能确定范围（eg.“w”），就不要用点号；只要能够预测重复次数，就不要用量词。假设一条微博消息的XML正文部分结构如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs r has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&amp;lt;span class=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;...&lt;/span&gt;&amp;lt;/span&amp;gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;正文中无尖括号，写法如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs handlebars has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;xml&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;[^&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;]{1,200}&lt;/span&gt;&amp;lt;/&lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;或者：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs xml has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;.*&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;/&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;上述第一种代码的思路要好于第二种，原因如下：&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、使用“[^&amp;lt;]”，保证了文本的范围不会超过下一个小于号所在位置&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、明确长度范围{1,200}，依据是一条微博消息大致的字符长度范围是固定的，现在微博字数长度限制是140个字。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;同时，能使用懒惰匹配就坚决不用贪婪匹配。&lt;/p&gt;&lt;h4 id=&quot;五尽量使用字符串函数处理代替&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;五、尽量使用字符串函数处理代替&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;使用字符串函数和正则表达式都可以处理字符串，两者相比，字符串函数处理的效率更高。当然，有些情况几乎是非正则表达式不能胜任的，或者不用正则表达式的成本太高，这些情况不得不用正则表达式。&lt;/p&gt;&lt;h4 id=&quot;六合理使用括号&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;六、合理使用括号&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;每使用一个普通括号()，而不是非捕获型括号(?:)，就会保留一部分内存等着再次访问。&lt;/p&gt;&lt;h4 id=&quot;七起始行描点优化&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;七、起始、行描点优化&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;能确定起止位置，使用^能提高匹配的速度。同理，使用$标记结尾，正则引擎则会从符合条件的长度处开始匹配，略过目标字符串中许多可能的字符。在写正则表达式时，应该将描点独立出来，例如“^(?:abc|123)”比“^123|^abc”效率高，而“^(abc)”比“(^abc)”效率更高。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;这个原则不适用于所有正则引擎。比如在PCRE中，二者效率相当。&lt;/p&gt;&lt;h4 id=&quot;八量词等价转换的效率差异&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;八、量词等价转换的效率差异&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;例如在PHP中，使用“ddd”和“d{3}”，或者“====”和“={4}”，它们之间的效率几乎没有差别。但是使用其他语言可能就会有比较明显的性能差异了。&lt;/p&gt;&lt;h4 id=&quot;九对大而全的表达式进行拆分&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;九、对大而全的表达式进行拆分&lt;/h4&gt;&lt;h4 id=&quot;十使用正则以外的解决方案&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;十、使用正则以外的解决方案&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg.&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、 同五；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、在某项目需要分析PHP代码，分离出对应的函数调用（以及源代码对应的位置）。虽然这些正则表达式也可以实现，但无论从效率还是代码复杂度方面考虑，这都不是最有方法。PHP已经内置解析器的接口PHP Tokenizer。使用PHP Tokenizer能简单、高效、准确地分析出PHP源代码的组成；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;3、在解析URL时没必要使用正则表达式，使用parse_url函数即可；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;4、在获取HTTP头时，也可以使用get_headers函数；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;5、在进行输入校验时，可以使用filter_var函数，如：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;filter_var(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$email&lt;/span&gt;,FILTER_VALIDATE_EMAIL);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;6、如果在JavaScript里，可以使用DOM代替一些正则匹配。&lt;/p&gt;', '1', '微信测试', '0', null, null, null, '10', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('10', null, '5', '1,', '新增的测试商品', null, null, '4', null, 'https://www.baidu.com/', '', '100', '100', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '&lt;h4 id=&quot;一使用字符组代替分支条件&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;一、使用字符组代替分支条件&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg. 使用[a-d]表示a~d之间的字母，而不是使用(a|b|c|d)&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;language-php hljs  has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-function&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;function&lt;/span&gt; &lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;regTest&lt;/span&gt;&lt;span class=&quot;hljs-params&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;)&lt;/span&gt;{&lt;/span&gt;\r\n &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;=microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;); &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;preg_match(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$pattern&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;);\r\n &amp;nbsp; &amp;nbsp;} &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;echo&lt;/span&gt; &lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;waste time(s): &amp;#39;&lt;/span&gt;,number_format(microtime(&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;true&lt;/span&gt;)-&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$start&lt;/span&gt;, &lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;10&lt;/span&gt;),&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;lt;br&amp;gt;&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;15&lt;/span&gt;;&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//最好设大数，eg.1000&lt;/span&gt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;&amp;#39;&lt;/span&gt;;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;for&lt;/span&gt; (&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;=&lt;span class=&quot;hljs-number&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;0&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;&amp;lt;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$i&lt;/span&gt;++){ &amp;nbsp; &amp;nbsp;&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;.=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;abababcdefg&amp;#39;&lt;/span&gt;;\r\n}&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案1：分支条件&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^(a|b|c|d|e|f|g)+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案2：字符组&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[a-g]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;span class=&quot;hljs-comment&quot; style=&quot;outline: 0px; color: rgb(136, 0, 0); word-break: break-all;&quot;&gt;//方案3：同方案2&lt;/span&gt;regTest(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;/^[abcdefg]+$/&amp;quot;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$str&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;$cnt&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;2&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;3&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;4&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;5&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;6&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;7&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;8&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;9&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;10&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;11&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;12&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;13&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;14&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;15&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;16&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;17&lt;/li&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;18&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&lt;img src=&quot;https://img-blog.csdn.net/2018061015063952?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3h4X3h4eHh4eHh4eHgxMTIw/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70&quot; alt=&quot;这里写图片描述&quot; title=&quot;&quot; style=&quot;outline: 0px; margin: 24px 0px; max-width: 100%; word-break: break-all; cursor: zoom-in;&quot;/&gt;&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;可以看出使用字符组比使用分支条件速度快很多。这是由于在匹配单个字符的时候，引擎会把[abc]这样的字符组视为一个元素，而不是3个元素（a、b、c）。整个元素作为匹配迭代的一个单元，不需要进行三次迭代，从而提高匹配效率。&lt;/p&gt;&lt;h4 id=&quot;二优化选择最左端的匹配结果&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;二、优化选择最左端的匹配结果&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;对于传统NFA引擎来说，因为引擎一旦找到匹配结果就会停下来，而不会去尝试正则表达式的每一种可能（PHP中的preg函数就属于传统型NFA引擎）。&lt;/p&gt;&lt;h4 id=&quot;三标准量词是匹配优先的&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;三、标准量词是匹配优先的&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;若用量词约束某个表达式，那么在匹配成功前，进行的尝试次数有下限和上限。eg.&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;preg_match(&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;/w*(d+)/&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;#39;copy2003y&amp;#39;&lt;/span&gt;,&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$match&lt;/span&gt;);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这条正则表达式匹配的$1结果应该是3。解释如下：当正则引擎用“w*(d+)”匹配字符串copy2003y时，会先用“w*”匹配字符串copy2003y。而“w*”会匹配字符串copy2003y的所有字符，然后再交给“d+”匹配剩下的字符串，而剩下的没有了。这时，“w*”规则会不情愿地吐出一个字符，给“d+”匹配。同时，在吐出字符之前，记录一个点，这个点就是用于回溯的点。然后“d+”匹配y，发现不能匹配成功，此时会要求“w*”再吐出一个字符；“w*”先记录一个回溯的点，再吐出一个字符。这时，“w*”匹配结果只有copy200，已经吐出3y。“d+”再去匹配3，发现匹配成功，会通知引擎，并且直接显示出来。所以，“(d+)”的结果是3，而不是2003。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;如果改为非贪婪模式呢？“w*?(d+)”匹配的结果就应该是2003。由于“w*?”是非贪婪，正则引擎会用表达式“w*?”每次仅匹配一个字符串，然后再将控制权交给后面的“(d+)”匹配下一个字符，同时记录一个点，用于匹配不成功时，返回这里再次匹配。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;尽量以组为单位进行匹配，使用固话分组就能避免无休止的匹配。&lt;/p&gt;&lt;h4 id=&quot;四谨慎用点号元字符尽可能不用星号和加号这样的任意量词&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;四、谨慎用点号元字符，尽可能不用星号和加号这样的任意量词&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;只要能确定范围（eg.“w”），就不要用点号；只要能够预测重复次数，就不要用量词。假设一条微博消息的XML正文部分结构如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs r has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&amp;lt;span class=&lt;span class=&quot;hljs-string&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;span class=&quot;hljs-keyword&quot; style=&quot;outline: 0px; color: rgb(0, 0, 136); word-break: break-all;&quot;&gt;...&lt;/span&gt;&amp;lt;/span&amp;gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;正文中无尖括号，写法如下：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs handlebars has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;xml&quot; style=&quot;outline: 0px; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;[^&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;]{1,200}&lt;/span&gt;&amp;lt;/&lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;或者：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs xml has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(79, 79, 79);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;outline: 0px; word-break: break-all; color: rgb(0, 153, 0);&quot;&gt;&amp;quot;msg&amp;quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;.*&lt;span class=&quot;hljs-tag&quot; style=&quot;outline: 0px; color: rgb(0, 102, 102); word-break: break-all;&quot;&gt;&amp;lt;/&lt;span class=&quot;hljs-title&quot; style=&quot;outline: 0px; color: rgb(79, 79, 79); word-break: break-all;&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;上述第一种代码的思路要好于第二种，原因如下：&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、使用“[^&amp;lt;]”，保证了文本的范围不会超过下一个小于号所在位置&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、明确长度范围{1,200}，依据是一条微博消息大致的字符长度范围是固定的，现在微博字数长度限制是140个字。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;同时，能使用懒惰匹配就坚决不用贪婪匹配。&lt;/p&gt;&lt;h4 id=&quot;五尽量使用字符串函数处理代替&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;五、尽量使用字符串函数处理代替&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;使用字符串函数和正则表达式都可以处理字符串，两者相比，字符串函数处理的效率更高。当然，有些情况几乎是非正则表达式不能胜任的，或者不用正则表达式的成本太高，这些情况不得不用正则表达式。&lt;/p&gt;&lt;h4 id=&quot;六合理使用括号&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;六、合理使用括号&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;每使用一个普通括号()，而不是非捕获型括号(?:)，就会保留一部分内存等着再次访问。&lt;/p&gt;&lt;h4 id=&quot;七起始行描点优化&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;七、起始、行描点优化&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;能确定起止位置，使用^能提高匹配的速度。同理，使用$标记结尾，正则引擎则会从符合条件的长度处开始匹配，略过目标字符串中许多可能的字符。在写正则表达式时，应该将描点独立出来，例如“^(?:abc|123)”比“^123|^abc”效率高，而“^(abc)”比“(^abc)”效率更高。&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;这个原则不适用于所有正则引擎。比如在PCRE中，二者效率相当。&lt;/p&gt;&lt;h4 id=&quot;八量词等价转换的效率差异&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;八、量词等价转换的效率差异&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;例如在PHP中，使用“ddd”和“d{3}”，或者“====”和“={4}”，它们之间的效率几乎没有差别。但是使用其他语言可能就会有比较明显的性能差异了。&lt;/p&gt;&lt;h4 id=&quot;九对大而全的表达式进行拆分&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;九、对大而全的表达式进行拆分&lt;/h4&gt;&lt;h4 id=&quot;十使用正则以外的解决方案&quot; style=&quot;outline: 0px; padding: 0px; margin: 8px 0px 16px; font-size: 20px; color: rgb(79, 79, 79); font-weight: 700; line-height: 28px; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;十、使用正则以外的解决方案&lt;/h4&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;eg.&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;1、 同五；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;2、在某项目需要分析PHP代码，分离出对应的函数调用（以及源代码对应的位置）。虽然这些正则表达式也可以实现，但无论从效率还是代码复杂度方面考虑，这都不是最有方法。PHP已经内置解析器的接口PHP Tokenizer。使用PHP Tokenizer能简单、高效、准确地分析出PHP源代码的组成；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;3、在解析URL时没必要使用正则表达式，使用parse_url函数即可；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;4、在获取HTTP头时，也可以使用get_headers函数；&amp;nbsp;&lt;br style=&quot;outline: 0px; word-break: break-all;&quot;/&gt;5、在进行输入校验时，可以使用filter_var函数，如：&lt;/p&gt;&lt;pre class=&quot;prettyprint&quot; name=&quot;code&quot; style=&quot;outline: 0px; padding: 8px 16px 4px 56px; margin-bottom: 24px; position: relative; overflow-y: hidden; font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; color: rgb(0, 0, 0); background-color: rgb(246, 248, 250); border-width: initial; border-style: none; border-color: initial;&quot;&gt;&lt;code class=&quot;hljs bash has-numbering&quot; style=&quot;outline: 0px; display: block; color: rgb(0, 0, 0); font-family: Consolas, Inconsolata, Courier, monospace; font-size: 14px; line-height: 22px; background-color: rgb(246, 248, 250); border-radius: 4px; overflow-x: auto; white-space: pre; word-wrap: normal; word-break: break-all;&quot;&gt;filter_var(&lt;span class=&quot;hljs-variable&quot; style=&quot;outline: 0px; color: rgb(0, 153, 0); word-break: break-all;&quot;&gt;$email&lt;/span&gt;,FILTER_VALIDATE_EMAIL);&lt;/code&gt;&lt;ul class=&quot;pre-numbering&quot; style=&quot;outline: 0px; padding: 8px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; word-break: break-all; position: absolute; width: 48px; background-color: rgb(238, 240, 244); top: 0px; left: 0px; text-align: right;&quot;&gt;&lt;li style=&quot;outline: 0px; padding: 0px 8px; margin: 0px; list-style: none; word-break: break-all; color: rgb(153, 153, 153);&quot;&gt;1&lt;/li&gt;&lt;/ul&gt;&lt;/pre&gt;&lt;p style=&quot;outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: -apple-system, &amp;quot;SF UI Text&amp;quot;, Arial, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, sans-serif, SimHei, SimSun; white-space: normal;&quot;&gt;6、如果在JavaScript里，可以使用DOM代替一些正则匹配。&lt;/p&gt;', '1', '微信测试', '0', null, null, null, '10', '0', '0');
INSERT INTO `joel_shop_goods` VALUES ('11', null, '0', '1,', '公众号文章测试', null, null, '2', null, 'https://mp.weixin.qq.com/s/el9qusuNtBUHszq6IsXRtA', '这里是简介，简介，简介。总之，这个课程很值得一听，很值得分享，还有钱哦！', '100', '100', null, '0', '0', '0', '0', '0', '0', null, '0', null, null, null, null, null, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, Arial, sans-serif; font-size: medium; white-space: normal;&quot;&gt;这是个测试文章&lt;/span&gt;&lt;/p&gt;', '1', '文章测试', '0', null, null, null, '10', '0', '0');

-- ----------------------------
-- Table structure for joel_shop_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_goods_sku`;
CREATE TABLE `joel_shop_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `skuattr` varchar(255) DEFAULT NULL,
  `price` float DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `hdprice` float DEFAULT '0',
  `hdnum` int(11) DEFAULT '0',
  `sells` int(11) DEFAULT '0',
  `heavy` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_goods_sku
-- ----------------------------
INSERT INTO `joel_shop_goods_sku` VALUES ('1', '64', '64-11', '2kg*2袋', '342', '1000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('2', '64', '64-22', '2.5kg*2盒', '342', '1000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('3', '42', '42-56', '750g*4瓶', '165', '1000', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('4', '70', '70-67', '4*24', '96', '987', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('5', '70', '70-68', '4*24瓶', '96', '987', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('6', '70', '70-811', '420ml*24瓶', '96', '987', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('7', '64', '64-912', '2.5kg*2罐', '342', '1000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('8', '94', '94-1013', '500g×6袋', '78', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('9', '95', '95-1114', '230ml×2瓶', '163', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('10', '93', '93-1215', '750g×2桶', '70', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('11', '64', '64-1316', '2.5kg*2桶', '342', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('12', '5', '5-1417', '1盒*8小盒', '225', '7', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('13', '5', '5-1520', '1盒*8小盒*160g', '225', '7', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('14', '30', '30-1621', '1KG×5袋', '105', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('15', '18', '18-1722', '50ml*5瓶', '45', '15', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('16', '18', '18-1722-1823', '50ml*5瓶,单瓶装50ml', '45', '15', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('17', '31', '31-1924', '荞麦*1KG\n燕麦*1KG\n高粱米*1KG\n玉米渣*1KG\n小麦*1KG', '112.5', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('18', '19', '19-1722', '50ml*5瓶', '45', '15', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('19', '51', '51-2025', '1公斤×5块', '180', '2', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('20', '54', '54-2126', '1KG*5小盒', '235.5', '0', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('21', '56', '56-2227', '2.5KG*2小盒', '282', '1', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('22', '54', '54-2129', '1kg*5小盒', '235.5', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('23', '56', '56-2531', '2.5kg*2小盒', '282', '1', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('24', '33', '33-2531', '2.5kg*2小盒', '165', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('25', '84', '84-2632', '3g*20包', '27', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('26', '28', '28-2733', '380ml*20瓶', '40', '45', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('27', '29', '29-2834', '1.5L*2桶', '132', '59', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('28', '35', '35-2935', '2.5KG*2桶', '82.5', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('29', '37', '37-3036', '1箱*8瓶', '90', '0', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('30', '69', '69-3137', '1*8瓶', '205', '18', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('31', '5', '5-1520-2632', '1盒*8小盒*160g,3g*20包', '225', '7', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('32', '4', '4-3238', 'test1', '90', '100', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('33', '4', '4-3239', 'test2', '900', '10', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('34', '19', '19-3340', '50ml*5瓶', '45', '15', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('35', '19', '19-3341', '单瓶装50ml', '8', '5', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('36', '19', '19-3442', '50ml*5瓶', '45', '15', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('37', '19', '19-3443', '单瓶装50ml', '8', '20', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('38', '98', '98-3544', '单瓶装50ml', '8', '5', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('39', '77', '77-1215', '750g×2桶', '63', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('40', '66', '66-1215', '750g×2桶', '99', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('41', '71', '71-2025', '1公斤×5块', '150', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('42', '37', '37-3645', '1箱*8瓶*240g', '90', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('43', '4', '4-3746', '1盒*5小盒*1kg', '90', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('44', '10', '10-3847', '120g*10袋', '45', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('45', '14', '14-1215', '750g×2桶', '64.5', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('46', '57', '57-1621', '1KG×5袋', '67.5', '1', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('47', '58', '58-3948', '1.25kg*8小盒', '223.5', '1', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('48', '61', '61-4049', '1L*8桶', '146', '1', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('49', '62', '62-4150', '500g*3包', '75', '0', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('50', '253', '253-4251', '辣椒段 50g/袋', '3.5', '93', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('51', '253', '253-4252', '辣椒丝 50g/袋', '3.5', '90', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('52', '253', '253-4253', '树椒 50g/袋', '3.5', '90', '0', '0', '0', null, '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('53', '327', '327-4657', '一级会员', '160', '10000', '0', '0', '0', '0', '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('54', '327', '327-4658', '二级会员', '260', '10000', '0', '0', '0', '0', '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('55', '327', '327-4659', '三级会员', '360', '10000', '0', '0', '0', '0', '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('56', '327', '327-4657-4760', '一级会员,168', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('57', '327', '327-4657-4761', '一级会员,268', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('58', '327', '327-4657-4762', '一级会员,368', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('59', '327', '327-4658-4760', '二级会员,168', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('60', '327', '327-4658-4761', '二级会员,268', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('61', '327', '327-4658-4762', '二级会员,368', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('62', '327', '327-4659-4760', '三级会员,168', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('63', '327', '327-4659-4761', '三级会员,268', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('64', '327', '327-4659-4762', '三级会员,368', '0', '30000', '0', '0', '0', null, '0');
INSERT INTO `joel_shop_goods_sku` VALUES ('65', '5', '5-4863', '一级', '100', '100', '0', '0', '0', '0', '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('66', '5', '5-4864', '二级', '200', '100', '0', '0', '0', '0', '1');
INSERT INTO `joel_shop_goods_sku` VALUES ('67', '5', '5-4865', '三级', '300', '99', '0', '0', '1', '0', '1');

-- ----------------------------
-- Table structure for joel_shop_group
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_group`;
CREATE TABLE `joel_shop_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `indextj` varchar(255) DEFAULT NULL,
  `sorts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_group
-- ----------------------------

-- ----------------------------
-- Table structure for joel_shop_label
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_label`;
CREATE TABLE `joel_shop_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lpic` int(11) DEFAULT NULL,
  `pic` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_label
-- ----------------------------
INSERT INTO `joel_shop_label` VALUES ('1', '大白课堂', '859', '1172', '#', '');

-- ----------------------------
-- Table structure for joel_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_order`;
CREATE TABLE `joel_shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0',
  `oid` varchar(255) DEFAULT NULL,
  `djqid` int(11) DEFAULT '0',
  `ptgid` int(11) DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  `totalnum` int(11) DEFAULT NULL,
  `payprice` float DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `payscore` int(11) DEFAULT '0',
  `paytime` int(11) DEFAULT NULL,
  `aliaccount` varchar(255) DEFAULT NULL,
  `yf` int(11) DEFAULT '0',
  `ispay` tinyint(1) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `vipopenid` varchar(255) DEFAULT NULL,
  `vipname` varchar(255) DEFAULT NULL,
  `vipmobile` varchar(255) DEFAULT NULL,
  `vipaddress` varchar(255) DEFAULT NULL,
  `vipxqname` varchar(255) DEFAULT NULL,
  `vipxqid` int(11) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `kfmsg` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `ntime` int(11) DEFAULT NULL,
  `dtime` int(11) DEFAULT NULL,
  `etime` int(11) DEFAULT NULL,
  `changetime` int(11) DEFAULT NULL,
  `changemsg` varchar(255) DEFAULT NULL,
  `changeadmin` varchar(255) DEFAULT NULL,
  `closetime` int(11) DEFAULT NULL,
  `closemsg` varchar(255) DEFAULT NULL,
  `closeadmin` varchar(255) DEFAULT NULL,
  `tuihuoprice` float DEFAULT NULL,
  `tuihuosqtime` int(11) DEFAULT '0' COMMENT '退货申请时间',
  `tuihuotime` int(11) DEFAULT NULL,
  `tuihuokd` varchar(255) DEFAULT NULL,
  `tuihuokdnum` varchar(255) DEFAULT NULL,
  `tuihuomsg` varchar(255) DEFAULT NULL,
  `tuihuoadmin` varchar(255) DEFAULT NULL,
  `nothtt` varchar(255) DEFAULT NULL,
  `nothct` varchar(255) DEFAULT NULL,
  `nothtime` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fahuokd` varchar(255) DEFAULT NULL,
  `fahuokdnum` varchar(255) DEFAULT NULL,
  `iscut` tinyint(1) DEFAULT '0' COMMENT '0:未开启,1:进行中,2:已结束',
  `cutlow` float DEFAULT '0',
  `cuttop` float DEFAULT '0',
  `cutmax` float DEFAULT '0',
  `cuttotal` float DEFAULT '0',
  `cutmsg` varchar(255) DEFAULT NULL,
  `items` longtext,
  `wxaccount` varchar(255) DEFAULT NULL,
  `wxorder` varchar(255) DEFAULT NULL,
  `wxcode` varchar(255) DEFAULT NULL,
  `wxcodetime` int(11) DEFAULT NULL,
  `heavy` float DEFAULT NULL,
  `provids` int(11) DEFAULT NULL,
  `isgroup` tinyint(1) DEFAULT NULL,
  `ptgmsg` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for joel_shop_order_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_order_log`;
CREATE TABLE `joel_shop_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0',
  `oid` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '-1-异常状态,0-消取订单,1-新增订单,2-支付成功,3-发货订单,4-申请退货,5-交易完成,6-交易关闭',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_shop_order_syslog
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_order_syslog`;
CREATE TABLE `joel_shop_order_syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '-1-取消订单,0-记事状态,1-新增订单,2-支付成功,3-发货订单,4-申请退货,5-交易完成,6-交易关闭',
  `paytype` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_order_syslog
-- ----------------------------

-- ----------------------------
-- Table structure for joel_shop_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_set`;
CREATE TABLE `joel_shop_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `indexalbum` varchar(255) DEFAULT NULL,
  `indexgroup` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `isyf` tinyint(1) DEFAULT '0',
  `yf` int(11) DEFAULT '0',
  `yftop` int(11) DEFAULT '0' COMMENT '多少包邮',
  `thtime` int(11) DEFAULT '7' COMMENT '退货时间',
  `fx1rate` int(11) DEFAULT '0',
  `fx2rate` int(11) DEFAULT '0',
  `fx3rate` int(11) DEFAULT '0',
  `vipfx1rate` int(11) DEFAULT '0',
  `vipfx2rate` int(11) DEFAULT '0',
  `vipfx3rate` int(11) DEFAULT '0',
  `vipfxneed` int(11) DEFAULT '0' COMMENT '成为会员分销金额',
  `jysname` varchar(255) DEFAULT NULL,
  `jysmsg` text,
  `content` longtext,
  `pagesize` int(11) DEFAULT NULL,
  `jfdk` int(11) DEFAULT '5',
  `jfdh` int(11) DEFAULT NULL,
  `ptgname` varchar(255) DEFAULT NULL,
  `ptgmsg` text,
  `ischeckid` smallint(6) DEFAULT NULL,
  `isjys` tinyint(1) DEFAULT NULL,
  `isptg` tinyint(1) DEFAULT NULL,
  `istpl` tinyint(1) DEFAULT NULL,
  `tplid` int(11) DEFAULT NULL,
  `isdfx` smallint(6) DEFAULT '0',
  `goods_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_set
-- ----------------------------
INSERT INTO `joel_shop_set` VALUES ('1', '大白课堂', '1177', '', '', '', '', '021-12345678', '1,2,3', '1,2,3', 'http://dabai.com', '0', '10', '78', '0', '3', '2', '0', '3', '2', '0', '0', '大家快来砍价', '大家快来砍价!!!', null, '4', '40', '10', '一起来拼团', '好东西齐分享，大家一起来拼团！', '0', '1', '1', '1', '1', '1', null);

-- ----------------------------
-- Table structure for joel_shop_skuattr
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_skuattr`;
CREATE TABLE `joel_shop_skuattr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `items` text,
  `itemspath` text,
  `newitem` varchar(255) DEFAULT NULL,
  `cctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_skuattr
-- ----------------------------
INSERT INTO `joel_shop_skuattr` VALUES ('3', '净含量', '500克,600克,', '33,34,', '600克', '1445837094');
INSERT INTO `joel_shop_skuattr` VALUES ('5', '净含量', '750g*4瓶,', '56,', null, '1445870796');
INSERT INTO `joel_shop_skuattr` VALUES ('8', '规格', '420ml*24瓶,', '811,', null, '1445872990');
INSERT INTO `joel_shop_skuattr` VALUES ('10', '规格', '500g×6袋,', '1013,', '', '1445911919');
INSERT INTO `joel_shop_skuattr` VALUES ('11', '规格', '230ml×2瓶,', '1114,', null, '1445914477');
INSERT INTO `joel_shop_skuattr` VALUES ('12', '净含量', '750g×2桶,', '1215,', null, '1445914827');
INSERT INTO `joel_shop_skuattr` VALUES ('13', '净含量', '2.5kg*2桶,', '1316,', null, '1445915017');
INSERT INTO `joel_shop_skuattr` VALUES ('15', '净含量', '1盒*8小盒*160g,', '1520,', null, '1445992246');
INSERT INTO `joel_shop_skuattr` VALUES ('16', '规格', '1KG×5袋,', '1621,', null, '1445996418');
INSERT INTO `joel_shop_skuattr` VALUES ('19', '规格', '荞麦*1KG\r\n燕麦*1KG\r\n高粱米*1KG\r\n玉米渣*1KG\r\n小麦*1KG,', '1924,', null, '1445997547');
INSERT INTO `joel_shop_skuattr` VALUES ('20', '净含量', '1公斤×5块,', '2025,', null, '1445999642');
INSERT INTO `joel_shop_skuattr` VALUES ('23', '规格', '2.5kg*2小袋,', '2328,', null, '1446003359');
INSERT INTO `joel_shop_skuattr` VALUES ('24', '净含量', '1kg*5小盒,', '2430,', null, '1446006582');
INSERT INTO `joel_shop_skuattr` VALUES ('25', '净含量', '2.5kg*2小盒,', '2531,', null, '1446006940');
INSERT INTO `joel_shop_skuattr` VALUES ('26', '规格', '3g*20包,', '2632,', null, '1446013840');
INSERT INTO `joel_shop_skuattr` VALUES ('27', '规格', '380ml*20瓶,', '2733,', null, '1446015636');
INSERT INTO `joel_shop_skuattr` VALUES ('28', '规格', '1.5L*2桶,', '2834,', null, '1446016843');
INSERT INTO `joel_shop_skuattr` VALUES ('29', '规格', '2.5KG*2桶,', '2935,', null, '1446016923');
INSERT INTO `joel_shop_skuattr` VALUES ('30', '规格', '1箱*8瓶,', '3036,', null, '1446024198');
INSERT INTO `joel_shop_skuattr` VALUES ('31', '规格', '1*8瓶,', '3137,', null, '1446028032');
INSERT INTO `joel_shop_skuattr` VALUES ('34', '净含量', '50ml*5瓶,单瓶装50ml,', '3442,3443,', null, '1446103840');
INSERT INTO `joel_shop_skuattr` VALUES ('35', '净含量', '单瓶装50ml,', '3544,', null, '1446105910');
INSERT INTO `joel_shop_skuattr` VALUES ('36', '规格', '1箱*8瓶*240g,', '3645,', null, '1446211460');
INSERT INTO `joel_shop_skuattr` VALUES ('37', '规格', '1盒*5小盒*1kg,', '3746,', null, '1446212532');
INSERT INTO `joel_shop_skuattr` VALUES ('38', '净含量', '120g*10袋,', '3847,', null, '1446212931');
INSERT INTO `joel_shop_skuattr` VALUES ('39', '规格', '1.25kg*8小盒,', '3948,', null, '1446214388');
INSERT INTO `joel_shop_skuattr` VALUES ('40', '规格', '1L*8桶,', '4049,', null, '1446214656');
INSERT INTO `joel_shop_skuattr` VALUES ('41', '净重', '500g*3包,', '4150,', null, '1446214941');
INSERT INTO `joel_shop_skuattr` VALUES ('42', '商品', '辣椒段 50g/袋,辣椒丝 50g/袋,树椒 50g/袋,辣椒段 50g/袋,辣椒丝 50g/袋,树椒 30g/袋,', '4251,4252,4253,4254,4255,4256,', '辣椒段 50g/袋,辣椒丝 50g/袋,树椒 30g/袋', '1449826211');
INSERT INTO `joel_shop_skuattr` VALUES ('46', '会员', '一级会员,二级会员,三级会员,', '4657,4658,4659,', null, '1453778578');
INSERT INTO `joel_shop_skuattr` VALUES ('48', '级别', '一级,二级,三级,', '4863,4864,4865,', null, '1454660308');

-- ----------------------------
-- Table structure for joel_shop_skuattr_item
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_skuattr_item`;
CREATE TABLE `joel_shop_skuattr_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_skuattr_item
-- ----------------------------
INSERT INTO `joel_shop_skuattr_item` VALUES ('57', '46', '4657', '一级会员');
INSERT INTO `joel_shop_skuattr_item` VALUES ('58', '46', '4658', '二级会员');
INSERT INTO `joel_shop_skuattr_item` VALUES ('59', '46', '4659', '三级会员');
INSERT INTO `joel_shop_skuattr_item` VALUES ('60', '47', '4760', '168');
INSERT INTO `joel_shop_skuattr_item` VALUES ('61', '47', '4761', '268');
INSERT INTO `joel_shop_skuattr_item` VALUES ('62', '47', '4762', '368');
INSERT INTO `joel_shop_skuattr_item` VALUES ('63', '48', '4863', '一级');
INSERT INTO `joel_shop_skuattr_item` VALUES ('64', '48', '4864', '二级');
INSERT INTO `joel_shop_skuattr_item` VALUES ('65', '48', '4865', '三级');

-- ----------------------------
-- Table structure for joel_shop_syslog_sells
-- ----------------------------
DROP TABLE IF EXISTS `joel_shop_syslog_sells`;
CREATE TABLE `joel_shop_syslog_sells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `vipopenid` varchar(255) DEFAULT NULL,
  `vipname` varchar(255) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `skuid` int(11) DEFAULT NULL,
  `skuattr` varchar(255) DEFAULT NULL,
  `price` float DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `total` float DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_shop_syslog_sells
-- ----------------------------

-- ----------------------------
-- Table structure for joel_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `joel_sys_config`;
CREATE TABLE `joel_sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_sys_config
-- ----------------------------
INSERT INTO `joel_sys_config` VALUES ('1', 'tel', '0553-12345678', '客服热线', '1447479666', '1');
INSERT INTO `joel_sys_config` VALUES ('2', 'worktime', '周一至周五 8:00-22:00', '工作时间', '1447479692', '1');
INSERT INTO `joel_sys_config` VALUES ('3', 'kefuqq1', '1123456789', '客服QQ1', '1447479781', '1');
INSERT INTO `joel_sys_config` VALUES ('4', 'kefuqq2', '2123456789', '客服QQ2', '1447479796', '1');
INSERT INTO `joel_sys_config` VALUES ('5', 'kefuqq3', '3123456789', '客服QQ3', '1447479818', '1');
INSERT INTO `joel_sys_config` VALUES ('6', 'kefuqq4', '4123456789', '客服QQ4', '1447479841', '1');
INSERT INTO `joel_sys_config` VALUES ('7', 'kefuqq5', '5123456789', '客服QQ5', '1447479860', '1');
INSERT INTO `joel_sys_config` VALUES ('8', 'kefuqq6', '6123456789', '客服QQ6', '1447479877', '1');
INSERT INTO `joel_sys_config` VALUES ('9', 'copyright', ' 皖ICP备0000001号', '备案号', '1448101230', '1');

-- ----------------------------
-- Table structure for joel_s_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_s_set`;
CREATE TABLE `joel_s_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `copyright` text,
  `pagesize` int(11) DEFAULT '20',
  `tx_money` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_s_set
-- ----------------------------
INSERT INTO `joel_s_set` VALUES ('1', '大白课堂', '', '', '20', '20', '1');

-- ----------------------------
-- Table structure for joel_template
-- ----------------------------
DROP TABLE IF EXISTS `joel_template`;
CREATE TABLE `joel_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '模板标题',
  `template_id` varchar(255) DEFAULT NULL COMMENT '模板id',
  `url` varchar(255) DEFAULT NULL COMMENT '详情url',
  `topcolor` varchar(255) DEFAULT NULL COMMENT '背景颜色',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_template
-- ----------------------------
INSERT INTO `joel_template` VALUES ('4', '推荐下线会员通知', 'V2z1ACTmGRI8MOXp1L0gM5J1op8pc-JtzxgRHM6nV0Q', '{url}', '', 'xiaxianuser');
INSERT INTO `joel_template` VALUES ('5', '订单支付成功通知', 'gtVQ19cLOEoS6MNbuZgRKBroQtOjnoCFLOKcbfsDuUI', '{url}', '', 'orderok');
INSERT INTO `joel_template` VALUES ('6', '订单发货通知', 'HnkGt2IcHgzhCY53RJMf9uTGsNUeb5nGnnpNMm8Mgz8', '{url}', '', 'delivery');
INSERT INTO `joel_template` VALUES ('9', '商品支付成功通知上级会员', 'ei52tUDBKFyPTFhOVYqOgR1Fg0V8Hkr0s680nIsll98', '{url}', '', 'collection');
INSERT INTO `joel_template` VALUES ('11', '订单完成通知上级', '8ogCkks6oHApwjjfkBGKIY05dsfzn-5OQKZD71x10WQ', '{url}', '', 'getcommission');

-- ----------------------------
-- Table structure for joel_template_data
-- ----------------------------
DROP TABLE IF EXISTS `joel_template_data`;
CREATE TABLE `joel_template_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_id` int(11) DEFAULT NULL,
  `data_key` varchar(255) DEFAULT NULL,
  `data_value` varchar(255) DEFAULT NULL,
  `data_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_template_data
-- ----------------------------
INSERT INTO `joel_template_data` VALUES ('3', '4', 'first', '恭喜您{username}:  成功推荐一个新的会员', '');
INSERT INTO `joel_template_data` VALUES ('4', '4', 'keyword1', '{name}', '');
INSERT INTO `joel_template_data` VALUES ('5', '4', 'keyword2', '{date}', '');
INSERT INTO `joel_template_data` VALUES ('6', '4', 'remark', '', '');
INSERT INTO `joel_template_data` VALUES ('7', '5', 'first', '尊敬的客户{name}，您的订单已支付成功', '');
INSERT INTO `joel_template_data` VALUES ('8', '5', 'keyword1', '{ordername}', '');
INSERT INTO `joel_template_data` VALUES ('9', '5', 'keyword2', '{orderid}', '');
INSERT INTO `joel_template_data` VALUES ('10', '5', 'keyword3', '{money}元', '');
INSERT INTO `joel_template_data` VALUES ('11', '5', 'keyword4', '{date}', '');
INSERT INTO `joel_template_data` VALUES ('12', '5', 'remark', '感谢您的光临', '#3b3a3a');
INSERT INTO `joel_template_data` VALUES ('13', '6', 'first', '您好{ordername}，您的订单已发货', '');
INSERT INTO `joel_template_data` VALUES ('14', '6', 'keyword1', '{orderid}', '');
INSERT INTO `joel_template_data` VALUES ('15', '6', 'keyword2', '{kdname}', '');
INSERT INTO `joel_template_data` VALUES ('16', '6', 'keyword3', '{kdid}', '');
INSERT INTO `joel_template_data` VALUES ('17', '6', 'remark', '点击查看订单详情。', '');
INSERT INTO `joel_template_data` VALUES ('18', '7', 'first', '恭喜你{name}:你的下线会员成功消费', '#eeeeee');
INSERT INTO `joel_template_data` VALUES ('19', '7', 'productType', '商品名称', '');
INSERT INTO `joel_template_data` VALUES ('20', '7', 'name', '{ordername}', '');
INSERT INTO `joel_template_data` VALUES ('21', '7', 'accountType', '金额', '');
INSERT INTO `joel_template_data` VALUES ('22', '7', 'account', '{money}元', '');
INSERT INTO `joel_template_data` VALUES ('23', '7', 'time', '{date}', '');
INSERT INTO `joel_template_data` VALUES ('24', '7', 'remark', '您将获得{yj}元', '');
INSERT INTO `joel_template_data` VALUES ('25', '8', 'first', '恭喜您{na\'me}', '#eeeeee');
INSERT INTO `joel_template_data` VALUES ('26', '8', 'keyword1', '{ordername}', '');
INSERT INTO `joel_template_data` VALUES ('27', '8', 'keyword2', '{money}元', '');
INSERT INTO `joel_template_data` VALUES ('28', '8', 'remark', '', '');
INSERT INTO `joel_template_data` VALUES ('29', '9', 'first', '恭喜您{name},你的下线{fromname}成功消费', '');
INSERT INTO `joel_template_data` VALUES ('30', '9', 'keyword1', '{ordername}', '');
INSERT INTO `joel_template_data` VALUES ('31', '9', 'keyword2', '{money}元', '');
INSERT INTO `joel_template_data` VALUES ('32', '9', 'remark', '您将获得{yj}元', '');
INSERT INTO `joel_template_data` VALUES ('33', '10', 'first', '恭喜你{name},您的下线订单完成', '');
INSERT INTO `joel_template_data` VALUES ('34', '10', 'keyword1', '{ordername}', '');
INSERT INTO `joel_template_data` VALUES ('35', '10', 'keyword2', '{money}元', '');
INSERT INTO `joel_template_data` VALUES ('36', '10', 'remark', '您已成功获得该下线的佣金{yj}元', '');
INSERT INTO `joel_template_data` VALUES ('37', '11', 'first', '您好{name},你下线{fromname}的一个订单已完成.', '');
INSERT INTO `joel_template_data` VALUES ('38', '11', 'keyword1', '{orderid}', '');
INSERT INTO `joel_template_data` VALUES ('39', '11', 'keyword2', '{fromname}购买了{ordername} , 金额{money}元 , 您已成功获得{yj}元', '');
INSERT INTO `joel_template_data` VALUES ('40', '11', 'remark', '', '');

-- ----------------------------
-- Table structure for joel_upload_img
-- ----------------------------
DROP TABLE IF EXISTS `joel_upload_img`;
CREATE TABLE `joel_upload_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ext` varchar(8) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `savename` varchar(255) DEFAULT NULL,
  `savepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_upload_img
-- ----------------------------
INSERT INTO `joel_upload_img` VALUES ('1', 'header.jpg', 'jpg', 'img', '5b1782307b74b.jpg', 'img/2018-06-06/');
INSERT INTO `joel_upload_img` VALUES ('2', 'yourname.jpg', 'jpg', 'img', '5b17824b2d76a.jpg', 'img/2018-06-06/');
INSERT INTO `joel_upload_img` VALUES ('3', '4.png', 'png', 'img', '5b1def24ab630.png', 'img/2018-06-11/');
INSERT INTO `joel_upload_img` VALUES ('4', '4.png', 'png', 'img', '5b1df0549ebae.png', 'img/2018-06-11/');

-- ----------------------------
-- Table structure for joel_user
-- ----------------------------
DROP TABLE IF EXISTS `joel_user`;
CREATE TABLE `joel_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT '管理员',
  `oath` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT '0',
  `mobile` varchar(255) DEFAULT '0',
  `money` float DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `etime` int(11) DEFAULT '0',
  `cctime` int(11) DEFAULT '0',
  `lastip` varchar(255) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_user
-- ----------------------------
INSERT INTO `joel_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 'sys,wx,fxs,vip,shop,log,adminlog,pwd,active,', '0', '0', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for joel_user_goods
-- ----------------------------
DROP TABLE IF EXISTS `joel_user_goods`;
CREATE TABLE `joel_user_goods` (
  `oid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `xcx_url` varchar(255) DEFAULT NULL,
  `xcx_qrimg` varchar(255) DEFAULT NULL,
  `pv` int(11) unsigned DEFAULT '0',
  `uv` int(11) unsigned DEFAULT '0',
  `h5_url` varchar(255) DEFAULT NULL,
  `h5_qrimg` varchar(255) DEFAULT NULL,
  `tg_qd` varchar(255) DEFAULT NULL,
  `tg_time` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态：1为正常，0为关闭',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_user_goods
-- ----------------------------
INSERT INTO `joel_user_goods` VALUES ('8', '1', '2', '', null, '0', '0', 'http://www.v1.com/Wp/Wp/index/goodsid/1/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180605101709.png', 'aaa', '1530288000', '1528276943', '1');
INSERT INTO `joel_user_goods` VALUES ('18', '11', '1', '', null, '0', '0', 'localhost:81/Wp/Wp/index/goodsid/11/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180614024225.png', '微信', '1530288000', '1528958545', '1');
INSERT INTO `joel_user_goods` VALUES ('16', '10', '1', '', '', '0', '0', 'localhost:81/Wp/Wp/index/goodsid/10/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180613045854.png', '新增测试', '1530288000', '1528880334', '1');
INSERT INTO `joel_user_goods` VALUES ('17', '8', '1', '', null, '0', '0', 'localhost:81/Wp/Wp/index/goodsid/8/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180614095208.png', '14日添加', '1532966400', '1528941128', '1');
INSERT INTO `joel_user_goods` VALUES ('19', '10', '7', '', null, '0', '0', 'localhost:81/Wp/Wp/index/goodsid/10/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180615094339.png', '微信', '1530288000', '1529027019', '1');

-- ----------------------------
-- Table structure for joel_user_oath
-- ----------------------------
DROP TABLE IF EXISTS `joel_user_oath`;
CREATE TABLE `joel_user_oath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_user_oath
-- ----------------------------
INSERT INTO `joel_user_oath` VALUES ('1', 'sys', '系统设置权限', '管理员控制器');
INSERT INTO `joel_user_oath` VALUES ('2', 'wx', '微信权限', '微信控制器');
INSERT INTO `joel_user_oath` VALUES ('3', 'fxs', '分销商权限', '分销商控制器');
INSERT INTO `joel_user_oath` VALUES ('4', 'vip', '会员权限', '会员控制器');
INSERT INTO `joel_user_oath` VALUES ('5', 'shop', '商城权限', '商城控制器');
INSERT INTO `joel_user_oath` VALUES ('6', 'log', '系统日志权限', '日志管理器');
INSERT INTO `joel_user_oath` VALUES ('7', 'adminlog', '管理员操作日志权限', '管理员日志控制器');
INSERT INTO `joel_user_oath` VALUES ('8', 'pwd', '卡密管理', '卡密管理');
INSERT INTO `joel_user_oath` VALUES ('9', 'active', '营销功能设置权限', '营销功能设置权限');

-- ----------------------------
-- Table structure for joel_uvlog
-- ----------------------------
DROP TABLE IF EXISTS `joel_uvlog`;
CREATE TABLE `joel_uvlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `goodsid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_uvlog
-- ----------------------------
INSERT INTO `joel_uvlog` VALUES ('1', '2018-06-14', '1', '2', '127.0.0.1', '1528913115');
INSERT INTO `joel_uvlog` VALUES ('2', '2018-06-14', '1', '2', '127.0.0.1', '1528913499');
INSERT INTO `joel_uvlog` VALUES ('3', '2018-06-14', '1', '2', '127.0.0.1', '1528913515');
INSERT INTO `joel_uvlog` VALUES ('4', '2018-06-14', '1', '2', '127.0.0.1', '1528913581');

-- ----------------------------
-- Table structure for joel_vip
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip`;
CREATE TABLE `joel_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT '0',
  `plv` int(11) DEFAULT '1',
  `path` longtext,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `aliaccount` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00',
  `score` int(11) DEFAULT '0',
  `exp` int(11) DEFAULT '0',
  `cur_exp` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT '0',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT '0',
  `subscribe_time` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `ctime` int(11) DEFAULT '0',
  `cctime` int(11) DEFAULT NULL,
  `sign` int(11) DEFAULT '0',
  `signtime` int(11) DEFAULT NULL,
  `isfx` tinyint(1) DEFAULT '0',
  `total_buy` float DEFAULT '0',
  `total_yj` float DEFAULT '0',
  `total_xxyj` float DEFAULT '0',
  `total_xxlink` int(11) DEFAULT '0',
  `total_xxsub` int(11) DEFAULT '0',
  `total_xxbuy` int(11) DEFAULT '0',
  `txname` varchar(255) DEFAULT NULL,
  `txmobile` varchar(255) DEFAULT NULL,
  `txyh` varchar(255) DEFAULT NULL,
  `txfh` varchar(255) DEFAULT NULL,
  `txszd` varchar(255) DEFAULT NULL,
  `txcard` varchar(255) DEFAULT NULL,
  `groupid` varchar(255) DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `isidentify` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of joel_vip
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_address
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_address`;
CREATE TABLE `joel_vip_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `xqid` int(11) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `province` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16326 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_address
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_card
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_card`;
CREATE TABLE `joel_vip_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL COMMENT '1充值卡；2代金券',
  `vipid` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `cardpwd` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态  0：生成，1：已建卡，2：已使用',
  `stime` int(11) DEFAULT NULL,
  `etime` int(11) DEFAULT NULL,
  `usemoney` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT '0',
  `usetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59485 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_card
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_favorite
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_favorite`;
CREATE TABLE `joel_vip_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_level
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_level`;
CREATE TABLE `joel_vip_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_level
-- ----------------------------
INSERT INTO `joel_vip_level` VALUES ('1', '一级', '0');
INSERT INTO `joel_vip_level` VALUES ('2', '二级', '2000');
INSERT INTO `joel_vip_level` VALUES ('3', '三级', '5000');
INSERT INTO `joel_vip_level` VALUES ('4', '四级', '10000');

-- ----------------------------
-- Table structure for joel_vip_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_log`;
CREATE TABLE `joel_vip_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `vipid` int(11) DEFAULT '0',
  `opid` varchar(255) DEFAULT NULL COMMENT '对应的操作对象id（如type=5 浏览消息log，此opid为vip_message的id）',
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT '',
  `money` float DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `exp` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '日志类型 1获取注册验证码，2会员签到，3会员登陆，4会员注册，5消息读取（每条消息只记录一次），6充值卡充值，7在线充值（status0请求1成功），8购买商品',
  `ctime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_message
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_message`;
CREATE TABLE `joel_vip_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pids` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `content` longtext,
  `ctime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50883 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_message
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_monthexp
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_monthexp`;
CREATE TABLE `joel_vip_monthexp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT '0',
  `exp` int(11) DEFAULT '0',
  `month` varchar(255) DEFAULT '',
  `ctime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_monthexp
-- ----------------------------

-- ----------------------------
-- Table structure for joel_vip_news
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_news`;
CREATE TABLE `joel_vip_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `sumnum` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_news
-- ----------------------------
INSERT INTO `joel_vip_news` VALUES ('1', '徐希凡', '我能在虹桥路飙车', 'o-_G9uDs6S5pZcRk6DNVUJtkIiJ4', '7', '1454393996');

-- ----------------------------
-- Table structure for joel_vip_set
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_set`;
CREATE TABLE `joel_vip_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isverify` tinyint(1) DEFAULT '0',
  `ver_interval` int(11) DEFAULT '1',
  `ver_times` int(11) DEFAULT '10',
  `isgift` tinyint(1) DEFAULT '0',
  `gift_detail` varchar(255) DEFAULT NULL,
  `reg_score` int(11) DEFAULT '0',
  `reg_exp` int(11) DEFAULT '0',
  `sign_score` varchar(255) DEFAULT '0',
  `sign_exp` varchar(255) DEFAULT '0',
  `level_period` int(11) DEFAULT '0',
  `level_rule` varchar(255) DEFAULT NULL,
  `cz_score` int(11) DEFAULT NULL,
  `cz_exp` int(11) DEFAULT NULL,
  `xf_score` int(11) NOT NULL,
  `xf_exp` int(11) NOT NULL,
  `cz_rule` varchar(255) NOT NULL DEFAULT '',
  `tj_score` int(11) DEFAULT NULL,
  `tj_exp` int(11) DEFAULT NULL,
  `tj_money` float DEFAULT NULL,
  `tx_money` float DEFAULT '0' COMMENT '提现金额至少多少钱',
  `ispaihang` tinyint(1) DEFAULT '0',
  `iscz` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_vip_set
-- ----------------------------
INSERT INTO `joel_vip_set` VALUES ('1', '0', '0', '0', '0', '2,10,30,100', '0', '0', '0', '0', '0', '', '0', '0', '10', '100', '1000:40,3000:200,5000:500', '0', '0', '0', '100', '1', '0');

-- ----------------------------
-- Table structure for joel_vip_tx
-- ----------------------------
DROP TABLE IF EXISTS `joel_vip_tx`;
CREATE TABLE `joel_vip_tx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `txprice` float DEFAULT NULL,
  `txname` varchar(255) DEFAULT NULL,
  `txmobile` varchar(255) DEFAULT NULL,
  `txyh` varchar(255) DEFAULT NULL,
  `txfh` varchar(255) DEFAULT NULL,
  `txszd` varchar(255) DEFAULT NULL,
  `txcard` varchar(255) DEFAULT NULL,
  `txsqtime` int(11) DEFAULT NULL,
  `txtime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of joel_vip_tx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_wclogin
-- ----------------------------
DROP TABLE IF EXISTS `joel_wclogin`;
CREATE TABLE `joel_wclogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssid` varchar(255) NOT NULL,
  `vipid` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_wclogin
-- ----------------------------

-- ----------------------------
-- Table structure for joel_wx_keyword
-- ----------------------------
DROP TABLE IF EXISTS `joel_wx_keyword`;
CREATE TABLE `joel_wx_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1:纯文本,2:单图文,3:多图文',
  `ctime` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_wx_keyword
-- ----------------------------
INSERT INTO `joel_wx_keyword` VALUES ('1', '首页', 'QQ公众号开测', '1164', 'QQ公众号公测', 'http://mp.weixin.qq.com/s?__biz=MzA5MzIxNzUyOQ==&amp;mid=1501990491&amp;idx=1&amp;sn=6ab87e3c462255099f06289340107c24&amp;scene=1&amp;srcid=02023f7JOipABLLkfYSZVl5M&amp;from=singlemessage&amp;isappinstalled=0#wechat_redirect', '2', null);
INSERT INTO `joel_wx_keyword` VALUES ('2', '无', '', '', '平台搭建中，敬请期待...', '', '1', null);

-- ----------------------------
-- Table structure for joel_wx_keyword_img
-- ----------------------------
DROP TABLE IF EXISTS `joel_wx_keyword_img`;
CREATE TABLE `joel_wx_keyword_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `sorts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_wx_keyword_img
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd`;
CREATE TABLE `joel_zjd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cjmode` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `stime` int(11) DEFAULT NULL,
  `etime` int(11) DEFAULT NULL,
  `cjtimes` int(11) DEFAULT NULL,
  `daytimes` int(11) DEFAULT NULL,
  `cjtype` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dzpimg1` varchar(255) DEFAULT NULL,
  `dzpimg2` varchar(255) DEFAULT NULL,
  `content` text,
  `jf` float DEFAULT NULL,
  `sj` float DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `updown` float DEFAULT NULL,
  `low` int(11) DEFAULT NULL,
  `ifcontrol` int(11) DEFAULT NULL,
  `isform` tinyint(1) DEFAULT NULL,
  `isgz` tinyint(1) DEFAULT NULL,
  `kstime` int(11) DEFAULT NULL,
  `jstime` int(11) DEFAULT NULL,
  `isdh` tinyint(1) DEFAULT NULL,
  `sharetitle` varchar(255) DEFAULT NULL,
  `sharecontent` text,
  `sharesrc` varchar(255) DEFAULT NULL,
  `needsubscribe` tinyint(1) DEFAULT NULL,
  `ifaddr` tinyint(1) DEFAULT NULL,
  `addrpic` varchar(255) DEFAULT NULL,
  `addrurl` varchar(255) DEFAULT NULL,
  `isfx` tinyint(1) DEFAULT NULL,
  `prefx` int(11) DEFAULT NULL,
  `getfxtimes` int(11) DEFAULT NULL,
  `maxfxtimes` int(11) DEFAULT NULL,
  `refreshtime` varchar(255) DEFAULT NULL,
  `zjrepeat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd
-- ----------------------------
INSERT INTO `joel_zjd` VALUES ('3', null, null, '砸金蛋', '1453376082', '1453376082', '1000', '50', null, '1', '1160', '1161', '', '0', '0', '1453376167', '1111111111111111111', '1111111111', '', '11859', '0.8', '10', '0', '0', '0', '1453376082', '1453376082', null, '砸金蛋', '砸金蛋砸金蛋砸金蛋砸金蛋砸金蛋砸金蛋砸金蛋vv', '1160', '0', '1', '1160', 'http://www.baidu.com', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for joel_zjd_acform
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_acform`;
CREATE TABLE `joel_zjd_acform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_acform
-- ----------------------------
INSERT INTO `joel_zjd_acform` VALUES ('11', null, '3', '砸金蛋', '', '23,24,25,26,', '1', '1453376179');

-- ----------------------------
-- Table structure for joel_zjd_acform_data
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_acform_data`;
CREATE TABLE `joel_zjd_acform_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `formid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_acform_data
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_fx`;
CREATE TABLE `joel_zjd_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_log`;
CREATE TABLE `joel_zjd_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT '中奖  未中奖  等',
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_log
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_prize
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_prize`;
CREATE TABLE `joel_zjd_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `store` int(11) DEFAULT NULL COMMENT '库存',
  `sell` int(11) DEFAULT NULL COMMENT '已出售',
  `pname` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `odds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_prize
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_vip
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_vip`;
CREATE TABLE `joel_zjd_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_vip
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_vip_fx
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_vip_fx`;
CREATE TABLE `joel_zjd_vip_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `dzpid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `fxtimes` int(11) DEFAULT NULL,
  `gettimes` int(11) DEFAULT NULL,
  `usetimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_vip_fx
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_zj
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_zj`;
CREATE TABLE `joel_zjd_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `vipid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `vipopenid` varchar(255) DEFAULT NULL,
  `prizeid` int(11) DEFAULT NULL,
  `prizename` varchar(255) DEFAULT NULL,
  `viptruename` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_zj
-- ----------------------------

-- ----------------------------
-- Table structure for joel_zjd_zj_log
-- ----------------------------
DROP TABLE IF EXISTS `joel_zjd_zj_log`;
CREATE TABLE `joel_zjd_zj_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzpid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `yjrs` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_zjd_zj_log
-- ----------------------------
