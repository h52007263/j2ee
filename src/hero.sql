/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : how2java

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-05-30 10:42:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `hp` float(10,0) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('4', 'hero 4', '400', '400');
INSERT INTO `hero` VALUES ('5', 'hero 5', '500', '500');
INSERT INTO `hero` VALUES ('6', 'hero 6', '600', '600');
INSERT INTO `hero` VALUES ('7', '鬼谷子', '3133', '50');
INSERT INTO `hero` VALUES ('11', '提莫', '313', '50');
INSERT INTO `hero` VALUES ('13', '提莫', '313', '50');
INSERT INTO `hero` VALUES ('15', '提莫1', '313', '50');
INSERT INTO `hero` VALUES ('16', 'teemo', '300', '100');
INSERT INTO `hero` VALUES ('17', '盖伦', '616', '100');
INSERT INTO `hero` VALUES ('18', '李白', '500', '11');
