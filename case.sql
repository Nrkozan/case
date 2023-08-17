/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50724 (5.7.24)
 Source Host           : localhost:3306
 Source Schema         : case

 Target Server Type    : MySQL
 Target Server Version : 50724 (5.7.24)
 File Encoding         : 65001

 Date: 17/08/2023 18:51:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product_variants
-- ----------------------------
DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_variants
-- ----------------------------
INSERT INTO `product_variants` VALUES (70, 324, 'L', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (71, 324, 'M', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (72, 324, 'X', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (73, 325, 'L', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (74, 326, 'L', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (75, 326, 'M', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (76, 326, 'X', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (77, 326, 'XL', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (78, 327, 'L', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (79, 327, 'M', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (80, 328, 'XS', '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `product_variants` VALUES (81, 329, 'L', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (82, 329, 'M', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (83, 329, 'X', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (84, 330, 'L', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (85, 331, 'L', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (86, 331, 'M', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (87, 331, 'X', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (88, 331, 'XL', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (89, 332, 'L', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (90, 332, 'M', '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `product_variants` VALUES (91, 333, 'XS', '2023-08-17 18:30:57', '2023-08-17 18:30:57');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 334 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (324, 'Prod1', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod1.webp', 1500.00, '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `products` VALUES (325, 'Prod2', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod2.webp', 1000.00, '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `products` VALUES (326, 'Prod3', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod3.webp', 1200.00, '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `products` VALUES (327, 'Prod4', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod4.webp', 500.00, '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `products` VALUES (328, 'Prod5', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod5.webp', 250.00, '2023-08-17 18:26:42', '2023-08-17 18:26:42');
INSERT INTO `products` VALUES (329, 'Prod1', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod1.webp', 1500.00, '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `products` VALUES (330, 'Prod2', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod2.webp', 1000.00, '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `products` VALUES (331, 'Prod3', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod3.webp', 1200.00, '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `products` VALUES (332, 'Prod4', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod4.webp', 500.00, '2023-08-17 18:30:57', '2023-08-17 18:30:57');
INSERT INTO `products` VALUES (333, 'Prod5', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '/img/Prod5.webp', 250.00, '2023-08-17 18:30:57', '2023-08-17 18:30:57');

SET FOREIGN_KEY_CHECKS = 1;
