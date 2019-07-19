/*
 Navicat Premium Data Transfer

 Source Server         : homestead
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 127.0.0.1:33060
 Source Schema         : laravel-shop

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 19/07/2019 11:59:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product_properties
-- ----------------------------
DROP TABLE IF EXISTS `product_properties`;
CREATE TABLE `product_properties`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_properties_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_properties_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_properties
-- ----------------------------
INSERT INTO `product_properties` VALUES (1, 93, '品牌名称', '苹果/Apple');
INSERT INTO `product_properties` VALUES (2, 93, '机身颜色', '黑色');
INSERT INTO `product_properties` VALUES (3, 93, '机身颜色', '金色');
INSERT INTO `product_properties` VALUES (4, 93, '存储容量', '256G');

SET FOREIGN_KEY_CHECKS = 1;
