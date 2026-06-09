/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.10.101
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : 192.168.10.101:3306
 Source Schema         : lease

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 09/06/2026 10:24:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apartment_facility
-- ----------------------------
DROP TABLE IF EXISTS `apartment_facility`;
CREATE TABLE `apartment_facility`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '公寓id',
  `facility_id` bigint NULL DEFAULT NULL COMMENT '设施id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 409 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公寓&配套关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_facility
-- ----------------------------
INSERT INTO `apartment_facility` VALUES (11, 4, 24, '2023-06-19 23:20:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (12, 4, 26, '2023-06-19 23:20:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (13, 4, 24, '2023-06-19 23:21:42', NULL, 1);
INSERT INTO `apartment_facility` VALUES (14, 4, 25, '2023-06-19 23:21:42', NULL, 1);
INSERT INTO `apartment_facility` VALUES (15, 4, 26, '2023-06-19 23:21:42', NULL, 1);
INSERT INTO `apartment_facility` VALUES (16, 5, 26, '2023-06-20 08:47:57', NULL, 1);
INSERT INTO `apartment_facility` VALUES (17, 5, 27, '2023-06-20 08:47:57', NULL, 1);
INSERT INTO `apartment_facility` VALUES (18, 6, 26, '2023-06-20 08:53:00', NULL, 1);
INSERT INTO `apartment_facility` VALUES (19, 6, 27, '2023-06-20 08:53:00', NULL, 1);
INSERT INTO `apartment_facility` VALUES (20, 7, 26, '2023-06-20 08:53:35', NULL, 1);
INSERT INTO `apartment_facility` VALUES (21, 7, 27, '2023-06-20 08:53:35', NULL, 1);
INSERT INTO `apartment_facility` VALUES (22, 8, 26, '2023-06-20 08:53:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (23, 8, 27, '2023-06-20 08:53:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (24, 8, 26, '2023-06-20 08:54:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (25, 8, 27, '2023-06-20 08:54:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (26, 9, 26, '2023-06-20 09:13:52', NULL, 1);
INSERT INTO `apartment_facility` VALUES (27, 9, 27, '2023-06-20 09:13:52', NULL, 1);
INSERT INTO `apartment_facility` VALUES (28, 9, 26, '2023-06-20 09:15:41', NULL, 1);
INSERT INTO `apartment_facility` VALUES (29, 9, 27, '2023-06-20 09:15:41', NULL, 1);
INSERT INTO `apartment_facility` VALUES (30, 9, 26, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_facility` VALUES (31, 9, 27, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_facility` VALUES (32, 9, 26, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_facility` VALUES (33, 9, 27, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_facility` VALUES (34, 10, 24, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (35, 10, 25, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (36, 10, 26, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (37, 11, 24, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_facility` VALUES (38, 11, 25, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_facility` VALUES (39, 11, 26, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_facility` VALUES (40, 10, 24, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (41, 10, 25, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (42, 10, 24, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_facility` VALUES (43, 10, 25, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_facility` VALUES (44, 9, 24, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (45, 9, 26, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (46, 9, 25, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (47, 10, 24, '2023-07-18 16:30:04', NULL, 1);
INSERT INTO `apartment_facility` VALUES (48, 10, 25, '2023-07-18 16:30:04', NULL, 1);
INSERT INTO `apartment_facility` VALUES (49, 9, 24, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_facility` VALUES (50, 9, 25, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_facility` VALUES (51, 9, 26, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_facility` VALUES (52, 9, 24, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_facility` VALUES (53, 9, 25, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_facility` VALUES (54, 9, 26, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_facility` VALUES (55, 9, 24, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (56, 9, 25, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (57, 9, 26, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (58, 9, 40, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (59, 9, 41, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (60, 9, 42, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (61, 9, 43, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (62, 9, 44, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (63, 9, 45, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (64, 9, 46, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (65, 9, 47, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (66, 9, 57, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_facility` VALUES (67, 10, 24, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (68, 10, 25, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (69, 10, 26, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (70, 10, 40, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (71, 10, 41, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (72, 10, 43, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (73, 10, 44, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (74, 10, 42, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (75, 10, 57, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (76, 10, 46, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (77, 9, 24, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (78, 9, 25, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (79, 9, 26, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (80, 9, 40, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (81, 9, 41, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (82, 9, 42, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (83, 9, 43, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (84, 9, 44, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (85, 9, 45, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (86, 9, 46, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (87, 9, 47, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (88, 9, 57, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (89, 10, 24, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (90, 10, 25, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (91, 10, 26, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (92, 10, 40, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (93, 10, 41, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (94, 10, 43, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (95, 10, 44, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (96, 10, 42, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (97, 10, 57, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (98, 10, 46, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_facility` VALUES (99, 9, 24, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (100, 9, 25, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (101, 9, 26, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (102, 9, 40, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (103, 9, 41, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (104, 9, 42, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (105, 9, 43, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (106, 9, 44, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (107, 9, 45, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (108, 9, 46, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (109, 9, 47, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (110, 9, 57, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_facility` VALUES (111, 10, 24, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (112, 10, 25, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (113, 10, 26, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (114, 10, 40, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (115, 10, 41, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (116, 10, 43, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (117, 10, 44, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (118, 10, 42, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (119, 10, 57, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (120, 10, 46, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_facility` VALUES (121, 9, 24, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (122, 9, 25, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (123, 9, 26, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (124, 9, 40, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (125, 9, 41, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (126, 9, 42, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (127, 9, 43, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (128, 9, 44, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (129, 9, 45, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (130, 9, 46, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (131, 9, 47, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (132, 9, 57, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_facility` VALUES (133, 10, 24, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (134, 10, 25, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (135, 10, 26, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (136, 10, 40, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (137, 10, 41, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (138, 10, 43, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (139, 10, 44, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (140, 10, 42, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (141, 10, 57, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (142, 10, 46, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_facility` VALUES (143, 10, 24, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (144, 10, 25, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (145, 10, 26, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (146, 10, 40, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (147, 10, 41, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (148, 10, 43, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (149, 10, 44, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (150, 10, 42, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (151, 10, 57, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (152, 10, 46, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_facility` VALUES (153, 9, 24, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (154, 9, 25, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (155, 9, 26, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (156, 9, 40, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (157, 9, 41, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (158, 9, 42, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (159, 9, 43, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (160, 9, 44, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (161, 9, 45, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (162, 9, 46, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (163, 9, 47, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (164, 9, 57, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_facility` VALUES (165, 10, 24, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (166, 10, 25, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (167, 10, 26, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (168, 10, 40, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (169, 10, 41, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (170, 10, 43, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (171, 10, 44, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (172, 10, 42, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (173, 10, 57, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (174, 10, 46, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_facility` VALUES (175, 9, 24, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (176, 9, 25, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (177, 9, 26, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (178, 9, 40, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (179, 9, 41, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (180, 9, 42, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (181, 9, 43, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (182, 9, 44, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (183, 9, 45, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (184, 9, 46, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (185, 9, 47, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (186, 9, 57, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_facility` VALUES (187, 9, 24, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (188, 9, 25, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (189, 9, 26, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (190, 9, 40, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (191, 9, 41, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (192, 9, 42, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (193, 9, 43, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (194, 9, 44, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (195, 9, 45, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (196, 9, 46, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (197, 9, 47, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (198, 9, 57, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_facility` VALUES (199, 10, 24, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (200, 10, 25, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (201, 10, 26, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (202, 10, 40, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (203, 10, 41, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (204, 10, 43, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (205, 10, 44, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (206, 10, 42, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (207, 10, 57, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (208, 10, 46, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_facility` VALUES (209, 9, 24, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (210, 9, 25, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (211, 9, 26, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (212, 9, 40, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (213, 9, 41, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (214, 9, 42, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (215, 9, 43, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (216, 9, 44, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (217, 9, 45, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (218, 9, 46, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (219, 9, 47, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (220, 9, 57, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_facility` VALUES (221, 10, 24, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (222, 10, 25, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (223, 10, 26, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (224, 10, 40, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (225, 10, 41, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (226, 10, 43, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (227, 10, 44, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (228, 10, 42, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (229, 10, 57, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (230, 10, 46, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_facility` VALUES (231, 9, 24, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (232, 9, 25, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (233, 9, 26, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (234, 9, 40, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (235, 9, 41, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (236, 9, 42, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (237, 9, 43, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (238, 9, 44, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (239, 9, 45, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (240, 9, 46, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (241, 9, 47, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (242, 9, 57, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_facility` VALUES (243, 11, 24, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (244, 11, 25, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (245, 11, 40, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (246, 11, 41, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (247, 11, 42, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (248, 11, 43, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (249, 11, 44, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (250, 11, 47, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_facility` VALUES (251, 11, 24, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (252, 11, 25, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (253, 11, 40, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (254, 11, 41, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (255, 11, 42, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (256, 11, 43, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (257, 11, 44, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (258, 11, 47, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_facility` VALUES (259, 12, 25, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_facility` VALUES (260, 12, 24, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_facility` VALUES (261, 12, 41, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_facility` VALUES (262, 12, 43, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_facility` VALUES (263, 12, 47, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_facility` VALUES (264, 132, 24, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_facility` VALUES (265, 132, 43, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_facility` VALUES (266, 132, 40, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_facility` VALUES (267, 132, 41, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_facility` VALUES (268, 132, 25, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_facility` VALUES (269, 133, 42, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (270, 133, 40, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (271, 133, 25, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (272, 133, 41, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (273, 134, 42, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_facility` VALUES (274, 134, 40, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_facility` VALUES (275, 134, 24, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_facility` VALUES (276, 134, 41, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_facility` VALUES (277, 134, 25, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_facility` VALUES (278, 135, 24, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_facility` VALUES (279, 135, 41, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_facility` VALUES (280, 135, 42, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_facility` VALUES (281, 135, 43, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_facility` VALUES (282, 135, 26, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_facility` VALUES (283, 136, 41, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (284, 136, 25, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (285, 136, 40, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (286, 136, 26, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (287, 136, 24, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (288, 136, 44, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (289, 136, 43, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (290, 136, 42, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_facility` VALUES (291, 137, 24, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (292, 137, 25, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (293, 137, 26, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (294, 137, 40, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (295, 137, 41, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (296, 137, 42, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (297, 137, 43, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (298, 137, 44, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (299, 137, 45, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (300, 137, 46, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (301, 137, 47, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (302, 137, 57, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_facility` VALUES (303, 138, 24, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (304, 138, 25, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (305, 138, 26, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (306, 138, 42, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (307, 138, 41, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (308, 138, 40, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (309, 138, 43, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (310, 138, 44, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (311, 138, 46, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (312, 138, 45, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (313, 138, 47, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (314, 138, 57, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_facility` VALUES (315, 138, 24, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (316, 138, 25, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (317, 138, 26, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (318, 138, 42, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (319, 138, 41, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (320, 138, 40, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (321, 138, 43, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (322, 138, 44, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (323, 138, 46, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (324, 138, 45, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (325, 138, 47, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (326, 138, 57, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_facility` VALUES (327, 139, 24, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (328, 139, 41, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (329, 139, 43, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (330, 139, 40, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (331, 139, 25, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (332, 139, 26, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (333, 139, 44, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (334, 139, 57, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (335, 139, 47, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (336, 139, 45, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_facility` VALUES (337, 140, 25, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (338, 140, 40, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (339, 140, 26, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (340, 140, 24, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (341, 140, 42, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (342, 140, 44, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (343, 140, 45, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_facility` VALUES (344, 141, 24, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (345, 141, 26, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (346, 141, 25, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (347, 141, 40, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (348, 141, 41, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (349, 141, 42, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (350, 141, 43, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (351, 141, 44, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (352, 141, 45, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (353, 141, 46, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (354, 141, 47, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (355, 141, 57, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_facility` VALUES (356, 142, 24, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (357, 142, 26, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (358, 142, 25, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (359, 142, 40, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (360, 142, 41, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (361, 142, 42, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (362, 142, 44, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (363, 142, 43, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (364, 142, 46, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (365, 142, 45, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (366, 142, 47, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (367, 142, 57, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_facility` VALUES (368, 143, 40, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (369, 143, 26, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (370, 143, 25, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (371, 143, 24, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (372, 143, 42, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (373, 143, 43, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_facility` VALUES (374, 144, 24, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (375, 144, 25, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (376, 144, 26, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (377, 144, 40, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (378, 144, 41, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (379, 144, 42, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (380, 144, 43, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (381, 144, 44, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (382, 144, 45, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (383, 144, 46, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (384, 144, 47, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (385, 144, 57, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_facility` VALUES (386, 140, 25, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (387, 140, 40, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (388, 140, 26, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (389, 140, 24, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (390, 140, 42, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (391, 140, 44, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (392, 140, 45, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_facility` VALUES (393, 139, 24, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (394, 139, 41, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (395, 139, 43, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (396, 139, 40, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (397, 139, 25, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (398, 139, 26, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (399, 139, 44, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (400, 139, 57, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (401, 139, 47, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (402, 139, 45, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_facility` VALUES (403, 145, 25, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_facility` VALUES (404, 145, 24, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_facility` VALUES (405, 145, 40, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_facility` VALUES (406, 145, 42, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_facility` VALUES (407, 145, 41, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_facility` VALUES (408, 145, 43, '2026-05-07 10:21:36', NULL, 0);

-- ----------------------------
-- Table structure for apartment_fee_value
-- ----------------------------
DROP TABLE IF EXISTS `apartment_fee_value`;
CREATE TABLE `apartment_fee_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '公寓id',
  `fee_value_id` bigint NULL DEFAULT NULL COMMENT '收费项value_id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公寓&杂费关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_fee_value
-- ----------------------------
INSERT INTO `apartment_fee_value` VALUES (1, 9, NULL, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (2, 9, NULL, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (3, 9, 3, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (4, 9, 7, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (5, 10, 2, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (6, 10, 7, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (7, 11, 2, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (8, 11, 7, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (9, 10, 2, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (10, 10, 2, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (11, 9, 2, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (12, 9, 5, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (13, 9, 12, '2023-07-18 16:29:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (14, 10, 2, '2023-07-18 16:30:05', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (15, 9, 2, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (16, 9, 5, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (17, 9, 2, '2023-07-22 13:52:20', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (18, 9, 5, '2023-07-22 13:52:20', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (19, 9, 2, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (20, 9, 5, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (21, 9, 13, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (22, 9, 16, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (23, 9, 21, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (24, 10, 2, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (25, 10, 6, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (26, 10, 14, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (27, 10, 17, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (28, 10, 21, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (29, 9, 2, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (30, 9, 5, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (31, 9, 13, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (32, 9, 16, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (33, 9, 21, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (34, 10, 2, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (35, 10, 6, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (36, 10, 14, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (37, 10, 17, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (38, 10, 21, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (39, 9, 2, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (40, 9, 5, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (41, 9, 13, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (42, 9, 16, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (43, 9, 21, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (44, 10, 2, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (45, 10, 6, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (46, 10, 14, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (47, 10, 17, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (48, 10, 21, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (49, 9, 2, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (50, 9, 5, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (51, 9, 13, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (52, 9, 16, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (53, 9, 21, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (54, 10, 2, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (55, 10, 6, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (56, 10, 14, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (57, 10, 17, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (58, 10, 21, '2023-08-14 11:36:36', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (59, 10, 2, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (60, 10, 6, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (61, 10, 14, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (62, 10, 17, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (63, 10, 21, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (64, 9, 2, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (65, 9, 5, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (66, 9, 13, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (67, 9, 16, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (68, 9, 21, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (69, 10, 2, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (70, 10, 6, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (71, 10, 14, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (72, 10, 17, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (73, 10, 21, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (74, 9, 2, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (75, 9, 5, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (76, 9, 13, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (77, 9, 16, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (78, 9, 21, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (79, 9, 2, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (80, 9, 5, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (81, 9, 13, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (82, 9, 16, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (83, 9, 21, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (84, 10, 2, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (85, 10, 6, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (86, 10, 14, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (87, 10, 17, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (88, 10, 21, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (89, 9, 2, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (90, 9, 5, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (91, 9, 13, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (92, 9, 16, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (93, 9, 21, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (94, 10, 2, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (95, 10, 6, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (96, 10, 14, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (97, 10, 17, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (98, 10, 21, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (99, 9, 2, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (100, 9, 5, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (101, 9, 13, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (102, 9, 16, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (103, 9, 21, '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (104, 11, 4, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (105, 11, 15, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (106, 11, 19, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (107, 11, 4, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (108, 11, 15, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (109, 11, 19, '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (110, 12, 15, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (111, 12, 7, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (112, 12, 2, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (113, 12, 19, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (114, 12, 21, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (115, 12, 23, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (116, 132, 2, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (117, 132, 7, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (118, 132, 15, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (119, 132, 19, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (120, 132, 21, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (121, 132, 23, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (122, 133, 1, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (123, 133, 15, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (124, 133, 5, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (125, 133, 17, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (126, 133, 21, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (127, 133, 23, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (128, 134, 7, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (129, 134, 3, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (130, 134, 15, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (131, 134, 17, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (132, 134, 21, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (133, 134, 23, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (134, 135, 3, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (135, 135, 6, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (136, 135, 14, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (137, 135, 17, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (138, 135, 21, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (139, 135, 23, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (140, 136, 3, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (141, 136, 7, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (142, 136, 15, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (143, 136, 19, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (144, 136, 22, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (145, 136, 23, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (146, 137, 3, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (147, 137, 7, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (148, 137, 15, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (149, 137, 19, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (150, 137, 22, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (151, 137, 23, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (152, 138, 3, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (153, 138, 7, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (154, 138, 13, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (155, 138, 16, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (156, 138, 22, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (157, 138, 23, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (158, 138, 3, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (159, 138, 7, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (160, 138, 13, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (161, 138, 16, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (162, 138, 22, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (163, 138, 23, '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (164, 139, 1, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (165, 139, 7, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (166, 139, 15, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (167, 139, 19, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (168, 139, 22, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (169, 139, 23, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (170, 140, 2, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (171, 140, 15, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (172, 140, 6, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (173, 140, 16, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (174, 140, 21, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (175, 140, 23, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_fee_value` VALUES (176, 141, 3, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (177, 141, 7, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (178, 141, 15, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (179, 141, 19, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (180, 141, 22, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (181, 141, 23, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (182, 142, 3, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (183, 142, 7, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (184, 142, 13, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (185, 142, 16, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (186, 142, 20, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (187, 142, 23, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (188, 143, 2, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (189, 143, 7, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (190, 143, 14, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (191, 143, 16, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (192, 143, 21, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (193, 143, 23, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (194, 144, 3, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (195, 144, 7, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (196, 144, 14, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (197, 144, 19, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (198, 144, 22, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (199, 144, 23, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (200, 140, 2, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (201, 140, 15, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (202, 140, 6, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (203, 140, 16, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (204, 140, 21, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (205, 140, 23, '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (206, 139, 1, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (207, 139, 7, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (208, 139, 15, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (209, 139, 19, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (210, 139, 22, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (211, 139, 23, '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (212, 145, 3, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (213, 145, 4, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (214, 145, 15, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (215, 145, 18, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (216, 145, 22, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_fee_value` VALUES (217, 145, 23, '2026-05-07 10:21:36', NULL, 0);

-- ----------------------------
-- Table structure for apartment_info
-- ----------------------------
DROP TABLE IF EXISTS `apartment_info`;
CREATE TABLE `apartment_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公寓id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓名称',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓介绍',
  `district_id` bigint NULL DEFAULT NULL COMMENT '所处区域id',
  `district_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `city_id` bigint NULL DEFAULT NULL COMMENT '所处城市id',
  `city_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province_id` bigint NULL DEFAULT NULL COMMENT '所处省份id',
  `province_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `latitude` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `longitude` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓前台电话',
  `is_release` tinyint NULL DEFAULT NULL COMMENT '是否发布（1:发布，0:未发布）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 146 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公寓信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_info
-- ----------------------------
INSERT INTO `apartment_info` VALUES (9, '温都水城社区', '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。', 110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区温都水城北七家镇王府街55号', '40.103976', '116.370825', '1234567788', 1, '2023-06-20 09:13:52', '2024-09-18 09:32:42', 0);
INSERT INTO `apartment_info` VALUES (10, '回龙观社区', '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。', 110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区回龙观东大街地铁站B东北口8号线', '40.081628', '116.363725', '12345678', 1, '2023-06-21 10:17:59', '2023-08-19 15:44:50', 0);
INSERT INTO `apartment_info` VALUES (11, '四川大学锦江学院16栋楼', '四川大学锦江学院16栋楼', 511403, '彭山区', 5114, '眉山市', 51, '四川省', '四川省眉山市彭山区四川大学锦江学院锦江大道1号', '30.215596', '103.871385', '13686869696', 1, '2025-09-09 10:42:33', '2025-09-09 10:42:51', 0);
INSERT INTO `apartment_info` VALUES (12, '成都市武侯区公寓', '成都市武侯区', 510107, '武侯区', 5114, '眉山市', 51, '四川省', '四川省成都市武侯区孵化园(地铁站)18号线;1号线;9号线', '30.575873', '104.064313', '18190067037', 1, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_info` VALUES (13, '北京朝阳公寓', '位于朝阳区的高档公寓，交通便利', 101, '朝阳区', 10, '北京市', 11, '北京市', '朝阳区建国路88号', '39.9042', '116.4074', '13800138000', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (14, '北京海淀公寓', '靠近高校区，适合学生居住', 102, '海淀区', 10, '北京市', 11, '北京市', '海淀区中关村大街1号', '39.9975', '116.3376', '13800138001', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (15, '上海浦东公寓', '浦东新区核心地段，江景房', 201, '浦东新区', 20, '上海市', 31, '上海市', '浦东新区陆家嘴环路1000号', '31.2304', '121.5007', '13800138002', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (16, '上海徐汇公寓', '徐汇区成熟社区，配套完善', 202, '徐汇区', 20, '上海市', 31, '上海市', '徐汇区淮海中路199号', '31.1957', '121.4441', '13800138003', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (17, '天津和平公寓', '和平区商业中心，购物方便', 301, '和平区', 30, '天津市', 12, '天津市', '和平区南京路189号', '39.1315', '117.2009', '13800138004', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (18, '天津滨海公寓', '滨海新区海景公寓，环境优美', 302, '滨海新区', 30, '天津市', 12, '天津市', '滨海新区响螺湾商务区', '39.0162', '117.7232', '13800138005', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (19, '重庆渝中公寓', '渝中区解放碑附近，交通便利', 401, '渝中区', 40, '重庆市', 50, '重庆市', '渝中区解放碑八一路', '29.5630', '106.5514', '13800138006', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (20, '重庆江北公寓', '江北区观音桥商圈，生活便利', 402, '江北区', 40, '重庆市', 50, '重庆市', '江北区观音桥步行街', '29.5857', '106.5991', '13800138007', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (21, '石家庄裕华公寓', '裕华区高端社区，配套齐全', 130108, '裕华区', 1301, '石家庄市', 13, '河北省', '裕华区槐安东路123号', '38.0451', '114.5149', '13800138008', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (22, '唐山路北公寓', '路北区中心位置，交通便利', 130203, '路北区', 1302, '唐山市', 13, '河北省', '路北区新华东道55号', '39.6334', '118.1781', '13800138009', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (23, '太原小店公寓', '小店区新兴商务区，现代化公寓', 140105, '小店区', 1401, '太原市', 14, '山西省', '小店区长风街111号', '37.8705', '112.5621', '13800138010', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (24, '大同平城公寓', '平城区老城区改造项目，历史与现代结合', 140213, '平城区', 1402, '大同市', 14, '山西省', '平城区永泰南路88号', '40.0617', '113.3055', '13800138011', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (25, '沈阳沈河公寓', '沈河区市中心，生活便利', 210103, '沈河区', 2101, '沈阳市', 21, '辽宁省', '沈河区青年大街200号', '41.8056', '123.4286', '13800138012', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (26, '大连中山公寓', '中山区海景房，环境宜人', 210202, '中山区', 2102, '大连市', 21, '辽宁省', '中山区人民路50号', '38.9140', '121.6147', '13800138013', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (27, '长春朝阳公寓', '朝阳区商业中心，交通便利', 220104, '朝阳区', 2201, '长春市', 22, '吉林省', '朝阳区红旗街155号', '43.8868', '125.3245', '13800138014', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (28, '吉林昌邑公寓', '昌邑区松花江畔，风景优美', 220202, '昌邑区', 2202, '吉林市', 22, '吉林省', '昌邑区松江中路66号', '43.8563', '126.5348', '13800138015', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (29, '哈尔滨南岗公寓', '南岗区高校集中地，学术氛围浓厚', 230103, '南岗区', 2301, '哈尔滨市', 23, '黑龙江省', '南岗区学府路74号', '45.8038', '126.5348', '13800138016', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (30, '大庆萨尔图公寓', '萨尔图区油田附近，生活配套完善', 230602, '萨尔图区', 2306, '大庆市', 23, '黑龙江省', '萨尔图区东风路33号', '46.5958', '125.0386', '13800138017', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (31, '南京玄武公寓', '玄武区靠近紫金山，环境优美', 320102, '玄武区', 3201, '南京市', 32, '江苏省', '玄武区中山陵路1号', '32.0603', '118.7969', '13800138018', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (32, '苏州姑苏公寓', '姑苏区古城区，历史文化底蕴深厚', 320508, '姑苏区', 3205, '苏州市', 32, '江苏省', '姑苏区干将东路888号', '31.2993', '120.6195', '13800138019', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (33, '杭州西湖公寓', '西湖区临西湖，风景秀丽', 330106, '西湖区', 3301, '杭州市', 33, '浙江省', '西湖区西湖大道1号', '30.2741', '120.1551', '13800138020', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (34, '宁波鄞州公寓', '鄞州区商业中心，现代化设施齐全', 330212, '鄞州区', 3302, '宁波市', 33, '浙江省', '鄞州区鄞州大道128号', '29.8683', '121.5440', '13800138021', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (35, '合肥蜀山公寓', '蜀山区政务新区，环境优美', 340104, '蜀山区', 3401, '合肥市', 34, '安徽省', '蜀山区潜山路1号', '31.8611', '117.2854', '13800138022', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (36, '黄山屯溪公寓', '屯溪区靠近黄山风景区，旅游便捷', 341002, '屯溪区', 3410, '黄山市', 34, '安徽省', '屯溪区黄山大道100号', '29.7167', '118.3133', '13800138023', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (37, '福州鼓楼公寓', '鼓楼区市中心，商业繁华', 350102, '鼓楼区', 3501, '福州市', 35, '福建省', '鼓楼区东街口1号', '26.0990', '119.2958', '13800138024', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (38, '厦门思明公寓', '思明区环岛路，海景房', 350203, '思明区', 3502, '厦门市', 35, '福建省', '思明区环岛南路128号', '24.4798', '118.0894', '13800138025', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (39, '南昌东湖公寓', '东湖区市中心，生活便利', 360102, '东湖区', 3601, '南昌市', 36, '江西省', '东湖区八一广场1号', '28.6358', '115.8167', '13800138026', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (40, '九江浔阳公寓', '浔阳区长江边，江景房', 360403, '浔阳区', 3604, '九江市', 36, '江西省', '浔阳区滨江路88号', '29.7167', '115.9833', '13800138027', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (41, '济南历下公寓', '历下区市中心，商业发达', 370102, '历下区', 3701, '济南市', 37, '山东省', '历下区泉城路1号', '36.6658', '117.0200', '13800138028', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (42, '青岛市南公寓', '市南区海滨，气候宜人', 370202, '市南区', 3702, '青岛市', 37, '山东省', '市南区香港中路12号', '36.0671', '120.3826', '13800138029', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (43, '郑州金水公寓', '金水区商业中心，交通便利', 410105, '金水区', 4101, '郑州市', 41, '河南省', '金水区花园路1号', '34.7472', '113.6250', '13800138030', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (44, '洛阳西工公寓', '西工区市中心，历史文化名城', 410303, '西工区', 4103, '洛阳市', 41, '河南省', '西工区中州中路100号', '34.6875', '112.4550', '13800138031', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (45, '武汉江汉公寓', '江汉区商业中心，生活便利', 420103, '江汉区', 4201, '武汉市', 42, '湖北省', '江汉区江汉路1号', '30.5928', '114.3055', '13800138032', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (46, '宜昌西陵公寓', '西陵区长江边，三峡门户', 420502, '西陵区', 4205, '宜昌市', 42, '湖北省', '西陵区东山大道88号', '30.7167', '111.2833', '13800138033', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (47, '长沙芙蓉公寓', '芙蓉区市中心，商业繁华', 430102, '芙蓉区', 4301, '长沙市', 43, '湖南省', '芙蓉区五一大道1号', '28.1120', '112.9822', '13800138034', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (48, '张家界永定公寓', '永定区靠近武陵源，旅游方便', 430802, '永定区', 4308, '张家界市', 43, '湖南省', '永定区子午路128号', '29.1167', '110.4833', '13800138035', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (49, '广州天河公寓', '天河区商业中心，现代化设施', 440106, '天河区', 4401, '广州市', 44, '广东省', '天河区天河路385号', '23.1291', '113.3245', '13800138036', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (50, '深圳福田公寓', '福田区市中心，金融中心', 440304, '福田区', 4403, '深圳市', 44, '广东省', '福田区深南大道1000号', '22.5431', '114.0579', '13800138037', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (51, '海口龙华公寓', '龙华区市中心，生活便利', 460106, '龙华区', 4601, '海口市', 46, '海南省', '龙华区龙华路1号', '20.0451', '110.3494', '13800138038', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (52, '三亚吉阳公寓', '吉阳区三亚湾，海景房', 460203, '吉阳区', 4602, '三亚市', 46, '海南省', '吉阳区三亚湾路128号', '18.1801', '109.5106', '13800138039', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (53, '成都锦江公寓', '锦江区商业中心，美食众多', 510104, '锦江区', 5101, '成都市', 51, '四川省', '锦江区春熙路1号', '30.6570', '104.0650', '13800138040', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (54, '绵阳涪城公寓', '涪城区市中心，科技城核心区', 510703, '涪城区', 5107, '绵阳市', 51, '四川省', '涪城区临园路100号', '31.4657', '104.7589', '13800138041', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (55, '贵阳南明公寓', '南明区市中心，生活便利', 520102, '南明区', 5201, '贵阳市', 52, '贵州省', '南明区中华南路1号', '26.5978', '106.7135', '13800138042', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (56, '遵义红花岗公寓', '红花岗区市中心，历史名城', 520302, '红花岗区', 5203, '遵义市', 52, '贵州省', '红花岗区解放路88号', '27.7081', '106.9953', '13800138043', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (57, '昆明五华公寓', '五华区市中心，四季如春', 530102, '五华区', 5301, '昆明市', 53, '云南省', '五华区春城路1号', '25.0389', '102.7183', '13800138044', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (58, '丽江古城公寓', '古城区靠近丽江古城，旅游方便', 530702, '古城区', 5307, '丽江市', 53, '云南省', '古城区四方街1号', '26.8667', '100.2200', '13800138045', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (59, '西安雁塔公寓', '雁塔区靠近大雁塔，文化氛围浓厚', 610113, '雁塔区', 6101, '西安市', 61, '陕西省', '雁塔区大雁塔南广场1号', '34.1658', '108.9540', '13800138046', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (60, '宝鸡金台公寓', '金台区市中心，工业重镇', 610303, '金台区', 6103, '宝鸡市', 61, '陕西省', '金台区经二路100号', '34.3611', '107.1576', '13800138047', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (61, '兰州城关公寓', '城关区市中心，黄河之畔', 620102, '城关区', 6201, '兰州市', 62, '甘肃省', '城关区张掖路1号', '36.0611', '103.8343', '13800138048', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (62, '敦煌市公寓', '敦煌市靠近莫高窟，旅游胜地', 620982, '敦煌市', 6209, '酒泉市', 62, '甘肃省', '敦煌市阳关中路88号', '40.1400', '94.6689', '13800138049', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (63, '西宁城中公寓', '城中区市中心，生活便利', 630103, '城中区', 6301, '西宁市', 63, '青海省', '城中区西大街1号', '36.6172', '101.7797', '13800138050', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (64, '格尔木昆仑公寓', '格尔木市昆仑山下，高原城市', 2602, '格尔木市', 261, '海西州', 63, '青海省', '格尔木市昆仑路128号', '36.4133', '94.9000', '13800138051', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (65, '台北中正公寓', '中正区市中心，政治文化中心', 2701, '中正区', 270, '台北市', 27, '台湾省', '中正区忠孝东路1号', '25.0478', '121.5170', '13800138052', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (66, '高雄新兴公寓', '新兴区商业中心，生活便利', 2702, '新兴区', 271, '高雄市', 27, '台湾省', '新兴区中山路100号', '22.6200', '120.3000', '13800138053', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (67, '呼和浩特新城公寓', '新城区市中心，草原明珠', 150102, '新城区', 1501, '呼和浩特市', 15, '内蒙古自治区', '新城区新华大街1号', '40.8170', '111.6580', '13800138054', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (68, '包头昆都仑公寓', '昆都仑区工业中心，生活配套完善', 150203, '昆都仑区', 1502, '包头市', 15, '内蒙古自治区', '昆都仑区钢铁大街88号', '40.6500', '109.8247', '13800138055', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (69, '南宁青秀公寓', '青秀区市中心，绿城南宁', 450103, '青秀区', 4501, '南宁市', 45, '广西壮族自治区', '青秀区民族大道1号', '22.8170', '108.3665', '13800138056', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (70, '桂林秀峰公寓', '秀峰区市中心，旅游名城', 450302, '秀峰区', 4503, '桂林市', 45, '广西壮族自治区', '秀峰区中山中路88号', '25.2744', '110.2920', '13800138057', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (71, '银川兴庆公寓', '兴庆区市中心，塞上江南', 640104, '兴庆区', 6401, '银川市', 64, '宁夏回族自治区', '兴庆区解放西街1号', '38.4869', '106.2323', '13800138058', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (72, '吴忠利通公寓', '利通区市中心，回族聚居区', 640302, '利通区', 6403, '吴忠市', 64, '宁夏回族自治区', '利通区裕民东街88号', '37.9928', '106.1640', '13800138059', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (73, '乌鲁木齐天山公寓', '天山区市中心，西域风情', 650102, '天山区', 6501, '乌鲁木齐市', 65, '新疆维吾尔自治区', '天山区解放南路1号', '43.8256', '87.6168', '13800138060', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (74, '喀什古城公寓', '喀什市古城旁，民族特色浓郁', 653101, '喀什市', 6531, '喀什地区', 65, '新疆维吾尔自治区', '喀什市解放北路88号', '39.4742', '75.9782', '13800138061', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (75, '拉萨城关公寓', '城关区市中心，高原圣城', 540102, '城关区', 5401, '拉萨市', 54, '西藏自治区', '城关区北京中路1号', '29.6500', '91.1000', '13800138062', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (76, '日喀则桑珠孜公寓', '桑珠孜区市中心，后藏重镇', 540202, '桑珠孜区', 5402, '日喀则市', 54, '西藏自治区', '桑珠孜区青岛路88号', '29.2667', '88.8833', '13800138063', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (77, '香港岛公寓', '香港岛商业中心，国际都市', 3301, '香港岛', 330, '香港', 33, '香港特别行政区', '香港岛中环皇后大道中1号', '22.2783', '114.1636', '13800138064', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (78, '九龙公寓', '九龙半岛繁华地段，交通便利', 3302, '九龙', 330, '香港', 33, '香港特别行政区', '九龙尖沙咀弥敦道100号', '22.3000', '114.1833', '13800138065', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (79, '澳门半岛公寓', '澳门半岛历史城区，旅游胜地', 3401, '澳门半岛', 340, '澳门', 34, '澳门特别行政区', '澳门半岛议事亭前地1号', '22.1987', '113.5491', '13800138066', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (80, '氹仔公寓', '氹仔岛娱乐区，设施完善', 3402, '氹仔', 340, '澳门', 34, '澳门特别行政区', '氹仔金光大道88号', '22.1500', '113.5667', '13800138067', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info` VALUES (81, '成都春熙路豪华公寓', '位于市中心春熙路商圈，交通便利，设施齐全。', 510104, '锦江区', 5101, '成都市', 51, '四川省', '成都市锦江区春熙路XX号', '104.082231', '30.657702', '13800000001', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (82, '成都天府新区现代公寓', '毗邻天府新区CBD，环境优美，适合家庭居住。', 102, '天府新区', 5101, '成都市', 51, '四川省', '成都市天府新区科学城XX路XX号', '104.065948', '30.578564', '13800000002', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (83, '成都武侯区温馨小筑', '靠近武侯祠，文化氛围浓厚，安静舒适。', 510107, '武侯区', 5101, '成都市', 51, '四川省', '成都市武侯区武侯祠大街XX号', '104.056464', '30.649696', '13800000003', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (84, '绵阳科技城精英公寓', '紧邻科技城新区，高校环绕，青年社区。', 510703, '涪城区', 5107, '绵阳市', 51, '四川省', '绵阳市涪城区高新区XX路XX号', '104.741776', '31.464021', '13800000004', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (85, '绵阳安昌河畔花园', '沿河而建，景观宜人，生活配套成熟。', 510704, '游仙区', 5107, '绵阳市', 51, '四川省', '绵阳市游仙区安昌路XX段XX号', '104.773510', '31.473770', '13800000005', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (86, '南充五星街商务公寓', '地处繁华商业区，购物方便，拎包入住。', 511302, '顺庆区', 5113, '南充市', 51, '四川省', '南充市顺庆区五星街XX号', '106.082959', '30.795281', '13800000006', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (87, '达州凤凰山景公寓', '背靠凤凰山，空气清新，远离城市喧嚣。', 511702, '通川区', 5117, '达州市', 51, '四川省', '达州市通川区凤凰大道XX号', '107.502453', '31.209483', '13800000007', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (88, '德阳文庙广场公寓', '位于文庙广场旁，闹中取静，文化气息浓郁。', 510603, '旌阳区', 5106, '德阳市', 51, '四川省', '德阳市旌阳区文庙街XX号', '104.398643', '31.127641', '13800000008', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (89, '广元女皇故里宜居公寓', '临近千佛崖，历史底蕴深厚，适宜养老。', 510802, '利州区', 5108, '广元市', 51, '四川省', '广元市利州区苴国路XX号', '105.823401', '32.435491', '13800000009', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (90, '遂宁观音湖畔湖景房', '坐拥观音湖美景，湖滨休闲生活。', 510903, '船山区', 5109, '遂宁市', 51, '四川省', '遂宁市船山区渠河中路XX号', '105.571331', '30.513311', '13800000010', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (91, '内江甜城湖畔雅居', '依甜城湖而建，环境清幽，甜城文化体验。', 511002, '市中区', 5110, '内江市', 51, '四川省', '内江市市中区甜城大道XX号', '105.066137', '29.587081', '13800000011', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (92, '乐山大佛脚下禅意居', '俯瞰岷江，远眺大佛，禅意生活体验。', 511102, '市中区', 5111, '乐山市', 51, '四川省', '乐山市市中区凌云路XX号', '103.761263', '29.552115', '13800000012', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (93, '资阳娇子大道品质公寓', '位于城市主干道，交通便利，配套完善。', 512002, '雁江区', 5120, '资阳市', 51, '四川省', '资阳市雁江区娇子大道XX号', '104.653295', '30.122233', '13800000013', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (94, '宜宾三江汇流观景台公寓', '三江交汇处，视野开阔，江景一览无余。', 511502, '翠屏区', 5115, '宜宾市', 51, '四川省', '宜宾市翠屏区南岸西区XX路XX号', '104.630234', '28.760188', '13800000014', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (95, '自贡恐龙博物馆附近公寓', '靠近恐龙博物馆，科普氛围浓厚，亲子友好。', 510302, '自流井区', 5103, '自贡市', 51, '四川省', '自贡市自流井区恐龙博物馆路XX号', '104.778452', '29.337974', '13800000015', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (96, '攀枝花阳光花城度假公寓', '全年阳光充足，亚热带水果之乡，康养胜地。', 510402, '东区', 5104, '攀枝花市', 51, '四川省', '攀枝花市东区机场路XX号', '101.716007', '26.580446', '13800000016', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (97, '泸州酒城印象公寓', '感受酒城文化，毗邻长江，历史与现代交融。', 510502, '江阳区', 5105, '泸州市', 51, '四川省', '泸州市江阳区江阳西路XX号', '105.443936', '28.889138', '13800000017', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (98, '广安思源广场中心公寓', '位于城市中心，生活便利，纪念邓小平故里。', 511602, '广安区', 5116, '广安市', 51, '四川省', '广安市广安区思源大道XX号', '106.633331', '30.456391', '13800000018', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (99, '巴中红军文化主题公寓', '弘扬红军精神，红色旅游城市，宁静致远。', 511902, '巴州区', 5119, '巴中市', 51, '四川省', '巴中市巴州区红军路XX号', '106.753663', '31.858801', '13800000019', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info` VALUES (100, '雅安蒙顶山茶文化公寓', '雨城雅安，茶香四溢，体验蒙顶山茶文化。', 511802, '雨城区', 5118, '雅安市', 51, '四川省', '雅安市雨城区熊猫大道XX号', '103.005670', '30.031653', '13800000020', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (101, '眉山东坡故里书院公寓', '诗书之城，靠近三苏祠，书香门第之选。', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '眉山市东坡区三苏祠XX号', '103.831788', '30.048341', '13800000021', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (102, '阆中古城特色民宿', '千年古城，春节文化发源地，古韵悠长。', 1901, '阆中古城', 19, '阆中市', 51, '四川省', '南充市阆中市古城景区内XX街XX号', '106.000000', '31.555556', '13800000022', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (103, '阿坝马尔康雪域高原之家', '高原明珠，藏羌文化交融，体验民族风情。', 2001, '马尔康市', 20, '马尔康市', 51, '四川省', '阿坝州马尔康市达萨街XX号', '102.221389', '31.899722', '13800000023', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (104, '甘孜康定情歌故乡公寓', '跑马山下，情歌之城，感受康巴汉子豪情。', 2101, '康定市', 21, '康定市', 51, '四川省', '甘孜州康定市炉城镇XX街XX号', '101.963889', '30.050833', '13800000024', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (105, '凉山西昌邛海湖畔度假屋', '航天城，邛海湿地，阳光康养度假首选。', 2201, '西昌市', 22, '西昌市', 51, '四川省', '凉山州西昌市海滨路XX号', '102.266667', '27.883333', '13800000025', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info` VALUES (106, '锦江花园公寓', '位于成都市中心的舒适公寓，交通便利，周边设施齐全', 510104, '锦江区', 5101, '成都市', 51, '四川省', '成都市锦江区春熙路123号', '30.657760', '104.082230', '13800000001', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (107, '青羊小区', '历史悠久的住宅区，环境优美，适合家庭居住', 510105, '青羊区', 5101, '成都市', 51, '四川省', '成都市青羊区人民中路456号', '30.673760', '104.061790', '13800000002', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (108, '金牛家园', '现代化公寓楼，配备完善的生活设施', 510106, '金牛区', 5101, '成都市', 51, '四川省', '成都市金牛区解放路789号', '30.692360', '104.043060', '13800000003', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (109, '武侯雅居', '靠近科技园的智能公寓，适合年轻白领', 510107, '武侯区', 5101, '成都市', 51, '四川省', '成都市武侯区科华北路101号', '30.636660', '104.073490', '13800000004', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (110, '成华公寓', '大型社区，配套设施完善，生活便利', 510108, '成华区', 5101, '成都市', 51, '四川省', '成都市成华区建设路202号', '30.662260', '104.106490', '13800000005', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (111, '自贡华庭', '市中心高档公寓，环境优雅', 510302, '自流井区', 5103, '自贡市', 51, '四川省', '自贡市自流井区五星街301号', '29.339560', '104.773440', '13800000006', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (112, '攀枝花阳光公寓', '采光良好的现代化公寓，靠近公园', 510402, '东区', 5104, '攀枝花市', 51, '四川省', '攀枝花市东区机场路888号', '26.582260', '101.718630', '13800000007', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (113, '泸州江景房', '可欣赏江景的优质公寓，居住环境优美', 510502, '江阳区', 5105, '泸州市', 51, '四川省', '泸州市江阳区江阳路555号', '28.876560', '105.443960', '13800000008', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (114, '绵阳科技公寓', '邻近科技园区，适合科技从业者居住', 510703, '涪城区', 5107, '绵阳市', 51, '四川省', '绵阳市涪城区科创园路123号', '31.464060', '104.741760', '13800000009', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (115, '南充宜居小区', '性价比高的住宅小区，适合各类人群', 511302, '顺庆区', 5113, '南充市', 51, '四川省', '南充市顺庆区人民北路456号', '30.795260', '106.081620', '13800000010', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (116, '眉山温馨家园', '安静舒适的居住环境，适合养老居住', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '眉山市东坡区诗书路188号', '30.075360', '103.848480', '13800000011', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (117, '宜宾江湾公寓', '依山傍水的优质住宅，景观优美', 511502, '翠屏区', 5115, '宜宾市', 51, '四川省', '宜宾市翠屏区中山街268号', '28.751760', '104.630360', '13800000012', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (118, '广安安居小区', '安全舒适的居住环境，物业管理完善', 511602, '广安区', 5116, '广安市', 51, '四川省', '广安市广安区人民路168号', '30.456160', '106.633180', '13800000013', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (119, '达州温馨家园', '大型社区，配套设施齐全', 511702, '通川区', 5117, '达州市', 51, '四川省', '达州市通川区朝阳东路159号', '31.208660', '107.502460', '13800000014', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (120, '雅安雅居', '生态环境优美，空气质量良好', 511802, '雨城区', 5118, '雅安市', 51, '四川省', '雅安市雨城区人民路99号', '30.013460', '103.042460', '13800000015', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (121, '巴中宜居小区', '新兴住宅区，规划合理', 511902, '巴州区', 5119, '巴中市', 51, '四川省', '巴中市巴州区江北大道128号', '31.867960', '106.747160', '13800000016', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (122, '资阳幸福家园', '新兴发展区域，升值潜力大', 512002, '雁江区', 5120, '资阳市', 51, '四川省', '资阳市雁江区车城大道二段388号', '30.122260', '104.627660', '13800000017', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (123, '马尔康藏式公寓', '具有藏族特色的居住环境', 513201, '马尔康市', 5132, '阿坝藏族羌族自治州', 51, '四川省', '马尔康市马尔康镇团结街58号', '31.899660', '102.221360', '13800000018', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (124, '康定情歌公寓', '高原城市特色住宅，风景优美', 513301, '康定市', 5133, '甘孜藏族自治州', 51, '四川省', '康定市榆林新区木雅路1号', '30.032260', '101.963860', '13800000019', 1, NULL, '2025-09-30 16:01:10', 0);
INSERT INTO `apartment_info` VALUES (125, '西昌阳光公寓', '高原城市特色住宅，阳光充足', 513401, '西昌市', 5134, '凉山彝族自治州', 51, '四川省', '西昌市航天大道三段23号', '27.894560', '102.264460', '13800000020', 1, NULL, '2025-09-30 15:44:41', 1);
INSERT INTO `apartment_info` VALUES (126, '东坡区公寓', '位于东坡区的舒适公寓，交通便利，周边设施齐全', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '四川省眉山市东坡区XX街道XX号', '30.041', '103.833', '13800000001', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (127, '彭山区公寓', '位于彭山区的现代化公寓，环境优美，适合居住', 511403, '彭山区', 5114, '眉山市', 51, '四川省', '四川省眉山市彭山区XX街道XX号', '30.183', '103.870', '13800000002', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (128, '仁寿县公寓', '位于仁寿县的宽敞公寓，生活便利，性价比高', 511421, '仁寿县', 5114, '眉山市', 51, '四川省', '四川省眉山市仁寿县XX街道XX号', '30.033', '104.133', '13800000003', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (129, '洪雅县公寓', '位于洪雅县的精品公寓，环境清幽，空气清新', 511423, '洪雅县', 5114, '眉山市', 51, '四川省', '四川省眉山市洪雅县XX街道XX号', '29.917', '103.333', '13800000004', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (130, '丹棱县公寓', '位于丹棱县的舒适公寓，安静宜居，配套设施完善', 511424, '丹棱县', 5114, '眉山市', 51, '四川省', '四川省眉山市丹棱县XX街道XX号', '30.017', '103.517', '13800000005', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (131, '青神县公寓', '位于青神县的优质公寓，设计现代，服务周到', 511425, '青神县', 5114, '眉山市', 51, '四川省', '四川省眉山市青神县XX街道XX号', '29.833', '103.850', '13800000006', 1, NULL, NULL, 0);
INSERT INTO `apartment_info` VALUES (132, '东坡公寓', '东坡公寓', 511402, '', 5114, '', 51, '', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 09:55:12', '2025-09-10 16:45:31', 1);
INSERT INTO `apartment_info` VALUES (133, '东坡公寓2', '东坡公寓2', 511402, '', 5114, '', 51, '', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 09:59:01', '2025-09-10 16:45:29', 1);
INSERT INTO `apartment_info` VALUES (134, '东坡公寓', '东坡公寓', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_info` VALUES (135, '武侯小区', '近地铁线、带独卫、\n月租4000以内的一居室', 510107, '武侯区', 5101, '成都市', 51, '四川省', '四川省成都市武侯区四川省妇女儿童中心天府三街789号', '30.546346', '104.050744', '18190067037', 1, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_info` VALUES (136, '悦居公寓', '悦居公寓地处繁华商圈旁，周边交通便捷，多条公交线可达。公寓内设施齐全，房间布局合理，采光良好，还配备了共享休闲区，为租客营造舒适惬意的居住氛围。', 330106, '西湖区', 3301, '杭州市', 33, '浙江省', '浙江省杭州市西湖区文三路123号', '', '', '18190067037', 1, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_info` VALUES (137, '和平公寓1号', '和平公寓1号', 120101, '和平区', 1101, '市辖区', 12, '天津市', '天津市和平区天津市和平区网格化管理中心和平民生大厦西1门旁', '39.130808', '117.184834', '18190067037', 1, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_info` VALUES (138, '朝阳公寓壹号', '朝阳公寓壹号', 110105, '朝阳区', 1101, '市辖区', 11, '北京市', '北京市朝阳区北京市朝阳区酒仙桥社区卫生服务中心(高家园院区)北京市朝阳区酒仙桥高家园4区10号楼', '39.979641', '116.482927', '18190067037', 1, '2025-09-24 16:08:49', '2025-09-30 15:21:53', 0);
INSERT INTO `apartment_info` VALUES (139, '七天公寓', '七天公寓', 510681, '广汉市', 5106, '德阳市', 51, '四川省', '四川省德阳市广汉市四川省三星堆制药有限公司011乡道西150米', '31.018693', '104.166435', '15348103375', 1, '2025-10-27 10:24:00', '2026-03-07 13:19:13', 0);
INSERT INTO `apartment_info` VALUES (140, '全季公寓', '全季公寓', 510681, '广汉市', 5106, '德阳市', 51, '四川省', '四川省德阳市广汉市曹氏民间草药(佛山路西二段店)佛山路西二段101号', '30.967428', '104.273602', '18190067037', 1, '2025-10-27 15:04:16', '2026-03-07 13:18:38', 0);
INSERT INTO `apartment_info` VALUES (141, '西藏1号', '123321', 540102, '城关区', 5401, '拉萨市', 54, '西藏自治区', '西藏自治区拉萨市城关区西藏自治区党校5号楼西藏自治区行政学院送车点东北侧240米', '29.681885', '91.093049', '18190067037', 1, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_info` VALUES (142, '双流公寓', '双流公寓', 510116, '双流区', 5101, '成都市', 51, '四川省', '四川省成都市双流区四川省中西医结合医院高新医院(东门)新程大道1918号四川省中西医结合医院高新医院', '30.502278', '104.104533', '18190067037', 1, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_info` VALUES (143, '全季公寓', '12312', 130102, '长安区', 1301, '石家庄市', 13, '河北省', '河北省石家庄市长安区河北文达康健康管理有限责任公司荷园路与金明街交叉口东160米', '38.080125', '114.573725', '18190067037', 1, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_info` VALUES (144, '锦江壹号', '1111', 510104, '锦江区', 5101, '成都市', 51, '四川省', '四川省成都市锦江区工农院街19号一栋牛市口街道工农院街19号', '30.632158', '104.096926', '18190067037', 1, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_info` VALUES (145, '测试1号', '1111', 511403, '彭山区', 5114, '眉山市', 51, '四川省', '四川省眉山市彭山区天府新区航空旅游职业学院(校本部)剑南大道南延线航空大道中段168号', '30.337542', '103.921093', '18190067037', 1, '2026-05-07 10:21:36', NULL, 0);

-- ----------------------------
-- Table structure for apartment_info_backup
-- ----------------------------
DROP TABLE IF EXISTS `apartment_info_backup`;
CREATE TABLE `apartment_info_backup`  (
  `id` bigint NOT NULL DEFAULT 0 COMMENT '公寓id',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓名称',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓介绍',
  `district_id` bigint NULL DEFAULT NULL COMMENT '所处区域id',
  `district_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `city_id` bigint NULL DEFAULT NULL COMMENT '所处城市id',
  `city_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province_id` bigint NULL DEFAULT NULL COMMENT '所处省份id',
  `province_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `latitude` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `longitude` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公寓前台电话',
  `is_release` tinyint NULL DEFAULT NULL COMMENT '是否发布（1:发布，0:未发布）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apartment_info_backup
-- ----------------------------
INSERT INTO `apartment_info_backup` VALUES (9, '温都水城社区', '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。', 110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区温都水城北七家镇王府街55号', '40.103976', '116.370825', '1234567788', 1, '2023-06-20 09:13:52', '2024-09-18 09:32:42', 0);
INSERT INTO `apartment_info_backup` VALUES (10, '回龙观社区', '这是一座现代化公寓，位于城市中心，拥有多种户型，从舒适的一居室到宽敞的三居室。设施齐全，配备现代厨房、设施完备的健身房和社交区。公寓内部设计时尚精致，大窗户带来充足自然光线，俯瞰城市美景。24小时安保、智能门禁系统和停车位，确保居民安全与便利。步行可至购物中心、餐厅和公共交通站点，提供舒适便捷的城市生活体验。', 110114, '昌平区', 1101, '市辖区', 11, '北京市', '北京市昌平区回龙观东大街地铁站B东北口8号线', '40.081628', '116.363725', '12345678', 1, '2023-06-21 10:17:59', '2023-08-19 15:44:50', 0);
INSERT INTO `apartment_info_backup` VALUES (11, '四川大学锦江学院16栋楼', '四川大学锦江学院16栋楼', 511403, '彭山区', 5114, '眉山市', 51, '四川省', '四川省眉山市彭山区四川大学锦江学院锦江大道1号', '30.215596', '103.871385', '13686869696', 1, '2025-09-09 10:42:33', '2025-09-09 10:42:51', 0);
INSERT INTO `apartment_info_backup` VALUES (12, '成都市武侯区公寓', '成都市武侯区', 510107, '武侯区', 5101, '眉山市', 51, '四川省', '四川省成都市武侯区孵化园(地铁站)18号线;1号线;9号线', '30.575873', '104.064313', '18190067037', 1, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (13, '北京朝阳公寓', '位于朝阳区的高档公寓，交通便利', 101, '朝阳区', 10, '北京市', 1, '北京市', '朝阳区建国路88号', '39.9042', '116.4074', '13800138000', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (14, '北京海淀公寓', '靠近高校区，适合学生居住', 102, '海淀区', 10, '北京市', 1, '北京市', '海淀区中关村大街1号', '39.9975', '116.3376', '13800138001', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (15, '上海浦东公寓', '浦东新区核心地段，江景房', 201, '浦东新区', 20, '上海市', 2, '上海市', '浦东新区陆家嘴环路1000号', '31.2304', '121.5007', '13800138002', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (16, '上海徐汇公寓', '徐汇区成熟社区，配套完善', 202, '徐汇区', 20, '上海市', 2, '上海市', '徐汇区淮海中路199号', '31.1957', '121.4441', '13800138003', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (17, '天津和平公寓', '和平区商业中心，购物方便', 301, '和平区', 30, '天津市', 3, '天津市', '和平区南京路189号', '39.1315', '117.2009', '13800138004', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (18, '天津滨海公寓', '滨海新区海景公寓，环境优美', 302, '滨海新区', 30, '天津市', 3, '天津市', '滨海新区响螺湾商务区', '39.0162', '117.7232', '13800138005', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (19, '重庆渝中公寓', '渝中区解放碑附近，交通便利', 401, '渝中区', 40, '重庆市', 4, '重庆市', '渝中区解放碑八一路', '29.5630', '106.5514', '13800138006', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (20, '重庆江北公寓', '江北区观音桥商圈，生活便利', 402, '江北区', 40, '重庆市', 4, '重庆市', '江北区观音桥步行街', '29.5857', '106.5991', '13800138007', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (21, '石家庄裕华公寓', '裕华区高端社区，配套齐全', 501, '裕华区', 50, '石家庄市', 5, '河北省', '裕华区槐安东路123号', '38.0451', '114.5149', '13800138008', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (22, '唐山路北公寓', '路北区中心位置，交通便利', 502, '路北区', 51, '唐山市', 5, '河北省', '路北区新华东道55号', '39.6334', '118.1781', '13800138009', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (23, '太原小店公寓', '小店区新兴商务区，现代化公寓', 601, '小店区', 60, '太原市', 6, '山西省', '小店区长风街111号', '37.8705', '112.5621', '13800138010', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (24, '大同平城公寓', '平城区老城区改造项目，历史与现代结合', 602, '平城区', 61, '大同市', 6, '山西省', '平城区永泰南路88号', '40.0617', '113.3055', '13800138011', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (25, '沈阳沈河公寓', '沈河区市中心，生活便利', 701, '沈河区', 70, '沈阳市', 7, '辽宁省', '沈河区青年大街200号', '41.8056', '123.4286', '13800138012', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (26, '大连中山公寓', '中山区海景房，环境宜人', 702, '中山区', 71, '大连市', 7, '辽宁省', '中山区人民路50号', '38.9140', '121.6147', '13800138013', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (27, '长春朝阳公寓', '朝阳区商业中心，交通便利', 801, '朝阳区', 80, '长春市', 8, '吉林省', '朝阳区红旗街155号', '43.8868', '125.3245', '13800138014', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (28, '吉林昌邑公寓', '昌邑区松花江畔，风景优美', 802, '昌邑区', 81, '吉林市', 8, '吉林省', '昌邑区松江中路66号', '43.8563', '126.5348', '13800138015', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (29, '哈尔滨南岗公寓', '南岗区高校集中地，学术氛围浓厚', 901, '南岗区', 90, '哈尔滨市', 9, '黑龙江省', '南岗区学府路74号', '45.8038', '126.5348', '13800138016', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (30, '大庆萨尔图公寓', '萨尔图区油田附近，生活配套完善', 902, '萨尔图区', 91, '大庆市', 9, '黑龙江省', '萨尔图区东风路33号', '46.5958', '125.0386', '13800138017', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (31, '南京玄武公寓', '玄武区靠近紫金山，环境优美', 1001, '玄武区', 100, '南京市', 10, '江苏省', '玄武区中山陵路1号', '32.0603', '118.7969', '13800138018', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (32, '苏州姑苏公寓', '姑苏区古城区，历史文化底蕴深厚', 1002, '姑苏区', 101, '苏州市', 10, '江苏省', '姑苏区干将东路888号', '31.2993', '120.6195', '13800138019', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (33, '杭州西湖公寓', '西湖区临西湖，风景秀丽', 1101, '西湖区', 110, '杭州市', 11, '浙江省', '西湖区西湖大道1号', '30.2741', '120.1551', '13800138020', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (34, '宁波鄞州公寓', '鄞州区商业中心，现代化设施齐全', 1102, '鄞州区', 111, '宁波市', 11, '浙江省', '鄞州区鄞州大道128号', '29.8683', '121.5440', '13800138021', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (35, '合肥蜀山公寓', '蜀山区政务新区，环境优美', 1201, '蜀山区', 120, '合肥市', 12, '安徽省', '蜀山区潜山路1号', '31.8611', '117.2854', '13800138022', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (36, '黄山屯溪公寓', '屯溪区靠近黄山风景区，旅游便捷', 1202, '屯溪区', 121, '黄山市', 12, '安徽省', '屯溪区黄山大道100号', '29.7167', '118.3133', '13800138023', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (37, '福州鼓楼公寓', '鼓楼区市中心，商业繁华', 1301, '鼓楼区', 130, '福州市', 13, '福建省', '鼓楼区东街口1号', '26.0990', '119.2958', '13800138024', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (38, '厦门思明公寓', '思明区环岛路，海景房', 1302, '思明区', 131, '厦门市', 13, '福建省', '思明区环岛南路128号', '24.4798', '118.0894', '13800138025', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (39, '南昌东湖公寓', '东湖区市中心，生活便利', 1401, '东湖区', 140, '南昌市', 14, '江西省', '东湖区八一广场1号', '28.6358', '115.8167', '13800138026', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (40, '九江浔阳公寓', '浔阳区长江边，江景房', 1402, '浔阳区', 141, '九江市', 14, '江西省', '浔阳区滨江路88号', '29.7167', '115.9833', '13800138027', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (41, '济南历下公寓', '历下区市中心，商业发达', 1501, '历下区', 150, '济南市', 15, '山东省', '历下区泉城路1号', '36.6658', '117.0200', '13800138028', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (42, '青岛市南公寓', '市南区海滨，气候宜人', 1502, '市南区', 151, '青岛市', 15, '山东省', '市南区香港中路12号', '36.0671', '120.3826', '13800138029', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (43, '郑州金水公寓', '金水区商业中心，交通便利', 1601, '金水区', 160, '郑州市', 16, '河南省', '金水区花园路1号', '34.7472', '113.6250', '13800138030', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (44, '洛阳西工公寓', '西工区市中心，历史文化名城', 1602, '西工区', 161, '洛阳市', 16, '河南省', '西工区中州中路100号', '34.6875', '112.4550', '13800138031', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (45, '武汉江汉公寓', '江汉区商业中心，生活便利', 1701, '江汉区', 170, '武汉市', 17, '湖北省', '江汉区江汉路1号', '30.5928', '114.3055', '13800138032', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (46, '宜昌西陵公寓', '西陵区长江边，三峡门户', 1702, '西陵区', 171, '宜昌市', 17, '湖北省', '西陵区东山大道88号', '30.7167', '111.2833', '13800138033', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (47, '长沙芙蓉公寓', '芙蓉区市中心，商业繁华', 1801, '芙蓉区', 180, '长沙市', 18, '湖南省', '芙蓉区五一大道1号', '28.1120', '112.9822', '13800138034', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (48, '张家界永定公寓', '永定区靠近武陵源，旅游方便', 1802, '永定区', 181, '张家界市', 18, '湖南省', '永定区子午路128号', '29.1167', '110.4833', '13800138035', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (49, '广州天河公寓', '天河区商业中心，现代化设施', 1901, '天河区', 190, '广州市', 19, '广东省', '天河区天河路385号', '23.1291', '113.3245', '13800138036', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (50, '深圳福田公寓', '福田区市中心，金融中心', 1902, '福田区', 191, '深圳市', 19, '广东省', '福田区深南大道1000号', '22.5431', '114.0579', '13800138037', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (51, '海口龙华公寓', '龙华区市中心，生活便利', 2001, '龙华区', 200, '海口市', 20, '海南省', '龙华区龙华路1号', '20.0451', '110.3494', '13800138038', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (52, '三亚吉阳公寓', '吉阳区三亚湾，海景房', 2002, '吉阳区', 201, '三亚市', 20, '海南省', '吉阳区三亚湾路128号', '18.1801', '109.5106', '13800138039', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (53, '成都锦江公寓', '锦江区商业中心，美食众多', 2101, '锦江区', 210, '成都市', 51, '四川省', '锦江区春熙路1号', '30.6570', '104.0650', '13800138040', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (54, '绵阳涪城公寓', '涪城区市中心，科技城核心区', 2102, '涪城区', 211, '绵阳市', 51, '四川省', '涪城区临园路100号', '31.4657', '104.7589', '13800138041', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (55, '贵阳南明公寓', '南明区市中心，生活便利', 2201, '南明区', 220, '贵阳市', 22, '贵州省', '南明区中华南路1号', '26.5978', '106.7135', '13800138042', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (56, '遵义红花岗公寓', '红花岗区市中心，历史名城', 2202, '红花岗区', 221, '遵义市', 22, '贵州省', '红花岗区解放路88号', '27.7081', '106.9953', '13800138043', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (57, '昆明五华公寓', '五华区市中心，四季如春', 2301, '五华区', 230, '昆明市', 23, '云南省', '五华区春城路1号', '25.0389', '102.7183', '13800138044', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (58, '丽江古城公寓', '古城区靠近丽江古城，旅游方便', 2302, '古城区', 231, '丽江市', 23, '云南省', '古城区四方街1号', '26.8667', '100.2200', '13800138045', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (59, '西安雁塔公寓', '雁塔区靠近大雁塔，文化氛围浓厚', 2401, '雁塔区', 240, '西安市', 24, '陕西省', '雁塔区大雁塔南广场1号', '34.1658', '108.9540', '13800138046', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (60, '宝鸡金台公寓', '金台区市中心，工业重镇', 2402, '金台区', 241, '宝鸡市', 24, '陕西省', '金台区经二路100号', '34.3611', '107.1576', '13800138047', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (61, '兰州城关公寓', '城关区市中心，黄河之畔', 2501, '城关区', 250, '兰州市', 25, '甘肃省', '城关区张掖路1号', '36.0611', '103.8343', '13800138048', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (62, '敦煌市公寓', '敦煌市靠近莫高窟，旅游胜地', 2502, '敦煌市', 251, '酒泉市', 25, '甘肃省', '敦煌市阳关中路88号', '40.1400', '94.6689', '13800138049', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (63, '西宁城中公寓', '城中区市中心，生活便利', 2601, '城中区', 260, '西宁市', 26, '青海省', '城中区西大街1号', '36.6172', '101.7797', '13800138050', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (64, '格尔木昆仑公寓', '格尔木市昆仑山下，高原城市', 2602, '格尔木市', 261, '海西州', 26, '青海省', '格尔木市昆仑路128号', '36.4133', '94.9000', '13800138051', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (65, '台北中正公寓', '中正区市中心，政治文化中心', 2701, '中正区', 270, '台北市', 27, '台湾省', '中正区忠孝东路1号', '25.0478', '121.5170', '13800138052', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (66, '高雄新兴公寓', '新兴区商业中心，生活便利', 2702, '新兴区', 271, '高雄市', 27, '台湾省', '新兴区中山路100号', '22.6200', '120.3000', '13800138053', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (67, '呼和浩特新城公寓', '新城区市中心，草原明珠', 2801, '新城区', 280, '呼和浩特市', 28, '内蒙古自治区', '新城区新华大街1号', '40.8170', '111.6580', '13800138054', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (68, '包头昆都仑公寓', '昆都仑区工业中心，生活配套完善', 2802, '昆都仑区', 281, '包头市', 28, '内蒙古自治区', '昆都仑区钢铁大街88号', '40.6500', '109.8247', '13800138055', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (69, '南宁青秀公寓', '青秀区市中心，绿城南宁', 2901, '青秀区', 290, '南宁市', 29, '广西壮族自治区', '青秀区民族大道1号', '22.8170', '108.3665', '13800138056', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (70, '桂林秀峰公寓', '秀峰区市中心，旅游名城', 2902, '秀峰区', 291, '桂林市', 29, '广西壮族自治区', '秀峰区中山中路88号', '25.2744', '110.2920', '13800138057', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (71, '银川兴庆公寓', '兴庆区市中心，塞上江南', 3001, '兴庆区', 300, '银川市', 30, '宁夏回族自治区', '兴庆区解放西街1号', '38.4869', '106.2323', '13800138058', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (72, '吴忠利通公寓', '利通区市中心，回族聚居区', 3002, '利通区', 301, '吴忠市', 30, '宁夏回族自治区', '利通区裕民东街88号', '37.9928', '106.1640', '13800138059', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (73, '乌鲁木齐天山公寓', '天山区市中心，西域风情', 3101, '天山区', 310, '乌鲁木齐市', 31, '新疆维吾尔自治区', '天山区解放南路1号', '43.8256', '87.6168', '13800138060', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (74, '喀什古城公寓', '喀什市古城旁，民族特色浓郁', 3102, '喀什市', 311, '喀什地区', 31, '新疆维吾尔自治区', '喀什市解放北路88号', '39.4742', '75.9782', '13800138061', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (75, '拉萨城关公寓', '城关区市中心，高原圣城', 3201, '城关区', 320, '拉萨市', 32, '西藏自治区', '城关区北京中路1号', '29.6500', '91.1000', '13800138062', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (76, '日喀则桑珠孜公寓', '桑珠孜区市中心，后藏重镇', 3202, '桑珠孜区', 321, '日喀则市', 32, '西藏自治区', '桑珠孜区青岛路88号', '29.2667', '88.8833', '13800138063', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (77, '香港岛公寓', '香港岛商业中心，国际都市', 3301, '香港岛', 330, '香港', 33, '香港特别行政区', '香港岛中环皇后大道中1号', '22.2783', '114.1636', '13800138064', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (78, '九龙公寓', '九龙半岛繁华地段，交通便利', 3302, '九龙', 330, '香港', 33, '香港特别行政区', '九龙尖沙咀弥敦道100号', '22.3000', '114.1833', '13800138065', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (79, '澳门半岛公寓', '澳门半岛历史城区，旅游胜地', 3401, '澳门半岛', 340, '澳门', 34, '澳门特别行政区', '澳门半岛议事亭前地1号', '22.1987', '113.5491', '13800138066', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (80, '氹仔公寓', '氹仔岛娱乐区，设施完善', 3402, '氹仔', 340, '澳门', 34, '澳门特别行政区', '氹仔金光大道88号', '22.1500', '113.5667', '13800138067', 1, '2025-09-09 16:11:24', '2025-09-09 16:11:24', 0);
INSERT INTO `apartment_info_backup` VALUES (81, '成都春熙路豪华公寓', '位于市中心春熙路商圈，交通便利，设施齐全。', 101, '锦江区', 1, '成都市', 51, '四川省', '成都市锦江区春熙路XX号', '104.082231', '30.657702', '13800000001', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (82, '成都天府新区现代公寓', '毗邻天府新区CBD，环境优美，适合家庭居住。', 102, '天府新区', 1, '成都市', 51, '四川省', '成都市天府新区科学城XX路XX号', '104.065948', '30.578564', '13800000002', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (83, '成都武侯区温馨小筑', '靠近武侯祠，文化氛围浓厚，安静舒适。', 103, '武侯区', 1, '成都市', 51, '四川省', '成都市武侯区武侯祠大街XX号', '104.056464', '30.649696', '13800000003', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (84, '绵阳科技城精英公寓', '紧邻科技城新区，高校环绕，青年社区。', 201, '涪城区', 2, '绵阳市', 51, '四川省', '绵阳市涪城区高新区XX路XX号', '104.741776', '31.464021', '13800000004', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (85, '绵阳安昌河畔花园', '沿河而建，景观宜人，生活配套成熟。', 202, '游仙区', 2, '绵阳市', 51, '四川省', '绵阳市游仙区安昌路XX段XX号', '104.773510', '31.473770', '13800000005', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (86, '南充五星街商务公寓', '地处繁华商业区，购物方便，拎包入住。', 301, '顺庆区', 3, '南充市', 51, '四川省', '南充市顺庆区五星街XX号', '106.082959', '30.795281', '13800000006', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (87, '达州凤凰山景公寓', '背靠凤凰山，空气清新，远离城市喧嚣。', 401, '通川区', 4, '达州市', 51, '四川省', '达州市通川区凤凰大道XX号', '107.502453', '31.209483', '13800000007', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (88, '德阳文庙广场公寓', '位于文庙广场旁，闹中取静，文化气息浓郁。', 501, '旌阳区', 5, '德阳市', 51, '四川省', '德阳市旌阳区文庙街XX号', '104.398643', '31.127641', '13800000008', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (89, '广元女皇故里宜居公寓', '临近千佛崖，历史底蕴深厚，适宜养老。', 601, '利州区', 6, '广元市', 51, '四川省', '广元市利州区苴国路XX号', '105.823401', '32.435491', '13800000009', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (90, '遂宁观音湖畔湖景房', '坐拥观音湖美景，湖滨休闲生活。', 701, '船山区', 7, '遂宁市', 51, '四川省', '遂宁市船山区渠河中路XX号', '105.571331', '30.513311', '13800000010', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (91, '内江甜城湖畔雅居', '依甜城湖而建，环境清幽，甜城文化体验。', 801, '市中区', 8, '内江市', 51, '四川省', '内江市市中区甜城大道XX号', '105.066137', '29.587081', '13800000011', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (92, '乐山大佛脚下禅意居', '俯瞰岷江，远眺大佛，禅意生活体验。', 901, '市中区', 9, '乐山市', 51, '四川省', '乐山市市中区凌云路XX号', '103.761263', '29.552115', '13800000012', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (93, '资阳娇子大道品质公寓', '位于城市主干道，交通便利，配套完善。', 1001, '雁江区', 10, '资阳市', 51, '四川省', '资阳市雁江区娇子大道XX号', '104.653295', '30.122233', '13800000013', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (94, '宜宾三江汇流观景台公寓', '三江交汇处，视野开阔，江景一览无余。', 1101, '翠屏区', 11, '宜宾市', 51, '四川省', '宜宾市翠屏区南岸西区XX路XX号', '104.630234', '28.760188', '13800000014', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (95, '自贡恐龙博物馆附近公寓', '靠近恐龙博物馆，科普氛围浓厚，亲子友好。', 1201, '自流井区', 12, '自贡市', 51, '四川省', '自贡市自流井区恐龙博物馆路XX号', '104.778452', '29.337974', '13800000015', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (96, '攀枝花阳光花城度假公寓', '全年阳光充足，亚热带水果之乡，康养胜地。', 1301, '东区', 13, '攀枝花市', 51, '四川省', '攀枝花市东区机场路XX号', '101.716007', '26.580446', '13800000016', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (97, '泸州酒城印象公寓', '感受酒城文化，毗邻长江，历史与现代交融。', 1401, '江阳区', 14, '泸州市', 51, '四川省', '泸州市江阳区江阳西路XX号', '105.443936', '28.889138', '13800000017', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (98, '广安思源广场中心公寓', '位于城市中心，生活便利，纪念邓小平故里。', 1501, '广安区', 15, '广安市', 51, '四川省', '广安市广安区思源大道XX号', '106.633331', '30.456391', '13800000018', 1, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (99, '巴中红军文化主题公寓', '弘扬红军精神，红色旅游城市，宁静致远。', 1601, '巴州区', 16, '巴中市', 51, '四川省', '巴中市巴州区红军路XX号', '106.753663', '31.858801', '13800000019', 0, '2025-09-09 16:11:48', '2025-09-09 16:11:48', 0);
INSERT INTO `apartment_info_backup` VALUES (100, '雅安蒙顶山茶文化公寓', '雨城雅安，茶香四溢，体验蒙顶山茶文化。', 1701, '雨城区', 17, '雅安市', 51, '四川省', '雅安市雨城区熊猫大道XX号', '103.005670', '30.031653', '13800000020', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (101, '眉山东坡故里书院公寓', '诗书之城，靠近三苏祠，书香门第之选。', 1801, '东坡区', 18, '眉山市', 51, '四川省', '眉山市东坡区三苏祠XX号', '103.831788', '30.048341', '13800000021', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (102, '阆中古城特色民宿', '千年古城，春节文化发源地，古韵悠长。', 1901, '阆中古城', 19, '阆中市', 51, '四川省', '南充市阆中市古城景区内XX街XX号', '106.000000', '31.555556', '13800000022', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (103, '阿坝马尔康雪域高原之家', '高原明珠，藏羌文化交融，体验民族风情。', 2001, '马尔康市', 20, '马尔康市', 51, '四川省', '阿坝州马尔康市达萨街XX号', '102.221389', '31.899722', '13800000023', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (104, '甘孜康定情歌故乡公寓', '跑马山下，情歌之城，感受康巴汉子豪情。', 2101, '康定市', 21, '康定市', 51, '四川省', '甘孜州康定市炉城镇XX街XX号', '101.963889', '30.050833', '13800000024', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (105, '凉山西昌邛海湖畔度假屋', '航天城，邛海湿地，阳光康养度假首选。', 2201, '西昌市', 22, '西昌市', 51, '四川省', '凉山州西昌市海滨路XX号', '102.266667', '27.883333', '13800000025', 1, '2025-09-09 16:11:49', '2025-09-09 16:11:49', 0);
INSERT INTO `apartment_info_backup` VALUES (106, '锦江花园公寓', '位于成都市中心的舒适公寓，交通便利，周边设施齐全', 510104, '锦江区', 5101, '成都市', 51, '四川省', '成都市锦江区春熙路123号', '30.657760', '104.082230', '13800000001', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (107, '青羊小区', '历史悠久的住宅区，环境优美，适合家庭居住', 510105, '青羊区', 5101, '成都市', 51, '四川省', '成都市青羊区人民中路456号', '30.673760', '104.061790', '13800000002', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (108, '金牛家园', '现代化公寓楼，配备完善的生活设施', 510106, '金牛区', 5101, '成都市', 51, '四川省', '成都市金牛区解放路789号', '30.692360', '104.043060', '13800000003', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (109, '武侯雅居', '靠近科技园的智能公寓，适合年轻白领', 510107, '武侯区', 5101, '成都市', 51, '四川省', '成都市武侯区科华北路101号', '30.636660', '104.073490', '13800000004', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (110, '成华公寓', '大型社区，配套设施完善，生活便利', 510108, '成华区', 5101, '成都市', 51, '四川省', '成都市成华区建设路202号', '30.662260', '104.106490', '13800000005', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (111, '自贡华庭', '市中心高档公寓，环境优雅', 510302, '自流井区', 5103, '自贡市', 51, '四川省', '自贡市自流井区五星街301号', '29.339560', '104.773440', '13800000006', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (112, '攀枝花阳光公寓', '采光良好的现代化公寓，靠近公园', 510402, '东区', 5104, '攀枝花市', 51, '四川省', '攀枝花市东区机场路888号', '26.582260', '101.718630', '13800000007', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (113, '泸州江景房', '可欣赏江景的优质公寓，居住环境优美', 510502, '江阳区', 5105, '泸州市', 51, '四川省', '泸州市江阳区江阳路555号', '28.876560', '105.443960', '13800000008', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (114, '绵阳科技公寓', '邻近科技园区，适合科技从业者居住', 510703, '涪城区', 5107, '绵阳市', 51, '四川省', '绵阳市涪城区科创园路123号', '31.464060', '104.741760', '13800000009', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (115, '南充宜居小区', '性价比高的住宅小区，适合各类人群', 511302, '顺庆区', 5113, '南充市', 51, '四川省', '南充市顺庆区人民北路456号', '30.795260', '106.081620', '13800000010', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (116, '眉山温馨家园', '安静舒适的居住环境，适合养老居住', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '眉山市东坡区诗书路188号', '30.075360', '103.848480', '13800000011', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (117, '宜宾江湾公寓', '依山傍水的优质住宅，景观优美', 511502, '翠屏区', 5115, '宜宾市', 51, '四川省', '宜宾市翠屏区中山街268号', '28.751760', '104.630360', '13800000012', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (118, '广安安居小区', '安全舒适的居住环境，物业管理完善', 511602, '广安区', 5116, '广安市', 51, '四川省', '广安市广安区人民路168号', '30.456160', '106.633180', '13800000013', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (119, '达州温馨家园', '大型社区，配套设施齐全', 511702, '通川区', 5117, '达州市', 51, '四川省', '达州市通川区朝阳东路159号', '31.208660', '107.502460', '13800000014', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (120, '雅安雅居', '生态环境优美，空气质量良好', 511802, '雨城区', 5118, '雅安市', 51, '四川省', '雅安市雨城区人民路99号', '30.013460', '103.042460', '13800000015', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (121, '巴中宜居小区', '新兴住宅区，规划合理', 511902, '巴州区', 5119, '巴中市', 51, '四川省', '巴中市巴州区江北大道128号', '31.867960', '106.747160', '13800000016', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (122, '资阳幸福家园', '新兴发展区域，升值潜力大', 512002, '雁江区', 5120, '资阳市', 51, '四川省', '资阳市雁江区车城大道二段388号', '30.122260', '104.627660', '13800000017', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (123, '马尔康藏式公寓', '具有藏族特色的居住环境', 513201, '马尔康市', 5132, '阿坝藏族羌族自治州', 51, '四川省', '马尔康市马尔康镇团结街58号', '31.899660', '102.221360', '13800000018', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (124, '康定情歌公寓', '高原城市特色住宅，风景优美', 513301, '康定市', 5133, '甘孜藏族自治州', 51, '四川省', '康定市榆林新区木雅路1号', '30.032260', '101.963860', '13800000019', 1, NULL, '2025-09-30 16:01:10', 0);
INSERT INTO `apartment_info_backup` VALUES (125, '西昌阳光公寓', '高原城市特色住宅，阳光充足', 513401, '西昌市', 5134, '凉山彝族自治州', 51, '四川省', '西昌市航天大道三段23号', '27.894560', '102.264460', '13800000020', 1, NULL, '2025-09-30 15:44:41', 1);
INSERT INTO `apartment_info_backup` VALUES (126, '东坡区公寓', '位于东坡区的舒适公寓，交通便利，周边设施齐全', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '四川省眉山市东坡区XX街道XX号', '30.041', '103.833', '13800000001', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (127, '彭山区公寓', '位于彭山区的现代化公寓，环境优美，适合居住', 511403, '彭山区', 5114, '眉山市', 51, '四川省', '四川省眉山市彭山区XX街道XX号', '30.183', '103.870', '13800000002', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (128, '仁寿县公寓', '位于仁寿县的宽敞公寓，生活便利，性价比高', 511421, '仁寿县', 5114, '眉山市', 51, '四川省', '四川省眉山市仁寿县XX街道XX号', '30.033', '104.133', '13800000003', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (129, '洪雅县公寓', '位于洪雅县的精品公寓，环境清幽，空气清新', 511423, '洪雅县', 5114, '眉山市', 51, '四川省', '四川省眉山市洪雅县XX街道XX号', '29.917', '103.333', '13800000004', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (130, '丹棱县公寓', '位于丹棱县的舒适公寓，安静宜居，配套设施完善', 511424, '丹棱县', 5114, '眉山市', 51, '四川省', '四川省眉山市丹棱县XX街道XX号', '30.017', '103.517', '13800000005', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (131, '青神县公寓', '位于青神县的优质公寓，设计现代，服务周到', 511425, '青神县', 5114, '眉山市', 51, '四川省', '四川省眉山市青神县XX街道XX号', '29.833', '103.850', '13800000006', 1, NULL, NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (132, '东坡公寓', '东坡公寓', 511402, '', 5114, '', 51, '', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 09:55:12', '2025-09-10 16:45:31', 1);
INSERT INTO `apartment_info_backup` VALUES (133, '东坡公寓2', '东坡公寓2', 511402, '', 5114, '', 51, '', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 09:59:01', '2025-09-10 16:45:29', 1);
INSERT INTO `apartment_info_backup` VALUES (134, '东坡公寓', '东坡公寓', 511402, '东坡区', 5114, '眉山市', 51, '四川省', '四川省眉山市东坡区四川大学眉山校区(公交站)25路;T51路;T51路(06:20)', '30.070247', '103.928265', '18190067037', 1, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (135, '武侯小区', '近地铁线、带独卫、\n月租4000以内的一居室', 510107, '武侯区', 5101, '成都市', 51, '四川省', '四川省成都市武侯区四川省妇女儿童中心天府三街789号', '30.546346', '104.050744', '18190067037', 1, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (136, '悦居公寓', '悦居公寓地处繁华商圈旁，周边交通便捷，多条公交线可达。公寓内设施齐全，房间布局合理，采光良好，还配备了共享休闲区，为租客营造舒适惬意的居住氛围。', 330106, '西湖区', 3301, '杭州市', 33, '浙江省', '浙江省杭州市西湖区文三路123号', '', '', '18190067037', 1, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (137, '和平公寓1号', '和平公寓1号', 120101, '和平区', 1201, '市辖区', 12, '天津市', '天津市和平区天津市和平区网格化管理中心和平民生大厦西1门旁', '39.130808', '117.184834', '18190067037', 1, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_info_backup` VALUES (138, '朝阳公寓壹号', '朝阳公寓壹号', 110105, '朝阳区', 1101, '市辖区', 11, '北京市', '北京市朝阳区北京市朝阳区酒仙桥社区卫生服务中心(高家园院区)北京市朝阳区酒仙桥高家园4区10号楼', '39.979641', '116.482927', '18190067037', 1, '2025-09-24 16:08:49', '2025-09-30 15:21:53', 0);
INSERT INTO `apartment_info_backup` VALUES (139, '安卓公寓', '安卓公寓', 510681, '广汉市', 5106, '德阳市', 51, '四川省', '四川省德阳市广汉市四川省三星堆制药有限公司011乡道西150米', '31.018693', '104.166435', '15348103375', 1, '2025-10-27 10:24:00', NULL, 0);

-- ----------------------------
-- Table structure for apartment_label
-- ----------------------------
DROP TABLE IF EXISTS `apartment_label`;
CREATE TABLE `apartment_label`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '公寓id',
  `label_id` bigint NULL DEFAULT NULL COMMENT '标签id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公寓标签关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apartment_label
-- ----------------------------
INSERT INTO `apartment_label` VALUES (30, 4, 2, '2023-06-19 23:20:06', NULL, 1);
INSERT INTO `apartment_label` VALUES (31, 4, 3, '2023-06-19 23:20:06', NULL, 1);
INSERT INTO `apartment_label` VALUES (32, 4, 2, '2023-06-19 23:21:42', NULL, 1);
INSERT INTO `apartment_label` VALUES (33, 4, 3, '2023-06-19 23:21:42', NULL, 1);
INSERT INTO `apartment_label` VALUES (34, 5, 2, '2023-06-20 08:47:57', NULL, 1);
INSERT INTO `apartment_label` VALUES (35, 5, 3, '2023-06-20 08:47:57', NULL, 1);
INSERT INTO `apartment_label` VALUES (36, 6, 2, '2023-06-20 08:53:00', NULL, 1);
INSERT INTO `apartment_label` VALUES (37, 6, 3, '2023-06-20 08:53:00', NULL, 1);
INSERT INTO `apartment_label` VALUES (38, 7, 2, '2023-06-20 08:53:35', NULL, 1);
INSERT INTO `apartment_label` VALUES (39, 7, 3, '2023-06-20 08:53:35', NULL, 1);
INSERT INTO `apartment_label` VALUES (40, 8, 2, '2023-06-20 08:53:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (41, 8, 3, '2023-06-20 08:53:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (42, 8, 2, '2023-06-20 08:54:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (43, 8, 3, '2023-06-20 08:54:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (44, 9, 2, '2023-06-20 09:13:52', NULL, 1);
INSERT INTO `apartment_label` VALUES (45, 9, 3, '2023-06-20 09:13:52', NULL, 1);
INSERT INTO `apartment_label` VALUES (46, 9, 2, '2023-06-20 09:15:41', NULL, 1);
INSERT INTO `apartment_label` VALUES (47, 9, 3, '2023-06-20 09:15:41', NULL, 1);
INSERT INTO `apartment_label` VALUES (48, 9, 2, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_label` VALUES (49, 9, 3, '2023-06-20 10:15:43', NULL, 1);
INSERT INTO `apartment_label` VALUES (50, 9, 2, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (51, 9, 3, '2023-06-20 10:17:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (52, 10, 1, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (53, 10, 2, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (54, 10, 3, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (55, 10, 4, '2023-06-21 10:17:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (56, 11, 1, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_label` VALUES (57, 11, 2, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_label` VALUES (58, 11, 3, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_label` VALUES (59, 11, 4, '2023-06-21 10:19:46', NULL, 1);
INSERT INTO `apartment_label` VALUES (60, 10, 1, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_label` VALUES (61, 10, 2, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_label` VALUES (62, 10, 4, '2023-06-21 10:21:36', NULL, 1);
INSERT INTO `apartment_label` VALUES (63, 10, 1, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_label` VALUES (64, 10, 2, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_label` VALUES (65, 10, 4, '2023-06-21 10:22:10', NULL, 1);
INSERT INTO `apartment_label` VALUES (66, 9, 1, '2023-07-18 16:29:05', NULL, 1);
INSERT INTO `apartment_label` VALUES (67, 9, 2, '2023-07-18 16:29:05', NULL, 1);
INSERT INTO `apartment_label` VALUES (68, 9, 3, '2023-07-18 16:29:05', NULL, 1);
INSERT INTO `apartment_label` VALUES (69, 9, 4, '2023-07-18 16:29:05', NULL, 1);
INSERT INTO `apartment_label` VALUES (70, 10, 1, '2023-07-18 16:30:04', NULL, 1);
INSERT INTO `apartment_label` VALUES (71, 10, 2, '2023-07-18 16:30:04', NULL, 1);
INSERT INTO `apartment_label` VALUES (72, 10, 4, '2023-07-18 16:30:04', NULL, 1);
INSERT INTO `apartment_label` VALUES (73, 9, 1, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (74, 9, 2, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (75, 9, 3, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (76, 9, 4, '2023-07-22 10:44:44', NULL, 1);
INSERT INTO `apartment_label` VALUES (77, 9, 1, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_label` VALUES (78, 9, 2, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_label` VALUES (79, 9, 3, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_label` VALUES (80, 9, 4, '2023-07-22 13:52:19', NULL, 1);
INSERT INTO `apartment_label` VALUES (81, 9, 1, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (82, 9, 2, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (83, 9, 3, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (84, 9, 4, '2023-08-10 18:52:30', NULL, 1);
INSERT INTO `apartment_label` VALUES (85, 10, 1, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (86, 10, 2, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (87, 10, 4, '2023-08-10 18:53:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (88, 9, 1, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (89, 9, 2, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (90, 9, 3, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (91, 9, 4, '2023-08-14 00:04:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (92, 10, 1, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_label` VALUES (93, 10, 2, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_label` VALUES (94, 10, 4, '2023-08-14 00:05:06', NULL, 1);
INSERT INTO `apartment_label` VALUES (95, 9, 1, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_label` VALUES (96, 9, 2, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_label` VALUES (97, 9, 3, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_label` VALUES (98, 9, 4, '2023-08-14 00:13:51', NULL, 1);
INSERT INTO `apartment_label` VALUES (99, 10, 1, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (100, 10, 2, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (101, 10, 4, '2023-08-14 00:13:56', NULL, 1);
INSERT INTO `apartment_label` VALUES (102, 9, 1, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_label` VALUES (103, 9, 2, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_label` VALUES (104, 9, 3, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_label` VALUES (105, 9, 4, '2023-08-14 11:31:25', NULL, 1);
INSERT INTO `apartment_label` VALUES (106, 10, 1, '2023-08-14 11:36:35', NULL, 1);
INSERT INTO `apartment_label` VALUES (107, 10, 2, '2023-08-14 11:36:35', NULL, 1);
INSERT INTO `apartment_label` VALUES (108, 10, 4, '2023-08-14 11:36:35', NULL, 1);
INSERT INTO `apartment_label` VALUES (109, 10, 1, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (110, 10, 2, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (111, 10, 4, '2023-08-14 11:36:59', NULL, 1);
INSERT INTO `apartment_label` VALUES (112, 9, 1, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_label` VALUES (113, 9, 2, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_label` VALUES (114, 9, 3, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_label` VALUES (115, 9, 4, '2023-08-14 11:40:47', NULL, 1);
INSERT INTO `apartment_label` VALUES (116, 10, 1, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_label` VALUES (117, 10, 2, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_label` VALUES (118, 10, 4, '2023-08-14 11:45:22', NULL, 1);
INSERT INTO `apartment_label` VALUES (119, 9, 1, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (120, 9, 2, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (121, 9, 3, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (122, 9, 4, '2023-08-14 11:55:11', NULL, 1);
INSERT INTO `apartment_label` VALUES (123, 9, 1, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_label` VALUES (124, 9, 2, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_label` VALUES (125, 9, 3, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_label` VALUES (126, 9, 4, '2023-08-14 12:30:55', NULL, 1);
INSERT INTO `apartment_label` VALUES (127, 10, 1, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_label` VALUES (128, 10, 2, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_label` VALUES (129, 10, 4, '2023-08-14 12:31:07', NULL, 1);
INSERT INTO `apartment_label` VALUES (130, 9, 1, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_label` VALUES (131, 9, 2, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_label` VALUES (132, 9, 3, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_label` VALUES (133, 9, 4, '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `apartment_label` VALUES (134, 10, 1, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_label` VALUES (135, 10, 2, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_label` VALUES (136, 10, 4, '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `apartment_label` VALUES (137, 11, 1, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_label` VALUES (138, 11, 2, '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `apartment_label` VALUES (139, 12, 2, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_label` VALUES (140, 12, 1, '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `apartment_label` VALUES (141, 132, 4, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_label` VALUES (142, 132, 1, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_label` VALUES (143, 132, 18, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_label` VALUES (144, 132, 2, '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `apartment_label` VALUES (145, 133, 3, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (146, 133, 2, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (147, 133, 4, '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (148, 134, 2, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_label` VALUES (149, 134, 3, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_label` VALUES (150, 134, 4, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_label` VALUES (151, 134, 18, '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `apartment_label` VALUES (152, 135, 1, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_label` VALUES (153, 135, 2, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_label` VALUES (154, 135, 3, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_label` VALUES (155, 135, 4, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_label` VALUES (156, 135, 18, '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `apartment_label` VALUES (157, 136, 1, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_label` VALUES (158, 136, 2, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_label` VALUES (159, 136, 3, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_label` VALUES (160, 136, 4, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_label` VALUES (161, 136, 18, '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `apartment_label` VALUES (162, 137, 1, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_label` VALUES (163, 137, 2, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_label` VALUES (164, 137, 3, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_label` VALUES (165, 137, 4, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_label` VALUES (166, 137, 18, '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `apartment_label` VALUES (167, 138, 1, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_label` VALUES (168, 138, 2, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_label` VALUES (169, 138, 3, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_label` VALUES (170, 138, 4, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_label` VALUES (171, 138, 18, '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `apartment_label` VALUES (172, 139, 2, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (173, 139, 3, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (174, 139, 4, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (175, 139, 18, '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `apartment_label` VALUES (176, 140, 3, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_label` VALUES (177, 140, 2, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_label` VALUES (178, 140, 4, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_label` VALUES (179, 140, 18, '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `apartment_label` VALUES (180, 141, 1, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_label` VALUES (181, 141, 2, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_label` VALUES (182, 141, 3, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_label` VALUES (183, 141, 4, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_label` VALUES (184, 141, 18, '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `apartment_label` VALUES (185, 142, 1, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_label` VALUES (186, 142, 2, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_label` VALUES (187, 142, 3, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_label` VALUES (188, 142, 4, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_label` VALUES (189, 142, 18, '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `apartment_label` VALUES (190, 143, 2, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_label` VALUES (191, 143, 1, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_label` VALUES (192, 143, 3, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_label` VALUES (193, 143, 18, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_label` VALUES (194, 143, 4, '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `apartment_label` VALUES (195, 144, 1, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_label` VALUES (196, 144, 2, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_label` VALUES (197, 144, 4, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_label` VALUES (198, 144, 3, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_label` VALUES (199, 144, 18, '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `apartment_label` VALUES (200, 145, 1, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_label` VALUES (201, 145, 2, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_label` VALUES (202, 145, 3, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_label` VALUES (203, 145, 4, '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `apartment_label` VALUES (204, 145, 18, '2026-05-07 10:21:36', NULL, 0);

-- ----------------------------
-- Table structure for attr_key
-- ----------------------------
DROP TABLE IF EXISTS `attr_key`;
CREATE TABLE `attr_key`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性key',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间基本属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_key
-- ----------------------------
INSERT INTO `attr_key` VALUES (1, '面积', '2023-06-19 01:43:37', '2023-06-19 02:20:01', 1);
INSERT INTO `attr_key` VALUES (2, '朝向', '2023-06-19 02:06:12', '2023-06-21 10:10:57', 1);
INSERT INTO `attr_key` VALUES (3, '户型', '2023-06-19 02:20:53', '2023-06-19 02:31:14', 1);
INSERT INTO `attr_key` VALUES (4, '户型', '2023-06-19 02:36:20', '2023-06-19 02:36:40', 1);
INSERT INTO `attr_key` VALUES (5, '户型', '2023-06-21 10:09:18', NULL, 0);
INSERT INTO `attr_key` VALUES (6, '面积', '2023-07-22 11:55:41', '2023-07-22 11:58:31', 1);
INSERT INTO `attr_key` VALUES (7, '面积', '2023-07-22 11:58:50', NULL, 0);
INSERT INTO `attr_key` VALUES (8, '朝向', '2023-08-10 15:21:50', '2023-08-10 15:22:04', 0);
INSERT INTO `attr_key` VALUES (9, '采光', '2023-08-10 18:46:45', NULL, 0);
INSERT INTO `attr_key` VALUES (10, '卫所', '2023-08-10 18:47:36', '2023-08-14 00:11:57', 0);
INSERT INTO `attr_key` VALUES (11, '层高', '2024-09-11 16:49:55', NULL, 0);

-- ----------------------------
-- Table structure for attr_value
-- ----------------------------
DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE `attr_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性value',
  `attr_key_id` bigint NULL DEFAULT NULL COMMENT '对应的属性key_id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间基本属性值表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_value
-- ----------------------------
INSERT INTO `attr_value` VALUES (1, '20平', 1, '2023-06-19 01:44:17', '2023-06-19 02:20:01', 1);
INSERT INTO `attr_value` VALUES (2, '25平', 1, '2023-06-19 01:44:23', '2023-06-19 02:20:01', 1);
INSERT INTO `attr_value` VALUES (3, '30平', 1, '2023-06-19 01:44:28', '2023-06-19 02:20:01', 1);
INSERT INTO `attr_value` VALUES (4, '朝南', 2, '2023-06-19 02:06:42', NULL, 1);
INSERT INTO `attr_value` VALUES (5, '朝北', 2, '2023-06-19 02:06:48', NULL, 1);
INSERT INTO `attr_value` VALUES (6, '朝西', 2, '2023-06-19 02:06:53', '2023-06-21 10:10:46', 1);
INSERT INTO `attr_value` VALUES (7, '朝东', 2, '2023-06-19 02:06:58', '2023-06-19 02:14:26', 1);
INSERT INTO `attr_value` VALUES (8, '一室一厅', 5, '2023-06-21 10:09:50', NULL, 0);
INSERT INTO `attr_value` VALUES (9, '两室一厅', 5, '2023-06-21 10:09:56', NULL, 0);
INSERT INTO `attr_value` VALUES (10, '三室一厅', 5, '2023-06-21 10:10:02', NULL, 0);
INSERT INTO `attr_value` VALUES (11, '25平', 6, '2023-07-22 11:55:58', NULL, 1);
INSERT INTO `attr_value` VALUES (12, '30平', 6, '2023-07-22 11:56:05', NULL, 1);
INSERT INTO `attr_value` VALUES (13, '40平', 6, '2023-07-22 11:56:11', NULL, 1);
INSERT INTO `attr_value` VALUES (14, '20平', 7, '2023-07-22 11:56:19', NULL, 1);
INSERT INTO `attr_value` VALUES (15, '25平', 7, '2023-07-22 11:58:58', NULL, 0);
INSERT INTO `attr_value` VALUES (16, '35平', 7, '2023-07-22 11:59:04', NULL, 0);
INSERT INTO `attr_value` VALUES (17, '60平', 7, '2023-07-22 11:59:11', NULL, 0);
INSERT INTO `attr_value` VALUES (18, '80平', 7, '2023-07-22 11:59:31', NULL, 0);
INSERT INTO `attr_value` VALUES (19, '东', 8, '2023-08-10 15:22:10', NULL, 0);
INSERT INTO `attr_value` VALUES (20, '南', 8, '2023-08-10 15:22:20', NULL, 0);
INSERT INTO `attr_value` VALUES (21, '西', 8, '2023-08-10 15:22:27', NULL, 0);
INSERT INTO `attr_value` VALUES (22, '北', 8, '2023-08-10 15:22:34', NULL, 0);
INSERT INTO `attr_value` VALUES (23, '优', 9, '2023-08-10 18:46:55', NULL, 0);
INSERT INTO `attr_value` VALUES (24, '良', 9, '2023-08-10 18:47:04', NULL, 0);
INSERT INTO `attr_value` VALUES (25, '一般', 9, '2023-08-10 18:47:14', NULL, 0);
INSERT INTO `attr_value` VALUES (26, '无', 9, '2023-08-10 18:47:19', NULL, 0);
INSERT INTO `attr_value` VALUES (27, '独卫', 10, '2023-08-10 18:47:46', NULL, 0);
INSERT INTO `attr_value` VALUES (28, '公共', 10, '2023-08-10 18:47:51', NULL, 0);
INSERT INTO `attr_value` VALUES (29, '1米', 11, '2024-09-11 22:11:27', NULL, 0);
INSERT INTO `attr_value` VALUES (30, '2米', 11, '2024-09-11 22:11:32', NULL, 0);
INSERT INTO `attr_value` VALUES (31, '100平', 7, '2025-09-09 16:40:53', NULL, 0);

-- ----------------------------
-- Table structure for balance_transaction
-- ----------------------------
DROP TABLE IF EXISTS `balance_transaction`;
CREATE TABLE `balance_transaction`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `transaction_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交易流水号',
  `type` tinyint NOT NULL COMMENT '交易类型：1充值 2消费 3退款 4冻结 5解冻',
  `amount` decimal(16, 2) NOT NULL COMMENT '交易金额（元）',
  `balance_before` decimal(16, 2) NOT NULL COMMENT '交易前余额',
  `balance_after` decimal(16, 2) NOT NULL COMMENT '交易后余额',
  `related_order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联订单号',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_transaction_no`(`transaction_no` ASC) USING BTREE COMMENT '交易流水号唯一索引',
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE COMMENT '用户ID索引',
  INDEX `idx_related_order`(`related_order_no` ASC) USING BTREE COMMENT '关联订单索引'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '余额变动记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of balance_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for browsing_history
-- ----------------------------
DROP TABLE IF EXISTS `browsing_history`;
CREATE TABLE `browsing_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `room_id` bigint NULL DEFAULT NULL COMMENT '浏览房间id',
  `browse_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '浏览历史' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of browsing_history
-- ----------------------------
INSERT INTO `browsing_history` VALUES (90, 6, 2, '2023-08-11 10:45:48', '2023-08-11 10:35:31', '2023-08-11 10:45:48', 0);
INSERT INTO `browsing_history` VALUES (91, 6, 3, '2023-08-11 10:45:47', '2023-08-11 10:35:32', '2023-08-11 10:45:47', 0);
INSERT INTO `browsing_history` VALUES (92, 7, 2, '2023-08-19 15:51:22', '2023-08-13 23:22:38', '2023-08-19 15:51:22', 0);
INSERT INTO `browsing_history` VALUES (93, 7, 8, '2023-08-19 15:52:49', '2023-08-13 23:42:27', '2023-08-19 15:52:49', 0);
INSERT INTO `browsing_history` VALUES (94, 7, 3, '2023-08-19 15:51:43', '2023-08-13 23:45:19', '2023-08-19 15:51:43', 0);
INSERT INTO `browsing_history` VALUES (95, 7, 9, '2023-08-18 17:38:48', '2023-08-13 23:45:36', '2023-08-18 17:38:48', 0);
INSERT INTO `browsing_history` VALUES (96, 7, 10, '2023-08-19 15:51:19', '2023-08-13 23:45:48', '2023-08-19 15:51:19', 0);
INSERT INTO `browsing_history` VALUES (97, 7, 11, '2023-08-15 16:45:05', '2023-08-14 00:00:05', '2023-08-15 16:45:05', 0);
INSERT INTO `browsing_history` VALUES (98, 7, 15, '2023-08-17 20:33:17', '2023-08-14 00:10:04', '2023-08-17 20:33:17', 0);
INSERT INTO `browsing_history` VALUES (99, 7, 14, '2023-08-14 08:39:35', '2023-08-14 08:39:35', NULL, 0);
INSERT INTO `browsing_history` VALUES (100, 7, 16, '2023-08-19 15:53:48', '2023-08-14 10:36:54', '2023-08-19 15:53:48', 0);
INSERT INTO `browsing_history` VALUES (101, 7, 17, '2023-08-14 18:09:58', '2023-08-14 10:37:40', '2023-08-14 18:09:58', 0);
INSERT INTO `browsing_history` VALUES (102, 7, 12, '2023-08-14 15:51:46', '2023-08-14 15:51:40', '2023-08-14 15:51:46', 0);
INSERT INTO `browsing_history` VALUES (103, 1, 2, '2023-08-19 17:48:46', '2023-08-19 17:30:31', '2023-08-19 17:48:46', 0);
INSERT INTO `browsing_history` VALUES (104, 1, 11, '2023-08-19 17:48:40', '2023-08-19 17:31:13', '2023-08-19 17:48:40', 0);
INSERT INTO `browsing_history` VALUES (105, 1, 14, '2023-08-19 23:25:45', '2023-08-19 17:49:16', '2023-08-19 23:25:45', 0);
INSERT INTO `browsing_history` VALUES (106, 1, 16, '2023-08-19 21:30:00', '2023-08-19 17:53:13', '2023-08-19 21:30:00', 0);
INSERT INTO `browsing_history` VALUES (107, 1, 15, '2023-08-19 20:22:12', '2023-08-19 18:20:36', '2023-08-19 20:22:12', 0);
INSERT INTO `browsing_history` VALUES (108, 1, 17, '2023-08-19 23:25:42', '2023-08-19 18:21:40', '2023-08-19 23:25:42', 0);
INSERT INTO `browsing_history` VALUES (109, 1, 9, '2023-08-19 18:39:20', '2023-08-19 18:33:30', '2023-08-19 18:39:20', 0);
INSERT INTO `browsing_history` VALUES (110, 1, 8, '2023-08-19 23:24:55', '2023-08-19 18:39:37', '2023-08-19 23:24:55', 0);
INSERT INTO `browsing_history` VALUES (111, 1, 12, '2023-08-19 20:48:48', '2023-08-19 20:48:48', NULL, 0);
INSERT INTO `browsing_history` VALUES (112, 8, 9, '2024-09-19 14:59:24', '2024-09-19 14:59:24', '2025-09-19 14:33:59', 0);
INSERT INTO `browsing_history` VALUES (113, 8, 8, '2024-09-19 14:59:28', '2024-09-19 14:59:28', '2025-09-16 16:58:32', 0);
INSERT INTO `browsing_history` VALUES (114, 8, 2, '2024-09-20 14:18:43', '2024-09-20 14:18:43', '2025-09-19 14:33:55', 0);
INSERT INTO `browsing_history` VALUES (115, 8, 3, '2025-09-03 10:43:55', '2025-09-03 10:43:55', '2025-09-16 17:05:13', 0);
INSERT INTO `browsing_history` VALUES (116, 8, 11, '2025-09-09 10:46:01', '2025-09-09 10:46:01', '2025-09-09 10:48:08', 0);
INSERT INTO `browsing_history` VALUES (117, 8, 19, '2025-09-09 10:50:06', '2025-09-09 10:50:06', '2025-09-16 09:54:17', 0);
INSERT INTO `browsing_history` VALUES (118, 8, 21, '2025-09-11 14:21:02', '2025-09-11 14:21:02', '2025-09-30 10:08:15', 0);
INSERT INTO `browsing_history` VALUES (119, 8, 25, '2025-09-13 11:13:03', '2025-09-13 11:13:03', '2025-09-19 17:05:30', 0);
INSERT INTO `browsing_history` VALUES (120, 8, 24, '2025-09-13 11:48:12', '2025-09-13 11:48:12', '2025-09-30 10:08:53', 0);
INSERT INTO `browsing_history` VALUES (121, 8, 22, '2025-09-13 11:51:41', '2025-09-13 11:51:41', '2025-10-11 15:17:19', 0);
INSERT INTO `browsing_history` VALUES (122, 8, 20, '2025-09-18 17:28:24', '2025-09-18 17:28:24', '2025-09-30 11:33:39', 0);
INSERT INTO `browsing_history` VALUES (123, 8, 23, '2025-09-19 16:12:31', '2025-09-19 16:12:31', '2025-10-28 10:00:29', 0);
INSERT INTO `browsing_history` VALUES (124, 8, 17, '2025-09-19 16:55:04', '2025-09-19 16:55:04', '2025-09-30 10:08:47', 0);
INSERT INTO `browsing_history` VALUES (125, 8, 27, '2025-09-19 17:05:23', '2025-09-19 17:05:23', '2026-03-07 13:20:41', 0);
INSERT INTO `browsing_history` VALUES (126, 8, 30, '2025-09-28 10:44:03', '2025-09-28 10:44:03', '2026-05-07 10:50:07', 0);
INSERT INTO `browsing_history` VALUES (127, 5, 30, '2025-09-28 15:00:42', '2025-09-28 15:00:42', '2025-09-28 15:02:37', 0);
INSERT INTO `browsing_history` VALUES (128, 8, 28, '2025-09-30 10:10:30', '2025-09-30 10:10:30', '2025-09-30 11:33:34', 0);
INSERT INTO `browsing_history` VALUES (129, 8, 29, '2025-09-30 14:30:29', '2025-09-30 14:30:29', '2025-11-12 14:13:45', 0);
INSERT INTO `browsing_history` VALUES (130, 8, 26, '2025-10-11 15:16:53', '2025-10-11 15:16:53', '2025-10-14 14:31:51', 0);
INSERT INTO `browsing_history` VALUES (131, 8, 33, '2025-11-06 09:59:12', '2025-11-06 09:59:12', '2025-11-27 11:48:16', 0);
INSERT INTO `browsing_history` VALUES (132, 8, 32, '2025-11-12 11:36:53', '2025-11-12 11:36:53', '2025-11-20 16:11:28', 0);
INSERT INTO `browsing_history` VALUES (133, 10, 33, '2025-11-14 16:13:39', '2025-11-14 16:13:39', NULL, 0);
INSERT INTO `browsing_history` VALUES (134, 10, 30, '2025-11-14 16:19:25', '2025-11-14 16:19:25', NULL, 0);
INSERT INTO `browsing_history` VALUES (135, 10, 32, '2025-11-14 16:33:12', '2025-11-14 16:33:12', NULL, 0);
INSERT INTO `browsing_history` VALUES (136, 8, 35, '2026-01-28 09:28:08', '2026-01-28 09:28:08', '2026-03-07 13:20:23', 0);
INSERT INTO `browsing_history` VALUES (137, 8, 34, '2026-01-28 14:27:18', '2026-01-28 14:27:18', '2026-03-11 16:52:33', 0);
INSERT INTO `browsing_history` VALUES (138, 8, 31, '2026-02-26 14:35:05', '2026-02-26 14:35:05', '2026-03-07 13:21:05', 0);
INSERT INTO `browsing_history` VALUES (139, 8, 36, '2026-02-26 14:41:15', '2026-02-26 14:41:15', '2026-03-11 19:01:59', 0);
INSERT INTO `browsing_history` VALUES (140, 8, 39, '2026-05-07 10:29:01', '2026-05-07 10:29:01', '2026-05-07 10:53:31', 0);

-- ----------------------------
-- Table structure for city_info
-- ----------------------------
DROP TABLE IF EXISTS `city_info`;
CREATE TABLE `city_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '城市id',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province_id` int NULL DEFAULT NULL COMMENT '所属省份id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6591 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city_info
-- ----------------------------
INSERT INTO `city_info` VALUES (1101, '市辖区', 11, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1201, '市辖区', 12, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1301, '石家庄市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1302, '唐山市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1303, '秦皇岛市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1304, '邯郸市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1305, '邢台市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1306, '保定市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1307, '张家口市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1308, '承德市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1309, '沧州市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1310, '廊坊市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1311, '衡水市', 13, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1401, '太原市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1402, '大同市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1403, '阳泉市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1404, '长治市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1405, '晋城市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1406, '朔州市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1407, '晋中市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1408, '运城市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1409, '忻州市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1410, '临汾市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1411, '吕梁市', 14, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1501, '呼和浩特市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1502, '包头市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1503, '乌海市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1504, '赤峰市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1505, '通辽市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1506, '鄂尔多斯市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1507, '呼伦贝尔市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1508, '巴彦淖尔市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1509, '乌兰察布市', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1522, '兴安盟', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1525, '锡林郭勒盟', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (1529, '阿拉善盟', 15, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2101, '沈阳市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2102, '大连市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2103, '鞍山市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2104, '抚顺市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2105, '本溪市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2106, '丹东市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2107, '锦州市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2108, '营口市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2109, '阜新市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2110, '辽阳市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2111, '盘锦市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2112, '铁岭市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2113, '朝阳市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2114, '葫芦岛市', 21, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2201, '长春市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2202, '吉林市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2203, '四平市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2204, '辽源市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2205, '通化市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2206, '白山市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2207, '松原市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2208, '白城市', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2224, '延边朝鲜族自治州', 22, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2301, '哈尔滨市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2302, '齐齐哈尔市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2303, '鸡西市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2304, '鹤岗市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2305, '双鸭山市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2306, '大庆市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2307, '伊春市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2308, '佳木斯市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2309, '七台河市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2310, '牡丹江市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2311, '黑河市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2312, '绥化市', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (2327, '大兴安岭地区', 23, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3101, '市辖区', 31, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3201, '南京市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3202, '无锡市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3203, '徐州市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3204, '常州市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3205, '苏州市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3206, '南通市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3207, '连云港市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3208, '淮安市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3209, '盐城市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3210, '扬州市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3211, '镇江市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3212, '泰州市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3213, '宿迁市', 32, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3301, '杭州市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3302, '宁波市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3303, '温州市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3304, '嘉兴市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3305, '湖州市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3306, '绍兴市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3307, '金华市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3308, '衢州市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3309, '舟山市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3310, '台州市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3311, '丽水市', 33, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3401, '合肥市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3402, '芜湖市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3403, '蚌埠市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3404, '淮南市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3405, '马鞍山市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3406, '淮北市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3407, '铜陵市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3408, '安庆市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3410, '黄山市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3411, '滁州市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3412, '阜阳市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3413, '宿州市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3415, '六安市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3416, '亳州市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3417, '池州市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3418, '宣城市', 34, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3501, '福州市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3502, '厦门市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3503, '莆田市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3504, '三明市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3505, '泉州市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3506, '漳州市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3507, '南平市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3508, '龙岩市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3509, '宁德市', 35, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3601, '南昌市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3602, '景德镇市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3603, '萍乡市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3604, '九江市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3605, '新余市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3606, '鹰潭市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3607, '赣州市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3608, '吉安市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3609, '宜春市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3610, '抚州市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3611, '上饶市', 36, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3701, '济南市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3702, '青岛市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3703, '淄博市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3704, '枣庄市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3705, '东营市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3706, '烟台市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3707, '潍坊市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3708, '济宁市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3709, '泰安市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3710, '威海市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3711, '日照市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3713, '临沂市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3714, '德州市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3715, '聊城市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3716, '滨州市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (3717, '菏泽市', 37, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4101, '郑州市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4102, '开封市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4103, '洛阳市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4104, '平顶山市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4105, '安阳市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4106, '鹤壁市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4107, '新乡市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4108, '焦作市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4109, '濮阳市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4110, '许昌市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4111, '漯河市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4112, '三门峡市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4113, '南阳市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4114, '商丘市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4115, '信阳市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4116, '周口市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4117, '驻马店市', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4190, '省直辖县级行政区划', 41, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4201, '武汉市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4202, '黄石市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4203, '十堰市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4205, '宜昌市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4206, '襄阳市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4207, '鄂州市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4208, '荆门市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4209, '孝感市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4210, '荆州市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4211, '黄冈市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4212, '咸宁市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4213, '随州市', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4228, '恩施土家族苗族自治州', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4290, '省直辖县级行政区划', 42, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4301, '长沙市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4302, '株洲市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4303, '湘潭市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4304, '衡阳市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4305, '邵阳市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4306, '岳阳市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4307, '常德市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4308, '张家界市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4309, '益阳市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4310, '郴州市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4311, '永州市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4312, '怀化市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4313, '娄底市', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4331, '湘西土家族苗族自治州', 43, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4401, '广州市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4402, '韶关市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4403, '深圳市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4404, '珠海市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4405, '汕头市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4406, '佛山市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4407, '江门市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4408, '湛江市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4409, '茂名市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4412, '肇庆市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4413, '惠州市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4414, '梅州市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4415, '汕尾市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4416, '河源市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4417, '阳江市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4418, '清远市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4419, '东莞市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4420, '中山市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4451, '潮州市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4452, '揭阳市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4453, '云浮市', 44, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4501, '南宁市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4502, '柳州市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4503, '桂林市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4504, '梧州市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4505, '北海市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4506, '防城港市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4507, '钦州市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4508, '贵港市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4509, '玉林市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4510, '百色市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4511, '贺州市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4512, '河池市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4513, '来宾市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4514, '崇左市', 45, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4601, '海口市', 46, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4602, '三亚市', 46, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4603, '三沙市', 46, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4604, '儋州市', 46, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (4690, '省直辖县级行政区划', 46, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5001, '市辖区', 50, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5002, '县', 50, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5101, '成都市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5103, '自贡市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5104, '攀枝花市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5105, '泸州市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5106, '德阳市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5107, '绵阳市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5108, '广元市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5109, '遂宁市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5110, '内江市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5111, '乐山市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5113, '南充市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5114, '眉山市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5115, '宜宾市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5116, '广安市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5117, '达州市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5118, '雅安市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5119, '巴中市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5120, '资阳市', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5132, '阿坝藏族羌族自治州', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5133, '甘孜藏族自治州', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5134, '凉山彝族自治州', 51, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5201, '贵阳市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5202, '六盘水市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5203, '遵义市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5204, '安顺市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5205, '毕节市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5206, '铜仁市', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5223, '黔西南布依族苗族自治州', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5226, '黔东南苗族侗族自治州', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5227, '黔南布依族苗族自治州', 52, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5301, '昆明市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5303, '曲靖市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5304, '玉溪市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5305, '保山市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5306, '昭通市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5307, '丽江市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5308, '普洱市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5309, '临沧市', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5323, '楚雄彝族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5325, '红河哈尼族彝族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5326, '文山壮族苗族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5328, '西双版纳傣族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5329, '大理白族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5331, '德宏傣族景颇族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5333, '怒江傈僳族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5334, '迪庆藏族自治州', 53, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5401, '拉萨市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5402, '日喀则市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5403, '昌都市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5404, '林芝市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5405, '山南市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5406, '那曲市', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (5425, '阿里地区', 54, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6101, '西安市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6102, '铜川市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6103, '宝鸡市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6104, '咸阳市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6105, '渭南市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6106, '延安市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6107, '汉中市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6108, '榆林市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6109, '安康市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6110, '商洛市', 61, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6201, '兰州市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6202, '嘉峪关市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6203, '金昌市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6204, '白银市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6205, '天水市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6206, '武威市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6207, '张掖市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6208, '平凉市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6209, '酒泉市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6210, '庆阳市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6211, '定西市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6212, '陇南市', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6229, '临夏回族自治州', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6230, '甘南藏族自治州', 62, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6301, '西宁市', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6302, '海东市', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6322, '海北藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6323, '黄南藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6325, '海南藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6326, '果洛藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6327, '玉树藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6328, '海西蒙古族藏族自治州', 63, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6401, '银川市', 64, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6402, '石嘴山市', 64, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6403, '吴忠市', 64, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6404, '固原市', 64, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6405, '中卫市', 64, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6501, '乌鲁木齐市', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6502, '克拉玛依市', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6504, '吐鲁番市', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6505, '哈密市', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6523, '昌吉回族自治州', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6527, '博尔塔拉蒙古自治州', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6528, '巴音郭楞蒙古自治州', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6529, '阿克苏地区', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6530, '克孜勒苏柯尔克孜自治州', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6531, '喀什地区', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6532, '和田地区', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6540, '伊犁哈萨克自治州', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6542, '塔城地区', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6543, '阿勒泰地区', 65, '2023-06-25 13:48:30', NULL, 0);
INSERT INTO `city_info` VALUES (6590, '自治区直辖县级行政区划', 65, '2023-06-25 13:48:30', NULL, 0);

-- ----------------------------
-- Table structure for district_info
-- ----------------------------
DROP TABLE IF EXISTS `district_info`;
CREATE TABLE `district_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '区域id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `city_id` int NULL DEFAULT NULL COMMENT '所属城市id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 659012 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of district_info
-- ----------------------------
INSERT INTO `district_info` VALUES (110101, '东城区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110102, '西城区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110105, '朝阳区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110106, '丰台区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110107, '石景山区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110108, '海淀区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110109, '门头沟区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110111, '房山区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110112, '通州区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110113, '顺义区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110114, '昌平区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110115, '大兴区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110116, '怀柔区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110117, '平谷区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110118, '密云区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (110119, '延庆区', 1101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120101, '和平区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120102, '河东区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120103, '河西区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120104, '南开区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120105, '河北区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120106, '红桥区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120110, '东丽区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120111, '西青区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120112, '津南区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120113, '北辰区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120114, '武清区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120115, '宝坻区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120116, '滨海新区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120117, '宁河区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120118, '静海区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (120119, '蓟州区', 1201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130102, '长安区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130104, '桥西区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130105, '新华区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130107, '井陉矿区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130108, '裕华区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130109, '藁城区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130110, '鹿泉区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130111, '栾城区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130121, '井陉县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130123, '正定县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130125, '行唐县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130126, '灵寿县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130127, '高邑县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130128, '深泽县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130129, '赞皇县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130130, '无极县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130131, '平山县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130132, '元氏县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130133, '赵县', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130171, '石家庄高新技术产业开发区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130172, '石家庄循环化工园区', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130181, '辛集市', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130183, '晋州市', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130184, '新乐市', 1301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130202, '路南区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130203, '路北区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130204, '古冶区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130205, '开平区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130207, '丰南区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130208, '丰润区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130209, '曹妃甸区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130224, '滦南县', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130225, '乐亭县', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130227, '迁西县', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130229, '玉田县', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130271, '河北唐山芦台经济开发区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130272, '唐山市汉沽管理区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130273, '唐山高新技术产业开发区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130274, '河北唐山海港经济开发区', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130281, '遵化市', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130283, '迁安市', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130284, '滦州市', 1302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130302, '海港区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130303, '山海关区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130304, '北戴河区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130306, '抚宁区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130321, '青龙满族自治县', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130322, '昌黎县', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130324, '卢龙县', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130371, '秦皇岛市经济技术开发区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130372, '北戴河新区', 1303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130402, '邯山区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130403, '丛台区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130404, '复兴区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130406, '峰峰矿区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130407, '肥乡区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130408, '永年区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130423, '临漳县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130424, '成安县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130425, '大名县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130426, '涉县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130427, '磁县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130430, '邱县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130431, '鸡泽县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130432, '广平县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130433, '馆陶县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130434, '魏县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130435, '曲周县', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130471, '邯郸经济技术开发区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130473, '邯郸冀南新区', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130481, '武安市', 1304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130502, '襄都区', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130503, '信都区', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130505, '任泽区', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130506, '南和区', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130522, '临城县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130523, '内丘县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130524, '柏乡县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130525, '隆尧县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130528, '宁晋县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130529, '巨鹿县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130530, '新河县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130531, '广宗县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130532, '平乡县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130533, '威县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130534, '清河县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130535, '临西县', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130571, '河北邢台经济开发区', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130581, '南宫市', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130582, '沙河市', 1305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130602, '竞秀区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130606, '莲池区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130607, '满城区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130608, '清苑区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130609, '徐水区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130623, '涞水县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130624, '阜平县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130626, '定兴县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130627, '唐县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130628, '高阳县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130629, '容城县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130630, '涞源县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130631, '望都县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130632, '安新县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130633, '易县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130634, '曲阳县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130635, '蠡县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130636, '顺平县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130637, '博野县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130638, '雄县', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130671, '保定高新技术产业开发区', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130672, '保定白沟新城', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130681, '涿州市', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130682, '定州市', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130683, '安国市', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130684, '高碑店市', 1306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130702, '桥东区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130703, '桥西区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130705, '宣化区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130706, '下花园区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130708, '万全区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130709, '崇礼区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130722, '张北县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130723, '康保县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130724, '沽源县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130725, '尚义县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130726, '蔚县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130727, '阳原县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130728, '怀安县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130730, '怀来县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130731, '涿鹿县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130732, '赤城县', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130771, '张家口经济开发区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130772, '张家口市察北管理区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130773, '张家口市塞北管理区', 1307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130802, '双桥区', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130803, '双滦区', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130804, '鹰手营子矿区', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130821, '承德县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130822, '兴隆县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130824, '滦平县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130825, '隆化县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130826, '丰宁满族自治县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130827, '宽城满族自治县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130828, '围场满族蒙古族自治县', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130871, '承德高新技术产业开发区', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130881, '平泉市', 1308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130902, '新华区', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130903, '运河区', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130921, '沧县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130922, '青县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130923, '东光县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130924, '海兴县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130925, '盐山县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130926, '肃宁县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130927, '南皮县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130928, '吴桥县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130929, '献县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130930, '孟村回族自治县', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130971, '河北沧州经济开发区', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130972, '沧州高新技术产业开发区', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130973, '沧州渤海新区', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130981, '泊头市', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130982, '任丘市', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130983, '黄骅市', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (130984, '河间市', 1309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131002, '安次区', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131003, '广阳区', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131022, '固安县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131023, '永清县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131024, '香河县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131025, '大城县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131026, '文安县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131028, '大厂回族自治县', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131071, '廊坊经济技术开发区', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131081, '霸州市', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131082, '三河市', 1310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131102, '桃城区', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131103, '冀州区', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131121, '枣强县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131122, '武邑县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131123, '武强县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131124, '饶阳县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131125, '安平县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131126, '故城县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131127, '景县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131128, '阜城县', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131171, '河北衡水高新技术产业开发区', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131172, '衡水滨湖新区', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (131182, '深州市', 1311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140105, '小店区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140106, '迎泽区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140107, '杏花岭区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140108, '尖草坪区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140109, '万柏林区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140110, '晋源区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140121, '清徐县', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140122, '阳曲县', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140123, '娄烦县', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140171, '山西转型综合改革示范区', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140181, '古交市', 1401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140212, '新荣区', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140213, '平城区', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140214, '云冈区', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140215, '云州区', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140221, '阳高县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140222, '天镇县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140223, '广灵县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140224, '灵丘县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140225, '浑源县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140226, '左云县', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140271, '山西大同经济开发区', 1402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140302, '城区', 1403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140303, '矿区', 1403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140311, '郊区', 1403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140321, '平定县', 1403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140322, '盂县', 1403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140403, '潞州区', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140404, '上党区', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140405, '屯留区', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140406, '潞城区', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140423, '襄垣县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140425, '平顺县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140426, '黎城县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140427, '壶关县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140428, '长子县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140429, '武乡县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140430, '沁县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140431, '沁源县', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140471, '山西长治高新技术产业园区', 1404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140502, '城区', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140521, '沁水县', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140522, '阳城县', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140524, '陵川县', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140525, '泽州县', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140581, '高平市', 1405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140602, '朔城区', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140603, '平鲁区', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140621, '山阴县', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140622, '应县', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140623, '右玉县', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140671, '山西朔州经济开发区', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140681, '怀仁市', 1406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140702, '榆次区', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140703, '太谷区', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140721, '榆社县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140722, '左权县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140723, '和顺县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140724, '昔阳县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140725, '寿阳县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140727, '祁县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140728, '平遥县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140729, '灵石县', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140781, '介休市', 1407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140802, '盐湖区', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140821, '临猗县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140822, '万荣县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140823, '闻喜县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140824, '稷山县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140825, '新绛县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140826, '绛县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140827, '垣曲县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140828, '夏县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140829, '平陆县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140830, '芮城县', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140881, '永济市', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140882, '河津市', 1408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140902, '忻府区', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140921, '定襄县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140922, '五台县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140923, '代县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140924, '繁峙县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140925, '宁武县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140926, '静乐县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140927, '神池县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140928, '五寨县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140929, '岢岚县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140930, '河曲县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140931, '保德县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140932, '偏关县', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140971, '五台山风景名胜区', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (140981, '原平市', 1409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141002, '尧都区', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141021, '曲沃县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141022, '翼城县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141023, '襄汾县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141024, '洪洞县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141025, '古县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141026, '安泽县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141027, '浮山县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141028, '吉县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141029, '乡宁县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141030, '大宁县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141031, '隰县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141032, '永和县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141033, '蒲县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141034, '汾西县', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141081, '侯马市', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141082, '霍州市', 1410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141102, '离石区', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141121, '文水县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141122, '交城县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141123, '兴县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141124, '临县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141125, '柳林县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141126, '石楼县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141127, '岚县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141128, '方山县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141129, '中阳县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141130, '交口县', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141181, '孝义市', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (141182, '汾阳市', 1411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150102, '新城区', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150103, '回民区', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150104, '玉泉区', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150105, '赛罕区', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150121, '土默特左旗', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150122, '托克托县', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150123, '和林格尔县', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150124, '清水河县', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150125, '武川县', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150172, '呼和浩特经济技术开发区', 1501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150202, '东河区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150203, '昆都仑区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150204, '青山区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150205, '石拐区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150206, '白云鄂博矿区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150207, '九原区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150221, '土默特右旗', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150222, '固阳县', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150223, '达尔罕茂明安联合旗', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150271, '包头稀土高新技术产业开发区', 1502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150302, '海勃湾区', 1503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150303, '海南区', 1503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150304, '乌达区', 1503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150402, '红山区', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150403, '元宝山区', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150404, '松山区', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150421, '阿鲁科尔沁旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150422, '巴林左旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150423, '巴林右旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150424, '林西县', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150425, '克什克腾旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150426, '翁牛特旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150428, '喀喇沁旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150429, '宁城县', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150430, '敖汉旗', 1504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150502, '科尔沁区', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150521, '科尔沁左翼中旗', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150522, '科尔沁左翼后旗', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150523, '开鲁县', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150524, '库伦旗', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150525, '奈曼旗', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150526, '扎鲁特旗', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150571, '通辽经济技术开发区', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150581, '霍林郭勒市', 1505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150602, '东胜区', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150603, '康巴什区', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150621, '达拉特旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150622, '准格尔旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150623, '鄂托克前旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150624, '鄂托克旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150625, '杭锦旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150626, '乌审旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150627, '伊金霍洛旗', 1506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150702, '海拉尔区', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150703, '扎赉诺尔区', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150721, '阿荣旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150722, '莫力达瓦达斡尔族自治旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150723, '鄂伦春自治旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150724, '鄂温克族自治旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150725, '陈巴尔虎旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150726, '新巴尔虎左旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150727, '新巴尔虎右旗', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150781, '满洲里市', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150782, '牙克石市', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150783, '扎兰屯市', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150784, '额尔古纳市', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150785, '根河市', 1507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150802, '临河区', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150821, '五原县', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150822, '磴口县', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150823, '乌拉特前旗', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150824, '乌拉特中旗', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150825, '乌拉特后旗', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150826, '杭锦后旗', 1508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150902, '集宁区', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150921, '卓资县', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150922, '化德县', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150923, '商都县', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150924, '兴和县', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150925, '凉城县', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150926, '察哈尔右翼前旗', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150927, '察哈尔右翼中旗', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150928, '察哈尔右翼后旗', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150929, '四子王旗', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (150981, '丰镇市', 1509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152201, '乌兰浩特市', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152202, '阿尔山市', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152221, '科尔沁右翼前旗', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152222, '科尔沁右翼中旗', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152223, '扎赉特旗', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152224, '突泉县', 1522, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152501, '二连浩特市', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152502, '锡林浩特市', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152522, '阿巴嘎旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152523, '苏尼特左旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152524, '苏尼特右旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152525, '东乌珠穆沁旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152526, '西乌珠穆沁旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152527, '太仆寺旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152528, '镶黄旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152529, '正镶白旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152530, '正蓝旗', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152531, '多伦县', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152571, '乌拉盖管委会', 1525, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152921, '阿拉善左旗', 1529, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152922, '阿拉善右旗', 1529, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152923, '额济纳旗', 1529, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (152971, '内蒙古阿拉善高新技术产业开发区', 1529, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210102, '和平区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210103, '沈河区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210104, '大东区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210105, '皇姑区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210106, '铁西区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210111, '苏家屯区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210112, '浑南区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210113, '沈北新区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210114, '于洪区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210115, '辽中区', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210123, '康平县', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210124, '法库县', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210181, '新民市', 2101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210202, '中山区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210203, '西岗区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210204, '沙河口区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210211, '甘井子区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210212, '旅顺口区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210213, '金州区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210214, '普兰店区', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210224, '长海县', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210281, '瓦房店市', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210283, '庄河市', 2102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210302, '铁东区', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210303, '铁西区', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210304, '立山区', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210311, '千山区', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210321, '台安县', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210323, '岫岩满族自治县', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210381, '海城市', 2103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210402, '新抚区', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210403, '东洲区', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210404, '望花区', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210411, '顺城区', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210421, '抚顺县', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210422, '新宾满族自治县', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210423, '清原满族自治县', 2104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210502, '平山区', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210503, '溪湖区', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210504, '明山区', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210505, '南芬区', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210521, '本溪满族自治县', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210522, '桓仁满族自治县', 2105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210602, '元宝区', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210603, '振兴区', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210604, '振安区', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210624, '宽甸满族自治县', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210681, '东港市', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210682, '凤城市', 2106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210702, '古塔区', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210703, '凌河区', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210711, '太和区', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210726, '黑山县', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210727, '义县', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210781, '凌海市', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210782, '北镇市', 2107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210802, '站前区', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210803, '西市区', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210804, '鲅鱼圈区', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210811, '老边区', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210881, '盖州市', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210882, '大石桥市', 2108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210902, '海州区', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210903, '新邱区', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210904, '太平区', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210905, '清河门区', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210911, '细河区', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210921, '阜新蒙古族自治县', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (210922, '彰武县', 2109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211002, '白塔区', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211003, '文圣区', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211004, '宏伟区', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211005, '弓长岭区', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211011, '太子河区', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211021, '辽阳县', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211081, '灯塔市', 2110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211102, '双台子区', 2111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211103, '兴隆台区', 2111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211104, '大洼区', 2111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211122, '盘山县', 2111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211202, '银州区', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211204, '清河区', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211221, '铁岭县', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211223, '西丰县', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211224, '昌图县', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211281, '调兵山市', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211282, '开原市', 2112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211302, '双塔区', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211303, '龙城区', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211321, '朝阳县', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211322, '建平县', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211324, '喀喇沁左翼蒙古族自治县', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211381, '北票市', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211382, '凌源市', 2113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211402, '连山区', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211403, '龙港区', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211404, '南票区', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211421, '绥中县', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211422, '建昌县', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (211481, '兴城市', 2114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220102, '南关区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220103, '宽城区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220104, '朝阳区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220105, '二道区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220106, '绿园区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220112, '双阳区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220113, '九台区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220122, '农安县', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220171, '长春经济技术开发区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220172, '长春净月高新技术产业开发区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220173, '长春高新技术产业开发区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220174, '长春汽车经济技术开发区', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220182, '榆树市', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220183, '德惠市', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220184, '公主岭市', 2201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220202, '昌邑区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220203, '龙潭区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220204, '船营区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220211, '丰满区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220221, '永吉县', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220271, '吉林经济开发区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220272, '吉林高新技术产业开发区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220273, '吉林中国新加坡食品区', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220281, '蛟河市', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220282, '桦甸市', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220283, '舒兰市', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220284, '磐石市', 2202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220302, '铁西区', 2203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220303, '铁东区', 2203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220322, '梨树县', 2203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220323, '伊通满族自治县', 2203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220382, '双辽市', 2203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220402, '龙山区', 2204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220403, '西安区', 2204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220421, '东丰县', 2204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220422, '东辽县', 2204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220502, '东昌区', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220503, '二道江区', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220521, '通化县', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220523, '辉南县', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220524, '柳河县', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220581, '梅河口市', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220582, '集安市', 2205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220602, '浑江区', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220605, '江源区', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220621, '抚松县', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220622, '靖宇县', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220623, '长白朝鲜族自治县', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220681, '临江市', 2206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220702, '宁江区', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220721, '前郭尔罗斯蒙古族自治县', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220722, '长岭县', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220723, '乾安县', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220771, '吉林松原经济开发区', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220781, '扶余市', 2207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220802, '洮北区', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220821, '镇赉县', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220822, '通榆县', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220871, '吉林白城经济开发区', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220881, '洮南市', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (220882, '大安市', 2208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222401, '延吉市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222402, '图们市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222403, '敦化市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222404, '珲春市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222405, '龙井市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222406, '和龙市', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222424, '汪清县', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (222426, '安图县', 2224, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230102, '道里区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230103, '南岗区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230104, '道外区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230108, '平房区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230109, '松北区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230110, '香坊区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230111, '呼兰区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230112, '阿城区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230113, '双城区', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230123, '依兰县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230124, '方正县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230125, '宾县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230126, '巴彦县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230127, '木兰县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230128, '通河县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230129, '延寿县', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230183, '尚志市', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230184, '五常市', 2301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230202, '龙沙区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230203, '建华区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230204, '铁锋区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230205, '昂昂溪区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230206, '富拉尔基区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230207, '碾子山区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230208, '梅里斯达斡尔族区', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230221, '龙江县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230223, '依安县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230224, '泰来县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230225, '甘南县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230227, '富裕县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230229, '克山县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230230, '克东县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230231, '拜泉县', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230281, '讷河市', 2302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230302, '鸡冠区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230303, '恒山区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230304, '滴道区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230305, '梨树区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230306, '城子河区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230307, '麻山区', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230321, '鸡东县', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230381, '虎林市', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230382, '密山市', 2303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230402, '向阳区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230403, '工农区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230404, '南山区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230405, '兴安区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230406, '东山区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230407, '兴山区', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230421, '萝北县', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230422, '绥滨县', 2304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230502, '尖山区', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230503, '岭东区', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230505, '四方台区', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230506, '宝山区', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230521, '集贤县', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230522, '友谊县', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230523, '宝清县', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230524, '饶河县', 2305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230602, '萨尔图区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230603, '龙凤区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230604, '让胡路区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230605, '红岗区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230606, '大同区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230621, '肇州县', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230622, '肇源县', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230623, '林甸县', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230624, '杜尔伯特蒙古族自治县', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230671, '大庆高新技术产业开发区', 2306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230717, '伊美区', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230718, '乌翠区', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230719, '友好区', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230722, '嘉荫县', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230723, '汤旺县', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230724, '丰林县', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230725, '大箐山县', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230726, '南岔县', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230751, '金林区', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230781, '铁力市', 2307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230803, '向阳区', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230804, '前进区', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230805, '东风区', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230811, '郊区', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230822, '桦南县', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230826, '桦川县', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230828, '汤原县', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230881, '同江市', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230882, '富锦市', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230883, '抚远市', 2308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230902, '新兴区', 2309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230903, '桃山区', 2309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230904, '茄子河区', 2309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (230921, '勃利县', 2309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231002, '东安区', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231003, '阳明区', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231004, '爱民区', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231005, '西安区', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231025, '林口县', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231071, '牡丹江经济技术开发区', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231081, '绥芬河市', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231083, '海林市', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231084, '宁安市', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231085, '穆棱市', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231086, '东宁市', 2310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231102, '爱辉区', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231123, '逊克县', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231124, '孙吴县', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231181, '北安市', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231182, '五大连池市', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231183, '嫩江市', 2311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231202, '北林区', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231221, '望奎县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231222, '兰西县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231223, '青冈县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231224, '庆安县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231225, '明水县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231226, '绥棱县', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231281, '安达市', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231282, '肇东市', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (231283, '海伦市', 2312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232701, '漠河市', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232721, '呼玛县', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232722, '塔河县', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232761, '加格达奇区', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232762, '松岭区', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232763, '新林区', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (232764, '呼中区', 2327, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310101, '黄浦区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310104, '徐汇区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310105, '长宁区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310106, '静安区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310107, '普陀区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310109, '虹口区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310110, '杨浦区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310112, '闵行区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310113, '宝山区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310114, '嘉定区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310115, '浦东新区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310116, '金山区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310117, '松江区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310118, '青浦区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310120, '奉贤区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (310151, '崇明区', 3101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320102, '玄武区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320104, '秦淮区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320105, '建邺区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320106, '鼓楼区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320111, '浦口区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320113, '栖霞区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320114, '雨花台区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320115, '江宁区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320116, '六合区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320117, '溧水区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320118, '高淳区', 3201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320205, '锡山区', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320206, '惠山区', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320211, '滨湖区', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320213, '梁溪区', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320214, '新吴区', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320281, '江阴市', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320282, '宜兴市', 3202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320302, '鼓楼区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320303, '云龙区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320305, '贾汪区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320311, '泉山区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320312, '铜山区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320321, '丰县', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320322, '沛县', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320324, '睢宁县', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320371, '徐州经济技术开发区', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320381, '新沂市', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320382, '邳州市', 3203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320402, '天宁区', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320404, '钟楼区', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320411, '新北区', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320412, '武进区', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320413, '金坛区', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320481, '溧阳市', 3204, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320505, '虎丘区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320506, '吴中区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320507, '相城区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320508, '姑苏区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320509, '吴江区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320571, '苏州工业园区', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320581, '常熟市', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320582, '张家港市', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320583, '昆山市', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320585, '太仓市', 3205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320612, '通州区', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320613, '崇川区', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320614, '海门区', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320623, '如东县', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320671, '南通经济技术开发区', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320681, '启东市', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320682, '如皋市', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320685, '海安市', 3206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320703, '连云区', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320706, '海州区', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320707, '赣榆区', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320722, '东海县', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320723, '灌云县', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320724, '灌南县', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320771, '连云港经济技术开发区', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320772, '连云港高新技术产业开发区', 3207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320803, '淮安区', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320804, '淮阴区', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320812, '清江浦区', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320813, '洪泽区', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320826, '涟水县', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320830, '盱眙县', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320831, '金湖县', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320871, '淮安经济技术开发区', 3208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320902, '亭湖区', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320903, '盐都区', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320904, '大丰区', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320921, '响水县', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320922, '滨海县', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320923, '阜宁县', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320924, '射阳县', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320925, '建湖县', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320971, '盐城经济技术开发区', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (320981, '东台市', 3209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321002, '广陵区', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321003, '邗江区', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321012, '江都区', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321023, '宝应县', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321071, '扬州经济技术开发区', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321081, '仪征市', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321084, '高邮市', 3210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321102, '京口区', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321111, '润州区', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321112, '丹徒区', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321171, '镇江新区', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321181, '丹阳市', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321182, '扬中市', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321183, '句容市', 3211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321202, '海陵区', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321203, '高港区', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321204, '姜堰区', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321271, '泰州医药高新技术产业开发区', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321281, '兴化市', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321282, '靖江市', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321283, '泰兴市', 3212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321302, '宿城区', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321311, '宿豫区', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321322, '沭阳县', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321323, '泗阳县', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321324, '泗洪县', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (321371, '宿迁经济技术开发区', 3213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330102, '上城区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330105, '拱墅区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330106, '西湖区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330108, '滨江区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330109, '萧山区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330110, '余杭区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330111, '富阳区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330112, '临安区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330113, '临平区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330114, '钱塘区', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330122, '桐庐县', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330127, '淳安县', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330182, '建德市', 3301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330203, '海曙区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330205, '江北区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330206, '北仑区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330211, '镇海区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330212, '鄞州区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330213, '奉化区', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330225, '象山县', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330226, '宁海县', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330281, '余姚市', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330282, '慈溪市', 3302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330302, '鹿城区', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330303, '龙湾区', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330304, '瓯海区', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330305, '洞头区', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330324, '永嘉县', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330326, '平阳县', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330327, '苍南县', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330328, '文成县', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330329, '泰顺县', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330381, '瑞安市', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330382, '乐清市', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330383, '龙港市', 3303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330402, '南湖区', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330411, '秀洲区', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330421, '嘉善县', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330424, '海盐县', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330481, '海宁市', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330482, '平湖市', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330483, '桐乡市', 3304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330502, '吴兴区', 3305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330503, '南浔区', 3305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330521, '德清县', 3305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330522, '长兴县', 3305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330523, '安吉县', 3305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330602, '越城区', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330603, '柯桥区', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330604, '上虞区', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330624, '新昌县', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330681, '诸暨市', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330683, '嵊州市', 3306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330702, '婺城区', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330703, '金东区', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330723, '武义县', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330726, '浦江县', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330727, '磐安县', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330781, '兰溪市', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330782, '义乌市', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330783, '东阳市', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330784, '永康市', 3307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330802, '柯城区', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330803, '衢江区', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330822, '常山县', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330824, '开化县', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330825, '龙游县', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330881, '江山市', 3308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330902, '定海区', 3309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330903, '普陀区', 3309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330921, '岱山县', 3309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (330922, '嵊泗县', 3309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331002, '椒江区', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331003, '黄岩区', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331004, '路桥区', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331022, '三门县', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331023, '天台县', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331024, '仙居县', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331081, '温岭市', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331082, '临海市', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331083, '玉环市', 3310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331102, '莲都区', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331121, '青田县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331122, '缙云县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331123, '遂昌县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331124, '松阳县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331125, '云和县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331126, '庆元县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331127, '景宁畲族自治县', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (331181, '龙泉市', 3311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340102, '瑶海区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340103, '庐阳区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340104, '蜀山区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340111, '包河区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340121, '长丰县', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340122, '肥东县', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340123, '肥西县', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340124, '庐江县', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340171, '合肥高新技术产业开发区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340172, '合肥经济技术开发区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340173, '合肥新站高新技术产业开发区', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340181, '巢湖市', 3401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340202, '镜湖区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340207, '鸠江区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340209, '弋江区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340210, '湾沚区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340212, '繁昌区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340223, '南陵县', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340271, '芜湖经济技术开发区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340272, '安徽芜湖三山经济开发区', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340281, '无为市', 3402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340302, '龙子湖区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340303, '蚌山区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340304, '禹会区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340311, '淮上区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340321, '怀远县', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340322, '五河县', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340323, '固镇县', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340371, '蚌埠市高新技术开发区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340372, '蚌埠市经济开发区', 3403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340402, '大通区', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340403, '田家庵区', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340404, '谢家集区', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340405, '八公山区', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340406, '潘集区', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340421, '凤台县', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340422, '寿县', 3404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340503, '花山区', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340504, '雨山区', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340506, '博望区', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340521, '当涂县', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340522, '含山县', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340523, '和县', 3405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340602, '杜集区', 3406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340603, '相山区', 3406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340604, '烈山区', 3406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340621, '濉溪县', 3406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340705, '铜官区', 3407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340706, '义安区', 3407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340711, '郊区', 3407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340722, '枞阳县', 3407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340802, '迎江区', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340803, '大观区', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340811, '宜秀区', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340822, '怀宁县', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340825, '太湖县', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340826, '宿松县', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340827, '望江县', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340828, '岳西县', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340871, '安徽安庆经济开发区', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340881, '桐城市', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (340882, '潜山市', 3408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341002, '屯溪区', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341003, '黄山区', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341004, '徽州区', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341021, '歙县', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341022, '休宁县', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341023, '黟县', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341024, '祁门县', 3410, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341102, '琅琊区', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341103, '南谯区', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341122, '来安县', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341124, '全椒县', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341125, '定远县', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341126, '凤阳县', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341171, '中新苏滁高新技术产业开发区', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341172, '滁州经济技术开发区', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341181, '天长市', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341182, '明光市', 3411, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341202, '颍州区', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341203, '颍东区', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341204, '颍泉区', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341221, '临泉县', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341222, '太和县', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341225, '阜南县', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341226, '颍上县', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341271, '阜阳合肥现代产业园区', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341272, '阜阳经济技术开发区', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341282, '界首市', 3412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341302, '埇桥区', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341321, '砀山县', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341322, '萧县', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341323, '灵璧县', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341324, '泗县', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341371, '宿州马鞍山现代产业园区', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341372, '宿州经济技术开发区', 3413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341502, '金安区', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341503, '裕安区', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341504, '叶集区', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341522, '霍邱县', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341523, '舒城县', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341524, '金寨县', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341525, '霍山县', 3415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341602, '谯城区', 3416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341621, '涡阳县', 3416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341622, '蒙城县', 3416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341623, '利辛县', 3416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341702, '贵池区', 3417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341721, '东至县', 3417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341722, '石台县', 3417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341723, '青阳县', 3417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341802, '宣州区', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341821, '郎溪县', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341823, '泾县', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341824, '绩溪县', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341825, '旌德县', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341871, '宣城市经济开发区', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341881, '宁国市', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (341882, '广德市', 3418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350102, '鼓楼区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350103, '台江区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350104, '仓山区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350105, '马尾区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350111, '晋安区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350112, '长乐区', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350121, '闽侯县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350122, '连江县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350123, '罗源县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350124, '闽清县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350125, '永泰县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350128, '平潭县', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350181, '福清市', 3501, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350203, '思明区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350205, '海沧区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350206, '湖里区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350211, '集美区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350212, '同安区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350213, '翔安区', 3502, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350302, '城厢区', 3503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350303, '涵江区', 3503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350304, '荔城区', 3503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350305, '秀屿区', 3503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350322, '仙游县', 3503, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350404, '三元区', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350405, '沙县区', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350421, '明溪县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350423, '清流县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350424, '宁化县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350425, '大田县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350426, '尤溪县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350428, '将乐县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350429, '泰宁县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350430, '建宁县', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350481, '永安市', 3504, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350502, '鲤城区', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350503, '丰泽区', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350504, '洛江区', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350505, '泉港区', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350521, '惠安县', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350524, '安溪县', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350525, '永春县', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350526, '德化县', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350527, '金门县', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350581, '石狮市', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350582, '晋江市', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350583, '南安市', 3505, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350602, '芗城区', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350603, '龙文区', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350604, '龙海区', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350605, '长泰区', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350622, '云霄县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350623, '漳浦县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350624, '诏安县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350626, '东山县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350627, '南靖县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350628, '平和县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350629, '华安县', 3506, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350702, '延平区', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350703, '建阳区', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350721, '顺昌县', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350722, '浦城县', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350723, '光泽县', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350724, '松溪县', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350725, '政和县', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350781, '邵武市', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350782, '武夷山市', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350783, '建瓯市', 3507, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350802, '新罗区', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350803, '永定区', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350821, '长汀县', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350823, '上杭县', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350824, '武平县', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350825, '连城县', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350881, '漳平市', 3508, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350902, '蕉城区', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350921, '霞浦县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350922, '古田县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350923, '屏南县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350924, '寿宁县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350925, '周宁县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350926, '柘荣县', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350981, '福安市', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (350982, '福鼎市', 3509, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360102, '东湖区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360103, '西湖区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360104, '青云谱区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360111, '青山湖区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360112, '新建区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360113, '红谷滩区', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360121, '南昌县', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360123, '安义县', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360124, '进贤县', 3601, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360202, '昌江区', 3602, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360203, '珠山区', 3602, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360222, '浮梁县', 3602, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360281, '乐平市', 3602, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360302, '安源区', 3603, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360313, '湘东区', 3603, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360321, '莲花县', 3603, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360322, '上栗县', 3603, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360323, '芦溪县', 3603, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360402, '濂溪区', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360403, '浔阳区', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360404, '柴桑区', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360423, '武宁县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360424, '修水县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360425, '永修县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360426, '德安县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360428, '都昌县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360429, '湖口县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360430, '彭泽县', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360481, '瑞昌市', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360482, '共青城市', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360483, '庐山市', 3604, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360502, '渝水区', 3605, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360521, '分宜县', 3605, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360602, '月湖区', 3606, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360603, '余江区', 3606, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360681, '贵溪市', 3606, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360702, '章贡区', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360703, '南康区', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360704, '赣县区', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360722, '信丰县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360723, '大余县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360724, '上犹县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360725, '崇义县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360726, '安远县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360728, '定南县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360729, '全南县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360730, '宁都县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360731, '于都县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360732, '兴国县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360733, '会昌县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360734, '寻乌县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360735, '石城县', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360781, '瑞金市', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360783, '龙南市', 3607, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360802, '吉州区', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360803, '青原区', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360821, '吉安县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360822, '吉水县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360823, '峡江县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360824, '新干县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360825, '永丰县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360826, '泰和县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360827, '遂川县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360828, '万安县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360829, '安福县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360830, '永新县', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360881, '井冈山市', 3608, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360902, '袁州区', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360921, '奉新县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360922, '万载县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360923, '上高县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360924, '宜丰县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360925, '靖安县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360926, '铜鼓县', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360981, '丰城市', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360982, '樟树市', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (360983, '高安市', 3609, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361002, '临川区', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361003, '东乡区', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361021, '南城县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361022, '黎川县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361023, '南丰县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361024, '崇仁县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361025, '乐安县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361026, '宜黄县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361027, '金溪县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361028, '资溪县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361030, '广昌县', 3610, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361102, '信州区', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361103, '广丰区', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361104, '广信区', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361123, '玉山县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361124, '铅山县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361125, '横峰县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361126, '弋阳县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361127, '余干县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361128, '鄱阳县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361129, '万年县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361130, '婺源县', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (361181, '德兴市', 3611, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370102, '历下区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370103, '市中区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370104, '槐荫区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370105, '天桥区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370112, '历城区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370113, '长清区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370114, '章丘区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370115, '济阳区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370116, '莱芜区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370117, '钢城区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370124, '平阴县', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370126, '商河县', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370171, '济南高新技术产业开发区', 3701, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370202, '市南区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370203, '市北区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370211, '黄岛区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370212, '崂山区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370213, '李沧区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370214, '城阳区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370215, '即墨区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370271, '青岛高新技术产业开发区', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370281, '胶州市', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370283, '平度市', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370285, '莱西市', 3702, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370302, '淄川区', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370303, '张店区', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370304, '博山区', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370305, '临淄区', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370306, '周村区', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370321, '桓台县', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370322, '高青县', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370323, '沂源县', 3703, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370402, '市中区', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370403, '薛城区', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370404, '峄城区', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370405, '台儿庄区', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370406, '山亭区', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370481, '滕州市', 3704, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370502, '东营区', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370503, '河口区', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370505, '垦利区', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370522, '利津县', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370523, '广饶县', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370571, '东营经济技术开发区', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370572, '东营港经济开发区', 3705, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370602, '芝罘区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370611, '福山区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370612, '牟平区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370613, '莱山区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370614, '蓬莱区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370671, '烟台高新技术产业开发区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370672, '烟台经济技术开发区', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370681, '龙口市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370682, '莱阳市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370683, '莱州市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370685, '招远市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370686, '栖霞市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370687, '海阳市', 3706, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370702, '潍城区', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370703, '寒亭区', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370704, '坊子区', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370705, '奎文区', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370724, '临朐县', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370725, '昌乐县', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370772, '潍坊滨海经济技术开发区', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370781, '青州市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370782, '诸城市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370783, '寿光市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370784, '安丘市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370785, '高密市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370786, '昌邑市', 3707, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370811, '任城区', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370812, '兖州区', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370826, '微山县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370827, '鱼台县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370828, '金乡县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370829, '嘉祥县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370830, '汶上县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370831, '泗水县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370832, '梁山县', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370871, '济宁高新技术产业开发区', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370881, '曲阜市', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370883, '邹城市', 3708, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370902, '泰山区', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370911, '岱岳区', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370921, '宁阳县', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370923, '东平县', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370982, '新泰市', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (370983, '肥城市', 3709, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371002, '环翠区', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371003, '文登区', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371071, '威海火炬高技术产业开发区', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371072, '威海经济技术开发区', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371073, '威海临港经济技术开发区', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371082, '荣成市', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371083, '乳山市', 3710, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371102, '东港区', 3711, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371103, '岚山区', 3711, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371121, '五莲县', 3711, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371122, '莒县', 3711, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371171, '日照经济技术开发区', 3711, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371302, '兰山区', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371311, '罗庄区', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371312, '河东区', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371321, '沂南县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371322, '郯城县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371323, '沂水县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371324, '兰陵县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371325, '费县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371326, '平邑县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371327, '莒南县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371328, '蒙阴县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371329, '临沭县', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371371, '临沂高新技术产业开发区', 3713, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371402, '德城区', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371403, '陵城区', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371422, '宁津县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371423, '庆云县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371424, '临邑县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371425, '齐河县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371426, '平原县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371427, '夏津县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371428, '武城县', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371471, '德州天衢新区', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371481, '乐陵市', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371482, '禹城市', 3714, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371502, '东昌府区', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371503, '茌平区', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371521, '阳谷县', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371522, '莘县', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371524, '东阿县', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371525, '冠县', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371526, '高唐县', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371581, '临清市', 3715, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371602, '滨城区', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371603, '沾化区', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371621, '惠民县', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371622, '阳信县', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371623, '无棣县', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371625, '博兴县', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371681, '邹平市', 3716, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371702, '牡丹区', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371703, '定陶区', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371721, '曹县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371722, '单县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371723, '成武县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371724, '巨野县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371725, '郓城县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371726, '鄄城县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371728, '东明县', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371771, '菏泽经济技术开发区', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (371772, '菏泽高新技术开发区', 3717, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410102, '中原区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410103, '二七区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410104, '管城回族区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410105, '金水区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410106, '上街区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410108, '惠济区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410122, '中牟县', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410171, '郑州经济技术开发区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410172, '郑州高新技术产业开发区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410173, '郑州航空港经济综合实验区', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410181, '巩义市', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410182, '荥阳市', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410183, '新密市', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410184, '新郑市', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410185, '登封市', 4101, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410202, '龙亭区', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410203, '顺河回族区', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410204, '鼓楼区', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410205, '禹王台区', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410212, '祥符区', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410221, '杞县', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410222, '通许县', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410223, '尉氏县', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410225, '兰考县', 4102, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410302, '老城区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410303, '西工区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410304, '瀍河回族区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410305, '涧西区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410307, '偃师区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410308, '孟津区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410311, '洛龙区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410323, '新安县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410324, '栾川县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410325, '嵩县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410326, '汝阳县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410327, '宜阳县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410328, '洛宁县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410329, '伊川县', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410371, '洛阳高新技术产业开发区', 4103, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410402, '新华区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410403, '卫东区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410404, '石龙区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410411, '湛河区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410421, '宝丰县', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410422, '叶县', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410423, '鲁山县', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410425, '郏县', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410471, '平顶山高新技术产业开发区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410472, '平顶山市城乡一体化示范区', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410481, '舞钢市', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410482, '汝州市', 4104, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410502, '文峰区', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410503, '北关区', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410505, '殷都区', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410506, '龙安区', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410522, '安阳县', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410523, '汤阴县', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410526, '滑县', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410527, '内黄县', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410571, '安阳高新技术产业开发区', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410581, '林州市', 4105, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410602, '鹤山区', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410603, '山城区', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410611, '淇滨区', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410621, '浚县', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410622, '淇县', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410671, '鹤壁经济技术开发区', 4106, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410702, '红旗区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410703, '卫滨区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410704, '凤泉区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410711, '牧野区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410721, '新乡县', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410724, '获嘉县', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410725, '原阳县', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410726, '延津县', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410727, '封丘县', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410771, '新乡高新技术产业开发区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410772, '新乡经济技术开发区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410773, '新乡市平原城乡一体化示范区', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410781, '卫辉市', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410782, '辉县市', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410783, '长垣市', 4107, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410802, '解放区', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410803, '中站区', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410804, '马村区', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410811, '山阳区', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410821, '修武县', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410822, '博爱县', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410823, '武陟县', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410825, '温县', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410871, '焦作城乡一体化示范区', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410882, '沁阳市', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410883, '孟州市', 4108, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410902, '华龙区', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410922, '清丰县', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410923, '南乐县', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410926, '范县', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410927, '台前县', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410928, '濮阳县', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410971, '河南濮阳工业园区', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (410972, '濮阳经济技术开发区', 4109, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411002, '魏都区', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411003, '建安区', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411024, '鄢陵县', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411025, '襄城县', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411071, '许昌经济技术开发区', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411081, '禹州市', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411082, '长葛市', 4110, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411102, '源汇区', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411103, '郾城区', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411104, '召陵区', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411121, '舞阳县', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411122, '临颍县', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411171, '漯河经济技术开发区', 4111, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411202, '湖滨区', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411203, '陕州区', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411221, '渑池县', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411224, '卢氏县', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411271, '河南三门峡经济开发区', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411281, '义马市', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411282, '灵宝市', 4112, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411302, '宛城区', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411303, '卧龙区', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411321, '南召县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411322, '方城县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411323, '西峡县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411324, '镇平县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411325, '内乡县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411326, '淅川县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411327, '社旗县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411328, '唐河县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411329, '新野县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411330, '桐柏县', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411371, '南阳高新技术产业开发区', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411372, '南阳市城乡一体化示范区', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411381, '邓州市', 4113, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411402, '梁园区', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411403, '睢阳区', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411421, '民权县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411422, '睢县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411423, '宁陵县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411424, '柘城县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411425, '虞城县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411426, '夏邑县', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411471, '豫东综合物流产业聚集区', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411472, '河南商丘经济开发区', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411481, '永城市', 4114, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411502, '浉河区', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411503, '平桥区', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411521, '罗山县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411522, '光山县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411523, '新县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411524, '商城县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411525, '固始县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411526, '潢川县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411527, '淮滨县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411528, '息县', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411571, '信阳高新技术产业开发区', 4115, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411602, '川汇区', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411603, '淮阳区', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411621, '扶沟县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411622, '西华县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411623, '商水县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411624, '沈丘县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411625, '郸城县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411627, '太康县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411628, '鹿邑县', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411671, '河南周口经济开发区', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411681, '项城市', 4116, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411702, '驿城区', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411721, '西平县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411722, '上蔡县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411723, '平舆县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411724, '正阳县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411725, '确山县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411726, '泌阳县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411727, '汝南县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411728, '遂平县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411729, '新蔡县', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (411771, '河南驻马店经济开发区', 4117, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (419001, '济源市', 4190, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420102, '江岸区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420103, '江汉区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420104, '硚口区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420105, '汉阳区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420106, '武昌区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420107, '青山区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420111, '洪山区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420112, '东西湖区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420113, '汉南区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420114, '蔡甸区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420115, '江夏区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420116, '黄陂区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420117, '新洲区', 4201, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420202, '黄石港区', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420203, '西塞山区', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420204, '下陆区', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420205, '铁山区', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420222, '阳新县', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420281, '大冶市', 4202, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420302, '茅箭区', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420303, '张湾区', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420304, '郧阳区', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420322, '郧西县', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420323, '竹山县', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420324, '竹溪县', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420325, '房县', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420381, '丹江口市', 4203, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420502, '西陵区', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420503, '伍家岗区', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420504, '点军区', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420505, '猇亭区', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420506, '夷陵区', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420525, '远安县', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420526, '兴山县', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420527, '秭归县', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420528, '长阳土家族自治县', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420529, '五峰土家族自治县', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420581, '宜都市', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420582, '当阳市', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420583, '枝江市', 4205, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420602, '襄城区', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420606, '樊城区', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420607, '襄州区', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420624, '南漳县', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420625, '谷城县', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420626, '保康县', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420682, '老河口市', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420683, '枣阳市', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420684, '宜城市', 4206, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420702, '梁子湖区', 4207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420703, '华容区', 4207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420704, '鄂城区', 4207, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420802, '东宝区', 4208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420804, '掇刀区', 4208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420822, '沙洋县', 4208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420881, '钟祥市', 4208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420882, '京山市', 4208, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420902, '孝南区', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420921, '孝昌县', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420922, '大悟县', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420923, '云梦县', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420981, '应城市', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420982, '安陆市', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (420984, '汉川市', 4209, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421002, '沙市区', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421003, '荆州区', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421022, '公安县', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421024, '江陵县', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421071, '荆州经济技术开发区', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421081, '石首市', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421083, '洪湖市', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421087, '松滋市', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421088, '监利市', 4210, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421102, '黄州区', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421121, '团风县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421122, '红安县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421123, '罗田县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421124, '英山县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421125, '浠水县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421126, '蕲春县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421127, '黄梅县', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421171, '龙感湖管理区', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421181, '麻城市', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421182, '武穴市', 4211, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421202, '咸安区', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421221, '嘉鱼县', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421222, '通城县', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421223, '崇阳县', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421224, '通山县', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421281, '赤壁市', 4212, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421303, '曾都区', 4213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421321, '随县', 4213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (421381, '广水市', 4213, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422801, '恩施市', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422802, '利川市', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422822, '建始县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422823, '巴东县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422825, '宣恩县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422826, '咸丰县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422827, '来凤县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (422828, '鹤峰县', 4228, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (429004, '仙桃市', 4290, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (429005, '潜江市', 4290, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (429006, '天门市', 4290, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (429021, '神农架林区', 4290, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430102, '芙蓉区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430103, '天心区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430104, '岳麓区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430105, '开福区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430111, '雨花区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430112, '望城区', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430121, '长沙县', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430181, '浏阳市', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430182, '宁乡市', 4301, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430202, '荷塘区', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430203, '芦淞区', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430204, '石峰区', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430211, '天元区', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430212, '渌口区', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430223, '攸县', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430224, '茶陵县', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430225, '炎陵县', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430281, '醴陵市', 4302, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430302, '雨湖区', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430304, '岳塘区', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430321, '湘潭县', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430371, '湖南湘潭高新技术产业园区', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430372, '湘潭昭山示范区', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430373, '湘潭九华示范区', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430381, '湘乡市', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430382, '韶山市', 4303, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430405, '珠晖区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430406, '雁峰区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430407, '石鼓区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430408, '蒸湘区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430412, '南岳区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430421, '衡阳县', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430422, '衡南县', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430423, '衡山县', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430424, '衡东县', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430426, '祁东县', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430471, '衡阳综合保税区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430472, '湖南衡阳高新技术产业园区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430473, '湖南衡阳松木经济开发区', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430481, '耒阳市', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430482, '常宁市', 4304, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430502, '双清区', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430503, '大祥区', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430511, '北塔区', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430522, '新邵县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430523, '邵阳县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430524, '隆回县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430525, '洞口县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430527, '绥宁县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430528, '新宁县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430529, '城步苗族自治县', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430581, '武冈市', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430582, '邵东市', 4305, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430602, '岳阳楼区', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430603, '云溪区', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430611, '君山区', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430621, '岳阳县', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430623, '华容县', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430624, '湘阴县', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430626, '平江县', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430671, '岳阳市屈原管理区', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430681, '汨罗市', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430682, '临湘市', 4306, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430702, '武陵区', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430703, '鼎城区', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430721, '安乡县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430722, '汉寿县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430723, '澧县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430724, '临澧县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430725, '桃源县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430726, '石门县', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430771, '常德市西洞庭管理区', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430781, '津市市', 4307, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430802, '永定区', 4308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430811, '武陵源区', 4308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430821, '慈利县', 4308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430822, '桑植县', 4308, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430902, '资阳区', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430903, '赫山区', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430921, '南县', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430922, '桃江县', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430923, '安化县', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430971, '益阳市大通湖管理区', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430972, '湖南益阳高新技术产业园区', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (430981, '沅江市', 4309, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431002, '北湖区', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431003, '苏仙区', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431021, '桂阳县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431022, '宜章县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431023, '永兴县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431024, '嘉禾县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431025, '临武县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431026, '汝城县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431027, '桂东县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431028, '安仁县', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431081, '资兴市', 4310, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431102, '零陵区', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431103, '冷水滩区', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431122, '东安县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431123, '双牌县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431124, '道县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431125, '江永县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431126, '宁远县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431127, '蓝山县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431128, '新田县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431129, '江华瑶族自治县', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431171, '永州经济技术开发区', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431173, '永州市回龙圩管理区', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431181, '祁阳市', 4311, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431202, '鹤城区', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431221, '中方县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431222, '沅陵县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431223, '辰溪县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431224, '溆浦县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431225, '会同县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431226, '麻阳苗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431227, '新晃侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431228, '芷江侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431229, '靖州苗族侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431230, '通道侗族自治县', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431271, '怀化市洪江管理区', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431281, '洪江市', 4312, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431302, '娄星区', 4313, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431321, '双峰县', 4313, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431322, '新化县', 4313, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431381, '冷水江市', 4313, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (431382, '涟源市', 4313, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433101, '吉首市', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433122, '泸溪县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433123, '凤凰县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433124, '花垣县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433125, '保靖县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433126, '古丈县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433127, '永顺县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (433130, '龙山县', 4331, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440103, '荔湾区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440104, '越秀区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440105, '海珠区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440106, '天河区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440111, '白云区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440112, '黄埔区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440113, '番禺区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440114, '花都区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440115, '南沙区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440117, '从化区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440118, '增城区', 4401, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440203, '武江区', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440204, '浈江区', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440205, '曲江区', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440222, '始兴县', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440224, '仁化县', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440229, '翁源县', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440232, '乳源瑶族自治县', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440233, '新丰县', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440281, '乐昌市', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440282, '南雄市', 4402, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440303, '罗湖区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440304, '福田区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440305, '南山区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440306, '宝安区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440307, '龙岗区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440308, '盐田区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440309, '龙华区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440310, '坪山区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440311, '光明区', 4403, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440402, '香洲区', 4404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440403, '斗门区', 4404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440404, '金湾区', 4404, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440507, '龙湖区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440511, '金平区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440512, '濠江区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440513, '潮阳区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440514, '潮南区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440515, '澄海区', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440523, '南澳县', 4405, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440604, '禅城区', 4406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440605, '南海区', 4406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440606, '顺德区', 4406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440607, '三水区', 4406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440608, '高明区', 4406, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440703, '蓬江区', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440704, '江海区', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440705, '新会区', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440781, '台山市', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440783, '开平市', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440784, '鹤山市', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440785, '恩平市', 4407, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440802, '赤坎区', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440803, '霞山区', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440804, '坡头区', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440811, '麻章区', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440823, '遂溪县', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440825, '徐闻县', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440881, '廉江市', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440882, '雷州市', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440883, '吴川市', 4408, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440902, '茂南区', 4409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440904, '电白区', 4409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440981, '高州市', 4409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440982, '化州市', 4409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (440983, '信宜市', 4409, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441202, '端州区', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441203, '鼎湖区', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441204, '高要区', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441223, '广宁县', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441224, '怀集县', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441225, '封开县', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441226, '德庆县', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441284, '四会市', 4412, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441302, '惠城区', 4413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441303, '惠阳区', 4413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441322, '博罗县', 4413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441323, '惠东县', 4413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441324, '龙门县', 4413, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441402, '梅江区', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441403, '梅县区', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441422, '大埔县', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441423, '丰顺县', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441424, '五华县', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441426, '平远县', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441427, '蕉岭县', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441481, '兴宁市', 4414, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441502, '城区', 4415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441521, '海丰县', 4415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441523, '陆河县', 4415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441581, '陆丰市', 4415, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441602, '源城区', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441621, '紫金县', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441622, '龙川县', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441623, '连平县', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441624, '和平县', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441625, '东源县', 4416, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441702, '江城区', 4417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441704, '阳东区', 4417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441721, '阳西县', 4417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441781, '阳春市', 4417, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441802, '清城区', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441803, '清新区', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441821, '佛冈县', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441823, '阳山县', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441825, '连山壮族瑶族自治县', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441826, '连南瑶族自治县', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441881, '英德市', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441882, '连州市', 4418, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (441900, '东莞市', 4419, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (442000, '中山市', 4420, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445102, '湘桥区', 4451, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445103, '潮安区', 4451, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445122, '饶平县', 4451, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445202, '榕城区', 4452, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445203, '揭东区', 4452, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445222, '揭西县', 4452, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445224, '惠来县', 4452, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445281, '普宁市', 4452, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445302, '云城区', 4453, '2023-06-25 13:48:34', NULL, 0);
INSERT INTO `district_info` VALUES (445303, '云安区', 4453, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (445321, '新兴县', 4453, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (445322, '郁南县', 4453, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (445381, '罗定市', 4453, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450102, '兴宁区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450103, '青秀区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450105, '江南区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450107, '西乡塘区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450108, '良庆区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450109, '邕宁区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450110, '武鸣区', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450123, '隆安县', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450124, '马山县', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450125, '上林县', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450126, '宾阳县', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450181, '横州市', 4501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450202, '城中区', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450203, '鱼峰区', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450204, '柳南区', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450205, '柳北区', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450206, '柳江区', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450222, '柳城县', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450223, '鹿寨县', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450224, '融安县', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450225, '融水苗族自治县', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450226, '三江侗族自治县', 4502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450302, '秀峰区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450303, '叠彩区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450304, '象山区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450305, '七星区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450311, '雁山区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450312, '临桂区', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450321, '阳朔县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450323, '灵川县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450324, '全州县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450325, '兴安县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450326, '永福县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450327, '灌阳县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450328, '龙胜各族自治县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450329, '资源县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450330, '平乐县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450332, '恭城瑶族自治县', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450381, '荔浦市', 4503, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450403, '万秀区', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450405, '长洲区', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450406, '龙圩区', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450421, '苍梧县', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450422, '藤县', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450423, '蒙山县', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450481, '岑溪市', 4504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450502, '海城区', 4505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450503, '银海区', 4505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450512, '铁山港区', 4505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450521, '合浦县', 4505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450602, '港口区', 4506, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450603, '防城区', 4506, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450621, '上思县', 4506, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450681, '东兴市', 4506, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450702, '钦南区', 4507, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450703, '钦北区', 4507, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450721, '灵山县', 4507, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450722, '浦北县', 4507, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450802, '港北区', 4508, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450803, '港南区', 4508, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450804, '覃塘区', 4508, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450821, '平南县', 4508, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450881, '桂平市', 4508, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450902, '玉州区', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450903, '福绵区', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450921, '容县', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450922, '陆川县', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450923, '博白县', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450924, '兴业县', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (450981, '北流市', 4509, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451002, '右江区', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451003, '田阳区', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451022, '田东县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451024, '德保县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451026, '那坡县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451027, '凌云县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451028, '乐业县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451029, '田林县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451030, '西林县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451031, '隆林各族自治县', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451081, '靖西市', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451082, '平果市', 4510, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451102, '八步区', 4511, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451103, '平桂区', 4511, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451121, '昭平县', 4511, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451122, '钟山县', 4511, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451123, '富川瑶族自治县', 4511, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451202, '金城江区', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451203, '宜州区', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451221, '南丹县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451222, '天峨县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451223, '凤山县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451224, '东兰县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451225, '罗城仫佬族自治县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451226, '环江毛南族自治县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451227, '巴马瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451228, '都安瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451229, '大化瑶族自治县', 4512, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451302, '兴宾区', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451321, '忻城县', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451322, '象州县', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451323, '武宣县', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451324, '金秀瑶族自治县', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451381, '合山市', 4513, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451402, '江州区', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451421, '扶绥县', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451422, '宁明县', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451423, '龙州县', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451424, '大新县', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451425, '天等县', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (451481, '凭祥市', 4514, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460105, '秀英区', 4601, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460106, '龙华区', 4601, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460107, '琼山区', 4601, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460108, '美兰区', 4601, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460202, '海棠区', 4602, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460203, '吉阳区', 4602, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460204, '天涯区', 4602, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460205, '崖州区', 4602, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460321, '西沙群岛', 4603, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460322, '南沙群岛', 4603, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460323, '中沙群岛的岛礁及其海域', 4603, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (460400, '儋州市', 4604, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469001, '五指山市', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469002, '琼海市', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469005, '文昌市', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469006, '万宁市', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469007, '东方市', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469021, '定安县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469022, '屯昌县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469023, '澄迈县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469024, '临高县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469025, '白沙黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469026, '昌江黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469027, '乐东黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469028, '陵水黎族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469029, '保亭黎族苗族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (469030, '琼中黎族苗族自治县', 4690, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500101, '万州区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500102, '涪陵区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500103, '渝中区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500104, '大渡口区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500105, '江北区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500106, '沙坪坝区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500107, '九龙坡区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500108, '南岸区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500109, '北碚区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500110, '綦江区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500111, '大足区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500112, '渝北区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500113, '巴南区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500114, '黔江区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500115, '长寿区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500116, '江津区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500117, '合川区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500118, '永川区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500119, '南川区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500120, '璧山区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500151, '铜梁区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500152, '潼南区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500153, '荣昌区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500154, '开州区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500155, '梁平区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500156, '武隆区', 5001, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500229, '城口县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500230, '丰都县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500231, '垫江县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500233, '忠县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500235, '云阳县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500236, '奉节县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500237, '巫山县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500238, '巫溪县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500240, '石柱土家族自治县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500241, '秀山土家族苗族自治县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500242, '酉阳土家族苗族自治县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (500243, '彭水苗族土家族自治县', 5002, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510104, '锦江区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510105, '青羊区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510106, '金牛区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510107, '武侯区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510108, '成华区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510112, '龙泉驿区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510113, '青白江区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510114, '新都区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510115, '温江区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510116, '双流区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510117, '郫都区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510118, '新津区', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510121, '金堂县', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510129, '大邑县', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510131, '蒲江县', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510181, '都江堰市', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510182, '彭州市', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510183, '邛崃市', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510184, '崇州市', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510185, '简阳市', 5101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510302, '自流井区', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510303, '贡井区', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510304, '大安区', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510311, '沿滩区', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510321, '荣县', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510322, '富顺县', 5103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510402, '东区', 5104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510403, '西区', 5104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510411, '仁和区', 5104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510421, '米易县', 5104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510422, '盐边县', 5104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510502, '江阳区', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510503, '纳溪区', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510504, '龙马潭区', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510521, '泸县', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510522, '合江县', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510524, '叙永县', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510525, '古蔺县', 5105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510603, '旌阳区', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510604, '罗江区', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510623, '中江县', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510681, '广汉市', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510682, '什邡市', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510683, '绵竹市', 5106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510703, '涪城区', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510704, '游仙区', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510705, '安州区', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510722, '三台县', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510723, '盐亭县', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510725, '梓潼县', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510726, '北川羌族自治县', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510727, '平武县', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510781, '江油市', 5107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510802, '利州区', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510811, '昭化区', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510812, '朝天区', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510821, '旺苍县', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510822, '青川县', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510823, '剑阁县', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510824, '苍溪县', 5108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510903, '船山区', 5109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510904, '安居区', 5109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510921, '蓬溪县', 5109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510923, '大英县', 5109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (510981, '射洪市', 5109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511002, '市中区', 5110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511011, '东兴区', 5110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511024, '威远县', 5110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511025, '资中县', 5110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511083, '隆昌市', 5110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511102, '市中区', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511111, '沙湾区', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511112, '五通桥区', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511113, '金口河区', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511123, '犍为县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511124, '井研县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511126, '夹江县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511129, '沐川县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511132, '峨边彝族自治县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511133, '马边彝族自治县', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511181, '峨眉山市', 5111, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511302, '顺庆区', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511303, '高坪区', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511304, '嘉陵区', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511321, '南部县', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511322, '营山县', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511323, '蓬安县', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511324, '仪陇县', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511325, '西充县', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511381, '阆中市', 5113, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511402, '东坡区', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511403, '彭山区', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511421, '仁寿县', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511423, '洪雅县', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511424, '丹棱县', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511425, '青神县', 5114, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511502, '翠屏区', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511503, '南溪区', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511504, '叙州区', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511523, '江安县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511524, '长宁县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511525, '高县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511526, '珙县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511527, '筠连县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511528, '兴文县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511529, '屏山县', 5115, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511602, '广安区', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511603, '前锋区', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511621, '岳池县', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511622, '武胜县', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511623, '邻水县', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511681, '华蓥市', 5116, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511702, '通川区', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511703, '达川区', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511722, '宣汉县', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511723, '开江县', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511724, '大竹县', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511725, '渠县', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511781, '万源市', 5117, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511802, '雨城区', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511803, '名山区', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511822, '荥经县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511823, '汉源县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511824, '石棉县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511825, '天全县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511826, '芦山县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511827, '宝兴县', 5118, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511902, '巴州区', 5119, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511903, '恩阳区', 5119, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511921, '通江县', 5119, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511922, '南江县', 5119, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (511923, '平昌县', 5119, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (512002, '雁江区', 5120, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (512021, '安岳县', 5120, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (512022, '乐至县', 5120, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513201, '马尔康市', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513221, '汶川县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513222, '理县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513223, '茂县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513224, '松潘县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513225, '九寨沟县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513226, '金川县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513227, '小金县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513228, '黑水县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513230, '壤塘县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513231, '阿坝县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513232, '若尔盖县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513233, '红原县', 5132, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513301, '康定市', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513322, '泸定县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513323, '丹巴县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513324, '九龙县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513325, '雅江县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513326, '道孚县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513327, '炉霍县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513328, '甘孜县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513329, '新龙县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513330, '德格县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513331, '白玉县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513332, '石渠县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513333, '色达县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513334, '理塘县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513335, '巴塘县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513336, '乡城县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513337, '稻城县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513338, '得荣县', 5133, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513401, '西昌市', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513402, '会理市', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513422, '木里藏族自治县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513423, '盐源县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513424, '德昌县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513426, '会东县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513427, '宁南县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513428, '普格县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513429, '布拖县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513430, '金阳县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513431, '昭觉县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513432, '喜德县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513433, '冕宁县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513434, '越西县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513435, '甘洛县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513436, '美姑县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (513437, '雷波县', 5134, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520102, '南明区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520103, '云岩区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520111, '花溪区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520112, '乌当区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520113, '白云区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520115, '观山湖区', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520121, '开阳县', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520122, '息烽县', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520123, '修文县', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520181, '清镇市', 5201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520201, '钟山区', 5202, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520203, '六枝特区', 5202, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520204, '水城区', 5202, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520281, '盘州市', 5202, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520302, '红花岗区', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520303, '汇川区', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520304, '播州区', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520322, '桐梓县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520323, '绥阳县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520324, '正安县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520325, '道真仡佬族苗族自治县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520326, '务川仡佬族苗族自治县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520327, '凤冈县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520328, '湄潭县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520329, '余庆县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520330, '习水县', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520381, '赤水市', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520382, '仁怀市', 5203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520402, '西秀区', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520403, '平坝区', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520422, '普定县', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520423, '镇宁布依族苗族自治县', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520424, '关岭布依族苗族自治县', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520425, '紫云苗族布依族自治县', 5204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520502, '七星关区', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520521, '大方县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520523, '金沙县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520524, '织金县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520525, '纳雍县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520526, '威宁彝族回族苗族自治县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520527, '赫章县', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520581, '黔西市', 5205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520602, '碧江区', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520603, '万山区', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520621, '江口县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520622, '玉屏侗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520623, '石阡县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520624, '思南县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520625, '印江土家族苗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520626, '德江县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520627, '沿河土家族自治县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (520628, '松桃苗族自治县', 5206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522301, '兴义市', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522302, '兴仁市', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522323, '普安县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522324, '晴隆县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522325, '贞丰县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522326, '望谟县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522327, '册亨县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522328, '安龙县', 5223, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522601, '凯里市', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522622, '黄平县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522623, '施秉县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522624, '三穗县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522625, '镇远县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522626, '岑巩县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522627, '天柱县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522628, '锦屏县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522629, '剑河县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522630, '台江县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522631, '黎平县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522632, '榕江县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522633, '从江县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522634, '雷山县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522635, '麻江县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522636, '丹寨县', 5226, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522701, '都匀市', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522702, '福泉市', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522722, '荔波县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522723, '贵定县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522725, '瓮安县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522726, '独山县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522727, '平塘县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522728, '罗甸县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522729, '长顺县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522730, '龙里县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522731, '惠水县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (522732, '三都水族自治县', 5227, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530102, '五华区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530103, '盘龙区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530111, '官渡区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530112, '西山区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530113, '东川区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530114, '呈贡区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530115, '晋宁区', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530124, '富民县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530125, '宜良县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530126, '石林彝族自治县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530127, '嵩明县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530128, '禄劝彝族苗族自治县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530129, '寻甸回族彝族自治县', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530181, '安宁市', 5301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530302, '麒麟区', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530303, '沾益区', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530304, '马龙区', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530322, '陆良县', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530323, '师宗县', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530324, '罗平县', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530325, '富源县', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530326, '会泽县', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530381, '宣威市', 5303, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530402, '红塔区', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530403, '江川区', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530423, '通海县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530424, '华宁县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530425, '易门县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530426, '峨山彝族自治县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530427, '新平彝族傣族自治县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530428, '元江哈尼族彝族傣族自治县', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530481, '澄江市', 5304, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530502, '隆阳区', 5305, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530521, '施甸县', 5305, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530523, '龙陵县', 5305, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530524, '昌宁县', 5305, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530581, '腾冲市', 5305, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530602, '昭阳区', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530621, '鲁甸县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530622, '巧家县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530623, '盐津县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530624, '大关县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530625, '永善县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530626, '绥江县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530627, '镇雄县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530628, '彝良县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530629, '威信县', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530681, '水富市', 5306, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530702, '古城区', 5307, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530721, '玉龙纳西族自治县', 5307, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530722, '永胜县', 5307, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530723, '华坪县', 5307, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530724, '宁蒗彝族自治县', 5307, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530802, '思茅区', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530821, '宁洱哈尼族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530822, '墨江哈尼族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530823, '景东彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530824, '景谷傣族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530825, '镇沅彝族哈尼族拉祜族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530826, '江城哈尼族彝族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530827, '孟连傣族拉祜族佤族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530828, '澜沧拉祜族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530829, '西盟佤族自治县', 5308, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530902, '临翔区', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530921, '凤庆县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530922, '云县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530923, '永德县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530924, '镇康县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530925, '双江拉祜族佤族布朗族傣族自治县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530926, '耿马傣族佤族自治县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (530927, '沧源佤族自治县', 5309, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532301, '楚雄市', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532302, '禄丰市', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532322, '双柏县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532323, '牟定县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532324, '南华县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532325, '姚安县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532326, '大姚县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532327, '永仁县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532328, '元谋县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532329, '武定县', 5323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532501, '个旧市', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532502, '开远市', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532503, '蒙自市', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532504, '弥勒市', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532523, '屏边苗族自治县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532524, '建水县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532525, '石屏县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532527, '泸西县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532528, '元阳县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532529, '红河县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532530, '金平苗族瑶族傣族自治县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532531, '绿春县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532532, '河口瑶族自治县', 5325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532601, '文山市', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532622, '砚山县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532623, '西畴县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532624, '麻栗坡县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532625, '马关县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532626, '丘北县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532627, '广南县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532628, '富宁县', 5326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532801, '景洪市', 5328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532822, '勐海县', 5328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532823, '勐腊县', 5328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532901, '大理市', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532922, '漾濞彝族自治县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532923, '祥云县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532924, '宾川县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532925, '弥渡县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532926, '南涧彝族自治县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532927, '巍山彝族回族自治县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532928, '永平县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532929, '云龙县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532930, '洱源县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532931, '剑川县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (532932, '鹤庆县', 5329, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533102, '瑞丽市', 5331, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533103, '芒市', 5331, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533122, '梁河县', 5331, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533123, '盈江县', 5331, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533124, '陇川县', 5331, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533301, '泸水市', 5333, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533323, '福贡县', 5333, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533324, '贡山独龙族怒族自治县', 5333, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533325, '兰坪白族普米族自治县', 5333, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533401, '香格里拉市', 5334, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533422, '德钦县', 5334, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (533423, '维西傈僳族自治县', 5334, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540102, '城关区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540103, '堆龙德庆区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540104, '达孜区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540121, '林周县', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540122, '当雄县', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540123, '尼木县', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540124, '曲水县', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540127, '墨竹工卡县', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540171, '格尔木藏青工业园区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540172, '拉萨经济技术开发区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540173, '西藏文化旅游创意园区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540174, '达孜工业园区', 5401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540202, '桑珠孜区', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540221, '南木林县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540222, '江孜县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540223, '定日县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540224, '萨迦县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540225, '拉孜县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540226, '昂仁县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540227, '谢通门县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540228, '白朗县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540229, '仁布县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540230, '康马县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540231, '定结县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540232, '仲巴县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540233, '亚东县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540234, '吉隆县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540235, '聂拉木县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540236, '萨嘎县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540237, '岗巴县', 5402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540302, '卡若区', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540321, '江达县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540322, '贡觉县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540323, '类乌齐县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540324, '丁青县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540325, '察雅县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540326, '八宿县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540327, '左贡县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540328, '芒康县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540329, '洛隆县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540330, '边坝县', 5403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540402, '巴宜区', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540421, '工布江达县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540422, '米林县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540423, '墨脱县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540424, '波密县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540425, '察隅县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540426, '朗县', 5404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540502, '乃东区', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540521, '扎囊县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540522, '贡嘎县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540523, '桑日县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540524, '琼结县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540525, '曲松县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540526, '措美县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540527, '洛扎县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540528, '加查县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540529, '隆子县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540530, '错那县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540531, '浪卡子县', 5405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540602, '色尼区', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540621, '嘉黎县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540622, '比如县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540623, '聂荣县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540624, '安多县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540625, '申扎县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540626, '索县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540627, '班戈县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540628, '巴青县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540629, '尼玛县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (540630, '双湖县', 5406, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542521, '普兰县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542522, '札达县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542523, '噶尔县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542524, '日土县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542525, '革吉县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542526, '改则县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (542527, '措勤县', 5425, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610102, '新城区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610103, '碑林区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610104, '莲湖区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610111, '灞桥区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610112, '未央区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610113, '雁塔区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610114, '阎良区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610115, '临潼区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610116, '长安区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610117, '高陵区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610118, '鄠邑区', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610122, '蓝田县', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610124, '周至县', 6101, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610202, '王益区', 6102, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610203, '印台区', 6102, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610204, '耀州区', 6102, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610222, '宜君县', 6102, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610302, '渭滨区', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610303, '金台区', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610304, '陈仓区', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610305, '凤翔区', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610323, '岐山县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610324, '扶风县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610326, '眉县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610327, '陇县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610328, '千阳县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610329, '麟游县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610330, '凤县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610331, '太白县', 6103, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610402, '秦都区', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610403, '杨陵区', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610404, '渭城区', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610422, '三原县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610423, '泾阳县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610424, '乾县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610425, '礼泉县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610426, '永寿县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610428, '长武县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610429, '旬邑县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610430, '淳化县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610431, '武功县', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610481, '兴平市', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610482, '彬州市', 6104, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610502, '临渭区', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610503, '华州区', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610522, '潼关县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610523, '大荔县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610524, '合阳县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610525, '澄城县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610526, '蒲城县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610527, '白水县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610528, '富平县', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610581, '韩城市', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610582, '华阴市', 6105, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610602, '宝塔区', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610603, '安塞区', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610621, '延长县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610622, '延川县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610625, '志丹县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610626, '吴起县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610627, '甘泉县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610628, '富县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610629, '洛川县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610630, '宜川县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610631, '黄龙县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610632, '黄陵县', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610681, '子长市', 6106, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610702, '汉台区', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610703, '南郑区', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610722, '城固县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610723, '洋县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610724, '西乡县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610725, '勉县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610726, '宁强县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610727, '略阳县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610728, '镇巴县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610729, '留坝县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610730, '佛坪县', 6107, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610802, '榆阳区', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610803, '横山区', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610822, '府谷县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610824, '靖边县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610825, '定边县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610826, '绥德县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610827, '米脂县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610828, '佳县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610829, '吴堡县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610830, '清涧县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610831, '子洲县', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610881, '神木市', 6108, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610902, '汉滨区', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610921, '汉阴县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610922, '石泉县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610923, '宁陕县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610924, '紫阳县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610925, '岚皋县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610926, '平利县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610927, '镇坪县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610929, '白河县', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (610981, '旬阳市', 6109, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611002, '商州区', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611021, '洛南县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611022, '丹凤县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611023, '商南县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611024, '山阳县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611025, '镇安县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (611026, '柞水县', 6110, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620102, '城关区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620103, '七里河区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620104, '西固区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620105, '安宁区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620111, '红古区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620121, '永登县', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620122, '皋兰县', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620123, '榆中县', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620171, '兰州新区', 6201, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620201, '嘉峪关市', 6202, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620302, '金川区', 6203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620321, '永昌县', 6203, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620402, '白银区', 6204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620403, '平川区', 6204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620421, '靖远县', 6204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620422, '会宁县', 6204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620423, '景泰县', 6204, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620502, '秦州区', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620503, '麦积区', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620521, '清水县', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620522, '秦安县', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620523, '甘谷县', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620524, '武山县', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620525, '张家川回族自治县', 6205, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620602, '凉州区', 6206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620621, '民勤县', 6206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620622, '古浪县', 6206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620623, '天祝藏族自治县', 6206, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620702, '甘州区', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620721, '肃南裕固族自治县', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620722, '民乐县', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620723, '临泽县', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620724, '高台县', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620725, '山丹县', 6207, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620802, '崆峒区', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620821, '泾川县', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620822, '灵台县', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620823, '崇信县', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620825, '庄浪县', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620826, '静宁县', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620881, '华亭市', 6208, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620902, '肃州区', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620921, '金塔县', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620922, '瓜州县', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620923, '肃北蒙古族自治县', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620924, '阿克塞哈萨克族自治县', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620981, '玉门市', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (620982, '敦煌市', 6209, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621002, '西峰区', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621021, '庆城县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621022, '环县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621023, '华池县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621024, '合水县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621025, '正宁县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621026, '宁县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621027, '镇原县', 6210, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621102, '安定区', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621121, '通渭县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621122, '陇西县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621123, '渭源县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621124, '临洮县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621125, '漳县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621126, '岷县', 6211, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621202, '武都区', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621221, '成县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621222, '文县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621223, '宕昌县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621224, '康县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621225, '西和县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621226, '礼县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621227, '徽县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (621228, '两当县', 6212, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622901, '临夏市', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622921, '临夏县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622922, '康乐县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622923, '永靖县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622924, '广河县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622925, '和政县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622926, '东乡族自治县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (622927, '积石山保安族东乡族撒拉族自治县', 6229, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623001, '合作市', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623021, '临潭县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623022, '卓尼县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623023, '舟曲县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623024, '迭部县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623025, '玛曲县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623026, '碌曲县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (623027, '夏河县', 6230, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630102, '城东区', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630103, '城中区', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630104, '城西区', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630105, '城北区', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630106, '湟中区', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630121, '大通回族土族自治县', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630123, '湟源县', 6301, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630202, '乐都区', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630203, '平安区', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630222, '民和回族土族自治县', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630223, '互助土族自治县', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630224, '化隆回族自治县', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (630225, '循化撒拉族自治县', 6302, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632221, '门源回族自治县', 6322, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632222, '祁连县', 6322, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632223, '海晏县', 6322, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632224, '刚察县', 6322, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632301, '同仁市', 6323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632322, '尖扎县', 6323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632323, '泽库县', 6323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632324, '河南蒙古族自治县', 6323, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632521, '共和县', 6325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632522, '同德县', 6325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632523, '贵德县', 6325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632524, '兴海县', 6325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632525, '贵南县', 6325, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632621, '玛沁县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632622, '班玛县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632623, '甘德县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632624, '达日县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632625, '久治县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632626, '玛多县', 6326, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632701, '玉树市', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632722, '杂多县', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632723, '称多县', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632724, '治多县', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632725, '囊谦县', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632726, '曲麻莱县', 6327, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632801, '格尔木市', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632802, '德令哈市', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632803, '茫崖市', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632821, '乌兰县', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632822, '都兰县', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632823, '天峻县', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (632857, '大柴旦行政委员会', 6328, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640104, '兴庆区', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640105, '西夏区', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640106, '金凤区', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640121, '永宁县', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640122, '贺兰县', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640181, '灵武市', 6401, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640202, '大武口区', 6402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640205, '惠农区', 6402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640221, '平罗县', 6402, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640302, '利通区', 6403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640303, '红寺堡区', 6403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640323, '盐池县', 6403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640324, '同心县', 6403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640381, '青铜峡市', 6403, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640402, '原州区', 6404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640422, '西吉县', 6404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640423, '隆德县', 6404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640424, '泾源县', 6404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640425, '彭阳县', 6404, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640502, '沙坡头区', 6405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640521, '中宁县', 6405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (640522, '海原县', 6405, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650102, '天山区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650103, '沙依巴克区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650104, '新市区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650105, '水磨沟区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650106, '头屯河区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650107, '达坂城区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650109, '米东区', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650121, '乌鲁木齐县', 6501, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650202, '独山子区', 6502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650203, '克拉玛依区', 6502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650204, '白碱滩区', 6502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650205, '乌尔禾区', 6502, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650402, '高昌区', 6504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650421, '鄯善县', 6504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650422, '托克逊县', 6504, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650502, '伊州区', 6505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650521, '巴里坤哈萨克自治县', 6505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (650522, '伊吾县', 6505, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652301, '昌吉市', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652302, '阜康市', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652323, '呼图壁县', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652324, '玛纳斯县', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652325, '奇台县', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652327, '吉木萨尔县', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652328, '木垒哈萨克自治县', 6523, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652701, '博乐市', 6527, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652702, '阿拉山口市', 6527, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652722, '精河县', 6527, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652723, '温泉县', 6527, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652801, '库尔勒市', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652822, '轮台县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652823, '尉犁县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652824, '若羌县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652825, '且末县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652826, '焉耆回族自治县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652827, '和静县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652828, '和硕县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652829, '博湖县', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652871, '库尔勒经济技术开发区', 6528, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652901, '阿克苏市', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652902, '库车市', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652922, '温宿县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652924, '沙雅县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652925, '新和县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652926, '拜城县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652927, '乌什县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652928, '阿瓦提县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (652929, '柯坪县', 6529, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653001, '阿图什市', 6530, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653022, '阿克陶县', 6530, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653023, '阿合奇县', 6530, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653024, '乌恰县', 6530, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653101, '喀什市', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653121, '疏附县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653122, '疏勒县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653123, '英吉沙县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653124, '泽普县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653125, '莎车县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653126, '叶城县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653127, '麦盖提县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653128, '岳普湖县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653129, '伽师县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653130, '巴楚县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653131, '塔什库尔干塔吉克自治县', 6531, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653201, '和田市', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653221, '和田县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653222, '墨玉县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653223, '皮山县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653224, '洛浦县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653225, '策勒县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653226, '于田县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (653227, '民丰县', 6532, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654002, '伊宁市', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654003, '奎屯市', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654004, '霍尔果斯市', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654021, '伊宁县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654022, '察布查尔锡伯自治县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654023, '霍城县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654024, '巩留县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654025, '新源县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654026, '昭苏县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654027, '特克斯县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654028, '尼勒克县', 6540, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654201, '塔城市', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654202, '乌苏市', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654203, '沙湾市', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654221, '额敏县', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654224, '托里县', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654225, '裕民县', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654226, '和布克赛尔蒙古自治县', 6542, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654301, '阿勒泰市', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654321, '布尔津县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654322, '富蕴县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654323, '福海县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654324, '哈巴河县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654325, '青河县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (654326, '吉木乃县', 6543, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659001, '石河子市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659002, '阿拉尔市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659003, '图木舒克市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659004, '五家渠市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659005, '北屯市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659006, '铁门关市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659007, '双河市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659008, '可克达拉市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659009, '昆玉市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659010, '胡杨河市', 6590, '2023-06-25 13:48:35', NULL, 0);
INSERT INTO `district_info` VALUES (659011, '新星市', 6590, '2023-06-25 13:48:35', NULL, 0);

-- ----------------------------
-- Table structure for facility_info
-- ----------------------------
DROP TABLE IF EXISTS `facility_info`;
CREATE TABLE `facility_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增逐渐',
  `type` tinyint NULL DEFAULT NULL COMMENT '类型（1:公寓图片,2:房间图片）',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配套信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of facility_info
-- ----------------------------
INSERT INTO `facility_info` VALUES (24, 1, '健身房', '健身房', '2023-06-17 06:21:24', '2023-07-15 09:01:38', 0);
INSERT INTO `facility_info` VALUES (25, 1, '停车位', '停车场', '2023-06-17 06:21:42', '2023-07-18 11:22:21', 0);
INSERT INTO `facility_info` VALUES (26, 1, '电梯', '电梯', '2023-06-17 06:21:47', '2023-07-18 11:22:33', 0);
INSERT INTO `facility_info` VALUES (27, 1, '咖啡室', NULL, '2023-06-17 06:21:56', '2023-06-21 10:01:01', 1);
INSERT INTO `facility_info` VALUES (28, 2, '空调', '空调', '2023-06-17 06:22:06', '2023-07-18 11:22:44', 0);
INSERT INTO `facility_info` VALUES (29, 2, '洗衣机', '洗衣机', '2023-06-17 06:22:11', '2023-07-18 11:22:51', 0);
INSERT INTO `facility_info` VALUES (30, 2, '冰箱', '冰箱', '2023-06-17 06:22:15', '2023-07-18 11:23:01', 0);
INSERT INTO `facility_info` VALUES (38, 2, '床', NULL, '2023-06-19 06:11:22', '2023-06-19 14:15:03', 1);
INSERT INTO `facility_info` VALUES (39, 1, '213', '24H安保', '2023-07-18 14:12:24', '2023-07-18 14:12:29', 1);
INSERT INTO `facility_info` VALUES (40, 1, '台球', '桌球区', '2023-07-22 11:52:46', NULL, 0);
INSERT INTO `facility_info` VALUES (41, 1, '安保', '24H安保', '2023-08-01 09:01:31', NULL, 0);
INSERT INTO `facility_info` VALUES (42, 1, '团建', '社区活动', '2023-08-10 18:39:41', '2023-08-10 18:40:04', 0);
INSERT INTO `facility_info` VALUES (43, 1, '书吧', '书吧', '2023-08-10 18:40:18', NULL, 0);
INSERT INTO `facility_info` VALUES (44, 1, '休息室', '休息室', '2023-08-10 18:40:30', NULL, 0);
INSERT INTO `facility_info` VALUES (45, 1, '便利店', '便利店', '2023-08-10 18:40:41', NULL, 0);
INSERT INTO `facility_info` VALUES (46, 1, '休闲区', '休闲区', '2023-08-10 18:40:51', NULL, 0);
INSERT INTO `facility_info` VALUES (47, 1, '监控', '安全监控', '2023-08-10 18:41:05', NULL, 0);
INSERT INTO `facility_info` VALUES (48, 2, '书桌', '书桌', '2023-08-10 18:41:27', NULL, 0);
INSERT INTO `facility_info` VALUES (49, 2, 'WIFI', '宽带', '2023-08-10 18:42:24', NULL, 0);
INSERT INTO `facility_info` VALUES (50, 2, '床', '床', '2023-08-10 18:42:37', NULL, 0);
INSERT INTO `facility_info` VALUES (51, 2, '沙发', '沙发', '2023-08-10 18:42:47', NULL, 0);
INSERT INTO `facility_info` VALUES (52, 2, '微波炉', '微波炉', '2023-08-10 18:43:02', NULL, 0);
INSERT INTO `facility_info` VALUES (53, 2, '油烟机', '抽油烟机', '2023-08-10 18:43:23', NULL, 0);
INSERT INTO `facility_info` VALUES (54, 2, '热水器', '热水器', '2023-08-10 18:43:49', NULL, 0);
INSERT INTO `facility_info` VALUES (55, 2, '衣柜', '衣柜', '2023-08-10 18:44:07', NULL, 0);
INSERT INTO `facility_info` VALUES (56, 2, '电视机', '电视机', '2023-08-10 18:44:23', NULL, 0);
INSERT INTO `facility_info` VALUES (57, 1, '智能锁', '智能门锁', '2023-08-10 18:44:49', NULL, 0);

-- ----------------------------
-- Table structure for fee_key
-- ----------------------------
DROP TABLE IF EXISTS `fee_key`;
CREATE TABLE `fee_key`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款项key',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '杂项费用名称表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_key
-- ----------------------------
INSERT INTO `fee_key` VALUES (1, '停车费', '2023-06-19 03:03:55', NULL, 0);
INSERT INTO `fee_key` VALUES (2, '网费', '2023-06-19 03:06:49', NULL, 0);
INSERT INTO `fee_key` VALUES (3, '能源费', '2023-06-21 10:03:36', '2023-06-21 10:07:59', 1);
INSERT INTO `fee_key` VALUES (4, '能源费', '2023-06-21 10:05:19', '2023-06-21 10:08:37', 1);
INSERT INTO `fee_key` VALUES (5, '取暖费', '2023-07-18 15:55:13', '2023-07-18 16:32:17', 1);
INSERT INTO `fee_key` VALUES (6, '电费', '2023-08-10 18:45:12', '2023-08-10 18:49:16', 0);
INSERT INTO `fee_key` VALUES (7, '水费', '2023-08-10 18:50:00', '2023-08-10 18:50:17', 0);
INSERT INTO `fee_key` VALUES (8, '取暖费', '2023-08-10 18:51:08', NULL, 0);
INSERT INTO `fee_key` VALUES (9, '保洁费', '2024-09-12 10:01:35', NULL, 0);

-- ----------------------------
-- Table structure for fee_value
-- ----------------------------
DROP TABLE IF EXISTS `fee_value`;
CREATE TABLE `fee_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '费用value',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收费单位',
  `fee_key_id` bigint NULL DEFAULT NULL COMMENT '费用所对的fee_key',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '杂项费用值表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_value
-- ----------------------------
INSERT INTO `fee_value` VALUES (1, '200', '元/月', 1, '2023-06-19 03:04:35', NULL, 0);
INSERT INTO `fee_value` VALUES (2, '300', '元/月', 1, '2023-06-19 03:04:40', NULL, 0);
INSERT INTO `fee_value` VALUES (3, '400', '元/月', 1, '2023-06-19 03:04:44', NULL, 0);
INSERT INTO `fee_value` VALUES (4, '50', '元/月', 2, '2023-06-19 03:07:00', NULL, 0);
INSERT INTO `fee_value` VALUES (5, '60', '元/月', 2, '2023-06-19 03:07:07', NULL, 0);
INSERT INTO `fee_value` VALUES (6, '1000', '元/年', 2, '2023-06-19 03:07:20', NULL, 0);
INSERT INTO `fee_value` VALUES (7, '500', '元/年', 2, '2023-06-19 03:07:27', NULL, 0);
INSERT INTO `fee_value` VALUES (8, '100', '元/月', 4, '2023-06-21 10:04:53', '2023-06-21 10:08:22', 1);
INSERT INTO `fee_value` VALUES (9, '200', '元/月', 4, '2023-06-21 10:04:55', NULL, 1);
INSERT INTO `fee_value` VALUES (10, '400', '元/月', 4, '2023-06-21 10:05:00', NULL, 1);
INSERT INTO `fee_value` VALUES (11, '1500', '元/年', 5, '2023-07-18 15:55:37', '2023-07-18 15:56:03', 1);
INSERT INTO `fee_value` VALUES (12, '2000', '元/年', 5, '2023-07-18 15:55:53', NULL, 1);
INSERT INTO `fee_value` VALUES (13, '1.5', '元/度', 6, '2023-08-10 18:49:01', '2023-08-10 18:49:25', 0);
INSERT INTO `fee_value` VALUES (14, '1', '元/度', 6, '2023-08-10 18:49:34', NULL, 0);
INSERT INTO `fee_value` VALUES (15, '0.5', '元/度', 6, '2023-08-10 18:49:43', NULL, 0);
INSERT INTO `fee_value` VALUES (16, '10', '元/吨', 7, '2023-08-10 18:50:35', NULL, 0);
INSERT INTO `fee_value` VALUES (17, '9', '元/吨', 7, '2023-08-10 18:50:41', NULL, 0);
INSERT INTO `fee_value` VALUES (18, '8', '元/吨', 7, '2023-08-10 18:50:47', NULL, 0);
INSERT INTO `fee_value` VALUES (19, '7', '元/吨', 7, '2023-08-10 18:50:53', NULL, 0);
INSERT INTO `fee_value` VALUES (20, '1000', '元/年', 8, '2023-08-10 18:51:23', NULL, 0);
INSERT INTO `fee_value` VALUES (21, '1200', '元/年', 8, '2023-08-10 18:51:38', NULL, 0);
INSERT INTO `fee_value` VALUES (22, '1500', '元/年', 8, '2023-08-10 18:51:46', NULL, 0);
INSERT INTO `fee_value` VALUES (23, '200', '元/次', 9, '2024-09-12 10:04:21', NULL, 0);

-- ----------------------------
-- Table structure for graph_info
-- ----------------------------
DROP TABLE IF EXISTS `graph_info`;
CREATE TABLE `graph_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片名称',
  `item_type` tinyint NULL DEFAULT NULL COMMENT '图片所属对象类型（1:apartment,2:room）',
  `item_id` bigint NULL DEFAULT NULL COMMENT '图片所有对象id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 314 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '图片信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of graph_info
-- ----------------------------
INSERT INTO `graph_info` VALUES (130, '公寓-健身房.jpg', 1, 9, 'http://113.141.166.99:9000/lease/20230819/a9ecf8fb-67f0-47d1-98b9-84e85ea7dc7a-公寓-健身房.jpg', '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `graph_info` VALUES (131, '公寓-停车位.jpg', 1, 9, 'http://113.141.166.99:9000/lease/20230819/9c3a885d-97e3-41f4-b93b-ce5260d034a5-公寓-停车位.jpg', '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `graph_info` VALUES (132, '公寓-外观.jpg', 1, 9, 'http://113.141.166.99:9000/lease/20230819/a402a3b1-a4f0-4676-aafc-c4d449dc78ce-公寓-外观.jpg', '2023-08-19 15:44:26', NULL, 1);
INSERT INTO `graph_info` VALUES (133, '公寓-外观.jpg', 1, 10, 'http://113.141.166.99:9000/lease/20230819/bce4feb8-142c-42c4-84c6-9196daf02fee-公寓-外观.jpg', '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `graph_info` VALUES (134, '公寓-停车位.jpg', 1, 10, 'http://113.141.166.99:9000/lease/20230819/b723c7ac-a330-4c55-9168-9acfcfcfaad8-公寓-停车位.jpg', '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `graph_info` VALUES (135, '公寓-健身房.jpg', 1, 10, 'http://113.141.166.99:9000/lease/20230819/d7756118-e3ba-4b3e-8c6f-55ab9d0f5d6f-公寓-健身房.jpg', '2023-08-19 15:44:50', NULL, 0);
INSERT INTO `graph_info` VALUES (136, '房间-厨房-1.jpg', 2, 2, 'http://113.141.166.99:9000/lease/20230819/2d845f3b-be98-4646-ad1d-f81b39803ca1-房间-厨房-1.jpg', '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `graph_info` VALUES (137, '房间-客厅-1.jpg', 2, 2, 'http://113.141.166.99:9000/lease/20230819/5b55b8bc-e57e-428d-a0af-9d3b35e6d798-房间-客厅-1.jpg', '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `graph_info` VALUES (138, '房间-卧室-1.jpg', 2, 2, 'http://113.141.166.99:9000/lease/20230819/f980a869-486f-4c00-94af-b6985eacd74e-房间-卧室-1.jpg', '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `graph_info` VALUES (139, '房间-厨房-2.jpg', 2, 3, 'http://113.141.166.99:9000/lease/20230819/bfaedac4-1c4b-4144-88e4-d72bd77f62f1-房间-厨房-2.jpg', '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `graph_info` VALUES (140, '房间-卧室-1.jpg', 2, 3, 'http://113.141.166.99:9000/lease/20230819/cd72ceef-a78e-492f-808e-a8928b62e55d-房间-卧室-1.jpg', '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `graph_info` VALUES (141, '房间-卧室-2.jpg', 2, 3, 'http://113.141.166.99:9000/lease/20230819/5c8c2655-fb8f-4c9d-ada1-834a4870e7a9-房间-卧室-2.jpg', '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `graph_info` VALUES (142, '房间-厨房-1.jpg', 2, 8, 'http://113.141.166.99:9000/lease/20230819/3d1e74bb-6753-4eb7-8dd7-4162cf8a8238-房间-厨房-1.jpg', '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `graph_info` VALUES (143, '房间-客厅-2.jpg', 2, 8, 'http://113.141.166.99:9000/lease/20230819/a685444d-3271-42b4-8890-9256feb03006-房间-客厅-2.jpg', '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `graph_info` VALUES (144, '房间-卧室-2.jpg', 2, 8, 'http://113.141.166.99:9000/lease/20230819/b64824f6-b829-40ff-85bb-1db7f49aa976-房间-卧室-2.jpg', '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `graph_info` VALUES (145, '房间-厨房-2.jpg', 2, 9, 'http://113.141.166.99:9000/lease/20230819/a294ceab-ecaf-4275-845c-dc1a25e58ca9-房间-厨房-2.jpg', '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `graph_info` VALUES (146, '房间-卧室-2.jpg', 2, 9, 'http://113.141.166.99:9000/lease/20230819/3e92806d-0d45-4c69-ac4b-25a9fb2e45b6-房间-卧室-2.jpg', '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `graph_info` VALUES (147, '房间-客厅-2.jpg', 2, 9, 'http://113.141.166.99:9000/lease/20230819/9361c553-c358-45c7-a445-10ac6fee368c-房间-客厅-2.jpg', '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `graph_info` VALUES (148, '房间-厨房-1.jpg', 2, 10, 'http://113.141.166.99:9000/lease/20230819/91b4170c-f05e-4ea2-94ff-ef6882154b07-房间-厨房-1.jpg', '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `graph_info` VALUES (149, '房间-客厅-1.jpg', 2, 10, 'http://113.141.166.99:9000/lease/20230819/331e91ca-5d44-4557-9308-c3f76b6a5984-房间-客厅-1.jpg', '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `graph_info` VALUES (150, '房间-卧室-1.jpg', 2, 10, 'http://113.141.166.99:9000/lease/20230819/0e3c74be-d4b6-4d7c-a944-08295ba0d607-房间-卧室-1.jpg', '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `graph_info` VALUES (151, '房间-厨房-3.jpg', 2, 12, 'http://113.141.166.99:9000/lease/20230819/fa00bfd5-be0e-489a-a670-75843ccd3c91-房间-厨房-3.jpg', '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `graph_info` VALUES (152, '房间-客厅-2.jpg', 2, 12, 'http://113.141.166.99:9000/lease/20230819/1cede015-3cef-483a-b848-5d36d1ad10b5-房间-客厅-2.jpg', '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `graph_info` VALUES (153, '房间-卧室-1.jpg', 2, 12, 'http://113.141.166.99:9000/lease/20230819/c4063663-e9f9-45fc-a1bc-b557820cc7e5-房间-卧室-1.jpg', '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `graph_info` VALUES (154, '房间-厨房-1.jpg', 2, 11, 'http://113.141.166.99:9000/lease/20230819/0034fbaf-5ebb-4a97-89e4-d644de2d31f6-房间-厨房-1.jpg', '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `graph_info` VALUES (155, '房间-客厅-1.jpg', 2, 11, 'http://113.141.166.99:9000/lease/20230819/071fe30f-1d58-4058-9b65-7add7aaa3928-房间-客厅-1.jpg', '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `graph_info` VALUES (156, '房间-卧室-1.jpg', 2, 11, 'http://113.141.166.99:9000/lease/20230819/d229f0e5-4448-4659-ac9a-de83dbace2ed-房间-卧室-1.jpg', '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `graph_info` VALUES (157, '房间-客厅-2.jpg', 2, 13, 'http://113.141.166.99:9000/lease/20230819/af285216-0ac3-4eec-a769-14af57f684bf-房间-客厅-2.jpg', '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `graph_info` VALUES (158, '房间-厨房-3.jpg', 2, 13, 'http://113.141.166.99:9000/lease/20230819/30c52f3c-f0c4-4fd3-8da7-9b46d1188a5a-房间-厨房-3.jpg', '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `graph_info` VALUES (159, '房间-卧室-2.jpg', 2, 13, 'http://113.141.166.99:9000/lease/20230819/d611d950-cfa4-4119-b489-753c09c69282-房间-卧室-2.jpg', '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `graph_info` VALUES (160, '房间-厨房-1.jpg', 2, 14, 'http://113.141.166.99:9000/lease/20230819/52bb324a-3705-4b8d-818a-99f84555b5a9-房间-厨房-1.jpg', '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `graph_info` VALUES (161, '房间-客厅-2.jpg', 2, 14, 'http://113.141.166.99:9000/lease/20230819/9d79833d-b8bc-4405-88b9-8a967ff2b765-房间-客厅-2.jpg', '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `graph_info` VALUES (162, '房间-卧室-2.jpg', 2, 14, 'http://113.141.166.99:9000/lease/20230819/e23469c8-3dca-4913-8440-ecc573468a78-房间-卧室-2.jpg', '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `graph_info` VALUES (163, '房间-厨房-1.jpg', 2, 15, 'http://113.141.166.99:9000/lease/20230819/6230d6c8-4be6-47f1-86c3-18b50afbecd7-房间-厨房-1.jpg', '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `graph_info` VALUES (164, '房间-卧室-1.jpg', 2, 15, 'http://113.141.166.99:9000/lease/20230819/d7fc0b0a-e242-432e-97d2-29108903dcd3-房间-卧室-1.jpg', '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `graph_info` VALUES (165, '房间-客厅-1.jpg', 2, 15, 'http://113.141.166.99:9000/lease/20230819/6c25050c-3f54-44cf-9f83-334a9eab7c03-房间-客厅-1.jpg', '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `graph_info` VALUES (166, '房间-卧室-2.jpg', 2, 16, 'http://113.141.166.99:9000/lease/20230819/490aa982-2400-423b-b5d0-cdd5b3277da1-房间-卧室-2.jpg', '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `graph_info` VALUES (167, '房间-厨房-2.jpg', 2, 16, 'http://113.141.166.99:9000/lease/20230819/61eefbb2-6bb9-4a17-b2b7-0b07206a4731-房间-厨房-2.jpg', '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `graph_info` VALUES (168, '房间-客厅-1.jpg', 2, 16, 'http://113.141.166.99:9000/lease/20230819/20af06f3-22c8-4951-aaab-9c5878659f9c-房间-客厅-1.jpg', '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `graph_info` VALUES (169, '房间-厨房-3.jpg', 2, 17, 'http://113.141.166.99:9000/lease/20230819/8011ac8a-44e5-46cb-8962-5ec3f670954f-房间-厨房-3.jpg', '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `graph_info` VALUES (170, '房间-客厅-1.jpg', 2, 17, 'http://113.141.166.99:9000/lease/20230819/b52d32be-e12c-413c-8dbf-5b56722ecbfa-房间-客厅-1.jpg', '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `graph_info` VALUES (171, '房间-卧室-2.jpg', 2, 17, 'http://113.141.166.99:9000/lease/20230819/0af9ae1e-b813-4949-a1f5-2f9ff5cfd3ab-房间-卧室-2.jpg', '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `graph_info` VALUES (172, '房间-客厅-1.jpg', 1, 9, 'http://192.168.10.101:9000/lease/20240918/f000d7a5-b9fa-4bf3-aaaa-ffa25fae2e09-房间-客厅-1.jpg', '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `graph_info` VALUES (173, '公寓-外观.jpg', 1, 9, 'http://192.168.10.101:9000/lease/20240918/1ad3a006-c8ee-4145-b940-f5a87bacf7f0-公寓-外观.jpg', '2024-09-18 09:32:42', NULL, 0);
INSERT INTO `graph_info` VALUES (174, '房间-厨房-2.jpg', 2, 2, 'http://192.168.10.101:9000/lease/20240920/62276edb-005b-4a0c-b517-fa465f9d2182-房间-厨房-2.jpg', '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `graph_info` VALUES (175, '房间-厨房-3.jpg', 2, 2, 'http://192.168.10.101:9000/lease/20240920/0f61e11b-c607-4cec-ae80-e8a17c7ad3dc-房间-厨房-3.jpg', '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `graph_info` VALUES (176, '房间-客厅-1.jpg', 2, 2, 'http://192.168.10.101:9000/lease/20240920/e235359c-4180-4c6c-8557-590659453b47-房间-客厅-1.jpg', '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `graph_info` VALUES (177, 'th.jpg', 2, 3, 'http://192.168.10.101:9000/lease/20241128/c14f40a2-364e-488a-a6f6-a079cb08b20a-th.jpg', '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `graph_info` VALUES (178, '房间-卧室-2.jpg', 2, 8, 'http://192.168.10.101:9000/lease/20250903/4f8c5bf3-0a38-401f-93d0-6932cb47bc11-房间-卧室-2.jpg', '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `graph_info` VALUES (179, '公寓-停车位.jpg', 2, 8, 'http://192.168.10.101:9000/lease/20250903/d238ea8b-f9cb-4738-861d-74f651dce0b9-公寓-停车位.jpg', '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `graph_info` VALUES (180, '公寓-停车位.jpg', 2, 9, 'http://192.168.10.101:9000/lease/20250903/04c45c45-e8d7-4d5d-b4ca-e08d292b8e42-公寓-停车位.jpg', '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (181, '房间-厨房-3.jpg', 2, 9, 'http://192.168.10.101:9000/lease/20250903/c8b84ff6-7c49-4d11-b911-326ec934ee21-房间-厨房-3.jpg', '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (182, '房间-卧室-1.jpg', 2, 9, 'http://192.168.10.101:9000/lease/20250903/77c10f84-8ff9-4a4a-b9cd-b1d0e12bc884-房间-卧室-1.jpg', '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (183, '房间-厨房-1.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/24e91f6f-34d4-4670-9565-00f2a1cb35ce-房间-厨房-1.jpg', '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `graph_info` VALUES (184, '公寓-停车位.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/0bb17de4-e0e6-4e8d-a8b6-f748a2e0dcd3-公寓-停车位.jpg', '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `graph_info` VALUES (185, '房间-卧室-2.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/1990b10a-713d-481a-aa21-b33429814faf-房间-卧室-2.jpg', '2025-09-09 10:42:34', NULL, 1);
INSERT INTO `graph_info` VALUES (186, '房间-厨房-1.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/24e91f6f-34d4-4670-9565-00f2a1cb35ce-房间-厨房-1.jpg', '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `graph_info` VALUES (187, '公寓-停车位.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/0bb17de4-e0e6-4e8d-a8b6-f748a2e0dcd3-公寓-停车位.jpg', '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `graph_info` VALUES (188, '房间-卧室-2.jpg', 1, 11, 'http://192.168.10.101:9000/lease/20250909/1990b10a-713d-481a-aa21-b33429814faf-房间-卧室-2.jpg', '2025-09-09 10:42:51', NULL, 0);
INSERT INTO `graph_info` VALUES (189, '房间-厨房-3.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/08fe2343-5832-4227-a414-92bc315ddbd8-房间-厨房-3.jpg', '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `graph_info` VALUES (190, '公寓-外观.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/293ce2fb-c8ab-4c6f-a856-0adcc22a4988-公寓-外观.jpg', '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `graph_info` VALUES (191, '公寓-停车位.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/251211d8-c25c-4cf8-8e80-b2bb4080209c-公寓-停车位.jpg', '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `graph_info` VALUES (192, '房间-卧室-2.jpg', 2, 12, 'http://192.168.10.101:9000/lease/20250909/1cdac5d1-f9f2-4fbc-aaa9-6a2fadd14879-房间-卧室-2.jpg', '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `graph_info` VALUES (193, '房间-卧室-1.jpg', 2, 11, 'http://192.168.10.101:9000/lease/20250909/e5079a97-517e-4bcc-9053-08940db9d20c-房间-卧室-1.jpg', '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `graph_info` VALUES (194, '房间-厨房-3.jpg', 2, 11, 'http://192.168.10.101:9000/lease/20250909/a7494514-1d15-4923-85c0-651a41ca8a86-房间-厨房-3.jpg', '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `graph_info` VALUES (195, '公寓-外观.jpg', 2, 11, 'http://192.168.10.101:9000/lease/20250909/b5009e89-c796-4769-8c78-bade2dada5a7-公寓-外观.jpg', '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `graph_info` VALUES (196, '房间-厨房-1.jpg', 2, 15, 'http://192.168.10.101:9000/lease/20250909/d2077580-cfc9-48b4-9445-b05d53ecc6af-房间-厨房-1.jpg', '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `graph_info` VALUES (197, '房间-卧室-2.jpg', 2, 15, 'http://192.168.10.101:9000/lease/20250909/9c023de0-a974-4b5c-8947-6266900a5d1e-房间-卧室-2.jpg', '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `graph_info` VALUES (198, '房间-卧室-2.jpg', 2, 16, 'http://192.168.10.101:9000/lease/20250909/2791b601-4a63-48c0-8583-8ffb32def29e-房间-卧室-2.jpg', '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `graph_info` VALUES (199, '房间-厨房-2.jpg', 2, 16, 'http://192.168.10.101:9000/lease/20250909/0778ad91-7135-4925-a2d8-53e6f072376f-房间-厨房-2.jpg', '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `graph_info` VALUES (200, '房间-卧室-2.jpg', 2, 16, 'http://192.168.10.101:9000/lease/20250909/8f349fc6-4090-4b84-b6ef-71040873bf4a-房间-卧室-2.jpg', '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `graph_info` VALUES (201, '房间-卧室-2.jpg', 2, 17, 'http://192.168.10.101:9000/lease/20250909/c61102a6-bef5-42b7-bb82-446d45f1f5ab-房间-卧室-2.jpg', '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `graph_info` VALUES (202, '公寓-健身房.jpg', 2, 17, 'http://192.168.10.101:9000/lease/20250909/03638acc-d6ee-4446-87ef-14ef521cd2f5-公寓-健身房.jpg', '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `graph_info` VALUES (203, '房间-厨房-2.jpg', 1, 12, 'http://192.168.10.101:9000/lease/20250909/28b4c065-aeee-4ba2-9aed-8b53bd36abba-房间-厨房-2.jpg', '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `graph_info` VALUES (204, '公寓-健身房.jpg', 1, 12, 'http://192.168.10.101:9000/lease/20250909/9c2b6bbe-1280-4a10-b216-a794f57534dd-公寓-健身房.jpg', '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `graph_info` VALUES (205, '房间-客厅-2.jpg', 1, 12, 'http://192.168.10.101:9000/lease/20250909/99d4acfc-bdc3-4f71-8eb4-6a3401cf551c-房间-客厅-2.jpg', '2025-09-09 15:58:01', NULL, 0);
INSERT INTO `graph_info` VALUES (206, '房间-厨房-3.jpg', 2, 20, 'http://192.168.10.101:9000/lease/20250909/b6cc0b75-871e-43a6-b89f-2b74e5f5f581-房间-厨房-3.jpg', '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `graph_info` VALUES (207, '公寓-健身房.jpg', 2, 20, 'http://192.168.10.101:9000/lease/20250909/fd36ef5e-e6ff-4707-96dd-bd7090811dd7-公寓-健身房.jpg', '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `graph_info` VALUES (208, '房间-厨房-2.jpg', 2, 21, 'http://192.168.10.101:9000/lease/20250909/e31452bc-8507-4019-8f17-fa1b1fa713a3-房间-厨房-2.jpg', '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `graph_info` VALUES (209, '房间-卧室-2.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/c9b1a33a-9592-4b5d-85b5-34d27943aad3-房间-卧室-2.jpg', '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `graph_info` VALUES (210, '房间-厨房-3.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/88c34cec-1671-4bbc-8690-833b66c3fd6c-房间-厨房-3.jpg', '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `graph_info` VALUES (211, '公寓-健身房.jpg', 1, 132, 'http://192.168.10.101:9000/lease/20250910/70718f2c-ecca-43e2-8452-e622bfe36291-公寓-健身房.jpg', '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `graph_info` VALUES (212, '房间-厨房-2.jpg', 1, 132, 'http://192.168.10.101:9000/lease/20250910/a6fe4df5-da15-4ef3-947b-af745acd6245-房间-厨房-2.jpg', '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `graph_info` VALUES (213, '房间-客厅-1.jpg', 1, 132, 'http://192.168.10.101:9000/lease/20250910/f93da589-ee52-417f-bdf5-b1a17e58a66a-房间-客厅-1.jpg', '2025-09-10 09:55:12', NULL, 1);
INSERT INTO `graph_info` VALUES (214, '房间-厨房-2.jpg', 1, 133, 'http://192.168.10.101:9000/lease/20250910/a6d1ef58-19d4-4b0c-a88c-da26654753e6-房间-厨房-2.jpg', '2025-09-10 09:59:01', NULL, 1);
INSERT INTO `graph_info` VALUES (215, '房间-厨房-2.jpg', 1, 134, 'http://192.168.10.101:9000/lease/20250910/2e62e512-ebec-426f-9e1f-e8cf095ac2b4-房间-厨房-2.jpg', '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `graph_info` VALUES (216, '公寓-健身房.jpg', 1, 134, 'http://192.168.10.101:9000/lease/20250910/0c60daf8-d8e9-4bfd-bbd0-bf377b452d40-公寓-健身房.jpg', '2025-09-10 16:46:28', NULL, 0);
INSERT INTO `graph_info` VALUES (217, '房间-厨房-2.jpg', 2, 21, 'http://192.168.10.101:9000/lease/20250909/e31452bc-8507-4019-8f17-fa1b1fa713a3-房间-厨房-2.jpg', '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `graph_info` VALUES (218, '房间-卧室-2.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/c9b1a33a-9592-4b5d-85b5-34d27943aad3-房间-卧室-2.jpg', '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `graph_info` VALUES (219, '房间-厨房-3.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/88c34cec-1671-4bbc-8690-833b66c3fd6c-房间-厨房-3.jpg', '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `graph_info` VALUES (220, '房间-厨房-3.jpg', 2, 23, 'http://192.168.10.101:9000/lease/20250911/5feec68f-5cf8-4f9c-a65c-27b9b064cfdd-房间-厨房-3.jpg', '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `graph_info` VALUES (221, '房间-卧室-1.jpg', 2, 23, 'http://192.168.10.101:9000/lease/20250911/d8da67f3-6d24-44c6-8232-51d77daec853-房间-卧室-1.jpg', '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `graph_info` VALUES (222, '房间-厨房-1.jpg', 2, 24, 'http://192.168.10.101:9000/lease/20250911/2e9fc635-2b50-428a-9b53-4308442a79ff-房间-厨房-1.jpg', '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `graph_info` VALUES (223, '房间-厨房-2.jpg', 2, 24, 'http://192.168.10.101:9000/lease/20250911/a4a7ef50-1431-4c63-ba8e-c2df5a4798d3-房间-厨房-2.jpg', '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `graph_info` VALUES (224, '房间-厨房-3.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/08fe2343-5832-4227-a414-92bc315ddbd8-房间-厨房-3.jpg', '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `graph_info` VALUES (225, '公寓-外观.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/293ce2fb-c8ab-4c6f-a856-0adcc22a4988-公寓-外观.jpg', '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `graph_info` VALUES (226, '公寓-停车位.jpg', 2, 19, 'http://192.168.10.101:9000/lease/20250909/251211d8-c25c-4cf8-8e80-b2bb4080209c-公寓-停车位.jpg', '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `graph_info` VALUES (227, '房间-厨房-2.jpg', 2, 21, 'http://192.168.10.101:9000/lease/20250909/e31452bc-8507-4019-8f17-fa1b1fa713a3-房间-厨房-2.jpg', '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `graph_info` VALUES (228, '房间-厨房-3.jpg', 2, 20, 'http://192.168.10.101:9000/lease/20250909/b6cc0b75-871e-43a6-b89f-2b74e5f5f581-房间-厨房-3.jpg', '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `graph_info` VALUES (229, '公寓-健身房.jpg', 2, 20, 'http://192.168.10.101:9000/lease/20250909/fd36ef5e-e6ff-4707-96dd-bd7090811dd7-公寓-健身房.jpg', '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `graph_info` VALUES (230, '房间-厨房-1.jpg', 2, 24, 'http://192.168.10.101:9000/lease/20250911/2e9fc635-2b50-428a-9b53-4308442a79ff-房间-厨房-1.jpg', '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `graph_info` VALUES (231, '房间-厨房-2.jpg', 2, 24, 'http://192.168.10.101:9000/lease/20250911/a4a7ef50-1431-4c63-ba8e-c2df5a4798d3-房间-厨房-2.jpg', '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `graph_info` VALUES (232, '房间-厨房-3.jpg', 2, 23, 'http://192.168.10.101:9000/lease/20250911/5feec68f-5cf8-4f9c-a65c-27b9b064cfdd-房间-厨房-3.jpg', '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `graph_info` VALUES (233, '房间-卧室-1.jpg', 2, 23, 'http://192.168.10.101:9000/lease/20250911/d8da67f3-6d24-44c6-8232-51d77daec853-房间-卧室-1.jpg', '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `graph_info` VALUES (234, '房间-厨房-2.jpg', 2, 21, 'http://192.168.10.101:9000/lease/20250909/e31452bc-8507-4019-8f17-fa1b1fa713a3-房间-厨房-2.jpg', '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `graph_info` VALUES (235, '房间-卧室-2.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/c9b1a33a-9592-4b5d-85b5-34d27943aad3-房间-卧室-2.jpg', '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `graph_info` VALUES (236, '房间-厨房-3.jpg', 2, 22, 'http://192.168.10.101:9000/lease/20250909/88c34cec-1671-4bbc-8690-833b66c3fd6c-房间-厨房-3.jpg', '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `graph_info` VALUES (237, '公寓-停车位.jpg', 1, 135, 'http://192.168.10.101:9000/lease/20250913/f4330d56-8a74-4678-9ed3-b392b2b7348b-公寓-停车位.jpg', '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `graph_info` VALUES (238, '房间-厨房-2.jpg', 1, 135, 'http://192.168.10.101:9000/lease/20250913/ee22cb0a-1a14-42d5-8b81-3500a4f47c2d-房间-厨房-2.jpg', '2025-09-13 11:11:32', NULL, 0);
INSERT INTO `graph_info` VALUES (239, '房间-厨房-2.jpg', 2, 25, 'http://192.168.10.101:9000/lease/20250913/3266119c-fd04-424e-9d27-df8e5d9a8038-房间-厨房-2.jpg', '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `graph_info` VALUES (240, '公寓-健身房.jpg', 2, 25, 'http://192.168.10.101:9000/lease/20250913/8baf1a28-3b48-4215-8771-24d8290db3e6-公寓-健身房.jpg', '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `graph_info` VALUES (241, '公寓-外观.jpg', 2, 25, 'http://192.168.10.101:9000/lease/20250913/9031664a-0c07-42b3-aa3b-c46bd397405d-公寓-外观.jpg', '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `graph_info` VALUES (242, '房间-厨房-1.jpg', 1, 136, 'http://192.168.10.101:9000/lease/20250919/9223c698-d2ff-43c6-9a63-ced1c4613808-房间-厨房-1.jpg', '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `graph_info` VALUES (243, '房间-厨房-3.jpg', 1, 136, 'http://192.168.10.101:9000/lease/20250919/6ecd48b2-e808-4bb2-924f-1f6dddb8d6db-房间-厨房-3.jpg', '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `graph_info` VALUES (244, '房间-客厅-2.jpg', 1, 136, 'http://192.168.10.101:9000/lease/20250919/a1675d95-b026-41cc-9b4a-56f4c29b1a53-房间-客厅-2.jpg', '2025-09-19 16:22:03', NULL, 0);
INSERT INTO `graph_info` VALUES (245, '房间-厨房-3.jpg', 2, 26, 'http://192.168.10.101:9000/lease/20250919/290e39bd-7185-447d-959d-69122cc52f2e-房间-厨房-3.jpg', '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `graph_info` VALUES (246, '房间-厨房-1.jpg', 2, 26, 'http://192.168.10.101:9000/lease/20250919/d8ea68f1-ebf1-454e-bb7b-c8e69155073f-房间-厨房-1.jpg', '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `graph_info` VALUES (247, '房间-厨房-1.jpg', 2, 27, 'http://192.168.10.101:9000/lease/20250919/48f0fb9d-a01f-40b3-acab-73c85a909222-房间-厨房-1.jpg', '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `graph_info` VALUES (248, '房间-卧室-2.jpg', 2, 27, 'http://192.168.10.101:9000/lease/20250919/01989329-a0ce-4140-8176-a9bbc3598309-房间-卧室-2.jpg', '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `graph_info` VALUES (249, '房间-客厅-1.jpg', 2, 27, 'http://192.168.10.101:9000/lease/20250919/3d62f813-d7e5-4109-ae09-2f1a4ed1931a-房间-客厅-1.jpg', '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `graph_info` VALUES (250, '房间-厨房-1.jpg', 1, 137, 'http://192.168.10.101:9000/lease/20250924/f08f0853-7909-4fb0-9735-3bc6fd9f111a-房间-厨房-1.jpg', '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `graph_info` VALUES (251, '房间-客厅-1.jpg', 1, 137, 'http://192.168.10.101:9000/lease/20250924/342caa7d-1ade-48ce-b37c-446d7cd5c608-房间-客厅-1.jpg', '2025-09-24 15:46:59', NULL, 0);
INSERT INTO `graph_info` VALUES (252, '房间-厨房-1.jpg', 2, 28, 'http://192.168.10.101:9000/lease/20250924/2bfb0eb7-c0e4-46be-a9b8-f16b019a1b96-房间-厨房-1.jpg', '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (253, '房间-厨房-3.jpg', 2, 28, 'http://192.168.10.101:9000/lease/20250924/f020ac17-a8e7-4054-8ece-07d00e9342bf-房间-厨房-3.jpg', '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (254, '房间-客厅-2.jpg', 2, 28, 'http://192.168.10.101:9000/lease/20250924/b46d1caf-4a1b-49b6-8d2f-e8066017a2df-房间-客厅-2.jpg', '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `graph_info` VALUES (255, '公寓-外观.jpg', 2, 29, 'http://192.168.10.101:9000/lease/20250924/05820860-ceb2-4412-b0e5-ba2cb14f19bf-公寓-外观.jpg', '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `graph_info` VALUES (256, '房间-卧室-2.jpg', 2, 29, 'http://192.168.10.101:9000/lease/20250924/2f235ed5-220a-45e6-bea5-d4d8cf631bc2-房间-卧室-2.jpg', '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `graph_info` VALUES (257, '房间-卧室-1.jpg', 2, 29, 'http://192.168.10.101:9000/lease/20250924/96555e24-ec96-4a2d-ab8e-299939f3607c-房间-卧室-1.jpg', '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `graph_info` VALUES (258, '房间-厨房-2.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/0219ab2e-bd20-41df-8064-cdf2ed530753-房间-厨房-2.jpg', '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `graph_info` VALUES (259, '房间-客厅-1.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/c4405d08-c5c8-4c69-b5c1-d1ce8c7e9295-房间-客厅-1.jpg', '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `graph_info` VALUES (260, '公寓-外观.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/8bf5215c-c6c7-41ee-98b2-6f998f0d849f-公寓-外观.jpg', '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `graph_info` VALUES (261, '公寓-停车位.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/a9e358cd-f861-4d68-9e3f-e4f0d6f0e996-公寓-停车位.jpg', '2025-09-24 16:08:49', NULL, 1);
INSERT INTO `graph_info` VALUES (262, '房间-厨房-1.jpg', 2, 30, 'http://192.168.10.101:9000/lease/20250924/e47ecc9b-4de1-47d1-afcf-61bf85473fde-房间-厨房-1.jpg', '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `graph_info` VALUES (263, '房间-客厅-1.jpg', 2, 30, 'http://192.168.10.101:9000/lease/20250924/df23d7e6-515f-4965-b302-1208ea5a3c79-房间-客厅-1.jpg', '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `graph_info` VALUES (264, '公寓-健身房.jpg', 2, 30, 'http://192.168.10.101:9000/lease/20250924/3db0501f-f847-44d5-be78-4a62b29718ea-公寓-健身房.jpg', '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `graph_info` VALUES (265, '房间-厨房-2.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/0219ab2e-bd20-41df-8064-cdf2ed530753-房间-厨房-2.jpg', '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `graph_info` VALUES (266, '房间-客厅-1.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/c4405d08-c5c8-4c69-b5c1-d1ce8c7e9295-房间-客厅-1.jpg', '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `graph_info` VALUES (267, '公寓-外观.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/8bf5215c-c6c7-41ee-98b2-6f998f0d849f-公寓-外观.jpg', '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `graph_info` VALUES (268, '公寓-停车位.jpg', 1, 138, 'http://192.168.10.101:9000/lease/20250924/a9e358cd-f861-4d68-9e3f-e4f0d6f0e996-公寓-停车位.jpg', '2025-09-30 15:21:54', NULL, 0);
INSERT INTO `graph_info` VALUES (269, '房间-厨房-1.jpg', 1, 124, 'http://192.168.10.101:9000/lease/20250930/e2fd35be-5fea-41de-a17f-4507437d123c-房间-厨房-1.jpg', '2025-09-30 16:01:10', NULL, 0);
INSERT INTO `graph_info` VALUES (270, '房间-厨房-1.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/3b7700c4-8efa-4c3f-bedf-1b9f65d6c122-房间-厨房-1.jpg', '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `graph_info` VALUES (271, '房间-客厅-1.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/4f50a916-97af-437a-89d4-30aa459f36c0-房间-客厅-1.jpg', '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `graph_info` VALUES (272, '公寓-健身房.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/f58380fd-1bda-44ad-b52e-73d8b48ac028-公寓-健身房.jpg', '2025-10-27 10:24:01', NULL, 1);
INSERT INTO `graph_info` VALUES (273, '房间-厨房-1.jpg', 2, 31, 'http://192.168.10.101:9000/lease/20251027/34f0d85d-7469-439a-ab85-f73f8a406959-房间-厨房-1.jpg', '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `graph_info` VALUES (274, '房间-厨房-3.jpg', 2, 31, 'http://192.168.10.101:9000/lease/20251027/82a02fc4-342a-4544-aeba-83263bbc0b47-房间-厨房-3.jpg', '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `graph_info` VALUES (275, '房间-厨房-2.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/fdb4e96c-90e0-47bc-aa9d-f7e416e2fa17-房间-厨房-2.jpg', '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `graph_info` VALUES (276, '房间-卧室-2.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/eac73969-986b-463b-ac44-3e838f5c5850-房间-卧室-2.jpg', '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `graph_info` VALUES (277, '公寓-健身房.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/c374cfae-29cf-4e67-84e5-4c75df654c64-公寓-健身房.jpg', '2025-10-27 15:04:16', NULL, 1);
INSERT INTO `graph_info` VALUES (278, '房间-厨房-2.jpg', 2, 32, 'http://192.168.10.101:9000/lease/20251027/efe1b4ed-2300-49a0-8ab2-0dfee7883706-房间-厨房-2.jpg', '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `graph_info` VALUES (279, '房间-厨房-3.jpg', 2, 32, 'http://192.168.10.101:9000/lease/20251027/1a3aa1bd-38dd-443c-9cef-333502df68f2-房间-厨房-3.jpg', '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `graph_info` VALUES (280, '房间-厨房-3.jpg', 2, 32, 'http://192.168.10.101:9000/lease/20251027/b7a9db64-b6bb-462d-aeee-ccecdd45bf91-房间-厨房-3.jpg', '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `graph_info` VALUES (281, '房间-厨房-1.jpg', 1, 141, 'http://192.168.10.101:9000/lease/20251028/8d83135d-ca83-487f-9d70-15b96615fe41-房间-厨房-1.jpg', '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `graph_info` VALUES (282, '房间-卧室-2.jpg', 1, 141, 'http://192.168.10.101:9000/lease/20251028/5b1c4a14-ba54-4892-92fd-78cd3aab3233-房间-卧室-2.jpg', '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `graph_info` VALUES (283, '公寓-外观.jpg', 1, 141, 'http://192.168.10.101:9000/lease/20251028/21a9e46f-874b-4692-bc06-eb1c9ce34c60-公寓-外观.jpg', '2025-10-28 09:59:35', NULL, 0);
INSERT INTO `graph_info` VALUES (284, '房间-卧室-2.jpg', 2, 33, 'http://192.168.10.101:9000/lease/20251028/029ac5bf-d235-433e-acc1-e77683d151b7-房间-卧室-2.jpg', '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `graph_info` VALUES (285, '房间-客厅-2.jpg', 2, 33, 'http://192.168.10.101:9000/lease/20251028/91b35df3-274a-46ba-b88b-85ac28f9a27b-房间-客厅-2.jpg', '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `graph_info` VALUES (286, '房间-厨房-1.jpg', 1, 142, 'http://192.168.10.101:9000/lease/20251223/94f36272-fa69-4777-a129-4d95b36ec43a-房间-厨房-1.jpg', '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `graph_info` VALUES (287, '房间-厨房-3.jpg', 1, 142, 'http://192.168.10.101:9000/lease/20251223/d381faa5-80e6-4229-8fd5-8517913d9d8e-房间-厨房-3.jpg', '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `graph_info` VALUES (288, '房间-客厅-2.jpg', 1, 142, 'http://192.168.10.101:9000/lease/20251223/637c45b3-a57c-4071-872a-a1fc5c990261-房间-客厅-2.jpg', '2025-12-23 09:50:26', NULL, 0);
INSERT INTO `graph_info` VALUES (289, '房间-厨房-1.jpg', 2, 34, 'http://192.168.10.101:9000/lease/20251223/c12b62f4-fdf6-4015-b6ac-bfbae5f68b1e-房间-厨房-1.jpg', '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `graph_info` VALUES (290, '房间-厨房-3.jpg', 2, 34, 'http://192.168.10.101:9000/lease/20251223/ad8f8a16-5490-4d46-b98b-d1293e62daef-房间-厨房-3.jpg', '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `graph_info` VALUES (291, '房间-客厅-1.jpg', 2, 34, 'http://192.168.10.101:9000/lease/20251223/f57043ed-8f22-409f-8f30-738078d09999-房间-客厅-1.jpg', '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `graph_info` VALUES (292, '房间-厨房-2.jpg', 1, 143, 'http://192.168.10.101:9000/lease/20260128/5b6b4ed4-e7cf-46ca-85ad-0ad1392ea289-房间-厨房-2.jpg', '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `graph_info` VALUES (293, '公寓-健身房.jpg', 1, 143, 'http://192.168.10.101:9000/lease/20260128/757362dc-b3d8-4f3f-8e58-b4189cfbf8dc-公寓-健身房.jpg', '2026-01-28 09:22:33', NULL, 0);
INSERT INTO `graph_info` VALUES (294, '房间-厨房-1.jpg', 2, 35, 'http://192.168.10.101:9000/lease/20260128/4272c906-74ee-4d3a-93b1-d9ebde70538f-房间-厨房-1.jpg', '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `graph_info` VALUES (295, '房间-卧室-2.jpg', 2, 35, 'http://192.168.10.101:9000/lease/20260128/7ce60dc4-db09-4dda-9abe-ca584a5ca15c-房间-卧室-2.jpg', '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `graph_info` VALUES (296, '房间-厨房-2.jpg', 1, 144, 'http://192.168.10.101:9000/lease/20260203/1da8b65d-5e80-4238-9e83-4e1f015630cd-房间-厨房-2.jpg', '2026-02-03 14:10:53', NULL, 0);
INSERT INTO `graph_info` VALUES (297, '房间-厨房-2.jpg', 2, 36, 'http://192.168.10.101:9000/lease/20260203/fa18ce4d-744e-4593-8c57-851e15724f07-房间-厨房-2.jpg', '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `graph_info` VALUES (298, '房间-客厅-1.jpg', 2, 36, 'http://192.168.10.101:9000/lease/20260203/83acb715-4f4b-45ad-91e3-28a121f47455-房间-客厅-1.jpg', '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `graph_info` VALUES (299, '房间-厨房-2.jpg', 2, 36, 'http://192.168.10.101:9000/lease/20260203/fa18ce4d-744e-4593-8c57-851e15724f07-房间-厨房-2.jpg', '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `graph_info` VALUES (300, '房间-客厅-1.jpg', 2, 36, 'http://192.168.10.101:9000/lease/20260203/83acb715-4f4b-45ad-91e3-28a121f47455-房间-客厅-1.jpg', '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `graph_info` VALUES (301, '房间-厨房-2.jpg', 2, 38, 'http://192.168.10.101:9000/lease/20260226/4ad456da-9af1-4dfc-8bd2-9dd004e967c7-房间-厨房-2.jpg', '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `graph_info` VALUES (302, '房间-厨房-2.jpg', 2, 37, 'http://192.168.10.101:9000/lease/20260226/4ad456da-9af1-4dfc-8bd2-9dd004e967c7-房间-厨房-2.jpg', '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `graph_info` VALUES (303, '公寓-健身房.jpg', 2, 38, 'http://192.168.10.101:9000/lease/20260226/c4c147d3-9f4a-457c-9c0d-93d4225cb74c-公寓-健身房.jpg', '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `graph_info` VALUES (304, '公寓-健身房.jpg', 2, 37, 'http://192.168.10.101:9000/lease/20260226/c4c147d3-9f4a-457c-9c0d-93d4225cb74c-公寓-健身房.jpg', '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `graph_info` VALUES (305, '房间-厨房-2.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/fdb4e96c-90e0-47bc-aa9d-f7e416e2fa17-房间-厨房-2.jpg', '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `graph_info` VALUES (306, '房间-卧室-2.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/eac73969-986b-463b-ac44-3e838f5c5850-房间-卧室-2.jpg', '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `graph_info` VALUES (307, '公寓-健身房.jpg', 1, 140, 'http://192.168.10.101:9000/lease/20251027/c374cfae-29cf-4e67-84e5-4c75df654c64-公寓-健身房.jpg', '2026-03-07 13:18:39', NULL, 0);
INSERT INTO `graph_info` VALUES (308, '房间-厨房-1.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/3b7700c4-8efa-4c3f-bedf-1b9f65d6c122-房间-厨房-1.jpg', '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `graph_info` VALUES (309, '房间-客厅-1.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/4f50a916-97af-437a-89d4-30aa459f36c0-房间-客厅-1.jpg', '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `graph_info` VALUES (310, '公寓-健身房.jpg', 1, 139, 'http://192.168.10.101:9000/lease/20251027/f58380fd-1bda-44ad-b52e-73d8b48ac028-公寓-健身房.jpg', '2026-03-07 13:19:13', NULL, 0);
INSERT INTO `graph_info` VALUES (311, '房间-厨房-2.jpg', 1, 145, 'http://192.168.10.101:9000/lease/20260507/4de846b1-f406-4cad-a3d6-ba84b0b8b2c6-房间-厨房-2.jpg', '2026-05-07 10:21:36', NULL, 0);
INSERT INTO `graph_info` VALUES (312, '公寓-外观.jpg', 2, 39, 'http://192.168.10.101:9000/lease/20260507/8a9c6155-ebe3-4e23-aa5d-a30f1da6924b-公寓-外观.jpg', '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `graph_info` VALUES (313, '房间-厨房-2.jpg', 2, 39, 'http://192.168.10.101:9000/lease/20260507/bd83322d-344b-44ce-a4bd-303a39990cba-房间-厨房-2.jpg', '2026-05-07 10:22:37', NULL, 0);

-- ----------------------------
-- Table structure for label_info
-- ----------------------------
DROP TABLE IF EXISTS `label_info`;
CREATE TABLE `label_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` tinyint NULL DEFAULT NULL COMMENT '类型（1:公寓标签,2:房间标签）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of label_info
-- ----------------------------
INSERT INTO `label_info` VALUES (1, 1, '近地铁', '2023-06-19 00:49:17', NULL, 0);
INSERT INTO `label_info` VALUES (2, 1, '近公交', '2023-06-19 00:49:23', NULL, 0);
INSERT INTO `label_info` VALUES (3, 1, '有电梯', '2023-06-19 00:49:28', NULL, 0);
INSERT INTO `label_info` VALUES (4, 1, '停车场', '2023-06-19 00:49:38', '2023-06-21 09:43:51', 0);
INSERT INTO `label_info` VALUES (5, 2, '朝南', '2023-06-19 00:50:24', NULL, 0);
INSERT INTO `label_info` VALUES (6, 2, '朝北', '2023-06-19 00:50:29', NULL, 0);
INSERT INTO `label_info` VALUES (7, 2, '朝东', '2023-06-19 00:50:34', NULL, 0);
INSERT INTO `label_info` VALUES (10, 2, '朝西', '2023-07-22 12:01:02', NULL, 0);
INSERT INTO `label_info` VALUES (15, 2, '独卫', '2023-08-11 08:40:51', NULL, 0);
INSERT INTO `label_info` VALUES (16, 2, '阳台', '2023-08-11 08:40:58', NULL, 0);
INSERT INTO `label_info` VALUES (17, 1, '交通便利', '2024-09-11 10:57:14', '2024-09-11 10:57:51', 1);
INSERT INTO `label_info` VALUES (18, 1, '近高铁', '2025-09-09 16:40:26', NULL, 0);

-- ----------------------------
-- Table structure for lease_agreement
-- ----------------------------
DROP TABLE IF EXISTS `lease_agreement`;
CREATE TABLE `lease_agreement`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '租约id',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承租人手机号码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承租人姓名',
  `identification_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '承租人身份证号码',
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '签约公寓id',
  `room_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '签约房间id',
  `lease_start_date` date NULL DEFAULT NULL COMMENT '租约开始日期',
  `lease_end_date` date NULL DEFAULT NULL COMMENT '租约结束日期',
  `lease_term_id` bigint NULL DEFAULT NULL COMMENT '租期id',
  `rent` decimal(16, 2) NULL DEFAULT NULL COMMENT '租金（元/月）',
  `deposit` decimal(16, 2) NULL DEFAULT NULL COMMENT '押金（元）',
  `payment_type_id` bigint NULL DEFAULT NULL COMMENT '支付类型id\r\n',
  `payment_order_id` bigint NULL DEFAULT NULL COMMENT '支付订单ID',
  `payment_status` tinyint NULL DEFAULT 0 COMMENT '支付状态：0待支付 1已支付 2已关闭 3已退款',
  `status` tinyint NULL DEFAULT NULL COMMENT '租约状态（1:签约待确认，2:已签约，3:已取消，4:已到期，5:退租待确认，6:已退租，7:续约待确认）',
  `source_type` tinyint NULL DEFAULT NULL COMMENT '租约来源（1:新签，2:续约）',
  `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_lease_payment_order`(`payment_order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租约信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lease_agreement
-- ----------------------------
INSERT INTO `lease_agreement` VALUES (1, '13888888888', '张三', '13241413243241324', 9, 3, '2020-12-29', '2019-12-30', 6, 2500.00, 0.00, 6, NULL, 0, 4, 1, '无', '2023-06-21 15:36:08', '2023-08-14 15:03:03', 0);
INSERT INTO `lease_agreement` VALUES (7, '18190067037', '胡浩', '510681200302221835', 9, 2, '2024-09-30', '2024-10-30', 1, 3000.00, 0.00, 6, NULL, 0, 6, 2, '', '2024-09-20 21:02:01', '2025-09-03 10:48:57', 0);
INSERT INTO `lease_agreement` VALUES (8, '18190067037', '胡浩', '55651165654654', 11, 19, '2025-09-24', '2025-12-24', 3, 2000.00, 1000.00, 6, NULL, 0, 6, 2, '无', '2025-09-09 10:49:43', '2025-09-09 10:51:40', 0);
INSERT INTO `lease_agreement` VALUES (9, '18190067037', '胡浩', '55651165654654', 11, 19, '2025-12-24', '2026-03-24', 3, 2000.00, 1000.00, 6, NULL, 0, 6, 2, '无', '2025-09-09 10:51:13', '2025-09-09 10:52:08', 0);
INSERT INTO `lease_agreement` VALUES (10, '18190067037', '胡浩', '510681200302221835', 135, 25, '2025-10-13', '2026-01-13', 3, 2000.00, 200.00, 6, NULL, 0, 6, 2, '111', '2025-09-13 11:17:25', '2025-09-13 11:40:17', 0);
INSERT INTO `lease_agreement` VALUES (11, '18190067037', '胡浩', '4654613132156', 134, 23, '2025-10-14', '2026-01-14', 3, 2000.00, 1500.00, 7, NULL, 0, 6, 2, '111', '2025-09-15 16:36:03', '2025-09-15 16:42:31', 0);
INSERT INTO `lease_agreement` VALUES (12, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-10-08', '2026-01-08', 3, 1500.00, 200.00, 7, NULL, 0, 6, 2, '123', '2025-09-28 10:45:52', '2025-09-28 10:46:32', 0);
INSERT INTO `lease_agreement` VALUES (13, '18190067037', '胡浩', '510681200302221835', 135, 25, '2025-11-24', '2026-02-24', 3, 1233.00, 123.00, 6, NULL, 0, 6, 2, '123', '2025-10-27 10:04:57', '2025-11-12 10:09:19', 0);
INSERT INTO `lease_agreement` VALUES (14, '18190067037', '张三', '510681200302221835', 108, 20, '2025-10-27', '2026-05-28', 4, 2000.00, 100.00, 8, NULL, 0, 3, 1, '111', '2025-10-27 10:19:19', '2025-10-27 10:21:43', 0);
INSERT INTO `lease_agreement` VALUES (15, '18190067037', '张三', '510681200302221835', 139, 31, '2025-11-27', '2025-12-27', 1, 2000.00, 100.00, 6, 1, 1, 6, 2, '12321', '2025-10-27 10:25:45', '2025-11-12 10:09:17', 0);
INSERT INTO `lease_agreement` VALUES (16, '', '', '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, NULL, 0, 1, 1, '', '2025-10-27 10:26:25', '2025-10-27 10:26:37', 1);
INSERT INTO `lease_agreement` VALUES (17, '', '', '', NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, NULL, 0, 1, 1, '', '2025-10-27 10:26:44', '2025-10-27 10:29:39', 1);
INSERT INTO `lease_agreement` VALUES (18, '18190067037', '胡浩', '510681200302221835', 138, 30, '2025-11-12', '2026-02-12', 3, 2000.00, 100.00, 7, 2, 1, 6, NULL, NULL, '2025-11-12 10:18:23', '2025-11-12 11:04:07', 0);
INSERT INTO `lease_agreement` VALUES (19, '18190067037', '胡浩', '510681200302221835', 138, 30, '2026-02-12', '2026-05-12', 3, 2000.00, 100.00, 7, 2, 1, 6, NULL, NULL, '2025-11-12 10:22:05', '2025-11-12 10:22:31', 0);
INSERT INTO `lease_agreement` VALUES (20, '18190067037', '胡浩', '510681200302221835', 138, 30, '2026-01-12', '2026-02-12', 1, 2000.00, 100.00, 6, NULL, 0, 6, NULL, NULL, '2025-11-12 10:27:15', '2025-11-12 11:04:06', 0);
INSERT INTO `lease_agreement` VALUES (21, '18190067037', '胡浩', '510681200302221835', 138, 30, '2025-12-12', '2026-01-12', 1, 1000.00, 100.00, 6, 12, 1, 6, NULL, NULL, '2025-11-12 11:04:54', '2025-11-26 14:05:45', 0);
INSERT INTO `lease_agreement` VALUES (22, '18190067037', '胡浩', '510681200302221835', 138, 30, '2025-12-12', '2026-03-12', 3, 2222.00, 1111.00, 7, 3, 1, 6, NULL, NULL, '2025-11-12 11:11:35', '2025-11-12 11:20:10', 0);
INSERT INTO `lease_agreement` VALUES (23, '18190067037', '胡浩', '510681200302221835', 138, 30, '2026-06-12', '2026-09-12', 3, 2222.00, 1111.00, 7, 3, 1, 6, NULL, NULL, '2025-11-12 11:12:23', '2025-11-12 11:20:10', 0);
INSERT INTO `lease_agreement` VALUES (24, '19960791220', 'huhao', '510681200302221835', 138, 30, '2025-11-14', '2025-12-12', 1, 2000.00, 100.00, 6, 4, 1, 6, NULL, NULL, '2025-11-14 16:14:39', '2025-11-14 16:19:06', 0);
INSERT INTO `lease_agreement` VALUES (25, '18190067037', 'huhao', '510681200302221835', 135, 25, '2025-11-19', '2025-12-24', 1, 2000.00, 100.00, 6, 5, 1, 6, NULL, NULL, '2025-11-19 15:50:52', '2025-11-19 15:51:30', 0);
INSERT INTO `lease_agreement` VALUES (26, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-19', '2025-12-24', 1, 2000.00, 200.00, 6, 6, 1, 6, NULL, NULL, '2025-11-19 16:24:31', '2025-11-19 16:24:54', 0);
INSERT INTO `lease_agreement` VALUES (27, '1810067037', 'huhao', '510681200302221835', NULL, NULL, '2025-11-19', '2025-12-24', 1, 2000.00, 100.00, 6, NULL, 0, 3, NULL, NULL, '2025-11-19 16:48:05', '2025-11-20 09:26:22', 1);
INSERT INTO `lease_agreement` VALUES (28, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-19', '2025-12-24', 1, 2000.00, 100.00, 6, 10, 1, 6, NULL, NULL, '2025-11-19 17:31:15', '2025-11-26 14:05:43', 0);
INSERT INTO `lease_agreement` VALUES (29, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-20', '2025-12-25', 1, 2000.00, 100.00, 6, 8, 1, 6, NULL, NULL, '2025-11-20 09:27:12', '2025-11-26 14:05:42', 0);
INSERT INTO `lease_agreement` VALUES (30, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-20', '2025-12-23', 1, 2000.00, 100.00, 6, 13, 1, 6, NULL, NULL, '2025-11-20 10:17:56', '2025-11-26 10:49:27', 0);
INSERT INTO `lease_agreement` VALUES (31, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-26', '2025-12-27', 1, 2000.00, 100.00, 6, 14, 1, 6, NULL, NULL, '2025-11-26 10:48:07', '2025-11-26 10:49:26', 0);
INSERT INTO `lease_agreement` VALUES (32, '18190067037', 'huhao', '510681200302221835', 138, 30, '2025-11-26', '2025-12-26', 1, 2000.00, 100.00, 6, 15, 1, 6, NULL, NULL, '2025-11-26 10:54:47', '2025-11-26 14:05:41', 0);
INSERT INTO `lease_agreement` VALUES (33, '18190067037', '胡奥', '510681200302221835', 143, 35, '2027-09-28', '2027-12-28', 3, 1500.00, 200.00, 6, 20, 1, 6, NULL, NULL, '2026-01-28 09:30:06', '2026-01-29 09:24:39', 0);
INSERT INTO `lease_agreement` VALUES (34, '18190067037', '李四', '510681200302221835', 143, 35, '2026-01-29', '2027-01-28', 1, 1500.00, 200.00, 6, 22, 1, 6, NULL, NULL, '2026-01-29 09:25:41', '2026-01-29 09:26:34', 0);
INSERT INTO `lease_agreement` VALUES (35, '18190067037', '张三', '510681200302221835', 143, 35, '2026-01-29', '2026-01-30', 1, 1500.00, 200.00, 6, 24, 0, 6, NULL, NULL, '2026-01-29 09:57:36', '2026-02-03 11:34:27', 0);
INSERT INTO `lease_agreement` VALUES (36, '18190067037', '张三', '510681200302221835', 137, 28, '2026-02-03', '2027-02-10', 6, 1500.00, 200.00, 6, 26, 0, 6, NULL, NULL, '2026-02-03 11:37:52', '2026-02-03 14:09:21', 0);
INSERT INTO `lease_agreement` VALUES (37, '18190067037', '胡浩', '510681200302221835', 144, 36, '2026-02-03', '2027-02-10', 1, 1500.00, 200.00, 6, 28, 1, 6, NULL, NULL, '2026-02-03 14:12:52', '2026-02-26 14:36:56', 0);
INSERT INTO `lease_agreement` VALUES (38, '18190067037', '胡浩', '510681200302221835', 144, 36, '2027-03-01', '2027-06-01', 3, 1500.00, 100.00, 6, 31, 1, 6, NULL, NULL, '2026-02-26 14:45:11', '2026-02-26 14:54:03', 0);
INSERT INTO `lease_agreement` VALUES (39, '18190067037', '胡浩', '510681200302221835', 144, 36, '2030-03-01', '2031-03-01', 6, 2000.00, 1000.00, 6, 34, 1, 6, NULL, NULL, '2026-02-26 15:09:38', '2026-02-26 16:29:47', 0);
INSERT INTO `lease_agreement` VALUES (40, '18190067037', '胡浩', '510681200302221835', 142, 34, '2026-03-11', '2026-04-11', 1, 2000.00, 100.00, 6, 36, 1, 6, NULL, NULL, '2026-03-11 16:54:44', '2026-03-11 16:56:01', 0);
INSERT INTO `lease_agreement` VALUES (41, '18190067037', '胡浩', '51068120030221835', 144, 36, '2026-03-11', '2026-04-12', 1, 1500.00, 100.00, 6, 38, 1, 6, NULL, NULL, '2026-03-11 16:57:23', '2026-03-11 17:16:27', 0);
INSERT INTO `lease_agreement` VALUES (42, '18190067037', '胡浩', '510681200302221853', 135, 25, '2026-03-11', '2026-04-11', 1, 1500.00, 100.00, 6, 39, 1, 6, NULL, NULL, '2026-03-11 17:17:33', '2026-03-11 17:17:56', 0);
INSERT INTO `lease_agreement` VALUES (43, '18190067037', '胡浩', '510578456321475869', 144, 36, '2026-03-11', '2026-06-11', 3, 1500.00, 100.00, 6, 42, 1, 6, NULL, NULL, '2026-03-11 17:18:52', '2026-03-11 17:19:33', 0);
INSERT INTO `lease_agreement` VALUES (44, '18190067037', '胡浩', '125478963575421235', 144, 36, '2026-03-11', '2026-06-11', 3, 1500.00, 100.00, 6, 44, 0, 6, NULL, NULL, '2026-03-11 17:30:51', '2026-03-11 17:38:13', 0);
INSERT INTO `lease_agreement` VALUES (45, '18190067037', '胡浩', '510681200302221835', 144, 36, '2026-03-11', '2026-04-11', 1, 1500.00, 0.00, 6, 45, 1, 6, NULL, NULL, '2026-03-11 18:38:56', '2026-03-11 18:39:10', 0);
INSERT INTO `lease_agreement` VALUES (46, '18190067037', '胡浩', '51068120030221835', 144, 36, '2026-03-11', '2026-04-11', 1, 2000.00, 0.00, 6, 46, 1, 6, NULL, NULL, '2026-03-11 19:03:44', '2026-05-07 10:52:21', 0);
INSERT INTO `lease_agreement` VALUES (47, '18190067037', '胡浩', '51036547896541236', 145, 39, '2026-05-07', '2026-06-07', 1, 1500.00, 100.00, 6, 48, 1, 6, NULL, NULL, '2026-05-07 10:51:05', '2026-05-07 10:52:22', 0);
INSERT INTO `lease_agreement` VALUES (48, '18190067037', '胡浩', '510681200302221835', 11, 19, '2026-05-12', '2026-06-13', 1, 100.00, 1500.00, 6, 49, 0, 6, NULL, NULL, '2026-05-12 14:48:38', '2026-05-12 14:51:19', 0);
INSERT INTO `lease_agreement` VALUES (49, '18190067037', '胡浩', '510254785451232145', 11, 19, '2026-05-12', '2026-05-13', 1, 1500.00, 100.00, 6, 51, 1, 3, NULL, NULL, '2026-05-12 14:50:40', '2026-05-12 14:51:18', 0);
INSERT INTO `lease_agreement` VALUES (50, '18190067037', '胡浩', '510681200302221835', 11, 19, '2026-05-12', '2026-06-16', 1, 1500.00, 100.00, 6, 54, 1, 6, NULL, NULL, '2026-05-12 15:35:40', '2026-05-13 13:42:15', 0);

-- ----------------------------
-- Table structure for lease_term
-- ----------------------------
DROP TABLE IF EXISTS `lease_term`;
CREATE TABLE `lease_term`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `month_count` int NULL DEFAULT NULL COMMENT '租期',
  `unit` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '租期单位',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租期' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lease_term
-- ----------------------------
INSERT INTO `lease_term` VALUES (1, 1, '月', '2023-06-30 10:58:09', NULL, 0);
INSERT INTO `lease_term` VALUES (2, 2, '月', '2023-06-30 10:58:12', '2023-06-30 11:00:02', 1);
INSERT INTO `lease_term` VALUES (3, 3, '月', '2023-06-30 10:58:17', NULL, 0);
INSERT INTO `lease_term` VALUES (4, 6, '月', '2023-06-30 10:58:21', NULL, 0);
INSERT INTO `lease_term` VALUES (5, 12, '月', '2023-06-30 10:58:23', '2023-08-01 18:00:55', 1);
INSERT INTO `lease_term` VALUES (6, 12, '月', '2023-08-01 18:01:20', NULL, 0);

-- ----------------------------
-- Table structure for payment_detail
-- ----------------------------
DROP TABLE IF EXISTS `payment_detail`;
CREATE TABLE `payment_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `payment_order_id` bigint NOT NULL COMMENT '支付订单ID（关联payment_order表）',
  `pay_method` tinyint NOT NULL COMMENT '支付方式：1余额 2微信',
  `amount` decimal(16, 2) NOT NULL COMMENT '支付金额（元）',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '支付状态：0待支付 1已支付 2已关闭 3已退款',
  `transaction_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易流水号（余额为balance_transaction的流水号，微信为微信交易号）',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付成功时间',
  `refund_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '已退款金额',
  `refund_time` datetime NULL DEFAULT NULL COMMENT '退款时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_payment_order`(`payment_order_id` ASC) USING BTREE COMMENT '支付订单ID索引',
  INDEX `idx_transaction_no`(`transaction_no` ASC) USING BTREE COMMENT '交易流水号索引'
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支付明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_detail
-- ----------------------------
INSERT INTO `payment_detail` VALUES (1, 14, 2, 2100.00, 1, 'WX20251126104918825162', '2025-11-26 10:49:18', 0.00, NULL, '2025-11-26 10:48:35', '2025-11-26 10:49:17', 0);
INSERT INTO `payment_detail` VALUES (2, 15, 2, 2100.00, 1, 'WX20251126105523255935', '2025-11-26 10:55:23', 0.00, NULL, '2025-11-26 10:55:16', '2025-11-26 10:55:22', 0);
INSERT INTO `payment_detail` VALUES (3, 16, 2, 1700.00, 1, 'WX20260128093044635324', '2026-01-28 09:30:44', 0.00, NULL, '2026-01-28 09:30:33', '2026-01-28 09:30:43', 0);
INSERT INTO `payment_detail` VALUES (4, 17, 2, 1700.00, 1, 'WX20260128111046568225', '2026-01-28 11:10:47', 0.00, NULL, '2026-01-28 11:10:44', '2026-01-28 11:10:45', 0);
INSERT INTO `payment_detail` VALUES (5, 18, 1, 1700.00, 1, 'ALI20260128142331487738', '2026-01-28 14:23:32', 0.00, NULL, '2026-01-28 14:23:21', '2026-01-28 14:23:31', 0);
INSERT INTO `payment_detail` VALUES (6, 19, 1, 1700.00, 1, 'ALI20260128165553508384', '2026-01-28 16:55:53', 0.00, NULL, '2026-01-28 16:55:51', '2026-01-28 16:55:53', 0);
INSERT INTO `payment_detail` VALUES (7, 20, 1, 1700.00, 1, 'ALI20260128165645550023', '2026-01-28 16:56:46', 0.00, NULL, '2026-01-28 16:56:44', '2026-01-28 16:56:45', 0);
INSERT INTO `payment_detail` VALUES (8, 21, 1, 200.00, 1, 'ALI20260129092557954724', '2026-01-29 09:25:57', 0.00, NULL, '2026-01-29 09:25:56', '2026-01-29 09:25:55', 0);
INSERT INTO `payment_detail` VALUES (9, 22, 1, 1500.00, 1, 'ALI20260129092626273344', '2026-01-29 09:26:26', 0.00, NULL, '2026-01-29 09:26:24', '2026-01-29 09:26:24', 0);
INSERT INTO `payment_detail` VALUES (10, 23, 1, 200.00, 1, 'ALI20260129095755140035', '2026-01-29 09:57:56', 0.00, NULL, '2026-01-29 09:57:49', '2026-01-29 09:57:54', 0);
INSERT INTO `payment_detail` VALUES (11, 24, 1, 1300.00, 1, 'ALI20260203113402288244', '2026-02-03 11:34:03', 0.00, NULL, '2026-02-03 11:33:57', '2026-02-03 11:34:01', 0);
INSERT INTO `payment_detail` VALUES (12, 25, 1, 200.00, 1, 'ALI20260203113803956789', '2026-02-03 11:38:04', 0.00, NULL, '2026-02-03 11:38:02', '2026-02-03 11:38:03', 0);
INSERT INTO `payment_detail` VALUES (13, 26, 1, 1300.00, 1, 'ALI20260203114132840783', '2026-02-03 11:41:33', 0.00, NULL, '2026-02-03 11:41:24', '2026-02-03 11:41:32', 0);
INSERT INTO `payment_detail` VALUES (14, 27, 1, 200.00, 1, 'ALI20260203141306683383', '2026-02-03 14:13:07', 0.00, NULL, '2026-02-03 14:13:04', '2026-02-03 14:13:06', 0);
INSERT INTO `payment_detail` VALUES (15, 28, 1, 1300.00, 1, 'ALI20260226105807946894', '2026-02-26 10:58:08', 0.00, NULL, '2026-02-26 10:58:05', '2026-02-26 10:58:07', 0);
INSERT INTO `payment_detail` VALUES (16, 29, 2, 100.00, 1, 'WX20260226144536661517', '2026-02-26 14:45:37', 0.00, NULL, '2026-02-26 14:45:31', '2026-02-26 14:45:36', 0);
INSERT INTO `payment_detail` VALUES (17, 30, 2, 1400.00, 1, 'WX20260226144607107903', '2026-02-26 14:46:07', 0.00, NULL, '2026-02-26 14:46:05', '2026-02-26 14:46:06', 0);
INSERT INTO `payment_detail` VALUES (18, 31, 1, 1500.00, 1, 'ALI20260226144854135919', '2026-02-26 14:48:55', 0.00, NULL, '2026-02-26 14:48:49', '2026-02-26 14:48:54', 0);
INSERT INTO `payment_detail` VALUES (19, 32, 1, 1000.00, 1, 'ALI20260226151002685605', '2026-02-26 15:10:02', 0.00, NULL, '2026-02-26 15:10:01', '2026-02-26 15:10:01', 0);
INSERT INTO `payment_detail` VALUES (20, 33, 1, 47000.00, 1, 'ALI20260226151013147186', '2026-02-26 15:10:13', 0.00, NULL, '2026-02-26 15:10:12', '2026-02-26 15:10:12', 0);
INSERT INTO `payment_detail` VALUES (21, 34, 1, 2000.00, 1, 'ALI20260226151134666364', '2026-02-26 15:11:34', 0.00, NULL, '2026-02-26 15:11:31', '2026-02-26 15:11:33', 0);
INSERT INTO `payment_detail` VALUES (22, 35, 1, 2100.00, 1, 'ALI20260311165526975069', '2026-03-11 16:55:26', 0.00, NULL, '2026-03-11 16:55:24', '2026-03-11 16:55:19', 0);
INSERT INTO `payment_detail` VALUES (23, 36, 1, 2000.00, 1, 'ALI20260311165548228259', '2026-03-11 16:55:48', 0.00, NULL, '2026-03-11 16:55:47', '2026-03-11 16:55:40', 0);
INSERT INTO `payment_detail` VALUES (24, 37, 1, 1600.00, 1, 'ALI20260311165743716528', '2026-03-11 16:57:43', 0.00, NULL, '2026-03-11 16:57:41', '2026-03-11 16:57:35', 0);
INSERT INTO `payment_detail` VALUES (25, 38, 1, 1500.00, 1, 'ALI20260311165750264972', '2026-03-11 16:57:51', 0.00, NULL, '2026-03-11 16:57:49', '2026-03-11 16:57:43', 0);
INSERT INTO `payment_detail` VALUES (26, 39, 1, 1600.00, 1, 'ALI20260311171749871934', '2026-03-11 17:17:49', 0.00, NULL, '2026-03-11 17:17:47', '2026-03-11 17:17:41', 0);
INSERT INTO `payment_detail` VALUES (27, 40, 1, 1600.00, 1, 'ALI20260311171908345196', '2026-03-11 17:19:09', 0.00, NULL, '2026-03-11 17:19:07', '2026-03-11 17:19:01', 0);
INSERT INTO `payment_detail` VALUES (28, 41, 1, 1500.00, 1, 'ALI20260311171918946140', '2026-03-11 17:19:18', 0.00, NULL, '2026-03-11 17:19:17', '2026-03-11 17:19:10', 0);
INSERT INTO `payment_detail` VALUES (29, 42, 1, 1500.00, 1, 'ALI20260311171925851760', '2026-03-11 17:19:26', 0.00, NULL, '2026-03-11 17:19:25', '2026-03-11 17:19:18', 0);
INSERT INTO `payment_detail` VALUES (30, 43, 1, 100.00, 1, 'ALI20260311173100912161', '2026-03-11 17:31:01', 0.00, NULL, '2026-03-11 17:30:56', '2026-03-11 17:30:53', 0);
INSERT INTO `payment_detail` VALUES (31, 44, 1, 1400.00, 1, 'ALI20260311173107557392', '2026-03-11 17:31:07', 0.00, NULL, '2026-03-11 17:31:04', '2026-03-11 17:30:59', 0);
INSERT INTO `payment_detail` VALUES (32, 45, 1, 1500.00, 1, 'ALI20260311183903792536', '2026-03-11 18:39:04', 0.00, NULL, '2026-03-11 18:39:02', '2026-03-11 18:38:57', 0);
INSERT INTO `payment_detail` VALUES (33, 46, 2, 2000.00, 1, 'WX20260311190417249591', '2026-03-11 19:04:18', 0.00, NULL, '2026-03-11 19:04:05', '2026-03-11 19:04:10', 0);
INSERT INTO `payment_detail` VALUES (34, 47, 2, 100.00, 1, 'WX20260507105125441997', '2026-05-07 10:51:25', 0.00, NULL, '2026-05-07 10:51:17', '2026-05-07 10:51:15', 0);
INSERT INTO `payment_detail` VALUES (35, 48, 1, 1400.00, 1, 'ALI20260507105143585177', '2026-05-07 10:51:44', 0.00, NULL, '2026-05-07 10:51:42', '2026-05-07 10:51:34', 0);
INSERT INTO `payment_detail` VALUES (36, 49, 1, 1500.00, 1, 'ALI20260512145051728307', '2026-05-12 14:50:52', 0.00, NULL, '2026-05-12 14:50:50', '2026-05-12 14:50:39', 0);
INSERT INTO `payment_detail` VALUES (37, 50, 1, 100.00, 1, 'ALI20260512145059459308', '2026-05-12 14:51:00', 0.00, NULL, '2026-05-12 14:50:58', '2026-05-12 14:50:47', 0);
INSERT INTO `payment_detail` VALUES (38, 51, 1, 1400.00, 1, 'ALI20260512145106975242', '2026-05-12 14:51:07', 0.00, NULL, '2026-05-12 14:51:05', '2026-05-12 14:50:54', 0);
INSERT INTO `payment_detail` VALUES (39, 52, 1, 100.00, 1, 'ALI20260513134155571043', '2026-05-13 13:41:56', 0.00, NULL, '2026-05-13 13:41:54', '2026-05-13 13:41:43', 0);
INSERT INTO `payment_detail` VALUES (40, 53, 1, 1400.00, 0, NULL, NULL, 0.00, NULL, '2026-05-13 13:41:57', '2026-05-13 13:41:45', 0);
INSERT INTO `payment_detail` VALUES (41, 54, 1, 1400.00, 1, 'ALI20260513134203303854', '2026-05-13 13:42:03', 0.00, NULL, '2026-05-13 13:42:01', '2026-05-13 13:41:51', 0);

-- ----------------------------
-- Table structure for payment_order
-- ----------------------------
DROP TABLE IF EXISTS `payment_order`;
CREATE TABLE `payment_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商户订单号',
  `lease_agreement_id` bigint NOT NULL COMMENT '关联租约ID',
  `rent_bill_id` bigint NULL DEFAULT NULL COMMENT '关联的租金账单ID',
  `term_start_date` date NULL DEFAULT NULL COMMENT '租约周期开始日期',
  `subject` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单标题',
  `amount_total` decimal(10, 2) NOT NULL COMMENT '支付金额（元）',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '支付状态：0待支付 1已支付 2已关闭 3已退款',
  `pay_channel` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '支付渠道（如 WECHAT_H5）',
  `pay_method` tinyint NULL DEFAULT 1 COMMENT '支付方式：1余额支付 2微信支付 3混合支付',
  `biz_type` tinyint NULL DEFAULT 3 COMMENT '业务类型：1押金 2租金 3押金+租金',
  `deposit_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '押金金额',
  `rent_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '租金金额',
  `balance_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '余额支付金额',
  `wechat_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '微信支付金额',
  `wechat_transaction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信支付交易号',
  `refund_status` tinyint NULL DEFAULT 0 COMMENT '退款状态：0无退款 1退款中 2已退款 3退款失败',
  `refunded_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '已退款金额',
  `refund_amount` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '已退款金额',
  `refund_time` datetime NULL DEFAULT NULL COMMENT '退款时间',
  `h5_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'H5 支付跳转链接',
  `code_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '二维码链接',
  `success_time` datetime NULL DEFAULT NULL COMMENT '支付成功时间',
  `notify_payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回调报文',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_payment_order_no`(`order_no` ASC) USING BTREE,
  INDEX `idx_payment_order_agreement`(`lease_agreement_id` ASC) USING BTREE,
  INDEX `idx_rent_bill_id`(`rent_bill_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_order
-- ----------------------------
INSERT INTO `payment_order` VALUES (1, 'PAY20251112094723856188', 15, NULL, '2025-11-27', '租约支付-张三-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251112094723856188', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251112094723856188', '2025-11-12 10:09:02', NULL, '2025-11-12 09:47:23', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (2, 'PAY20251112102054986144', 18, NULL, '2025-11-12', '租约支付-胡浩-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251112102054986144', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251112102054986144', '2025-11-12 10:21:15', NULL, '2025-11-12 10:20:54', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (3, 'PAY20251112111150505903', 22, NULL, '2025-12-12', '租约支付-胡浩-租约支付', 3333.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251112111150505903', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251112111150505903', '2025-11-12 11:11:57', NULL, '2025-11-12 11:11:50', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (4, 'PAY20251114161457193452', 24, NULL, '2025-11-14', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251114161457193452', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251114161457193452', '2025-11-14 16:15:01', NULL, '2025-11-14 16:14:57', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (5, 'PAY20251119155108636892', 25, NULL, '2025-11-19', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251119155108636892', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251119155108636892', '2025-11-19 15:51:17', NULL, '2025-11-19 15:51:09', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (6, 'PAY20251119162449695375', 26, NULL, '2025-11-19', '租约支付-huhao-租约支付', 2200.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251119162449695375', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251119162449695375', '2025-11-19 16:24:52', NULL, '2025-11-19 16:24:49', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (7, 'PAY20251120095542616100', 29, NULL, '2025-11-20', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120095542616100', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120095542616100', '2025-11-26 11:19:24', NULL, '2025-11-20 09:55:42', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (8, 'PAY20251120095627756543', 29, NULL, '2025-11-20', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120095627756543', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120095627756543', '2025-11-20 09:56:29', NULL, '2025-11-20 09:56:27', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (9, 'PAY20251120095813872920', 28, NULL, '2025-11-19', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120095813872920', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120095813872920', '2025-11-26 11:19:23', NULL, '2025-11-20 09:58:14', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (10, 'PAY20251120095824698004', 28, NULL, '2025-11-19', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120095824698004', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120095824698004', '2025-11-20 09:58:27', NULL, '2025-11-20 09:58:24', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (11, 'PAY20251120100059650628', 21, NULL, '2025-12-12', '租约支付-胡浩-租约支付', 1100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120100059650628', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120100059650628', '2025-11-26 11:19:21', NULL, '2025-11-20 10:01:00', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (12, 'PAY20251120100246313695', 21, NULL, '2025-12-12', '租约支付-胡浩-租约支付', 1100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120100246313695', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120100246313695', '2025-11-26 11:19:20', NULL, '2025-11-20 10:02:46', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (13, 'PAY20251120101800404085', 30, NULL, '2025-11-20', '租约支付-huhao-租约支付', 2100.00, 1, 'WECHAT_H5', 1, 3, 0.00, 0.00, 0.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/pay?orderNo=PAY20251120101800404085', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fpay%3ForderNo%3DPAY20251120101800404085', '2025-11-20 10:18:03', NULL, '2025-11-20 10:18:00', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (14, 'PAY20251126104834916300', 31, NULL, '2025-11-26', '租约支付-huhao-租约支付', 2100.00, 1, 'UNIFIED', 2, 3, 0.00, 0.00, 0.00, 2100.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20251126104834916300', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20251126104834916300', '2025-11-26 10:49:18', NULL, '2025-11-26 10:48:34', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (15, 'PAY20251126105516277691', 32, NULL, '2025-11-26', '租约支付-huhao-租约支付', 2100.00, 1, 'UNIFIED', 2, 3, 0.00, 0.00, 0.00, 2100.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20251126105516277691', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20251126105516277691', '2025-11-26 10:55:23', NULL, '2025-11-26 10:55:16', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (16, 'PAY20260128093032220416', 33, NULL, '2027-09-28', '租约支付-胡奥-租约支付', 1700.00, 1, 'UNIFIED', 2, 3, 0.00, 0.00, 0.00, 1700.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260128093032220416', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260128093032220416', '2026-01-28 09:30:44', NULL, '2026-01-28 09:30:33', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (17, 'PAY20260128111043177561', 33, NULL, '2027-09-28', '租约支付-胡奥-租约支付', 1700.00, 1, 'UNIFIED', 2, 3, 0.00, 0.00, 0.00, 1700.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260128111043177561', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260128111043177561', '2026-01-28 11:10:47', NULL, '2026-01-28 11:10:44', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (18, 'PAY20260128142320915822', 33, NULL, '2027-09-28', '租约支付-胡奥-租约支付', 1700.00, 1, 'UNIFIED', 1, 3, 0.00, 0.00, 1700.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260128142320915822', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260128142320915822', '2026-01-28 14:23:32', NULL, '2026-01-28 14:23:21', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (19, 'PAY20260128165551525550', 33, NULL, '2027-09-28', '租约支付-胡奥-租约支付', 1700.00, 1, 'UNIFIED', 1, 3, 0.00, 0.00, 1700.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260128165551525550', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260128165551525550', '2026-01-28 16:55:53', NULL, '2026-01-28 16:55:51', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (20, 'PAY20260128165644880249', 33, NULL, '2027-09-28', '租约支付-胡奥-租约支付', 1700.00, 1, 'UNIFIED', 1, 3, 0.00, 0.00, 1700.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260128165644880249', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260128165644880249', '2026-01-28 16:56:46', NULL, '2026-01-28 16:56:44', '2026-01-29 09:19:10', 0);
INSERT INTO `payment_order` VALUES (21, 'PAY20260129092555685265', 34, NULL, '2026-01-29', '租约支付-李四-租约支付', 200.00, 1, 'UNIFIED', 1, 1, 200.00, 0.00, 200.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260129092555685265', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260129092555685265', '2026-01-29 09:25:57', NULL, '2026-01-29 09:25:55', '2026-01-29 09:25:54', 0);
INSERT INTO `payment_order` VALUES (22, 'PAY20260129092623104043', 34, NULL, '2026-01-29', '租约支付-李四-租约支付', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260129092623104043', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260129092623104043', '2026-01-29 09:26:26', NULL, '2026-01-29 09:26:24', '2026-01-29 09:26:22', 0);
INSERT INTO `payment_order` VALUES (23, 'PAY20260129095748341269', 35, NULL, '2026-01-29', '租约支付-张三-租约支付', 200.00, 1, 'UNIFIED', 1, 1, 200.00, 0.00, 200.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260129095748341269', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260129095748341269', '2026-01-29 09:57:56', NULL, '2026-01-29 09:57:49', '2026-01-29 09:57:47', 0);
INSERT INTO `payment_order` VALUES (24, 'PAY20260203113357696800', 35, NULL, '2026-01-29', '租约支付-张三-租约支付', 1300.00, 1, 'UNIFIED', 1, 2, 0.00, 1300.00, 1300.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260203113357696800', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260203113357696800', '2026-02-03 11:34:03', NULL, '2026-02-03 11:33:57', '2026-02-03 11:33:56', 0);
INSERT INTO `payment_order` VALUES (25, 'PAY20260203113801552576', 36, NULL, '2026-02-03', '租约支付-张三-租约支付', 200.00, 1, 'UNIFIED', 1, 1, 200.00, 0.00, 200.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260203113801552576', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260203113801552576', '2026-02-03 11:38:04', NULL, '2026-02-03 11:38:02', '2026-02-03 11:38:00', 0);
INSERT INTO `payment_order` VALUES (26, 'PAY20260203114124748096', 36, NULL, '2026-02-03', '租约支付-张三-租约支付', 1300.00, 1, 'UNIFIED', 1, 2, 0.00, 1300.00, 1300.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260203114124748096', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260203114124748096', '2026-02-03 11:41:33', NULL, '2026-02-03 11:41:24', '2026-02-03 11:41:23', 0);
INSERT INTO `payment_order` VALUES (27, 'PAY20260203141304832724', 37, NULL, '2026-02-03', '租约支付-胡浩-租约支付', 200.00, 1, 'UNIFIED', 1, 1, 200.00, 0.00, 200.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260203141304832724', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260203141304832724', '2026-02-03 14:13:07', NULL, '2026-02-03 14:13:04', '2026-02-03 14:13:03', 0);
INSERT INTO `payment_order` VALUES (28, 'PAY20260226105804808524', 37, NULL, '2026-02-03', '租约支付-胡浩-租约支付', 1300.00, 1, 'UNIFIED', 1, 2, 0.00, 1300.00, 1300.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260226105804808524', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260226105804808524', '2026-02-26 10:58:08', NULL, '2026-02-26 10:58:05', '2026-02-26 10:58:04', 0);
INSERT INTO `payment_order` VALUES (29, 'PAY20260226144530521842', 38, NULL, '2026-03-01', '租约支付-胡浩-租约支付', 100.00, 1, 'UNIFIED', 2, 1, 100.00, 0.00, 0.00, 100.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260226144530521842', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260226144530521842', '2026-02-26 14:45:37', NULL, '2026-02-26 14:45:31', '2026-02-26 14:45:30', 0);
INSERT INTO `payment_order` VALUES (30, 'PAY20260226144605430816', 38, NULL, '2026-03-01', '租约支付-胡浩-租约支付', 1400.00, 1, 'UNIFIED', 2, 2, 0.00, 1400.00, 0.00, 1400.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260226144605430816', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260226144605430816', '2026-02-26 14:46:07', NULL, '2026-02-26 14:46:05', '2026-02-26 14:46:04', 0);
INSERT INTO `payment_order` VALUES (31, 'PAY20260226144849997747', 38, NULL, '2027-03-01', '租约支付-胡浩-租约支付', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260226144849997747', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260226144849997747', '2026-02-26 14:48:55', NULL, '2026-02-26 14:48:49', '2026-02-26 14:48:49', 0);
INSERT INTO `payment_order` VALUES (32, 'PAY20260226151000402582', 39, NULL, '2026-03-01', '租约支付-胡浩-租约支付', 1000.00, 1, 'UNIFIED', 1, 1, 1000.00, 0.00, 1000.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260226151000402582', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260226151000402582', '2026-02-26 15:10:02', NULL, '2026-02-26 15:10:01', '2026-02-26 15:10:00', 0);
INSERT INTO `payment_order` VALUES (33, 'PAY20260226151011531913', 39, NULL, '2026-03-01', '租约支付-胡浩-租约支付', 47000.00, 1, 'UNIFIED', 1, 2, 0.00, 47000.00, 47000.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260226151011531913', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260226151011531913', '2026-02-26 15:10:13', NULL, '2026-02-26 15:10:12', '2026-02-26 15:10:11', 0);
INSERT INTO `payment_order` VALUES (34, 'PAY20260226151130118956', 39, NULL, '2030-03-01', '租约支付-胡浩-租约支付', 2000.00, 1, 'UNIFIED', 1, 2, 0.00, 2000.00, 2000.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260226151130118956', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260226151130118956', '2026-02-26 15:11:34', NULL, '2026-02-26 15:11:31', '2026-02-26 15:11:30', 0);
INSERT INTO `payment_order` VALUES (35, 'PAY20260311165523647165', 40, 1, '2026-03-11', '租约支付-胡浩-第1期/2期', 2100.00, 1, 'UNIFIED', 1, 3, 100.00, 2000.00, 2100.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311165523647165', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311165523647165', '2026-03-11 16:55:26', NULL, '2026-03-11 16:55:24', '2026-03-11 16:55:16', 0);
INSERT INTO `payment_order` VALUES (36, 'PAY20260311165547726100', 40, 2, '2026-03-11', '租约支付-胡浩-第2期/2期', 2000.00, 1, 'UNIFIED', 1, 2, 0.00, 2000.00, 2000.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311165547726100', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311165547726100', '2026-03-11 16:55:48', NULL, '2026-03-11 16:55:47', '2026-03-11 16:55:39', 0);
INSERT INTO `payment_order` VALUES (37, 'PAY20260311165740981910', 41, 3, '2026-03-11', '租约支付-胡浩-第1期/2期', 1600.00, 1, 'UNIFIED', 1, 3, 100.00, 1500.00, 1600.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311165740981910', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311165740981910', '2026-03-11 16:57:43', NULL, '2026-03-11 16:57:41', '2026-03-11 16:57:33', 0);
INSERT INTO `payment_order` VALUES (38, 'PAY20260311165749522821', 41, 4, '2026-03-11', '租约支付-胡浩-第2期/2期', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311165749522821', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311165749522821', '2026-03-11 16:57:51', NULL, '2026-03-11 16:57:49', '2026-03-11 16:57:41', 0);
INSERT INTO `payment_order` VALUES (39, 'PAY20260311171746529518', 42, 5, '2026-03-11', '租约支付-胡浩-第1期/1期', 1600.00, 1, 'UNIFIED', 1, 3, 100.00, 1500.00, 1600.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311171746529518', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311171746529518', '2026-03-11 17:17:49', NULL, '2026-03-11 17:17:47', '2026-03-11 17:17:39', 0);
INSERT INTO `payment_order` VALUES (40, 'PAY20260311171907193596', 43, 6, '2026-03-11', '租约支付-胡浩-第1期/3期', 1600.00, 1, 'UNIFIED', 1, 3, 100.00, 1500.00, 1600.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311171907193596', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311171907193596', '2026-03-11 17:19:09', NULL, '2026-03-11 17:19:07', '2026-03-11 17:18:59', 0);
INSERT INTO `payment_order` VALUES (41, 'PAY20260311171916392106', 43, 7, '2026-03-11', '租约支付-胡浩-第2期/3期', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311171916392106', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311171916392106', '2026-03-11 17:19:18', NULL, '2026-03-11 17:19:17', '2026-03-11 17:19:09', 0);
INSERT INTO `payment_order` VALUES (42, 'PAY20260311171924437350', 43, 8, '2026-03-11', '租约支付-胡浩-第3期/3期', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311171924437350', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311171924437350', '2026-03-11 17:19:26', NULL, '2026-03-11 17:19:25', '2026-03-11 17:19:17', 0);
INSERT INTO `payment_order` VALUES (43, 'PAY20260311173056792854', 44, 9, '2026-03-11', '租约支付-胡浩-第1期/4期', 100.00, 1, 'UNIFIED', 1, 1, 100.00, 0.00, 100.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311173056792854', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311173056792854', '2026-03-11 17:31:01', NULL, '2026-03-11 17:30:56', '2026-03-11 17:30:49', 0);
INSERT INTO `payment_order` VALUES (44, 'PAY20260311173104379757', 44, 10, '2026-03-11', '租约支付-胡浩-第2期/4期', 1400.00, 1, 'UNIFIED', 1, 2, 0.00, 1400.00, 1400.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311173104379757', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311173104379757', '2026-03-11 17:31:07', NULL, '2026-03-11 17:31:04', '2026-03-11 17:30:57', 0);
INSERT INTO `payment_order` VALUES (45, 'PAY20260311183901139257', 45, 13, '2026-03-11', '租约支付-胡浩-第1期/1期', 1500.00, 1, 'UNIFIED', 1, 2, 0.00, 1500.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260311183901139257', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260311183901139257', '2026-03-11 18:39:04', NULL, '2026-03-11 18:39:02', '2026-03-11 18:38:54', 0);
INSERT INTO `payment_order` VALUES (46, 'PAY20260311190404776727', 46, 14, '2026-03-11', '租约支付-胡浩-第1期/1期', 2000.00, 1, 'UNIFIED', 2, 2, 0.00, 2000.00, 0.00, 2000.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260311190404776727', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260311190404776727', '2026-03-11 19:04:18', NULL, '2026-03-11 19:04:05', '2026-03-11 19:03:57', 0);
INSERT INTO `payment_order` VALUES (47, 'PAY20260507105117944770', 47, 15, '2026-05-07', '租约支付-胡浩-第1期/2期', 100.00, 1, 'UNIFIED', 2, 1, 100.00, 0.00, 0.00, 100.00, NULL, 0, 0.00, 0.00, NULL, '/mock/wechat/pay?orderNo=PAY20260507105117944770', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Fwechat%2Fpay%3ForderNo%3DPAY20260507105117944770', '2026-05-07 10:51:25', NULL, '2026-05-07 10:51:17', '2026-05-07 10:51:07', 0);
INSERT INTO `payment_order` VALUES (48, 'PAY20260507105141403698', 47, 16, '2026-05-07', '租约支付-胡浩-第2期/2期', 1400.00, 1, 'UNIFIED', 1, 2, 0.00, 1400.00, 1400.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260507105141403698', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260507105141403698', '2026-05-07 10:51:44', NULL, '2026-05-07 10:51:42', '2026-05-07 10:51:31', 0);
INSERT INTO `payment_order` VALUES (49, 'PAY20260512145049819588', 48, 17, '2026-05-12', '租约支付-胡浩-第1期/2期', 1500.00, 1, 'UNIFIED', 1, 1, 1500.00, 0.00, 1500.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260512145049819588', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260512145049819588', '2026-05-12 14:50:52', NULL, '2026-05-12 14:50:49', '2026-05-12 14:50:37', 0);
INSERT INTO `payment_order` VALUES (50, 'PAY20260512145058894727', 49, 19, '2026-05-12', '租约支付-胡浩-第1期/2期', 100.00, 1, 'UNIFIED', 1, 1, 100.00, 0.00, 100.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260512145058894727', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260512145058894727', '2026-05-12 14:51:00', NULL, '2026-05-12 14:50:58', '2026-05-12 14:50:46', 0);
INSERT INTO `payment_order` VALUES (51, 'PAY20260512145105932753', 49, 20, '2026-05-12', '租约支付-胡浩-第2期/2期', 1400.00, 1, 'UNIFIED', 1, 2, 0.00, 1400.00, 1400.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260512145105932753', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260512145105932753', '2026-05-12 14:51:07', NULL, '2026-05-12 14:51:05', '2026-05-12 14:50:53', 0);
INSERT INTO `payment_order` VALUES (52, 'PAY20260513134154436380', 50, 21, '2026-05-12', '租约支付-胡浩-第1期/2期', 100.00, 1, 'UNIFIED', 1, 1, 100.00, 0.00, 100.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260513134154436380', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260513134154436380', '2026-05-13 13:41:56', NULL, '2026-05-13 13:41:54', '2026-05-13 13:41:42', 0);
INSERT INTO `payment_order` VALUES (53, 'PAY20260513134157624183', 50, 22, '2026-05-12', '租约支付-胡浩-第2期/2期', 1400.00, 0, 'UNIFIED', 1, 2, 0.00, 1400.00, 1400.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260513134157624183', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260513134157624183', NULL, NULL, '2026-05-13 13:41:57', '2026-05-13 13:41:45', 0);
INSERT INTO `payment_order` VALUES (54, 'PAY20260513134201889596', 50, 22, '2026-05-12', '租约支付-胡浩-第2期/2期', 1400.00, 1, 'UNIFIED', 1, 2, 0.00, 1400.00, 1400.00, 0.00, NULL, 0, 0.00, 0.00, NULL, '/mock/alipay/pay?orderNo=PAY20260513134201889596', 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%2Fmock%2Falipay%2Fpay%3ForderNo%3DPAY20260513134201889596', '2026-05-13 13:42:03', NULL, '2026-05-13 13:42:01', '2026-05-13 13:41:49', 0);

-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付款方式名称',
  `pay_month_count` int NULL DEFAULT NULL COMMENT '每次支付租期数',
  `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '付费说明',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付方式表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment_type
-- ----------------------------
INSERT INTO `payment_type` VALUES (6, '月付', 1, '押一付一', '2023-06-21 11:26:08', '2023-06-21 11:27:14', 0);
INSERT INTO `payment_type` VALUES (7, '季付', 3, '押一付三', '2023-06-21 11:26:21', '2023-06-21 11:27:33', 0);
INSERT INTO `payment_type` VALUES (8, '半年付', 6, '押一付六', '2023-06-21 11:26:35', NULL, 0);
INSERT INTO `payment_type` VALUES (9, '年付', 12, '压一付十二', NULL, NULL, 1);
INSERT INTO `payment_type` VALUES (10, '年付', 24, '压一付十二', '2023-08-01 23:51:40', NULL, 0);
INSERT INTO `payment_type` VALUES (11, '年付', 24, '压一付十二', '2023-08-01 23:52:15', '2023-08-10 14:36:55', 1);
INSERT INTO `payment_type` VALUES (12, '两年付', 24, '押1付24', NULL, '2024-09-10 20:33:21', 1);
INSERT INTO `payment_type` VALUES (13, '两年付', 24, '押1付24', NULL, '2024-09-10 20:31:48', 1);
INSERT INTO `payment_type` VALUES (14, '两年付', 24, '押1付24', '2024-09-10 20:23:38', '2024-09-10 20:24:14', 0);

-- ----------------------------
-- Table structure for province_info
-- ----------------------------
DROP TABLE IF EXISTS `province_info`;
CREATE TABLE `province_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '省份id',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of province_info
-- ----------------------------
INSERT INTO `province_info` VALUES (11, '北京市', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (12, '天津市', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (13, '河北省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (14, '山西省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (15, '内蒙古自治区', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (21, '辽宁省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (22, '吉林省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (23, '黑龙江省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (31, '上海市', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (32, '江苏省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (33, '浙江省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (34, '安徽省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (35, '福建省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (36, '江西省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (37, '山东省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (41, '河南省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (42, '湖北省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (43, '湖南省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (44, '广东省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (45, '广西壮族自治区', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (46, '海南省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (50, '重庆市', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (51, '四川省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (52, '贵州省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (53, '云南省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (54, '西藏自治区', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (61, '陕西省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (62, '甘肃省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (63, '青海省', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (64, '宁夏回族自治区', '2023-06-25 13:48:39', NULL, 0);
INSERT INTO `province_info` VALUES (65, '新疆维吾尔自治区', '2023-06-25 13:48:39', NULL, 0);

-- ----------------------------
-- Table structure for refund_record
-- ----------------------------
DROP TABLE IF EXISTS `refund_record`;
CREATE TABLE `refund_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `refund_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退款单号',
  `payment_order_id` bigint NOT NULL COMMENT '原支付订单ID',
  `lease_agreement_id` bigint NOT NULL COMMENT '租约ID',
  `refund_amount` decimal(16, 2) NOT NULL COMMENT '退款总金额（元）',
  `balance_refund` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '余额退款金额',
  `wechat_refund` decimal(16, 2) NULL DEFAULT 0.00 COMMENT '微信退款金额',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '退款状态：0处理中 1成功 2失败',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '退款原因',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作人ID',
  `success_time` datetime NULL DEFAULT NULL COMMENT '退款成功时间',
  `fail_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '失败原因',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_refund_no`(`refund_no` ASC) USING BTREE COMMENT '退款单号唯一索引',
  INDEX `idx_payment_order`(`payment_order_id` ASC) USING BTREE COMMENT '支付订单ID索引',
  INDEX `idx_lease_agreement`(`lease_agreement_id` ASC) USING BTREE COMMENT '租约ID索引'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '退款记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refund_record
-- ----------------------------

-- ----------------------------
-- Table structure for rent_bill
-- ----------------------------
DROP TABLE IF EXISTS `rent_bill`;
CREATE TABLE `rent_bill`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `lease_agreement_id` bigint NOT NULL COMMENT '租约ID',
  `period_index` int NOT NULL COMMENT '第几期（从1开始）',
  `total_periods` int NOT NULL COMMENT '总期数',
  `bill_type` tinyint NOT NULL DEFAULT 2 COMMENT '账单类型：1押金 2租金',
  `period_start_date` date NOT NULL COMMENT '本期租金周期开始日期',
  `period_end_date` date NOT NULL COMMENT '本期租金周期结束日期',
  `rent_months` int NOT NULL COMMENT '本期租金月数',
  `rent_amount` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '本期租金金额',
  `deposit_amount` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '本期押金金额（仅第一期）',
  `total_amount` decimal(16, 2) NOT NULL COMMENT '本期应付总额',
  `due_date` date NOT NULL COMMENT '应付日期',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '账单状态：0待支付 1已支付 2已逾期 3已取消',
  `payment_order_id` bigint NULL DEFAULT NULL COMMENT '关联的支付订单ID',
  `paid_time` datetime NULL DEFAULT NULL COMMENT '实际支付时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_lease_agreement_id`(`lease_agreement_id` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_due_date`(`due_date` ASC) USING BTREE,
  INDEX `idx_payment_order_id`(`payment_order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '租金账单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rent_bill
-- ----------------------------
INSERT INTO `rent_bill` VALUES (1, 40, 1, 2, 2, '2026-03-11', '2026-04-10', 1, 2000.00, 100.00, 2100.00, '2026-03-11', 1, 35, '2026-03-11 16:55:27', '2026-03-11 16:54:54', '2026-03-11 16:54:46', 0);
INSERT INTO `rent_bill` VALUES (2, 40, 2, 2, 2, '2026-04-11', '2026-04-11', 1, 2000.00, 0.00, 2000.00, '2026-04-11', 1, 36, '2026-03-11 16:55:48', '2026-03-11 16:54:54', '2026-03-11 16:54:46', 0);
INSERT INTO `rent_bill` VALUES (5, 42, 1, 1, 2, '2026-03-11', '2026-04-10', 1, 1500.00, 100.00, 1600.00, '2026-03-11', 1, 39, '2026-03-11 17:17:49', '2026-03-11 17:17:39', '2026-03-11 17:17:31', 0);
INSERT INTO `rent_bill` VALUES (6, 43, 1, 3, 2, '2026-03-11', '2026-04-10', 1, 1500.00, 100.00, 1600.00, '2026-03-11', 1, 40, '2026-03-11 17:19:09', '2026-03-11 17:18:57', '2026-03-11 17:18:49', 0);
INSERT INTO `rent_bill` VALUES (7, 43, 2, 3, 2, '2026-04-11', '2026-05-10', 1, 1500.00, 0.00, 1500.00, '2026-04-11', 1, 41, '2026-03-11 17:19:18', '2026-03-11 17:18:57', '2026-03-11 17:18:49', 0);
INSERT INTO `rent_bill` VALUES (8, 43, 3, 3, 2, '2026-05-11', '2026-06-10', 1, 1500.00, 0.00, 1500.00, '2026-05-11', 1, 42, '2026-03-11 17:19:26', '2026-03-11 17:18:57', '2026-03-11 17:18:49', 0);
INSERT INTO `rent_bill` VALUES (9, 44, 1, 4, 1, '2026-03-11', '2026-03-11', 0, 0.00, 100.00, 100.00, '2026-03-11', 1, 43, '2026-03-11 17:31:01', '2026-03-11 17:30:55', '2026-03-11 17:30:47', 0);
INSERT INTO `rent_bill` VALUES (10, 44, 2, 4, 2, '2026-03-11', '2026-04-10', 1, 1400.00, 0.00, 1400.00, '2026-03-11', 1, 44, '2026-03-11 17:31:07', '2026-03-11 17:30:55', '2026-03-11 17:30:47', 0);
INSERT INTO `rent_bill` VALUES (11, 44, 3, 4, 2, '2026-04-11', '2026-05-10', 1, 1500.00, 0.00, 1500.00, '2026-04-11', 0, NULL, NULL, '2026-03-11 17:30:55', '2026-03-11 17:30:47', 0);
INSERT INTO `rent_bill` VALUES (12, 44, 4, 4, 2, '2026-05-11', '2026-06-10', 1, 1500.00, 0.00, 1500.00, '2026-05-11', 0, NULL, NULL, '2026-03-11 17:30:55', '2026-03-11 17:30:47', 0);
INSERT INTO `rent_bill` VALUES (13, 45, 1, 1, 2, '2026-03-11', '2026-04-10', 1, 1500.00, 0.00, 1500.00, '2026-03-11', 1, 45, '2026-03-11 18:39:04', '2026-03-11 18:39:00', '2026-03-11 18:38:52', 0);
INSERT INTO `rent_bill` VALUES (14, 46, 1, 1, 2, '2026-03-11', '2026-04-10', 1, 2000.00, 0.00, 2000.00, '2026-03-11', 1, 46, '2026-03-11 19:04:18', '2026-03-11 19:03:55', '2026-03-11 19:03:48', 0);
INSERT INTO `rent_bill` VALUES (15, 47, 1, 2, 1, '2026-05-07', '2026-05-07', 0, 0.00, 100.00, 100.00, '2026-05-07', 1, 47, '2026-05-07 10:51:25', '2026-05-07 10:51:12', '2026-05-07 10:51:02', 0);
INSERT INTO `rent_bill` VALUES (16, 47, 2, 2, 2, '2026-05-07', '2026-06-06', 1, 1400.00, 0.00, 1400.00, '2026-05-07', 1, 48, '2026-05-07 10:51:44', '2026-05-07 10:51:12', '2026-05-07 10:51:02', 0);
INSERT INTO `rent_bill` VALUES (17, 48, 1, 2, 1, '2026-05-12', '2026-05-12', 0, 0.00, 1500.00, 1500.00, '2026-05-12', 1, 49, '2026-05-12 14:50:52', '2026-05-12 14:50:47', '2026-05-12 14:50:35', 0);
INSERT INTO `rent_bill` VALUES (18, 48, 2, 2, 2, '2026-05-12', '2026-06-11', 1, 0.00, 0.00, 0.00, '2026-05-12', 0, NULL, NULL, '2026-05-12 14:50:47', '2026-05-12 14:50:35', 0);
INSERT INTO `rent_bill` VALUES (19, 49, 1, 2, 1, '2026-05-12', '2026-05-12', 0, 0.00, 100.00, 100.00, '2026-05-12', 1, 50, '2026-05-12 14:51:00', '2026-05-12 14:50:56', '2026-05-12 14:50:44', 0);
INSERT INTO `rent_bill` VALUES (20, 49, 2, 2, 2, '2026-05-12', '2026-05-13', 1, 1400.00, 0.00, 1400.00, '2026-05-12', 1, 51, '2026-05-12 14:51:07', '2026-05-12 14:50:56', '2026-05-12 14:50:44', 0);
INSERT INTO `rent_bill` VALUES (21, 50, 1, 2, 1, '2026-05-12', '2026-05-12', 0, 0.00, 100.00, 100.00, '2026-05-12', 1, 52, '2026-05-13 13:41:56', '2026-05-13 13:41:53', '2026-05-13 13:41:40', 0);
INSERT INTO `rent_bill` VALUES (22, 50, 2, 2, 2, '2026-05-12', '2026-06-11', 1, 1400.00, 0.00, 1400.00, '2026-05-12', 1, 54, '2026-05-13 13:42:03', '2026-05-13 13:41:53', '2026-05-13 13:41:40', 0);

-- ----------------------------
-- Table structure for repair_attachment
-- ----------------------------
DROP TABLE IF EXISTS `repair_attachment`;
CREATE TABLE `repair_attachment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '报修附件ID',
  `request_id` bigint NOT NULL COMMENT '报修单ID',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '附件访问地址',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'image' COMMENT '附件类别（默认图片）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_ra_request`(`request_id` ASC) USING BTREE COMMENT '报修单ID索引'
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报修附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair_attachment
-- ----------------------------
INSERT INTO `repair_attachment` VALUES (12, 9, 'https://picsum.photos/seed/1762508036127/300/300.jpg', 'image', '2025-11-07 17:34:09', NULL, 0);
INSERT INTO `repair_attachment` VALUES (13, 10, 'https://picsum.photos/seed/1762737953401/300/300.jpg', 'image', '2025-11-10 09:25:54', NULL, 0);
INSERT INTO `repair_attachment` VALUES (14, 11, 'https://picsum.photos/seed/1769585251694/300/300.jpg', 'image', '2026-01-28 15:27:32', NULL, 0);
INSERT INTO `repair_attachment` VALUES (15, 12, 'http://192.168.10.101:9000/lease/20260128/378ebc46-f39c-4973-bfd6-a96600dd5207-房间-厨房-1.jpg', 'image', '2026-01-28 16:00:58', NULL, 0);
INSERT INTO `repair_attachment` VALUES (16, 13, 'http://192.168.10.101:9000/lease/20260311/37380f53-c2dd-4874-8402-254e7716355a-房间-厨房-2.jpg', 'image', '2026-03-11 17:32:26', NULL, 0);
INSERT INTO `repair_attachment` VALUES (17, 14, 'http://192.168.10.101:9000/lease/20260311/337c7aed-07ba-4417-a33b-4bb7a7a7ad5f-房间-厨房-2.jpg', 'image', '2026-03-11 17:35:51', NULL, 0);

-- ----------------------------
-- Table structure for repair_progress
-- ----------------------------
DROP TABLE IF EXISTS `repair_progress`;
CREATE TABLE `repair_progress`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '报修进度ID',
  `request_id` bigint NOT NULL COMMENT '报修单ID',
  `status` tinyint NOT NULL COMMENT '当前进度状态枚举',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '进度描述',
  `operator_id` bigint NOT NULL COMMENT '操作人ID',
  `operator_role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作人角色（如租客/管理员）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_rp_request`(`request_id` ASC) USING BTREE COMMENT '报修单ID索引'
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报修进度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair_progress
-- ----------------------------
INSERT INTO `repair_progress` VALUES (24, 9, 1, '租客提交报修', 8, 'TENANT', '2025-11-07 17:34:09', NULL, 0);
INSERT INTO `repair_progress` VALUES (25, 9, 2, '管理员指派报修', 5, 'ADMIN', '2025-11-07 17:34:28', NULL, 0);
INSERT INTO `repair_progress` VALUES (26, 9, 3, '已完成', 5, 'ADMIN', '2025-11-07 17:34:46', NULL, 0);
INSERT INTO `repair_progress` VALUES (27, 10, 1, '租客提交报修', 8, 'TENANT', '2025-11-10 09:25:54', NULL, 0);
INSERT INTO `repair_progress` VALUES (28, 10, 2, '管理员指派报修', 5, 'ADMIN', '2025-11-10 09:26:57', NULL, 0);
INSERT INTO `repair_progress` VALUES (29, 10, 3, '已完成', 5, 'ADMIN', '2025-11-10 09:27:12', NULL, 0);
INSERT INTO `repair_progress` VALUES (30, 11, 1, '租客提交报修', 8, 'TENANT', '2026-01-28 15:27:32', NULL, 0);
INSERT INTO `repair_progress` VALUES (31, 11, 2, '管理员指派报修', 5, 'ADMIN', '2026-01-28 15:59:51', NULL, 0);
INSERT INTO `repair_progress` VALUES (32, 12, 1, '租客提交报修', 8, 'TENANT', '2026-01-28 16:00:58', NULL, 0);
INSERT INTO `repair_progress` VALUES (33, 11, 3, '完成', 5, 'ADMIN', '2026-01-28 16:05:41', NULL, 0);
INSERT INTO `repair_progress` VALUES (34, 13, 1, '租客提交报修', 8, 'TENANT', '2026-03-11 17:32:26', NULL, 0);
INSERT INTO `repair_progress` VALUES (35, 12, 4, '已取消', 5, 'ADMIN', '2026-03-11 17:32:42', NULL, 0);
INSERT INTO `repair_progress` VALUES (36, 13, 2, '管理员指派报修', 5, 'ADMIN', '2026-03-11 17:33:18', NULL, 0);
INSERT INTO `repair_progress` VALUES (37, 13, 3, '11', 5, 'ADMIN', '2026-03-11 17:33:41', NULL, 0);
INSERT INTO `repair_progress` VALUES (38, 14, 1, '租客提交报修', 8, 'TENANT', '2026-03-11 17:35:51', NULL, 0);
INSERT INTO `repair_progress` VALUES (39, 14, 2, '管理员指派报修', 5, 'ADMIN', '2026-03-11 17:36:20', NULL, 0);
INSERT INTO `repair_progress` VALUES (40, 14, 3, '已完成', 5, 'ADMIN', '2026-03-11 17:37:25', NULL, 0);

-- ----------------------------
-- Table structure for repair_request
-- ----------------------------
DROP TABLE IF EXISTS `repair_request`;
CREATE TABLE `repair_request`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '报修单ID',
  `user_id` bigint NOT NULL COMMENT '报修人ID（关联用户表）',
  `room_id` bigint NOT NULL COMMENT '房间ID（关联房间表）',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报修标题',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报修描述',
  `priority` tinyint NOT NULL COMMENT '报修优先级枚举',
  `status` tinyint NOT NULL COMMENT '报修状态枚举',
  `appointment_time` datetime NULL DEFAULT NULL COMMENT '预约上门时间',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `handler_id` bigint NULL DEFAULT NULL COMMENT '处理人ID（后台指派）',
  `finish_time` datetime NULL DEFAULT NULL COMMENT '完成/取消时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_rr_user`(`user_id` ASC) USING BTREE COMMENT '用户ID索引',
  INDEX `idx_rr_room`(`room_id` ASC) USING BTREE COMMENT '房间ID索引'
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报修单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair_request
-- ----------------------------
INSERT INTO `repair_request` VALUES (9, 8, 2, '空调漏水', '空调漏水', 2, 3, '2025-11-05 00:00:00', '18190067037', 1, '2025-11-07 17:34:46', '321', '2025-11-07 17:34:09', '2025-11-07 17:34:28', 0);
INSERT INTO `repair_request` VALUES (10, 8, 3, '空调不制冷', '空调不制冷', 3, 3, '2025-11-10 00:00:00', '18190067037', 1, '2025-11-10 09:27:12', '管理员指派报修', '2025-11-10 09:25:54', '2025-11-10 09:26:57', 0);
INSERT INTO `repair_request` VALUES (11, 8, 2, '水管爆炸', '1233214', 3, 3, '2026-01-28 00:00:00', '18190067037', 1, '2026-01-28 16:05:41', NULL, '2026-01-28 15:27:32', '2026-01-28 15:59:51', 0);
INSERT INTO `repair_request` VALUES (12, 8, 35, '门锁坏了', '133', 2, 4, '2026-01-29 16:00:00', '18190067037', NULL, '2026-03-11 17:32:42', NULL, '2026-01-28 16:00:58', '2026-03-11 17:32:42', 0);
INSERT INTO `repair_request` VALUES (13, 8, 36, '漏水', '厨房漏水', 2, 3, '2026-03-12 17:32:00', '18190067037', 8, '2026-03-11 17:33:41', '11', '2026-03-11 17:32:26', '2026-03-11 17:33:18', 0);
INSERT INTO `repair_request` VALUES (14, 8, 36, '门坏了', '门坏了', 2, 3, '2026-03-11 17:35:00', '18190067037', 8, '2026-03-11 17:37:25', NULL, '2026-03-11 17:35:51', '2026-03-11 17:36:20', 0);

-- ----------------------------
-- Table structure for room_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `room_attr_value`;
CREATE TABLE `room_attr_value`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间id',
  `attr_value_id` bigint NULL DEFAULT NULL COMMENT '属性值id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 416 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间&基本属性值关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_attr_value
-- ----------------------------
INSERT INTO `room_attr_value` VALUES (1, 2, 4, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (2, 2, 5, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (3, 2, 6, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (4, 3, 10, '2023-06-21 10:35:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (5, 3, 10, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (6, 3, 10, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (7, 4, 10, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_attr_value` VALUES (8, 7, 9, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (9, 2, 10, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (10, 2, 10, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (11, 2, 16, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (12, 2, 22, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (13, 2, 25, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (14, 2, 27, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_attr_value` VALUES (15, 2, 10, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (16, 2, 16, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (17, 2, 22, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (18, 2, 25, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (19, 3, 9, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (20, 3, 17, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (21, 3, 20, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (22, 3, 23, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (23, 3, 27, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (24, 2, 10, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (25, 2, 16, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (26, 2, 22, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (27, 2, 25, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (28, 3, 9, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (29, 3, 17, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (30, 3, 20, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (31, 3, 23, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (32, 3, 27, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (33, 8, 8, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_attr_value` VALUES (34, 8, 15, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_attr_value` VALUES (35, 8, 22, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_attr_value` VALUES (36, 8, 25, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_attr_value` VALUES (37, 8, 27, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_attr_value` VALUES (38, 9, 8, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (39, 9, 15, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (40, 9, 19, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (41, 9, 24, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (42, 9, 27, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (43, 10, 8, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (44, 10, 15, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (45, 10, 20, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (46, 10, 23, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (47, 10, 27, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (48, 2, 10, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (49, 2, 16, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (50, 2, 22, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (51, 2, 25, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (52, 9, 8, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_attr_value` VALUES (53, 9, 15, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_attr_value` VALUES (54, 9, 19, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_attr_value` VALUES (55, 9, 24, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_attr_value` VALUES (56, 9, 27, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_attr_value` VALUES (57, 9, 8, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_attr_value` VALUES (58, 9, 15, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_attr_value` VALUES (59, 9, 19, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_attr_value` VALUES (60, 9, 24, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_attr_value` VALUES (61, 9, 27, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_attr_value` VALUES (62, 11, 9, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (63, 12, 8, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (64, 12, 16, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (65, 12, 22, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (66, 12, 25, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (67, 12, 27, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (68, 13, 10, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (69, 13, 18, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_attr_value` VALUES (70, 11, 9, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (71, 11, 17, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (72, 11, 20, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (73, 11, 23, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (74, 11, 27, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_attr_value` VALUES (75, 14, 9, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_attr_value` VALUES (76, 14, 17, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_attr_value` VALUES (77, 14, 20, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_attr_value` VALUES (78, 14, 27, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_attr_value` VALUES (79, 14, 23, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_attr_value` VALUES (80, 15, 8, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_attr_value` VALUES (81, 15, 16, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_attr_value` VALUES (82, 15, 20, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_attr_value` VALUES (83, 15, 23, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_attr_value` VALUES (84, 15, 27, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_attr_value` VALUES (85, 12, 8, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (86, 12, 16, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (87, 12, 22, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (88, 12, 25, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (89, 12, 27, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_attr_value` VALUES (90, 16, 8, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_attr_value` VALUES (91, 16, 16, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_attr_value` VALUES (92, 16, 19, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_attr_value` VALUES (93, 16, 24, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_attr_value` VALUES (94, 16, 27, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_attr_value` VALUES (95, 17, 10, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_attr_value` VALUES (96, 17, 18, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_attr_value` VALUES (97, 17, 20, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_attr_value` VALUES (98, 17, 23, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_attr_value` VALUES (99, 17, 27, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_attr_value` VALUES (100, 2, 10, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_attr_value` VALUES (101, 2, 16, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_attr_value` VALUES (102, 2, 22, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_attr_value` VALUES (103, 2, 25, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_attr_value` VALUES (104, 3, 9, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (105, 3, 17, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (106, 3, 20, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (107, 3, 23, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (108, 3, 27, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (109, 8, 8, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (110, 8, 15, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (111, 8, 22, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (112, 8, 25, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (113, 8, 27, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (114, 9, 8, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (115, 9, 15, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (116, 9, 19, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (117, 9, 24, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (118, 9, 27, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_attr_value` VALUES (119, 9, 8, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (120, 9, 15, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (121, 9, 19, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (122, 9, 24, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (123, 9, 27, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (124, 10, 8, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (125, 10, 15, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (126, 10, 20, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (127, 10, 23, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (128, 10, 27, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_attr_value` VALUES (129, 11, 9, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (130, 11, 17, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (131, 11, 20, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (132, 11, 23, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (133, 11, 27, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_attr_value` VALUES (134, 12, 8, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (135, 12, 16, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (136, 12, 22, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (137, 12, 25, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (138, 12, 27, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (139, 13, 10, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_attr_value` VALUES (140, 13, 18, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_attr_value` VALUES (141, 14, 9, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (142, 14, 17, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (143, 14, 20, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (144, 14, 27, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (145, 14, 23, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (146, 15, 8, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_attr_value` VALUES (147, 15, 16, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_attr_value` VALUES (148, 15, 20, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_attr_value` VALUES (149, 15, 23, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_attr_value` VALUES (150, 15, 27, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_attr_value` VALUES (151, 16, 8, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (152, 16, 16, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (153, 16, 19, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (154, 16, 24, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (155, 16, 27, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (156, 17, 10, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (157, 17, 18, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (158, 17, 20, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (159, 17, 23, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (160, 17, 27, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (161, 2, 10, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (162, 2, 16, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (163, 2, 22, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (164, 2, 25, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (165, 3, 9, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_attr_value` VALUES (166, 3, 17, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_attr_value` VALUES (167, 3, 20, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_attr_value` VALUES (168, 3, 23, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_attr_value` VALUES (169, 3, 27, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_attr_value` VALUES (170, 8, 8, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (171, 8, 15, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (172, 8, 22, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (173, 8, 25, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (174, 8, 27, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_attr_value` VALUES (175, 9, 8, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (176, 9, 15, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (177, 9, 19, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (178, 9, 24, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (179, 9, 27, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (180, 10, 8, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (181, 10, 15, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (182, 10, 20, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (183, 10, 23, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (184, 10, 27, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_attr_value` VALUES (185, 12, 8, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (186, 12, 16, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (187, 12, 22, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (188, 12, 25, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (189, 12, 27, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_attr_value` VALUES (190, 11, 9, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (191, 11, 17, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (192, 11, 20, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (193, 11, 23, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (194, 11, 27, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (195, 13, 10, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_attr_value` VALUES (196, 13, 18, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_attr_value` VALUES (197, 14, 9, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (198, 14, 17, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (199, 14, 20, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (200, 14, 27, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (201, 14, 23, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_attr_value` VALUES (202, 15, 8, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (203, 15, 16, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (204, 15, 20, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (205, 15, 23, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (206, 15, 27, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_attr_value` VALUES (207, 16, 8, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_attr_value` VALUES (208, 16, 16, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_attr_value` VALUES (209, 16, 19, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_attr_value` VALUES (210, 16, 24, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_attr_value` VALUES (211, 16, 27, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_attr_value` VALUES (212, 17, 10, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (213, 17, 18, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (214, 17, 20, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (215, 17, 23, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (216, 17, 27, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (217, 2, 10, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (218, 2, 16, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (219, 2, 22, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (220, 2, 25, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (221, 3, 9, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_attr_value` VALUES (222, 3, 17, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_attr_value` VALUES (223, 3, 20, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_attr_value` VALUES (224, 3, 23, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_attr_value` VALUES (225, 3, 27, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_attr_value` VALUES (226, 8, 8, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_attr_value` VALUES (227, 8, 15, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_attr_value` VALUES (228, 8, 22, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_attr_value` VALUES (229, 8, 25, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_attr_value` VALUES (230, 8, 27, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_attr_value` VALUES (231, 9, 8, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (232, 9, 15, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (233, 9, 19, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (234, 9, 24, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (235, 9, 27, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (236, 19, 18, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (237, 19, 10, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (238, 19, 20, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (239, 19, 23, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (240, 19, 28, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (241, 19, 29, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_attr_value` VALUES (242, 12, 8, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_attr_value` VALUES (243, 12, 16, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_attr_value` VALUES (244, 12, 22, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_attr_value` VALUES (245, 12, 25, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_attr_value` VALUES (246, 12, 27, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_attr_value` VALUES (247, 11, 9, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_attr_value` VALUES (248, 11, 17, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_attr_value` VALUES (249, 11, 20, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_attr_value` VALUES (250, 11, 23, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_attr_value` VALUES (251, 11, 27, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_attr_value` VALUES (252, 15, 8, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_attr_value` VALUES (253, 15, 16, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_attr_value` VALUES (254, 15, 20, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_attr_value` VALUES (255, 15, 23, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_attr_value` VALUES (256, 15, 27, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_attr_value` VALUES (257, 16, 8, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_attr_value` VALUES (258, 16, 16, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_attr_value` VALUES (259, 16, 19, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_attr_value` VALUES (260, 16, 24, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_attr_value` VALUES (261, 16, 27, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_attr_value` VALUES (262, 17, 10, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_attr_value` VALUES (263, 17, 18, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_attr_value` VALUES (264, 17, 20, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_attr_value` VALUES (265, 17, 23, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_attr_value` VALUES (266, 17, 27, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_attr_value` VALUES (267, 20, 9, '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `room_attr_value` VALUES (268, 21, 9, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (269, 21, 18, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (270, 21, 26, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (271, 21, 27, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (272, 21, 30, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_attr_value` VALUES (273, 22, 9, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (274, 22, 18, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (275, 22, 21, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (276, 22, 24, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (277, 22, 27, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (278, 22, 30, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_attr_value` VALUES (279, 21, 9, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (280, 21, 18, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (281, 21, 26, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (282, 21, 27, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (283, 21, 30, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_attr_value` VALUES (284, 22, 9, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (285, 22, 18, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (286, 22, 21, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (287, 22, 24, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (288, 22, 27, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (289, 22, 30, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_attr_value` VALUES (290, 23, 10, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (291, 23, 18, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (292, 23, 20, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (293, 23, 25, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (294, 23, 28, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (295, 23, 30, '2025-09-11 14:28:15', NULL, 1);
INSERT INTO `room_attr_value` VALUES (296, 24, 9, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (297, 19, 18, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (298, 19, 10, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (299, 19, 20, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (300, 19, 23, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (301, 19, 28, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (302, 19, 29, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_attr_value` VALUES (303, 21, 9, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (304, 21, 18, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (305, 21, 26, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (306, 21, 27, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (307, 21, 30, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (308, 21, 21, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_attr_value` VALUES (309, 20, 9, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (310, 20, 18, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (311, 20, 19, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (312, 20, 26, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (313, 20, 28, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (314, 20, 29, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (315, 24, 9, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_attr_value` VALUES (316, 24, 20, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_attr_value` VALUES (317, 23, 10, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (318, 23, 18, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (319, 23, 20, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (320, 23, 25, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (321, 23, 28, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (322, 23, 30, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_attr_value` VALUES (323, 21, 9, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (324, 21, 18, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (325, 21, 26, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (326, 21, 27, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (327, 21, 30, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (328, 21, 21, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_attr_value` VALUES (329, 22, 9, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (330, 22, 18, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (331, 22, 21, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (332, 22, 24, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (333, 22, 27, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (334, 22, 30, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_attr_value` VALUES (335, 25, 8, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (336, 25, 31, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (337, 25, 20, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (338, 25, 23, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (339, 25, 27, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (340, 25, 30, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_attr_value` VALUES (341, 26, 10, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (342, 26, 31, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (343, 26, 22, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (344, 26, 25, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (345, 26, 27, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (346, 26, 30, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_attr_value` VALUES (347, 27, 10, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (348, 27, 31, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (349, 27, 26, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (350, 27, 28, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (351, 27, 30, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (352, 27, 20, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (353, 28, 10, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (354, 28, 31, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (355, 28, 22, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (356, 28, 26, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (357, 28, 28, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (358, 28, 30, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_attr_value` VALUES (359, 29, 10, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (360, 29, 31, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (361, 29, 20, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (362, 29, 25, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (363, 29, 28, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (364, 29, 30, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_attr_value` VALUES (365, 30, 9, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (366, 30, 18, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (367, 30, 21, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (368, 30, 25, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (369, 30, 27, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (370, 30, 30, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_attr_value` VALUES (371, 31, 10, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_attr_value` VALUES (372, 32, 10, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_attr_value` VALUES (373, 33, 10, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (374, 33, 31, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (375, 33, 22, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (376, 33, 25, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (377, 33, 28, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (378, 33, 30, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_attr_value` VALUES (379, 34, 10, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (380, 34, 31, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (381, 34, 22, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (382, 34, 25, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (383, 34, 27, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (384, 34, 30, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (385, 35, 10, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_attr_value` VALUES (386, 36, 10, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (387, 36, 31, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (388, 36, 22, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (389, 36, 25, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (390, 36, 27, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (391, 36, 30, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_attr_value` VALUES (392, 36, 10, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (393, 36, 31, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (394, 36, 22, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (395, 36, 25, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (396, 36, 27, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (397, 36, 30, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_attr_value` VALUES (398, 38, 10, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (399, 37, 10, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (400, 37, 17, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (401, 38, 17, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (402, 38, 22, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (403, 37, 22, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (404, 37, 25, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (405, 38, 25, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (406, 37, 28, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (407, 38, 28, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (408, 37, 30, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (409, 38, 30, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_attr_value` VALUES (410, 39, 9, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (411, 39, 18, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (412, 39, 20, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (413, 39, 25, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (414, 39, 27, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_attr_value` VALUES (415, 39, 30, '2026-05-07 10:22:37', NULL, 0);

-- ----------------------------
-- Table structure for room_collect
-- ----------------------------
DROP TABLE IF EXISTS `room_collect`;
CREATE TABLE `room_collect`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `room_id` bigint NOT NULL COMMENT '房间ID',
  `collect_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '收藏状态：1-已收藏，0-已取消收藏',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '逻辑删除：0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_room`(`user_id` ASC, `room_id` ASC) USING BTREE COMMENT '用户房间唯一索引',
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE COMMENT '用户ID索引',
  INDEX `idx_room_id`(`room_id` ASC) USING BTREE COMMENT '房间ID索引',
  INDEX `idx_create_time`(`create_time` ASC) USING BTREE COMMENT '创建时间索引'
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '房间收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_collect
-- ----------------------------
INSERT INTO `room_collect` VALUES (1, 1, 2, 0, '2025-09-16 15:05:39', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (2, 1, 3, 0, '2025-09-16 15:05:39', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (4, 8, 8, 0, '2025-09-16 15:05:39', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (5, 1, 8, 0, '2025-09-16 15:05:39', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (6, 8, 3, 0, '2025-09-16 15:05:39', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (7, 8, 6, 0, '2025-09-16 17:09:00', '2025-09-16 17:20:07', 0);
INSERT INTO `room_collect` VALUES (8, 8, 4, 0, '2025-09-16 17:16:27', '2025-09-30 11:34:25', 0);
INSERT INTO `room_collect` VALUES (9, 8, 2, 0, '2025-09-16 17:17:33', '2025-09-30 11:34:25', 0);
INSERT INTO `room_collect` VALUES (10, 8, 9, 0, '2025-09-16 17:20:19', '2025-09-19 16:12:03', 0);
INSERT INTO `room_collect` VALUES (11, 8, 25, 0, '2025-09-18 17:27:05', '2025-09-30 11:34:25', 0);
INSERT INTO `room_collect` VALUES (12, 8, 20, 0, '2025-09-18 17:28:25', '2025-09-19 16:12:05', 0);
INSERT INTO `room_collect` VALUES (13, 8, 24, 1, '2025-09-19 16:12:30', '2025-09-19 16:54:55', 0);
INSERT INTO `room_collect` VALUES (14, 8, 23, 1, '2025-09-19 16:12:32', '2025-09-19 16:12:31', 0);
INSERT INTO `room_collect` VALUES (15, 8, 17, 0, '2025-09-19 16:55:05', '2025-09-30 11:34:25', 0);
INSERT INTO `room_collect` VALUES (16, 8, 21, 0, '2025-09-22 11:29:06', '2025-09-30 11:34:25', 0);
INSERT INTO `room_collect` VALUES (17, 8, 30, 1, '2025-09-30 10:00:37', '2025-10-22 09:55:45', 0);
INSERT INTO `room_collect` VALUES (18, 8, 28, 0, '2025-09-30 10:09:36', '2025-09-30 14:29:42', 0);
INSERT INTO `room_collect` VALUES (19, 8, 29, 0, '2025-09-30 14:04:21', '2025-09-30 14:29:40', 0);
INSERT INTO `room_collect` VALUES (20, 8, 27, 0, '2025-09-30 14:29:53', '2025-10-22 09:55:40', 0);
INSERT INTO `room_collect` VALUES (21, 8, 33, 0, '2025-11-11 14:34:25', '2025-11-27 11:48:01', 0);
INSERT INTO `room_collect` VALUES (22, 10, 32, 1, '2025-11-14 16:13:30', '2025-11-14 16:13:30', 0);
INSERT INTO `room_collect` VALUES (23, 8, 31, 0, '2025-11-27 11:48:21', '2026-03-07 13:17:10', 0);
INSERT INTO `room_collect` VALUES (24, 8, 36, 0, '2026-02-26 14:43:32', '2026-03-07 13:16:49', 0);

-- ----------------------------
-- Table structure for room_facility
-- ----------------------------
DROP TABLE IF EXISTS `room_facility`;
CREATE TABLE `room_facility`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间id',
  `facility_id` bigint NULL DEFAULT NULL COMMENT '房间设施id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 867 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间&配套关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_facility
-- ----------------------------
INSERT INTO `room_facility` VALUES (1, 2, 28, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_facility` VALUES (2, 2, 29, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_facility` VALUES (3, 2, 30, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_facility` VALUES (4, 3, 28, '2023-06-21 10:35:16', NULL, 1);
INSERT INTO `room_facility` VALUES (5, 3, 29, '2023-06-21 10:35:16', NULL, 1);
INSERT INTO `room_facility` VALUES (6, 3, 30, '2023-06-21 10:35:16', NULL, 1);
INSERT INTO `room_facility` VALUES (7, 3, 28, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_facility` VALUES (8, 3, 29, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_facility` VALUES (9, 3, 30, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_facility` VALUES (10, 3, 28, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_facility` VALUES (11, 3, 29, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_facility` VALUES (12, 3, 30, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_facility` VALUES (13, 4, 28, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_facility` VALUES (14, 4, 29, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_facility` VALUES (15, 4, 30, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_facility` VALUES (16, 7, 28, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_facility` VALUES (17, 2, 28, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_facility` VALUES (18, 2, 29, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_facility` VALUES (19, 2, 30, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_facility` VALUES (20, 2, 28, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (21, 2, 29, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (22, 2, 30, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (23, 2, 48, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (24, 2, 49, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (25, 2, 50, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (26, 2, 51, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (27, 2, 54, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (28, 2, 52, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (29, 2, 53, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (30, 2, 55, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (31, 2, 56, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_facility` VALUES (32, 2, 28, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (33, 2, 29, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (34, 2, 30, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (35, 2, 48, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (36, 2, 49, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (37, 2, 50, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (38, 2, 51, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (39, 2, 54, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (40, 2, 52, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (41, 2, 53, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (42, 2, 55, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (43, 2, 56, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_facility` VALUES (44, 3, 28, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (45, 3, 29, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (46, 3, 30, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (47, 3, 48, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (48, 3, 49, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (49, 3, 50, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (50, 3, 51, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (51, 3, 53, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (52, 3, 52, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (53, 3, 54, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (54, 3, 55, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (55, 3, 56, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_facility` VALUES (56, 2, 28, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (57, 2, 29, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (58, 2, 30, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (59, 2, 48, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (60, 2, 49, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (61, 2, 50, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (62, 2, 51, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (63, 2, 54, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (64, 2, 52, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (65, 2, 53, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (66, 2, 55, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (67, 2, 56, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_facility` VALUES (68, 3, 28, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (69, 3, 29, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (70, 3, 30, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (71, 3, 48, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (72, 3, 49, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (73, 3, 50, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (74, 3, 51, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (75, 3, 53, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (76, 3, 52, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (77, 3, 54, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (78, 3, 55, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (79, 3, 56, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_facility` VALUES (80, 8, 28, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (81, 8, 29, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (82, 8, 30, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (83, 8, 48, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (84, 8, 49, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (85, 8, 50, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (86, 8, 51, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (87, 8, 52, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (88, 8, 53, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (89, 8, 54, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (90, 8, 55, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (91, 8, 56, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_facility` VALUES (92, 9, 28, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (93, 9, 29, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (94, 9, 30, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (95, 9, 48, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (96, 9, 49, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (97, 9, 50, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (98, 9, 51, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (99, 9, 52, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (100, 9, 53, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (101, 9, 54, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (102, 9, 55, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (103, 9, 56, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_facility` VALUES (104, 10, 28, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (105, 10, 29, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (106, 10, 30, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (107, 10, 48, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (108, 10, 49, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (109, 10, 50, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (110, 10, 51, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (111, 10, 52, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (112, 10, 53, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (113, 10, 54, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (114, 10, 55, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (115, 10, 56, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_facility` VALUES (116, 2, 28, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (117, 2, 29, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (118, 2, 30, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (119, 2, 48, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (120, 2, 49, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (121, 2, 50, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (122, 2, 51, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (123, 2, 54, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (124, 2, 52, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (125, 2, 53, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (126, 2, 55, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (127, 2, 56, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_facility` VALUES (128, 9, 28, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (129, 9, 29, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (130, 9, 30, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (131, 9, 48, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (132, 9, 49, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (133, 9, 50, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (134, 9, 51, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (135, 9, 52, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (136, 9, 53, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (137, 9, 54, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (138, 9, 55, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (139, 9, 56, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_facility` VALUES (140, 9, 28, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (141, 9, 29, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (142, 9, 30, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (143, 9, 48, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (144, 9, 49, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (145, 9, 50, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (146, 9, 51, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (147, 9, 52, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (148, 9, 53, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (149, 9, 54, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (150, 9, 55, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (151, 9, 56, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_facility` VALUES (152, 11, 28, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (153, 11, 29, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (154, 11, 30, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (155, 11, 48, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (156, 11, 49, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (157, 11, 50, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (158, 11, 51, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (159, 11, 52, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (160, 11, 53, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (161, 11, 54, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (162, 11, 55, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (163, 11, 56, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_facility` VALUES (164, 12, 28, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (165, 12, 29, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (166, 12, 30, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (167, 12, 48, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (168, 12, 49, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (169, 12, 50, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (170, 12, 51, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (171, 12, 52, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (172, 12, 53, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (173, 12, 54, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (174, 12, 55, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (175, 12, 56, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_facility` VALUES (176, 13, 49, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (177, 13, 28, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (178, 13, 29, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (179, 13, 30, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (180, 13, 48, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (181, 13, 50, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (182, 13, 51, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (183, 13, 52, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (184, 13, 53, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (185, 13, 54, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (186, 13, 55, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (187, 13, 56, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_facility` VALUES (188, 11, 28, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (189, 11, 29, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (190, 11, 30, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (191, 11, 48, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (192, 11, 49, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (193, 11, 50, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (194, 11, 51, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (195, 11, 52, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (196, 11, 53, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (197, 11, 54, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (198, 11, 55, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (199, 11, 56, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_facility` VALUES (200, 14, 28, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (201, 14, 29, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (202, 14, 30, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (203, 14, 48, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (204, 14, 49, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (205, 14, 50, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (206, 14, 51, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (207, 14, 52, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (208, 14, 53, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (209, 14, 54, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (210, 14, 55, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (211, 14, 56, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_facility` VALUES (212, 15, 28, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (213, 15, 29, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (214, 15, 30, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (215, 15, 48, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (216, 15, 49, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (217, 15, 50, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (218, 15, 51, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (219, 15, 52, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (220, 15, 53, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (221, 15, 54, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (222, 15, 55, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (223, 15, 56, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_facility` VALUES (224, 12, 28, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (225, 12, 29, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (226, 12, 30, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (227, 12, 48, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (228, 12, 49, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (229, 12, 50, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (230, 12, 51, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (231, 12, 52, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (232, 12, 53, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (233, 12, 54, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (234, 12, 55, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (235, 12, 56, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_facility` VALUES (236, 16, 28, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (237, 16, 29, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (238, 16, 30, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (239, 16, 48, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (240, 16, 49, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (241, 16, 50, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (242, 16, 51, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (243, 16, 52, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (244, 16, 53, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (245, 16, 54, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (246, 16, 55, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (247, 16, 56, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_facility` VALUES (248, 17, 28, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (249, 17, 29, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (250, 17, 30, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (251, 17, 48, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (252, 17, 49, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (253, 17, 50, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (254, 17, 51, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (255, 17, 52, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (256, 17, 53, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (257, 17, 54, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (258, 17, 55, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (259, 17, 56, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_facility` VALUES (260, 2, 28, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (261, 2, 29, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (262, 2, 30, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (263, 2, 48, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (264, 2, 49, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (265, 2, 50, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (266, 2, 51, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (267, 2, 54, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (268, 2, 52, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (269, 2, 53, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (270, 2, 55, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (271, 2, 56, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_facility` VALUES (272, 3, 28, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (273, 3, 29, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (274, 3, 30, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (275, 3, 48, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (276, 3, 49, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (277, 3, 50, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (278, 3, 51, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (279, 3, 53, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (280, 3, 52, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (281, 3, 54, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (282, 3, 55, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (283, 3, 56, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_facility` VALUES (284, 8, 28, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (285, 8, 29, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (286, 8, 30, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (287, 8, 48, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (288, 8, 49, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (289, 8, 50, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (290, 8, 51, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (291, 8, 52, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (292, 8, 53, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (293, 8, 54, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (294, 8, 55, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (295, 8, 56, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_facility` VALUES (296, 9, 28, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (297, 9, 29, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (298, 9, 30, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (299, 9, 48, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (300, 9, 49, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (301, 9, 50, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (302, 9, 51, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (303, 9, 52, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (304, 9, 53, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (305, 9, 54, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (306, 9, 55, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (307, 9, 56, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_facility` VALUES (308, 9, 28, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (309, 9, 29, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (310, 9, 30, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (311, 9, 48, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (312, 9, 49, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (313, 9, 50, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (314, 9, 51, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (315, 9, 52, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (316, 9, 53, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (317, 9, 54, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (318, 9, 55, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (319, 9, 56, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_facility` VALUES (320, 10, 28, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (321, 10, 29, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (322, 10, 30, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (323, 10, 48, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (324, 10, 49, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (325, 10, 50, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (326, 10, 51, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (327, 10, 52, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (328, 10, 53, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (329, 10, 54, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (330, 10, 55, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (331, 10, 56, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_facility` VALUES (332, 11, 28, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (333, 11, 29, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (334, 11, 30, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (335, 11, 48, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (336, 11, 49, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (337, 11, 50, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (338, 11, 51, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (339, 11, 52, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (340, 11, 53, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (341, 11, 54, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (342, 11, 55, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (343, 11, 56, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_facility` VALUES (344, 12, 28, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (345, 12, 29, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (346, 12, 30, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (347, 12, 48, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (348, 12, 49, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (349, 12, 50, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (350, 12, 51, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (351, 12, 52, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (352, 12, 53, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (353, 12, 54, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (354, 12, 55, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (355, 12, 56, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_facility` VALUES (356, 13, 49, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (357, 13, 28, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (358, 13, 29, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (359, 13, 30, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (360, 13, 48, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (361, 13, 50, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (362, 13, 51, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (363, 13, 52, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (364, 13, 53, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (365, 13, 54, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (366, 13, 55, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (367, 13, 56, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_facility` VALUES (368, 14, 28, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (369, 14, 29, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (370, 14, 30, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (371, 14, 48, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (372, 14, 49, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (373, 14, 50, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (374, 14, 51, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (375, 14, 52, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (376, 14, 53, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (377, 14, 54, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (378, 14, 55, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (379, 14, 56, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_facility` VALUES (380, 15, 28, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (381, 15, 29, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (382, 15, 30, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (383, 15, 48, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (384, 15, 49, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (385, 15, 50, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (386, 15, 51, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (387, 15, 52, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (388, 15, 53, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (389, 15, 54, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (390, 15, 55, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (391, 15, 56, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_facility` VALUES (392, 16, 28, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (393, 16, 29, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (394, 16, 30, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (395, 16, 48, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (396, 16, 49, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (397, 16, 50, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (398, 16, 51, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (399, 16, 52, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (400, 16, 53, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (401, 16, 54, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (402, 16, 55, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (403, 16, 56, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_facility` VALUES (404, 17, 28, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (405, 17, 29, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (406, 17, 30, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (407, 17, 48, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (408, 17, 49, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (409, 17, 50, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (410, 17, 51, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (411, 17, 52, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (412, 17, 53, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (413, 17, 54, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (414, 17, 55, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (415, 17, 56, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_facility` VALUES (416, 2, 28, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (417, 2, 29, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (418, 2, 30, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (419, 2, 48, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (420, 2, 49, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (421, 2, 50, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (422, 2, 51, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (423, 2, 54, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (424, 2, 52, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (425, 2, 53, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (426, 2, 55, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (427, 2, 56, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_facility` VALUES (428, 3, 28, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (429, 3, 29, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (430, 3, 30, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (431, 3, 48, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (432, 3, 49, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (433, 3, 50, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (434, 3, 51, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (435, 3, 53, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (436, 3, 52, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (437, 3, 54, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (438, 3, 55, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (439, 3, 56, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_facility` VALUES (440, 8, 28, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (441, 8, 29, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (442, 8, 30, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (443, 8, 48, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (444, 8, 49, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (445, 8, 50, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (446, 8, 51, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (447, 8, 52, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (448, 8, 53, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (449, 8, 54, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (450, 8, 55, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (451, 8, 56, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_facility` VALUES (452, 9, 28, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (453, 9, 29, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (454, 9, 30, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (455, 9, 48, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (456, 9, 49, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (457, 9, 50, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (458, 9, 51, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (459, 9, 52, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (460, 9, 53, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (461, 9, 54, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (462, 9, 55, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (463, 9, 56, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_facility` VALUES (464, 10, 28, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (465, 10, 29, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (466, 10, 30, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (467, 10, 48, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (468, 10, 49, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (469, 10, 50, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (470, 10, 51, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (471, 10, 52, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (472, 10, 53, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (473, 10, 54, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (474, 10, 55, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (475, 10, 56, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_facility` VALUES (476, 12, 28, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (477, 12, 29, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (478, 12, 30, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (479, 12, 48, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (480, 12, 49, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (481, 12, 50, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (482, 12, 51, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (483, 12, 52, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (484, 12, 53, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (485, 12, 54, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (486, 12, 55, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (487, 12, 56, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_facility` VALUES (488, 11, 28, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (489, 11, 29, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (490, 11, 30, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (491, 11, 48, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (492, 11, 49, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (493, 11, 50, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (494, 11, 51, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (495, 11, 52, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (496, 11, 53, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (497, 11, 54, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (498, 11, 55, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (499, 11, 56, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_facility` VALUES (500, 13, 49, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (501, 13, 28, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (502, 13, 29, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (503, 13, 30, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (504, 13, 48, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (505, 13, 50, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (506, 13, 51, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (507, 13, 52, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (508, 13, 53, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (509, 13, 54, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (510, 13, 55, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (511, 13, 56, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_facility` VALUES (512, 14, 28, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (513, 14, 29, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (514, 14, 30, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (515, 14, 48, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (516, 14, 49, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (517, 14, 50, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (518, 14, 51, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (519, 14, 52, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (520, 14, 53, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (521, 14, 54, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (522, 14, 55, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (523, 14, 56, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_facility` VALUES (524, 15, 28, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (525, 15, 29, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (526, 15, 30, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (527, 15, 48, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (528, 15, 49, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (529, 15, 50, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (530, 15, 51, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (531, 15, 52, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (532, 15, 53, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (533, 15, 54, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (534, 15, 55, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (535, 15, 56, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_facility` VALUES (536, 16, 28, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (537, 16, 29, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (538, 16, 30, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (539, 16, 48, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (540, 16, 49, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (541, 16, 50, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (542, 16, 51, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (543, 16, 52, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (544, 16, 53, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (545, 16, 54, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (546, 16, 55, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (547, 16, 56, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_facility` VALUES (548, 17, 28, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (549, 17, 29, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (550, 17, 30, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (551, 17, 48, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (552, 17, 49, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (553, 17, 50, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (554, 17, 51, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (555, 17, 52, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (556, 17, 53, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (557, 17, 54, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (558, 17, 55, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (559, 17, 56, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_facility` VALUES (560, 2, 28, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (561, 2, 29, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (562, 2, 30, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (563, 2, 48, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (564, 2, 49, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (565, 2, 50, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (566, 2, 51, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (567, 2, 54, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (568, 2, 52, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (569, 2, 53, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (570, 2, 55, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (571, 2, 56, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_facility` VALUES (572, 3, 28, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (573, 3, 29, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (574, 3, 30, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (575, 3, 48, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (576, 3, 49, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (577, 3, 50, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (578, 3, 51, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (579, 3, 53, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (580, 3, 52, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (581, 3, 54, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (582, 3, 55, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (583, 3, 56, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_facility` VALUES (584, 8, 28, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (585, 8, 29, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (586, 8, 30, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (587, 8, 48, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (588, 8, 49, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (589, 8, 50, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (590, 8, 51, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (591, 8, 52, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (592, 8, 53, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (593, 8, 54, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (594, 8, 55, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (595, 8, 56, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_facility` VALUES (596, 9, 28, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (597, 9, 29, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (598, 9, 30, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (599, 9, 48, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (600, 9, 49, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (601, 9, 50, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (602, 9, 51, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (603, 9, 52, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (604, 9, 53, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (605, 9, 54, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (606, 9, 55, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (607, 9, 56, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (608, 19, 29, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_facility` VALUES (609, 19, 50, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_facility` VALUES (610, 19, 48, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_facility` VALUES (611, 19, 49, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_facility` VALUES (612, 12, 28, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (613, 12, 29, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (614, 12, 30, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (615, 12, 48, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (616, 12, 49, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (617, 12, 50, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (618, 12, 51, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (619, 12, 52, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (620, 12, 53, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (621, 12, 54, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (622, 12, 55, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (623, 12, 56, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_facility` VALUES (624, 11, 28, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (625, 11, 29, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (626, 11, 30, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (627, 11, 48, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (628, 11, 49, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (629, 11, 50, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (630, 11, 51, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (631, 11, 52, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (632, 11, 53, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (633, 11, 54, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (634, 11, 55, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (635, 11, 56, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_facility` VALUES (636, 15, 28, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (637, 15, 29, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (638, 15, 30, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (639, 15, 48, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (640, 15, 49, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (641, 15, 50, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (642, 15, 51, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (643, 15, 52, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (644, 15, 53, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (645, 15, 54, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (646, 15, 55, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (647, 15, 56, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_facility` VALUES (648, 16, 28, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (649, 16, 29, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (650, 16, 30, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (651, 16, 48, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (652, 16, 49, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (653, 16, 50, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (654, 16, 51, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (655, 16, 52, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (656, 16, 53, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (657, 16, 54, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (658, 16, 55, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (659, 16, 56, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_facility` VALUES (660, 17, 28, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (661, 17, 29, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (662, 17, 30, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (663, 17, 48, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (664, 17, 49, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (665, 17, 50, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (666, 17, 51, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (667, 17, 52, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (668, 17, 53, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (669, 17, 54, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (670, 17, 55, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (671, 17, 56, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_facility` VALUES (672, 20, 50, '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `room_facility` VALUES (673, 21, 49, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_facility` VALUES (674, 21, 29, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_facility` VALUES (675, 21, 51, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_facility` VALUES (676, 22, 30, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_facility` VALUES (677, 22, 51, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_facility` VALUES (678, 22, 28, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_facility` VALUES (679, 22, 49, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_facility` VALUES (680, 21, 49, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_facility` VALUES (681, 21, 29, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_facility` VALUES (682, 21, 51, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_facility` VALUES (683, 22, 30, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_facility` VALUES (684, 22, 51, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_facility` VALUES (685, 22, 28, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_facility` VALUES (686, 22, 49, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_facility` VALUES (687, 23, 30, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_facility` VALUES (688, 23, 48, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_facility` VALUES (689, 23, 50, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_facility` VALUES (690, 23, 49, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_facility` VALUES (691, 23, 29, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_facility` VALUES (692, 24, 48, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (693, 24, 29, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (694, 24, 49, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (695, 24, 52, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (696, 24, 50, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (697, 24, 51, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_facility` VALUES (698, 19, 29, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_facility` VALUES (699, 19, 50, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_facility` VALUES (700, 19, 48, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_facility` VALUES (701, 19, 49, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_facility` VALUES (702, 21, 49, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_facility` VALUES (703, 21, 29, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_facility` VALUES (704, 21, 51, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_facility` VALUES (705, 20, 50, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_facility` VALUES (706, 24, 48, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (707, 24, 29, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (708, 24, 49, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (709, 24, 52, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (710, 24, 50, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (711, 24, 51, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_facility` VALUES (712, 23, 30, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_facility` VALUES (713, 23, 48, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_facility` VALUES (714, 23, 50, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_facility` VALUES (715, 23, 49, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_facility` VALUES (716, 23, 29, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_facility` VALUES (717, 21, 49, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_facility` VALUES (718, 21, 29, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_facility` VALUES (719, 21, 51, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_facility` VALUES (720, 22, 30, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_facility` VALUES (721, 22, 51, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_facility` VALUES (722, 22, 28, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_facility` VALUES (723, 22, 49, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_facility` VALUES (724, 25, 28, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (725, 25, 30, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (726, 25, 49, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (727, 25, 52, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (728, 25, 48, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (729, 25, 29, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (730, 25, 51, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (731, 25, 50, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (732, 25, 53, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (733, 25, 54, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (734, 25, 55, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (735, 25, 56, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_facility` VALUES (736, 26, 28, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (737, 26, 29, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (738, 26, 48, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (739, 26, 30, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (740, 26, 49, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (741, 26, 50, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (742, 26, 51, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (743, 26, 52, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (744, 26, 53, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (745, 26, 54, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (746, 26, 56, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (747, 26, 55, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_facility` VALUES (748, 27, 28, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (749, 27, 29, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (750, 27, 30, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (751, 27, 48, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (752, 27, 49, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (753, 27, 50, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (754, 27, 51, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (755, 27, 52, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (756, 27, 53, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (757, 27, 54, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (758, 27, 55, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (759, 27, 56, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_facility` VALUES (760, 28, 28, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (761, 28, 29, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (762, 28, 30, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (763, 28, 48, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (764, 28, 49, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (765, 28, 50, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (766, 28, 51, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (767, 28, 54, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (768, 28, 53, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (769, 28, 52, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (770, 28, 55, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (771, 28, 56, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_facility` VALUES (772, 29, 28, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (773, 29, 30, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (774, 29, 50, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (775, 29, 51, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (776, 29, 48, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (777, 29, 29, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (778, 29, 49, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (779, 29, 55, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_facility` VALUES (780, 30, 28, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (781, 30, 30, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (782, 30, 48, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (783, 30, 49, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (784, 30, 29, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (785, 30, 50, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (786, 30, 51, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_facility` VALUES (787, 31, 48, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_facility` VALUES (788, 31, 51, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_facility` VALUES (789, 31, 49, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_facility` VALUES (790, 31, 29, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_facility` VALUES (791, 31, 54, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_facility` VALUES (792, 32, 29, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (793, 32, 30, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (794, 32, 28, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (795, 32, 48, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (796, 32, 52, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (797, 32, 53, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (798, 32, 54, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (799, 32, 55, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (800, 32, 50, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (801, 32, 49, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (802, 32, 51, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (803, 32, 56, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_facility` VALUES (804, 33, 28, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (805, 33, 30, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (806, 33, 48, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (807, 33, 29, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (808, 33, 49, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (809, 33, 50, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (810, 33, 51, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (811, 33, 52, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (812, 33, 53, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (813, 33, 54, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (814, 33, 55, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (815, 33, 56, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_facility` VALUES (816, 34, 29, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_facility` VALUES (817, 34, 49, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_facility` VALUES (818, 34, 30, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_facility` VALUES (819, 34, 48, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_facility` VALUES (820, 34, 28, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_facility` VALUES (821, 35, 49, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_facility` VALUES (822, 35, 28, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_facility` VALUES (823, 35, 29, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_facility` VALUES (824, 35, 30, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_facility` VALUES (825, 35, 50, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_facility` VALUES (826, 36, 28, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (827, 36, 29, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (828, 36, 30, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (829, 36, 48, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (830, 36, 49, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (831, 36, 50, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (832, 36, 52, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (833, 36, 51, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (834, 36, 53, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (835, 36, 54, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (836, 36, 55, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (837, 36, 56, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_facility` VALUES (838, 36, 28, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (839, 36, 29, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (840, 36, 30, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (841, 36, 48, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (842, 36, 49, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (843, 36, 50, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (844, 36, 52, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (845, 36, 51, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (846, 36, 53, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (847, 36, 54, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (848, 36, 55, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (849, 36, 56, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_facility` VALUES (850, 37, 28, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (851, 38, 28, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (852, 37, 30, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (853, 38, 30, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (854, 37, 51, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (855, 38, 51, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (856, 37, 53, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (857, 37, 54, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (858, 38, 53, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (859, 38, 54, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_facility` VALUES (860, 39, 28, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (861, 39, 29, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (862, 39, 48, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (863, 39, 30, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (864, 39, 49, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (865, 39, 50, '2026-05-07 10:22:37', NULL, 0);
INSERT INTO `room_facility` VALUES (866, 39, 51, '2026-05-07 10:22:37', NULL, 0);

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '房间id',
  `room_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `rent` decimal(16, 2) NULL DEFAULT NULL COMMENT '租金（元/月）',
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '所属公寓id',
  `is_release` tinyint NULL DEFAULT NULL COMMENT '是否发布',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES (2, '101', 2500.00, 9, 1, '2023-06-20 19:14:46', '2024-09-20 14:18:36', 0);
INSERT INTO `room_info` VALUES (3, '102', 3000.00, 10, 1, '2023-06-21 10:35:16', '2024-11-28 10:57:04', 0);
INSERT INTO `room_info` VALUES (4, '102', 3000.00, 10, 1, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_info` VALUES (7, '301', 3200.00, 10, 1, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_info` VALUES (8, '102', 2000.00, 9, 1, '2023-08-13 23:39:37', '2025-09-03 10:46:50', 0);
INSERT INTO `room_info` VALUES (9, '103', 2000.00, 9, 1, '2023-08-13 23:40:50', '2025-09-03 10:48:06', 0);
INSERT INTO `room_info` VALUES (10, '104', 3000.00, 9, 1, '2023-08-13 23:42:02', '2025-09-09 15:31:51', 1);
INSERT INTO `room_info` VALUES (11, '105', 4500.00, 9, 1, '2023-08-13 23:57:42', '2025-09-09 15:32:23', 0);
INSERT INTO `room_info` VALUES (12, '106', 3500.00, 9, 1, '2023-08-13 23:58:53', '2025-09-09 16:21:06', 1);
INSERT INTO `room_info` VALUES (13, '101', 6000.00, 10, 1, '2023-08-13 23:59:50', '2025-09-09 15:30:53', 1);
INSERT INTO `room_info` VALUES (14, '103', 4500.00, 10, 1, '2023-08-14 00:06:39', '2025-09-09 15:31:41', 1);
INSERT INTO `room_info` VALUES (15, '104', 3500.00, 10, 1, '2023-08-14 00:07:43', '2025-09-09 15:32:38', 0);
INSERT INTO `room_info` VALUES (16, '105', 3500.00, 10, 1, '2023-08-14 00:09:07', '2025-09-09 15:32:56', 0);
INSERT INTO `room_info` VALUES (17, '106', 6000.00, 10, 1, '2023-08-14 10:36:19', '2025-09-09 15:33:05', 0);
INSERT INTO `room_info` VALUES (18, '327', 2000.00, 9, 1, '2024-09-15 16:08:28', '2024-09-15 16:10:52', 1);
INSERT INTO `room_info` VALUES (19, '123645', 2000.00, 11, 1, '2025-09-09 10:44:10', '2025-09-11 14:29:32', 0);
INSERT INTO `room_info` VALUES (20, '110', 1300.00, 108, 1, '2025-09-09 16:38:01', '2025-09-11 14:30:33', 0);
INSERT INTO `room_info` VALUES (21, '111', 1500.00, 116, 1, '2025-09-09 16:40:08', '2025-09-11 14:31:33', 0);
INSERT INTO `room_info` VALUES (22, '112', 500.00, 110, 1, '2025-09-09 16:49:23', '2025-09-11 14:31:44', 0);
INSERT INTO `room_info` VALUES (23, '113', 800.00, 134, 1, '2025-09-11 14:28:15', '2025-09-11 14:31:22', 0);
INSERT INTO `room_info` VALUES (24, '114', 1000.00, 134, 1, '2025-09-11 14:28:51', '2025-09-11 14:30:58', 0);
INSERT INTO `room_info` VALUES (25, '115', 2000.00, 135, 1, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_info` VALUES (26, '111', 1500.00, 136, 1, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_info` VALUES (27, '222', 2213.00, 136, 1, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_info` VALUES (28, '1156', 1600.00, 137, 1, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_info` VALUES (29, '1189', 4000.00, 137, 1, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_info` VALUES (30, '1100', 2000.00, 138, 0, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_info` VALUES (31, 'q1', 2000.00, 139, 1, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_info` VALUES (32, 'q2', 2000.00, 140, 1, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_info` VALUES (33, 'x1', 1500.00, 75, 1, '2025-10-28 10:23:52', NULL, 0);
INSERT INTO `room_info` VALUES (34, '543', 4543.00, 142, 1, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_info` VALUES (35, '1', 1500.00, 143, 1, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_info` VALUES (36, '1001', 2500.00, 144, 1, '2026-02-03 14:11:51', '2026-02-26 14:39:41', 0);
INSERT INTO `room_info` VALUES (37, '1005', 2500.00, 12, 1, '2026-02-26 16:39:53', '2026-02-26 16:44:08', 1);
INSERT INTO `room_info` VALUES (38, '1005', 2500.00, 12, 1, '2026-02-26 16:39:53', '2026-02-26 16:44:15', 1);
INSERT INTO `room_info` VALUES (39, '1001', 1500.00, 145, 1, '2026-05-07 10:22:37', NULL, 0);

-- ----------------------------
-- Table structure for room_label
-- ----------------------------
DROP TABLE IF EXISTS `room_label`;
CREATE TABLE `room_label`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间id',
  `label_id` bigint NULL DEFAULT NULL COMMENT '标签id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间&标签关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_label
-- ----------------------------
INSERT INTO `room_label` VALUES (13, 2, 15, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_label` VALUES (14, 2, 16, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_label` VALUES (15, 3, 5, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_label` VALUES (16, 3, 15, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_label` VALUES (17, 3, 16, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_label` VALUES (18, 8, 16, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_label` VALUES (19, 8, 15, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_label` VALUES (20, 8, 6, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_label` VALUES (21, 9, 7, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_label` VALUES (22, 9, 15, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_label` VALUES (23, 9, 16, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_label` VALUES (24, 10, 5, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_label` VALUES (25, 10, 16, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_label` VALUES (26, 10, 15, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_label` VALUES (27, 2, 15, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_label` VALUES (28, 2, 16, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_label` VALUES (29, 9, 7, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_label` VALUES (30, 9, 15, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_label` VALUES (31, 9, 16, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_label` VALUES (32, 9, 7, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_label` VALUES (33, 9, 15, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_label` VALUES (34, 9, 16, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_label` VALUES (35, 11, 15, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_label` VALUES (36, 11, 5, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_label` VALUES (37, 11, 16, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_label` VALUES (38, 12, 6, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_label` VALUES (39, 12, 15, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_label` VALUES (40, 12, 16, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_label` VALUES (41, 13, 16, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_label` VALUES (42, 13, 15, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_label` VALUES (43, 13, 5, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_label` VALUES (44, 11, 5, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_label` VALUES (45, 11, 15, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_label` VALUES (46, 11, 16, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_label` VALUES (47, 14, 5, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_label` VALUES (48, 14, 15, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_label` VALUES (49, 14, 16, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_label` VALUES (50, 15, 5, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_label` VALUES (51, 15, 15, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_label` VALUES (52, 15, 16, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_label` VALUES (53, 12, 6, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_label` VALUES (54, 12, 15, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_label` VALUES (55, 12, 16, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_label` VALUES (56, 16, 7, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_label` VALUES (57, 16, 15, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_label` VALUES (58, 16, 16, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_label` VALUES (59, 17, 5, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_label` VALUES (60, 17, 15, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_label` VALUES (61, 17, 16, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_label` VALUES (62, 2, 15, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_label` VALUES (63, 2, 16, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_label` VALUES (64, 3, 5, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_label` VALUES (65, 3, 15, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_label` VALUES (66, 3, 16, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_label` VALUES (67, 8, 6, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_label` VALUES (68, 8, 15, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_label` VALUES (69, 8, 16, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_label` VALUES (70, 9, 7, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_label` VALUES (71, 9, 15, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_label` VALUES (72, 9, 16, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_label` VALUES (73, 9, 7, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_label` VALUES (74, 9, 15, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_label` VALUES (75, 9, 16, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_label` VALUES (76, 10, 5, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_label` VALUES (77, 10, 15, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_label` VALUES (78, 10, 16, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_label` VALUES (79, 11, 5, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_label` VALUES (80, 11, 15, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_label` VALUES (81, 11, 16, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_label` VALUES (82, 12, 6, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_label` VALUES (83, 12, 15, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_label` VALUES (84, 12, 16, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_label` VALUES (85, 13, 5, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_label` VALUES (86, 13, 15, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_label` VALUES (87, 13, 16, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_label` VALUES (88, 14, 5, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_label` VALUES (89, 14, 15, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_label` VALUES (90, 14, 16, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_label` VALUES (91, 15, 5, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_label` VALUES (92, 15, 15, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_label` VALUES (93, 15, 16, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_label` VALUES (94, 16, 7, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_label` VALUES (95, 16, 15, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_label` VALUES (96, 16, 16, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_label` VALUES (97, 17, 5, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_label` VALUES (98, 17, 15, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_label` VALUES (99, 17, 16, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_label` VALUES (100, 2, 15, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_label` VALUES (101, 2, 16, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_label` VALUES (102, 3, 5, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_label` VALUES (103, 3, 15, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_label` VALUES (104, 3, 16, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_label` VALUES (105, 8, 6, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_label` VALUES (106, 8, 15, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_label` VALUES (107, 8, 16, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_label` VALUES (108, 9, 7, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_label` VALUES (109, 9, 15, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_label` VALUES (110, 9, 16, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_label` VALUES (111, 10, 5, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_label` VALUES (112, 10, 15, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_label` VALUES (113, 10, 16, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_label` VALUES (114, 12, 6, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_label` VALUES (115, 12, 15, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_label` VALUES (116, 12, 16, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_label` VALUES (117, 11, 5, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_label` VALUES (118, 11, 15, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_label` VALUES (119, 11, 16, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_label` VALUES (120, 13, 5, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_label` VALUES (121, 13, 15, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_label` VALUES (122, 13, 16, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_label` VALUES (123, 14, 5, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_label` VALUES (124, 14, 15, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_label` VALUES (125, 14, 16, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_label` VALUES (126, 15, 5, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_label` VALUES (127, 15, 15, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_label` VALUES (128, 15, 16, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_label` VALUES (129, 16, 7, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_label` VALUES (130, 16, 15, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_label` VALUES (131, 16, 16, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_label` VALUES (132, 17, 5, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_label` VALUES (133, 17, 15, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_label` VALUES (134, 17, 16, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_label` VALUES (135, 2, 15, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_label` VALUES (136, 2, 16, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_label` VALUES (137, 3, 5, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_label` VALUES (138, 3, 15, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_label` VALUES (139, 3, 16, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_label` VALUES (140, 8, 6, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_label` VALUES (141, 8, 15, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_label` VALUES (142, 8, 16, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_label` VALUES (143, 9, 7, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (144, 9, 15, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (145, 9, 16, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (146, 19, 5, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_label` VALUES (147, 19, 10, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_label` VALUES (148, 12, 6, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_label` VALUES (149, 12, 15, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_label` VALUES (150, 12, 16, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_label` VALUES (151, 11, 5, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_label` VALUES (152, 11, 15, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_label` VALUES (153, 11, 16, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_label` VALUES (154, 15, 5, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_label` VALUES (155, 15, 15, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_label` VALUES (156, 15, 16, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_label` VALUES (157, 16, 7, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_label` VALUES (158, 16, 15, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_label` VALUES (159, 16, 16, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_label` VALUES (160, 17, 5, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_label` VALUES (161, 17, 15, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_label` VALUES (162, 17, 16, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_label` VALUES (163, 20, 15, '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `room_label` VALUES (164, 21, 5, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_label` VALUES (165, 21, 16, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_label` VALUES (166, 21, 15, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_label` VALUES (167, 22, 6, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_label` VALUES (168, 22, 15, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_label` VALUES (169, 22, 16, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_label` VALUES (170, 21, 5, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_label` VALUES (171, 21, 15, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_label` VALUES (172, 21, 16, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_label` VALUES (173, 22, 6, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_label` VALUES (174, 22, 15, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_label` VALUES (175, 22, 16, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_label` VALUES (176, 23, 7, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_label` VALUES (177, 23, 5, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_label` VALUES (178, 23, 10, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_label` VALUES (179, 24, 6, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_label` VALUES (180, 19, 5, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_label` VALUES (181, 21, 15, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_label` VALUES (182, 21, 16, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_label` VALUES (183, 21, 5, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_label` VALUES (184, 20, 15, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_label` VALUES (185, 20, 16, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_label` VALUES (186, 20, 7, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_label` VALUES (187, 24, 6, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_label` VALUES (188, 23, 5, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_label` VALUES (189, 23, 16, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_label` VALUES (190, 23, 15, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_label` VALUES (191, 21, 15, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_label` VALUES (192, 21, 16, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_label` VALUES (193, 21, 10, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_label` VALUES (194, 22, 15, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_label` VALUES (195, 22, 16, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_label` VALUES (196, 22, 10, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_label` VALUES (197, 25, 5, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_label` VALUES (198, 25, 15, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_label` VALUES (199, 25, 16, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_label` VALUES (200, 26, 6, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_label` VALUES (201, 26, 16, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_label` VALUES (202, 26, 15, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_label` VALUES (203, 27, 5, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_label` VALUES (204, 28, 6, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (205, 28, 15, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (206, 28, 16, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_label` VALUES (207, 29, 5, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_label` VALUES (208, 29, 15, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_label` VALUES (209, 29, 16, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_label` VALUES (210, 30, 10, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_label` VALUES (211, 30, 16, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_label` VALUES (212, 30, 15, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_label` VALUES (213, 31, 7, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_label` VALUES (214, 32, 10, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_label` VALUES (215, 33, 5, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_label` VALUES (216, 34, 6, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_label` VALUES (217, 35, 7, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_label` VALUES (218, 35, 16, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_label` VALUES (219, 36, 5, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_label` VALUES (220, 36, 15, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_label` VALUES (221, 36, 16, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_label` VALUES (222, 36, 5, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_label` VALUES (223, 36, 15, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_label` VALUES (224, 36, 16, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_label` VALUES (225, 38, 6, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (226, 37, 6, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (227, 37, 16, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (228, 38, 16, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (229, 37, 15, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (230, 38, 15, '2026-02-26 16:39:53', NULL, 1);
INSERT INTO `room_label` VALUES (231, 39, 6, '2026-05-07 10:22:38', NULL, 0);
INSERT INTO `room_label` VALUES (232, 39, 15, '2026-05-07 10:22:38', NULL, 0);

-- ----------------------------
-- Table structure for room_lease_term
-- ----------------------------
DROP TABLE IF EXISTS `room_lease_term`;
CREATE TABLE `room_lease_term`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间id',
  `lease_term_id` bigint NULL DEFAULT NULL COMMENT '租期id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 292 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间租期管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_lease_term
-- ----------------------------
INSERT INTO `room_lease_term` VALUES (1, 7, 1, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_lease_term` VALUES (2, 7, 3, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_lease_term` VALUES (3, 7, 4, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_lease_term` VALUES (4, 7, 5, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_lease_term` VALUES (5, 2, 3, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (6, 2, 3, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (7, 2, 1, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (8, 2, 4, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (9, 2, 6, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (10, 2, 1, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (11, 2, 3, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (12, 2, 4, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (13, 2, 6, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (14, 3, 1, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (15, 3, 3, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (16, 3, 4, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (17, 3, 6, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (18, 2, 1, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (19, 2, 3, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (20, 2, 4, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (21, 2, 6, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (22, 3, 1, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (23, 3, 3, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (24, 3, 4, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (25, 3, 6, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (26, 8, 1, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_lease_term` VALUES (27, 8, 3, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_lease_term` VALUES (28, 8, 4, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_lease_term` VALUES (29, 8, 6, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_lease_term` VALUES (30, 9, 1, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (31, 9, 3, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (32, 9, 4, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (33, 9, 6, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (34, 10, 1, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_lease_term` VALUES (35, 10, 3, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_lease_term` VALUES (36, 10, 4, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_lease_term` VALUES (37, 10, 6, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_lease_term` VALUES (38, 2, 1, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (39, 2, 3, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (40, 2, 4, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (41, 2, 6, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (42, 9, 1, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_lease_term` VALUES (43, 9, 3, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_lease_term` VALUES (44, 9, 4, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_lease_term` VALUES (45, 9, 6, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_lease_term` VALUES (46, 9, 1, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_lease_term` VALUES (47, 9, 3, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_lease_term` VALUES (48, 9, 4, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_lease_term` VALUES (49, 9, 6, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_lease_term` VALUES (50, 11, 1, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (51, 11, 3, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (52, 11, 4, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (53, 11, 6, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (54, 12, 1, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (55, 12, 3, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (56, 12, 4, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (57, 12, 6, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (58, 13, 1, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (59, 13, 3, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (60, 13, 4, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (61, 13, 6, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_lease_term` VALUES (62, 11, 1, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (63, 11, 3, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (64, 11, 4, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (65, 11, 6, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_lease_term` VALUES (66, 14, 1, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_lease_term` VALUES (67, 14, 3, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_lease_term` VALUES (68, 14, 4, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_lease_term` VALUES (69, 14, 6, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_lease_term` VALUES (70, 15, 1, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_lease_term` VALUES (71, 15, 3, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_lease_term` VALUES (72, 15, 4, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_lease_term` VALUES (73, 15, 6, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_lease_term` VALUES (74, 12, 1, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (75, 12, 3, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (76, 12, 4, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (77, 12, 6, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_lease_term` VALUES (78, 16, 1, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_lease_term` VALUES (79, 16, 3, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_lease_term` VALUES (80, 16, 4, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_lease_term` VALUES (81, 16, 6, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_lease_term` VALUES (82, 17, 1, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_lease_term` VALUES (83, 17, 3, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_lease_term` VALUES (84, 17, 4, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_lease_term` VALUES (85, 17, 6, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_lease_term` VALUES (86, 2, 1, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_lease_term` VALUES (87, 2, 3, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_lease_term` VALUES (88, 2, 4, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_lease_term` VALUES (89, 2, 6, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_lease_term` VALUES (90, 3, 1, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (91, 3, 3, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (92, 3, 4, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (93, 3, 6, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (94, 8, 1, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (95, 8, 3, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (96, 8, 4, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (97, 8, 6, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (98, 9, 1, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (99, 9, 3, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (100, 9, 4, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (101, 9, 6, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_lease_term` VALUES (102, 9, 1, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (103, 9, 3, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (104, 9, 4, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (105, 9, 6, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_lease_term` VALUES (106, 10, 1, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_lease_term` VALUES (107, 10, 3, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_lease_term` VALUES (108, 10, 4, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_lease_term` VALUES (109, 10, 6, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_lease_term` VALUES (110, 11, 1, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (111, 11, 3, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (112, 11, 4, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (113, 11, 6, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_lease_term` VALUES (114, 12, 1, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (115, 12, 3, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (116, 12, 4, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (117, 12, 6, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (118, 13, 1, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_lease_term` VALUES (119, 13, 3, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_lease_term` VALUES (120, 13, 4, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_lease_term` VALUES (121, 13, 6, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_lease_term` VALUES (122, 14, 1, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (123, 14, 3, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (124, 14, 4, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (125, 14, 6, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (126, 15, 1, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_lease_term` VALUES (127, 15, 3, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_lease_term` VALUES (128, 15, 4, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_lease_term` VALUES (129, 15, 6, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_lease_term` VALUES (130, 16, 1, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (131, 16, 3, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (132, 16, 4, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (133, 16, 6, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (134, 17, 1, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (135, 17, 3, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (136, 17, 4, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (137, 17, 6, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (138, 2, 1, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_lease_term` VALUES (139, 2, 3, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_lease_term` VALUES (140, 2, 4, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_lease_term` VALUES (141, 2, 6, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_lease_term` VALUES (142, 3, 1, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_lease_term` VALUES (143, 3, 3, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_lease_term` VALUES (144, 3, 4, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_lease_term` VALUES (145, 3, 6, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_lease_term` VALUES (146, 8, 1, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (147, 8, 3, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (148, 8, 4, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (149, 8, 6, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_lease_term` VALUES (150, 9, 1, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (151, 9, 3, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (152, 9, 4, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (153, 9, 6, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (154, 10, 1, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (155, 10, 3, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (156, 10, 4, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (157, 10, 6, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_lease_term` VALUES (158, 12, 1, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (159, 12, 3, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (160, 12, 4, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (161, 12, 6, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_lease_term` VALUES (162, 11, 1, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (163, 11, 3, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (164, 11, 4, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (165, 11, 6, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (166, 13, 1, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_lease_term` VALUES (167, 13, 3, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_lease_term` VALUES (168, 13, 4, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_lease_term` VALUES (169, 13, 6, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_lease_term` VALUES (170, 14, 1, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (171, 14, 3, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (172, 14, 4, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (173, 14, 6, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_lease_term` VALUES (174, 15, 1, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (175, 15, 3, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (176, 15, 4, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (177, 15, 6, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_lease_term` VALUES (178, 16, 1, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_lease_term` VALUES (179, 16, 3, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_lease_term` VALUES (180, 16, 4, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_lease_term` VALUES (181, 16, 6, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_lease_term` VALUES (182, 17, 1, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_lease_term` VALUES (183, 17, 3, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_lease_term` VALUES (184, 17, 4, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_lease_term` VALUES (185, 17, 6, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_lease_term` VALUES (186, 2, 1, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_lease_term` VALUES (187, 2, 3, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_lease_term` VALUES (188, 2, 4, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_lease_term` VALUES (189, 2, 6, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_lease_term` VALUES (190, 3, 1, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_lease_term` VALUES (191, 3, 3, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_lease_term` VALUES (192, 3, 4, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_lease_term` VALUES (193, 3, 6, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_lease_term` VALUES (194, 8, 1, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_lease_term` VALUES (195, 8, 3, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_lease_term` VALUES (196, 8, 4, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_lease_term` VALUES (197, 8, 6, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_lease_term` VALUES (198, 9, 1, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_lease_term` VALUES (199, 9, 3, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_lease_term` VALUES (200, 9, 4, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_lease_term` VALUES (201, 9, 6, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_lease_term` VALUES (202, 19, 3, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_lease_term` VALUES (203, 12, 1, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (204, 12, 3, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (205, 12, 4, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (206, 12, 6, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (207, 11, 1, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_lease_term` VALUES (208, 11, 3, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_lease_term` VALUES (209, 11, 4, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_lease_term` VALUES (210, 11, 6, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_lease_term` VALUES (211, 15, 1, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_lease_term` VALUES (212, 15, 3, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_lease_term` VALUES (213, 15, 4, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_lease_term` VALUES (214, 15, 6, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_lease_term` VALUES (215, 16, 1, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_lease_term` VALUES (216, 16, 3, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_lease_term` VALUES (217, 16, 4, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_lease_term` VALUES (218, 16, 6, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_lease_term` VALUES (219, 17, 1, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_lease_term` VALUES (220, 17, 3, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_lease_term` VALUES (221, 17, 4, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_lease_term` VALUES (222, 17, 6, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_lease_term` VALUES (223, 20, 1, '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `room_lease_term` VALUES (224, 21, 3, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_lease_term` VALUES (225, 22, 6, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_lease_term` VALUES (226, 21, 3, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_lease_term` VALUES (227, 22, 6, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_lease_term` VALUES (228, 23, 4, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (229, 23, 3, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_lease_term` VALUES (230, 24, 4, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_lease_term` VALUES (231, 19, 3, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_lease_term` VALUES (232, 21, 3, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_lease_term` VALUES (233, 20, 1, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_lease_term` VALUES (234, 24, 4, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_lease_term` VALUES (235, 23, 3, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_lease_term` VALUES (236, 23, 4, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_lease_term` VALUES (237, 21, 3, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_lease_term` VALUES (238, 22, 6, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_lease_term` VALUES (239, 25, 3, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_lease_term` VALUES (240, 25, 4, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_lease_term` VALUES (241, 25, 6, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_lease_term` VALUES (242, 26, 3, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_lease_term` VALUES (243, 26, 1, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_lease_term` VALUES (244, 26, 4, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_lease_term` VALUES (245, 26, 6, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_lease_term` VALUES (246, 27, 1, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (247, 27, 3, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (248, 27, 4, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (249, 27, 6, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (250, 28, 6, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_lease_term` VALUES (251, 29, 4, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_lease_term` VALUES (252, 30, 6, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_lease_term` VALUES (253, 30, 4, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_lease_term` VALUES (254, 30, 3, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_lease_term` VALUES (255, 31, 1, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_lease_term` VALUES (256, 31, 3, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_lease_term` VALUES (257, 31, 4, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_lease_term` VALUES (258, 31, 6, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_lease_term` VALUES (259, 32, 3, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (260, 32, 1, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (261, 32, 4, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (262, 32, 6, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_lease_term` VALUES (263, 33, 1, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_lease_term` VALUES (264, 33, 6, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_lease_term` VALUES (265, 33, 3, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_lease_term` VALUES (266, 33, 4, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_lease_term` VALUES (267, 34, 1, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (268, 34, 3, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (269, 34, 4, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (270, 34, 6, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (271, 35, 1, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_lease_term` VALUES (272, 35, 3, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_lease_term` VALUES (273, 35, 4, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_lease_term` VALUES (274, 35, 6, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_lease_term` VALUES (275, 36, 1, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_lease_term` VALUES (276, 36, 3, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_lease_term` VALUES (277, 36, 4, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_lease_term` VALUES (278, 36, 6, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_lease_term` VALUES (279, 36, 1, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (280, 36, 3, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (281, 36, 4, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (282, 36, 6, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_lease_term` VALUES (283, 38, 1, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (284, 37, 1, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (285, 38, 3, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (286, 37, 3, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (287, 38, 4, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (288, 37, 4, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (289, 38, 6, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (290, 37, 6, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_lease_term` VALUES (291, 39, 3, '2026-05-07 10:22:38', NULL, 0);

-- ----------------------------
-- Table structure for room_payment_type
-- ----------------------------
DROP TABLE IF EXISTS `room_payment_type`;
CREATE TABLE `room_payment_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间id',
  `payment_type_id` bigint NULL DEFAULT NULL COMMENT '支付类型id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '房间&支付方式关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_payment_type
-- ----------------------------
INSERT INTO `room_payment_type` VALUES (1, 2, 0, '2023-06-20 19:14:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (2, 3, 6, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (3, 3, 7, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (4, 3, 8, '2023-06-21 11:30:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (5, 3, 6, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (6, 3, 7, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (7, 3, 8, '2023-06-21 11:56:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (8, 4, 6, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_payment_type` VALUES (9, 4, 7, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_payment_type` VALUES (10, 4, 8, '2023-06-21 11:57:14', NULL, 1);
INSERT INTO `room_payment_type` VALUES (11, 7, 7, '2023-07-18 16:07:09', NULL, 1);
INSERT INTO `room_payment_type` VALUES (12, 2, 6, '2023-07-22 10:43:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (13, 2, 6, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_payment_type` VALUES (14, 2, 7, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_payment_type` VALUES (15, 2, 8, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_payment_type` VALUES (16, 2, 10, '2023-08-10 18:54:16', NULL, 1);
INSERT INTO `room_payment_type` VALUES (17, 2, 6, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (18, 2, 7, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (19, 2, 8, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (20, 2, 10, '2023-08-10 19:42:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (21, 3, 8, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (22, 3, 10, '2023-08-11 08:35:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (23, 2, 6, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (24, 2, 7, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (25, 2, 8, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (26, 2, 10, '2023-08-11 08:41:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (27, 3, 8, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (28, 3, 10, '2023-08-11 08:41:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (29, 8, 7, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_payment_type` VALUES (30, 8, 6, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_payment_type` VALUES (31, 8, 8, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_payment_type` VALUES (32, 8, 10, '2023-08-13 23:39:37', NULL, 1);
INSERT INTO `room_payment_type` VALUES (33, 9, 6, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (34, 9, 7, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (35, 9, 8, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (36, 9, 10, '2023-08-13 23:40:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (37, 10, 10, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_payment_type` VALUES (38, 10, 8, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_payment_type` VALUES (39, 10, 7, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_payment_type` VALUES (40, 10, 6, '2023-08-13 23:42:02', NULL, 1);
INSERT INTO `room_payment_type` VALUES (41, 2, 6, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (42, 2, 7, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (43, 2, 8, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (44, 2, 10, '2023-08-13 23:44:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (45, 9, 6, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_payment_type` VALUES (46, 9, 7, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_payment_type` VALUES (47, 9, 8, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_payment_type` VALUES (48, 9, 10, '2023-08-13 23:47:56', NULL, 1);
INSERT INTO `room_payment_type` VALUES (49, 9, 6, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_payment_type` VALUES (50, 9, 7, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_payment_type` VALUES (51, 9, 8, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_payment_type` VALUES (52, 9, 10, '2023-08-13 23:54:31', NULL, 1);
INSERT INTO `room_payment_type` VALUES (53, 11, 6, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (54, 11, 7, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (55, 11, 8, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (56, 11, 10, '2023-08-13 23:57:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (57, 12, 8, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (58, 12, 10, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (59, 12, 7, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (60, 12, 6, '2023-08-13 23:58:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (61, 13, 6, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (62, 13, 7, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (63, 13, 8, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (64, 13, 10, '2023-08-13 23:59:50', NULL, 1);
INSERT INTO `room_payment_type` VALUES (65, 11, 6, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (66, 11, 7, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (67, 11, 8, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (68, 11, 10, '2023-08-14 00:00:35', NULL, 1);
INSERT INTO `room_payment_type` VALUES (69, 14, 6, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_payment_type` VALUES (70, 14, 7, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_payment_type` VALUES (71, 14, 8, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_payment_type` VALUES (72, 14, 10, '2023-08-14 00:06:39', NULL, 1);
INSERT INTO `room_payment_type` VALUES (73, 15, 6, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_payment_type` VALUES (74, 15, 7, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_payment_type` VALUES (75, 15, 8, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_payment_type` VALUES (76, 15, 10, '2023-08-14 00:07:43', NULL, 1);
INSERT INTO `room_payment_type` VALUES (77, 12, 6, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (78, 12, 7, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (79, 12, 8, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (80, 12, 10, '2023-08-14 00:07:58', NULL, 1);
INSERT INTO `room_payment_type` VALUES (81, 16, 6, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_payment_type` VALUES (82, 16, 7, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_payment_type` VALUES (83, 16, 8, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_payment_type` VALUES (84, 16, 10, '2023-08-14 00:09:07', NULL, 1);
INSERT INTO `room_payment_type` VALUES (85, 17, 6, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_payment_type` VALUES (86, 17, 7, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_payment_type` VALUES (87, 17, 8, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_payment_type` VALUES (88, 17, 10, '2023-08-14 10:36:19', NULL, 1);
INSERT INTO `room_payment_type` VALUES (89, 2, 6, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_payment_type` VALUES (90, 2, 7, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_payment_type` VALUES (91, 2, 8, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_payment_type` VALUES (92, 2, 10, '2023-08-14 12:31:24', NULL, 1);
INSERT INTO `room_payment_type` VALUES (93, 3, 8, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (94, 3, 10, '2023-08-14 12:31:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (95, 8, 6, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (96, 8, 7, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (97, 8, 8, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (98, 8, 10, '2023-08-14 12:32:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (99, 9, 6, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (100, 9, 7, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (101, 9, 8, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (102, 9, 10, '2023-08-14 12:32:42', NULL, 1);
INSERT INTO `room_payment_type` VALUES (103, 9, 6, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (104, 9, 7, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (105, 9, 8, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (106, 9, 10, '2023-08-14 12:32:53', NULL, 1);
INSERT INTO `room_payment_type` VALUES (107, 10, 6, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (108, 10, 7, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (109, 10, 8, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (110, 10, 10, '2023-08-14 12:33:13', NULL, 1);
INSERT INTO `room_payment_type` VALUES (111, 11, 6, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (112, 11, 7, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (113, 11, 8, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (114, 11, 10, '2023-08-14 12:33:33', NULL, 1);
INSERT INTO `room_payment_type` VALUES (115, 12, 6, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (116, 12, 7, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (117, 12, 8, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (118, 12, 10, '2023-08-14 12:33:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (119, 13, 6, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_payment_type` VALUES (120, 13, 7, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_payment_type` VALUES (121, 13, 8, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_payment_type` VALUES (122, 13, 10, '2023-08-14 12:33:57', NULL, 1);
INSERT INTO `room_payment_type` VALUES (123, 14, 6, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (124, 14, 7, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (125, 14, 8, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (126, 14, 10, '2023-08-14 12:34:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (127, 15, 6, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_payment_type` VALUES (128, 15, 7, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_payment_type` VALUES (129, 15, 8, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_payment_type` VALUES (130, 15, 10, '2023-08-14 12:34:20', NULL, 1);
INSERT INTO `room_payment_type` VALUES (131, 16, 6, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (132, 16, 7, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (133, 16, 8, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (134, 16, 10, '2023-08-14 12:34:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (135, 17, 6, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (136, 17, 7, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (137, 17, 8, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (138, 17, 10, '2023-08-14 12:35:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (139, 2, 6, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_payment_type` VALUES (140, 2, 7, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_payment_type` VALUES (141, 2, 8, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_payment_type` VALUES (142, 2, 10, '2023-08-19 15:46:10', NULL, 1);
INSERT INTO `room_payment_type` VALUES (143, 3, 8, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_payment_type` VALUES (144, 3, 10, '2023-08-19 15:46:32', NULL, 1);
INSERT INTO `room_payment_type` VALUES (145, 8, 6, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (146, 8, 7, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (147, 8, 8, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (148, 8, 10, '2023-08-19 15:46:49', NULL, 1);
INSERT INTO `room_payment_type` VALUES (149, 9, 6, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (150, 9, 7, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (151, 9, 8, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (152, 9, 10, '2023-08-19 15:47:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (153, 10, 6, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (154, 10, 7, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (155, 10, 8, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (156, 10, 10, '2023-08-19 15:47:28', NULL, 1);
INSERT INTO `room_payment_type` VALUES (157, 12, 6, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (158, 12, 7, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (159, 12, 8, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (160, 12, 10, '2023-08-19 15:47:45', NULL, 1);
INSERT INTO `room_payment_type` VALUES (161, 11, 6, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (162, 11, 7, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (163, 11, 8, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (164, 11, 10, '2023-08-19 15:48:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (165, 13, 6, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_payment_type` VALUES (166, 13, 7, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_payment_type` VALUES (167, 13, 8, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_payment_type` VALUES (168, 13, 10, '2023-08-19 15:48:26', NULL, 1);
INSERT INTO `room_payment_type` VALUES (169, 14, 6, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (170, 14, 7, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (171, 14, 8, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (172, 14, 10, '2023-08-19 15:48:46', NULL, 1);
INSERT INTO `room_payment_type` VALUES (173, 15, 6, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (174, 15, 7, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (175, 15, 8, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (176, 15, 10, '2023-08-19 15:49:04', NULL, 1);
INSERT INTO `room_payment_type` VALUES (177, 16, 6, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_payment_type` VALUES (178, 16, 7, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_payment_type` VALUES (179, 16, 8, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_payment_type` VALUES (180, 16, 10, '2023-08-19 15:49:22', NULL, 1);
INSERT INTO `room_payment_type` VALUES (181, 17, 6, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_payment_type` VALUES (182, 17, 7, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_payment_type` VALUES (183, 17, 8, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_payment_type` VALUES (184, 17, 10, '2023-08-19 15:49:38', NULL, 1);
INSERT INTO `room_payment_type` VALUES (185, 2, 6, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_payment_type` VALUES (186, 2, 7, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_payment_type` VALUES (187, 2, 8, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_payment_type` VALUES (188, 2, 10, '2024-09-20 14:18:37', NULL, 0);
INSERT INTO `room_payment_type` VALUES (189, 3, 8, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_payment_type` VALUES (190, 3, 10, '2024-11-28 10:57:04', NULL, 0);
INSERT INTO `room_payment_type` VALUES (191, 8, 6, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_payment_type` VALUES (192, 8, 7, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_payment_type` VALUES (193, 8, 8, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_payment_type` VALUES (194, 8, 10, '2025-09-03 10:46:50', NULL, 0);
INSERT INTO `room_payment_type` VALUES (195, 9, 6, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_payment_type` VALUES (196, 9, 7, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_payment_type` VALUES (197, 9, 8, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_payment_type` VALUES (198, 9, 10, '2025-09-03 10:48:06', NULL, 0);
INSERT INTO `room_payment_type` VALUES (199, 19, 6, '2025-09-09 10:44:10', NULL, 1);
INSERT INTO `room_payment_type` VALUES (200, 12, 6, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (201, 12, 7, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (202, 12, 8, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (203, 12, 10, '2025-09-09 15:24:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (204, 11, 6, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_payment_type` VALUES (205, 11, 7, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_payment_type` VALUES (206, 11, 8, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_payment_type` VALUES (207, 11, 10, '2025-09-09 15:32:23', NULL, 0);
INSERT INTO `room_payment_type` VALUES (208, 15, 6, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_payment_type` VALUES (209, 15, 7, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_payment_type` VALUES (210, 15, 8, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_payment_type` VALUES (211, 15, 10, '2025-09-09 15:32:38', NULL, 0);
INSERT INTO `room_payment_type` VALUES (212, 16, 6, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_payment_type` VALUES (213, 16, 7, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_payment_type` VALUES (214, 16, 8, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_payment_type` VALUES (215, 16, 10, '2025-09-09 15:32:56', NULL, 0);
INSERT INTO `room_payment_type` VALUES (216, 17, 6, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_payment_type` VALUES (217, 17, 7, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_payment_type` VALUES (218, 17, 8, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_payment_type` VALUES (219, 17, 10, '2025-09-09 15:33:05', NULL, 0);
INSERT INTO `room_payment_type` VALUES (220, 20, 8, '2025-09-09 16:38:01', NULL, 1);
INSERT INTO `room_payment_type` VALUES (221, 21, 10, '2025-09-09 16:40:08', NULL, 1);
INSERT INTO `room_payment_type` VALUES (222, 22, 10, '2025-09-09 16:49:23', NULL, 1);
INSERT INTO `room_payment_type` VALUES (223, 21, 10, '2025-09-11 09:25:38', NULL, 1);
INSERT INTO `room_payment_type` VALUES (224, 22, 10, '2025-09-11 09:26:09', NULL, 1);
INSERT INTO `room_payment_type` VALUES (225, 23, 7, '2025-09-11 14:28:16', NULL, 1);
INSERT INTO `room_payment_type` VALUES (226, 24, 8, '2025-09-11 14:28:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (227, 19, 6, '2025-09-11 14:29:32', NULL, 0);
INSERT INTO `room_payment_type` VALUES (228, 21, 10, '2025-09-11 14:30:02', NULL, 1);
INSERT INTO `room_payment_type` VALUES (229, 20, 8, '2025-09-11 14:30:33', NULL, 0);
INSERT INTO `room_payment_type` VALUES (230, 24, 8, '2025-09-11 14:30:58', NULL, 0);
INSERT INTO `room_payment_type` VALUES (231, 23, 7, '2025-09-11 14:31:22', NULL, 0);
INSERT INTO `room_payment_type` VALUES (232, 21, 10, '2025-09-11 14:31:33', NULL, 0);
INSERT INTO `room_payment_type` VALUES (233, 22, 10, '2025-09-11 14:31:44', NULL, 0);
INSERT INTO `room_payment_type` VALUES (234, 25, 6, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_payment_type` VALUES (235, 25, 10, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_payment_type` VALUES (236, 25, 8, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_payment_type` VALUES (237, 25, 7, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_payment_type` VALUES (238, 25, 14, '2025-09-13 11:12:57', NULL, 0);
INSERT INTO `room_payment_type` VALUES (239, 26, 6, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_payment_type` VALUES (240, 26, 7, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_payment_type` VALUES (241, 26, 8, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_payment_type` VALUES (242, 26, 10, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_payment_type` VALUES (243, 26, 14, '2025-09-19 16:23:03', NULL, 0);
INSERT INTO `room_payment_type` VALUES (244, 27, 6, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (245, 27, 7, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (246, 27, 8, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (247, 27, 10, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (248, 27, 14, '2025-09-19 16:24:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (249, 28, 10, '2025-09-24 15:48:06', NULL, 0);
INSERT INTO `room_payment_type` VALUES (250, 29, 8, '2025-09-24 15:49:12', NULL, 0);
INSERT INTO `room_payment_type` VALUES (251, 30, 7, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_payment_type` VALUES (252, 30, 8, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_payment_type` VALUES (253, 30, 14, '2025-09-24 16:09:59', NULL, 0);
INSERT INTO `room_payment_type` VALUES (254, 31, 6, '2025-10-27 10:25:00', NULL, 0);
INSERT INTO `room_payment_type` VALUES (255, 32, 10, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (256, 32, 8, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (257, 32, 7, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (258, 32, 6, '2025-10-27 15:06:20', NULL, 0);
INSERT INTO `room_payment_type` VALUES (259, 33, 6, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_payment_type` VALUES (260, 33, 7, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_payment_type` VALUES (261, 33, 8, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_payment_type` VALUES (262, 33, 10, '2025-10-28 10:23:53', NULL, 0);
INSERT INTO `room_payment_type` VALUES (263, 34, 6, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (264, 34, 7, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (265, 34, 8, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (266, 34, 10, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (267, 34, 14, '2025-12-23 09:51:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (268, 35, 6, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_payment_type` VALUES (269, 35, 7, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_payment_type` VALUES (270, 35, 8, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_payment_type` VALUES (271, 35, 10, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_payment_type` VALUES (272, 35, 14, '2026-01-28 09:23:40', NULL, 0);
INSERT INTO `room_payment_type` VALUES (273, 36, 6, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (274, 36, 14, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (275, 36, 7, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (276, 36, 10, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (277, 36, 8, '2026-02-03 14:11:51', NULL, 1);
INSERT INTO `room_payment_type` VALUES (278, 36, 6, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (279, 36, 7, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (280, 36, 8, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (281, 36, 10, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (282, 36, 14, '2026-02-26 14:39:41', NULL, 0);
INSERT INTO `room_payment_type` VALUES (283, 38, 7, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (284, 37, 7, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (285, 38, 6, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (286, 38, 8, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (287, 37, 6, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (288, 37, 8, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (289, 38, 14, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (290, 38, 10, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (291, 37, 14, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (292, 37, 10, '2026-02-26 16:39:54', NULL, 1);
INSERT INTO `room_payment_type` VALUES (293, 39, 6, '2026-05-07 10:22:38', NULL, 0);

-- ----------------------------
-- Table structure for system_post
-- ----------------------------
DROP TABLE IF EXISTS `system_post`;
CREATE TABLE `system_post`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '岗位名称',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_post
-- ----------------------------
INSERT INTO `system_post` VALUES (1, 'regional manager', '区域经理', '区域经理', 1, '2023-08-10 09:01:56', '2023-08-10 17:01:57', 0);
INSERT INTO `system_post` VALUES (2, 'dsz', '董事长', '1', 1, '2023-08-10 09:02:46', '2023-08-10 17:02:47', 1);
INSERT INTO `system_post` VALUES (6, 'general manager', '总经理', '总经理', 1, '2023-08-10 09:04:00', '2023-08-10 17:04:01', 0);
INSERT INTO `system_post` VALUES (7, 'apartment manager', '店长', '公寓店长', 1, '2023-08-10 09:03:55', '2023-08-10 17:03:56', 0);
INSERT INTO `system_post` VALUES (8, '测试3', '测试3', '测试3', 1, '2023-07-18 02:13:24', '2023-07-18 10:13:25', 1);
INSERT INTO `system_post` VALUES (9, 'Employee', '员工', '员工', 1, '2025-09-09 16:56:56', NULL, 0);

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `type` tinyint NULL DEFAULT NULL COMMENT '用户类型',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `post_id` bigint NULL DEFAULT NULL COMMENT '岗位id',
  `status` tinyint NULL DEFAULT NULL COMMENT '账号状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '员工信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 0, '18888888888', NULL, NULL, 6, 1, '2023-08-10 17:13:00', '2023-08-19 23:30:48', 0);
INSERT INTO `system_user` VALUES (2, 'user', 'e10adc3949ba59abbe56e057f20f883e', '用户', 1, '13666666666', NULL, NULL, 7, 1, '2023-08-19 16:53:53', NULL, 0);
INSERT INTO `system_user` VALUES (3, 'gdfg', 'e10adc3949ba59abbe56e057f20f883e', 'fds', 0, '18888888666', NULL, NULL, 6, 1, '2024-09-16 16:07:18', '2025-09-03 11:04:55', 1);
INSERT INTO `system_user` VALUES (4, 'gdfg', 'd41d8cd98f00b204e9800998ecf8427e', 'zhangsan', 0, '18888888666', NULL, NULL, 6, 1, '2024-09-16 16:07:58', '2025-09-03 11:05:05', 0);
INSERT INTO `system_user` VALUES (5, 'huhao', 'e10adc3949ba59abbe56e057f20f883e', 'huhao', 0, '18190067037', NULL, NULL, 7, 1, '2024-09-21 10:10:07', NULL, 0);
INSERT INTO `system_user` VALUES (6, 'huhao_666', 'd41d8cd98f00b204e9800998ecf8427e', 'huhao666', 0, '18190067037', NULL, NULL, 1, 1, '2025-09-09 16:55:39', '2025-09-09 16:55:53', 1);
INSERT INTO `system_user` VALUES (7, 'huhao666', 'e10adc3949ba59abbe56e057f20f883e', 'huhao', 1, '18190067037', NULL, NULL, 9, 1, '2025-09-09 16:57:37', '2025-09-09 16:58:20', 1);
INSERT INTO `system_user` VALUES (8, 'zhangshan', 'e10adc3949ba59abbe56e057f20f883e', 'zhangshan', 1, '18195485632', NULL, NULL, 9, 1, '2025-09-09 16:58:47', NULL, 0);
INSERT INTO `system_user` VALUES (9, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '李思', 1, '18190067037', NULL, NULL, 9, 1, '2025-11-11 16:21:17', NULL, 0);

-- ----------------------------
-- Table structure for tenant_profile_features
-- ----------------------------
DROP TABLE IF EXISTS `tenant_profile_features`;
CREATE TABLE `tenant_profile_features`  (
  `user_id` bigint NOT NULL COMMENT '租户ID',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租户手机号',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租户昵称',
  `agreement_id` bigint NULL DEFAULT NULL COMMENT '关联合同ID',
  `apartment_id` bigint NULL DEFAULT NULL COMMENT '公寓ID',
  `room_id` bigint NULL DEFAULT NULL COMMENT '房间ID',
  `lease_start_date` date NULL DEFAULT NULL COMMENT '租期开始日期',
  `lease_end_date` date NULL DEFAULT NULL COMMENT '租期结束日期',
  `lease_term_months` int NULL DEFAULT NULL COMMENT '租期长度（月）',
  `rent_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '月租金金额',
  `deposit_amount` decimal(16, 2) NULL DEFAULT NULL COMMENT '押金金额',
  `payment_type_id` bigint NULL DEFAULT NULL COMMENT '付款方式ID',
  `browse_cnt_30d` int NULL DEFAULT 0 COMMENT '近30天浏览次数',
  `last_browse_time` datetime NULL DEFAULT NULL COMMENT '最近一次浏览时间',
  `appointment_cnt_30d` int NULL DEFAULT 0 COMMENT '近30天预约次数',
  `last_appointment_time` datetime NULL DEFAULT NULL COMMENT '最近一次预约时间',
  `activity_level_tag` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '活跃度标签',
  `intention_tag` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租赁意向标签',
  `value_level_tag` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客单价值标签',
  `payment_behavior_tag` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款行为标签',
  `data_date` date NOT NULL COMMENT '数据对应日期（批次）',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '租户行为画像标签宽表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant_profile_features
-- ----------------------------
INSERT INTO `tenant_profile_features` VALUES (1, '13888888888', '用户-888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '低活跃', '低意向', '低价值', '准时支付', '2025-11-04', '2025-11-05 17:19:30', '2025-11-05 17:20:21');
INSERT INTO `tenant_profile_features` VALUES (8, '18190067037', '用户-7037', 15, 139, 31, '2025-11-27', '2025-12-27', 1, 2000.00, 100.00, 6, 1, '2025-10-11 15:16:53', 3, '2025-10-28 10:00:30', '低活跃', '高意向', '低价值', '准时支付', '2025-11-04', '2025-11-05 17:19:30', '2025-11-05 17:20:21');
INSERT INTO `tenant_profile_features` VALUES (9, '18195485632', '用户-5632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '低活跃', '低意向', '低价值', '准时支付', '2025-11-04', '2025-11-05 17:19:30', '2025-11-05 17:20:21');

-- ----------------------------
-- Table structure for user_balance
-- ----------------------------
DROP TABLE IF EXISTS `user_balance`;
CREATE TABLE `user_balance`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint NOT NULL COMMENT '用户ID（关联user_info表）',
  `balance` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '当前余额（元）',
  `frozen_amount` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '冻结金额（元）',
  `total_recharge` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '累计充值金额（元）',
  `total_consume` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '累计消费金额（元）',
  `total_refund` decimal(16, 2) NOT NULL DEFAULT 0.00 COMMENT '累计退款金额（元）',
  `version` int NOT NULL DEFAULT 0 COMMENT '乐观锁版本号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_id`(`user_id` ASC) USING BTREE COMMENT '用户ID唯一索引'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户余额表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_balance
-- ----------------------------
INSERT INTO `user_balance` VALUES (1, 8, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2025-11-26 10:48:28', '2025-11-26 10:48:26', 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码（用做登录用户名）',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `status` tinyint NULL DEFAULT 1 COMMENT '账号状态',
  `gender` tinyint(1) NULL DEFAULT 0 COMMENT '性别：0-保密 1-男 2-女',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '13888888888', NULL, 'http://192.168.10.101:9000/lease/txurl/tx.jpg', '用户-888888', 1, 0, NULL, '2023-07-01 14:48:17', NULL, 0);
INSERT INTO `user_info` VALUES (8, '18190067037', NULL, 'http://192.168.10.101:9000/lease/20251117/edca8f2d-ba7d-4951-ba7c-9938ca0623ec-1761695971290.jpg', 'huhao-7037', 1, 1, 'fdsfsdf', '2024-09-18 15:41:45', '2025-11-14 14:04:53', 0);
INSERT INTO `user_info` VALUES (9, '18195485632', NULL, 'http://192.168.10.101:9000/lease/txurl/tx.jpg', '用户-5632', 1, 0, NULL, '2025-09-19 17:09:24', NULL, 0);
INSERT INTO `user_info` VALUES (10, '19960791220', NULL, 'http://192.168.10.101:9000/lease/20251114/7e3bdc04-45b1-458d-996d-df95ad19ba1a-1761695971290.jpg', '用户-1220', 1, 0, '', '2025-11-14 16:12:01', '2025-11-14 16:12:56', 0);
INSERT INTO `user_info` VALUES (11, '13900000000', NULL, 'http://127.0.0.1:9000/lease/txurl/tx.jpg', '用户-0000', 1, 0, NULL, '2026-01-28 15:20:28', NULL, 0);
INSERT INTO `user_info` VALUES (12, '13900000001', NULL, 'http://127.0.0.1:9000/lease/txurl/tx.jpg', '用户-0001', 1, 0, NULL, '2026-01-28 15:20:51', NULL, 0);
INSERT INTO `user_info` VALUES (13, '13900000002', NULL, 'http://127.0.0.1:9000/lease/txurl/tx.jpg', '用户-0002', 1, 0, NULL, '2026-01-28 15:56:14', NULL, 0);

-- ----------------------------
-- Table structure for view_appointment
-- ----------------------------
DROP TABLE IF EXISTS `view_appointment`;
CREATE TABLE `view_appointment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '预约id',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号码',
  `apartment_id` int NULL DEFAULT NULL COMMENT '公寓id',
  `appointment_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `appointment_status` tinyint NULL DEFAULT NULL COMMENT '预约状态（1:待看房，2:已取消，3已看房）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '预约看房信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of view_appointment
-- ----------------------------
INSERT INTO `view_appointment` VALUES (1, 1, '张三', '13888888888', 9, '2023-07-14 09:01:01', '无', 3, '2023-07-14 09:40:43', NULL, 0);
INSERT INTO `view_appointment` VALUES (2, 2, '李四', '13666666666', 9, '2023-07-14 09:01:01', '无', 3, '2023-07-27 16:13:54', NULL, 0);
INSERT INTO `view_appointment` VALUES (10, 7, '张三', '13888888888', 9, '2023-08-14 15:40:00', '无', 3, '2023-08-14 12:44:50', '2023-08-14 15:10:04', 0);
INSERT INTO `view_appointment` VALUES (11, 7, '张三', '13888888888', 10, '2023-08-14 14:45:20', '', 3, '2023-08-14 12:45:51', '2023-08-14 14:49:58', 0);
INSERT INTO `view_appointment` VALUES (12, 8, '胡浩', '18190067037', 9, '2025-09-09 10:46:17', '无', 3, '2025-09-09 10:46:56', NULL, 0);
INSERT INTO `view_appointment` VALUES (13, 8, '胡浩', '18190067037', 135, '2025-09-13 11:15:13', '111', 3, '2025-09-13 11:15:25', NULL, 0);
INSERT INTO `view_appointment` VALUES (14, 8, '胡浩', '18190067037', 134, '2025-09-13 11:48:13', '111', 3, '2025-09-13 11:48:32', NULL, 0);
INSERT INTO `view_appointment` VALUES (15, 8, '胡浩', '18190067037', 110, '2025-09-13 11:51:42', '111', 3, '2025-09-13 11:51:49', NULL, 0);
INSERT INTO `view_appointment` VALUES (16, 8, 'huhao', '18190067037', 138, '2025-09-28 10:44:06', '123', 3, '2025-09-28 10:44:14', NULL, 0);
INSERT INTO `view_appointment` VALUES (17, 8, '胡浩', '18190067037', 137, '2025-10-27 10:03:09', '', 3, '2025-10-27 10:03:17', NULL, 0);
INSERT INTO `view_appointment` VALUES (18, 8, '胡浩', '18190067037', 136, '2025-10-27 10:30:00', '', 3, '2025-10-27 10:30:06', NULL, 0);
INSERT INTO `view_appointment` VALUES (19, 8, '胡浩', '18190067037', 134, '2025-10-28 10:00:30', '', 3, '2025-10-28 10:00:38', NULL, 0);
INSERT INTO `view_appointment` VALUES (20, 8, '胡浩', '18190067037', 140, '2025-11-12 11:36:54', '', 3, '2025-11-12 11:37:04', NULL, 0);
INSERT INTO `view_appointment` VALUES (21, 8, '胡奥', '18190067037', 143, '2026-01-28 09:28:18', '111', 3, '2026-01-28 09:28:39', NULL, 0);
INSERT INTO `view_appointment` VALUES (22, 8, '胡浩', '18190067037', 144, '2026-02-26 15:41:36', '', 3, '2026-02-26 14:41:54', NULL, 0);
INSERT INTO `view_appointment` VALUES (23, 8, 'hh', '18190067037', 142, '2026-03-11 16:52:53', '11', 3, '2026-03-11 16:53:07', NULL, 0);
INSERT INTO `view_appointment` VALUES (24, 8, '胡浩', '18190067037', 144, '2026-03-11 19:02:13', '11', 3, '2026-03-11 19:02:26', NULL, 0);
INSERT INTO `view_appointment` VALUES (25, 8, '胡浩', '18190067037', 145, '2026-05-07 10:47:54', '111', 3, '2026-05-07 10:48:03', NULL, 0);

-- ----------------------------
-- View structure for tenant_profile_base
-- ----------------------------
DROP VIEW IF EXISTS `tenant_profile_base`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tenant_profile_base` AS select `u`.`id` AS `user_id`,`u`.`phone` AS `phone`,`u`.`nickname` AS `nickname`,`la`.`id` AS `agreement_id`,`la`.`apartment_id` AS `apartment_id`,`la`.`room_id` AS `room_id`,`la`.`lease_start_date` AS `lease_start_date`,`la`.`lease_end_date` AS `lease_end_date`,`la`.`rent` AS `rent`,`la`.`deposit` AS `deposit`,`la`.`payment_type_id` AS `payment_type_id` from (`user_info` `u` left join `lease_agreement` `la` on(((`u`.`phone` = `la`.`phone`) and (`la`.`is_deleted` = 0) and (`la`.`status` = 1))));

SET FOREIGN_KEY_CHECKS = 1;
