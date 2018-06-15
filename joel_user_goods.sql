/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.103
Source Server Version : 50553
Source Host           : 192.168.1.103:3306
Source Database       : v1

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-06-05 22:43:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for joel_user_goods
-- ----------------------------
DROP TABLE IF EXISTS `joel_user_goods`;
CREATE TABLE `joel_user_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `xcx_url` varchar(255) DEFAULT NULL,
  `xcx_qrimg` varchar(255) DEFAULT NULL,
  `h5_url` varchar(255) DEFAULT NULL,
  `h5_qrimg` varchar(255) DEFAULT NULL,
  `tg_qd` varchar(255) DEFAULT NULL,
  `tg_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joel_user_goods
-- ----------------------------
INSERT INTO `joel_user_goods` VALUES ('8', '1', '2', '', null, 'http://www.v1.com/Wp/Wp/index//goodsid/1/uid/b309757037c5496f7ee84856d2f6720c', '/Public/S/images/code_20180605101709.png', 'aaa', null, '2018-06-05 22:17:09');
