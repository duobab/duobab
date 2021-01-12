/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : javatest

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-05 17:36:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` decimal(19,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('1', 'iphone12', '部', '7888.00000');
INSERT INTO `material` VALUES ('2', '充电插头', '个', '199.00000');
INSERT INTO `material` VALUES ('3', '苹果', '千克', '25.00000');
INSERT INTO `material` VALUES ('4', '青岛啤酒', 'ml', '0.02000');


/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : javatest

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-05 17:35:16
*/

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` bigint(20) NOT NULL,
  `material_id_id` bigint(20) DEFAULT NULL,
  `quantity` decimal(19,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '1', '0.00000');
INSERT INTO `stock` VALUES ('2', '2', '0.00000');
INSERT INTO `stock` VALUES ('3', '3', '0.00000');
INSERT INTO `stock` VALUES ('4', '4', '0.00000');

/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : javatest

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-05 17:34:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sale_order
-- ----------------------------
DROP TABLE IF EXISTS `sale_order`;
CREATE TABLE `sale_order` (
  `id` bigint(20) NOT NULL,
  `amount_total` decimal(19,5) DEFAULT NULL,
  `biz_date` datetime DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sal_employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : javatest

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-05 17:34:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sale_order_line
-- ----------------------------
DROP TABLE IF EXISTS `sale_order_line`;
CREATE TABLE `sale_order_line` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(19,5) DEFAULT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `quantity` decimal(19,5) DEFAULT NULL,
  `saleorder_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : javatest

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-12-05 19:47:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');
