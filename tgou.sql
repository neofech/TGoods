/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : tgou

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-06-20 21:01:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_phone` char(20) NOT NULL,
  `creat_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '赵丽颖', 'admin', '111', '15152465754', null, null);
INSERT INTO `admin` VALUES ('2', 'admin', 'admin', '111', '15152465754', null, null);
INSERT INTO `admin` VALUES ('3', '秋水', 'index', '111', '12345357534', null, null);
INSERT INTO `admin` VALUES ('4', 'neofech', 'neofech', '111', '17734458043', null, null);
INSERT INTO `admin` VALUES ('5', '111', '111', '111', '111', null, null);
INSERT INTO `admin` VALUES ('6', '1', '1', '1', '1', null, null);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `oldMoney` varchar(255) DEFAULT NULL COMMENT '价格',
  `money` varchar(255) DEFAULT NULL COMMENT '商场价格',
  `goodNumber` varchar(255) DEFAULT NULL COMMENT '商品数量',
  `goodIntroduction` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `sellNumber` varchar(255) DEFAULT NULL COMMENT '累计售出',
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '优嘉 适用三星 HTC 小米手机充电器 micro USB充电器 1A大功', '100', '50', '100000', '商品毛重：340.00g商品产地：中国大陆网络：联通3G（WCDMA），移动2G/联通2G（GSM）系统：安卓（Android）', '5', 'http://localhost:8080/tgou/goods/charge.jpg');
INSERT INTO `goods` VALUES ('2', '三星Galaxy S8 4G+智版（SM-G9508）4GB+64GB', '7000', '6888', '100000002', '【新年货】【春节礼盒版】三星 Galaxy S8（SM-G9500）4GB+64GB 谜夜黑 移动联通电信4G手机 双卡双待', '10', 'http://localhost:8080/tgou/goods/s8.jpg');
INSERT INTO `goods` VALUES ('3', 'Apple   iPhone X (A1865)   64GB    深空灰色  标配', '10000', '9888', '100000003', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '8', 'http://localhost:8080/tgou/goods/iphonex.jpg');
INSERT INTO `goods` VALUES ('4', '三星 Galaxy Note8（SM-N9500）6GB+128GB ', '7888', '7388', '100000004', '三星 Galaxy Note8（SM-N9500）6GB+128GB 芭比粉 移动联通电信4G手机 双卡双待', '3', 'http://localhost:8080/tgou/goods/note8.jpg');
INSERT INTO `goods` VALUES ('5', '【新年货】OPPO R11s 星幕新年版', '3999', '3199', '100000005', '【新年货】OPPO R11s 星幕新年版 全面屏双摄拍照手机 全网通 4G+64G 双卡双待手机 新年红', '11', 'http://localhost:8080/tgou/goods/oppoR11.jpg');
INSERT INTO `goods` VALUES ('6', '小米9', '2999', '2799', '111099', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '8000', 'http://localhost:8080/tgou/goods/1560822441945.jpg');
INSERT INTO `goods` VALUES ('7', '小米9 透明尊享版', '3999', '3999', '11109', '全曲面透明机身 / 骁龙855旗舰处理器 / 12GB大内存 / 索尼4800万超广角微距三摄，f/1.47大光圈 / 20W无线闪充 / 第5代极速屏下指纹解锁', '6000', 'http://localhost:8080/tgou/goods/1560822462076.jpg');
INSERT INTO `goods` VALUES ('8', '小米手环4 NFC版', '229', '229', '111097', '全新 AMOLED 大屏彩显，手环刷公交卡、门禁卡，能用支付宝抬手支付。内置小爱同学语音助理，能遥控智能家居。50米防水，支持游泳模式。还能看微信、看来电、测心率、测睡眠。带上它，你的改变从今天开始。', '3000', 'http://localhost:8080/tgou/goods/1560822486582.png');
INSERT INTO `goods` VALUES ('9', '荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 ', '2999 ', '2299', '2601010087402', '全网通6GB+128GB 标配版 幻夜黑 麒麟980处理器|4800万像素摄像头|4000mAh大容量电池|超级快充', '3999', 'http://localhost:8080/tgou/goods/1560930081217.jpg');
INSERT INTO `goods` VALUES ('10', '小米笔记本Pro 15.6\" 2019款', '5899', '5099', '2601010087403', 'NVIDIA MX250 2G独显 / 第八代Intel处理器 / PCIe 高速固态硬盘 / 72%NTSC高色域全高清屏 / 更强悍的专业笔记本', '3000', 'http://localhost:8080/tgou/goods/1560824363218.jpg');
INSERT INTO `goods` VALUES ('11', '一加 OnePlus 7 Pro', '4599', '4499', '2601010087495', '一加 OnePlus 7 Pro 2K+90Hz 流体屏 骁龙855旗舰 4800万超广角三摄 8GB+256GB 曜岩灰 全面屏拍照游戏手机', '3598', 'http://localhost:8080/tgou/goods/1560929990505.jpg');
INSERT INTO `goods` VALUES ('12', 'Apple iPad Air 3 2019年新款平板电脑 10.5英寸', '3896', '3488', '2601010087495', 'Apple iPad Air 3 2019年新款平板电脑 10.5英寸（64G WLAN版/A12芯片/Retina显示屏/MUUL2CH/A）金色', '3000', 'http://localhost:8080/tgou/goods/1560932221945.jpg');
INSERT INTO `goods` VALUES ('14', '111', '111', '111', '111', '111', '111', 'http://localhost:8080/tgou/goods/1561031396881.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'dddd', 'dddd', '2563kgk@gmail.com');
INSERT INTO `user` VALUES ('2', '11111', '11111', '34034923@163.com');
INSERT INTO `user` VALUES ('3', '22222', 'eeee ', '3023220952@qq.com');
INSERT INTO `user` VALUES ('4', '111', '111', 'ljk789@139.com');
INSERT INTO `user` VALUES ('5', 'neofech', '111111', '201607014217ZE@ncist.edu.cn');
INSERT INTO `user` VALUES ('6', '2', '2', '2');
