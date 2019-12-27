/*
 Navicat Premium Data Transfer

 Source Server         : localmu
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : wms

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 27/12/2019 14:30:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rp_period_in_out
-- ----------------------------
DROP TABLE IF EXISTS `rp_period_in_out`;
CREATE TABLE `rp_period_in_out`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `bpm_status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程状态',
  `date_period` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期间',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `goods_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_unit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `goods_guige` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `goods_qc` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期初库存',
  `goods_in` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库数量',
  `goods_out` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库数量',
  `goods_qm` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期末',
  `goods_now` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rp_period_in_out
-- ----------------------------
INSERT INTO `rp_period_in_out` VALUES (255, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020233', 'B020233-灵鹿谷演示数据-包', '包', NULL, NULL, '132', NULL, NULL, '132');
INSERT INTO `rp_period_in_out` VALUES (256, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020234', 'B020234-灵鹿谷演示数据-包', '包', '16', NULL, '28', NULL, NULL, '28');
INSERT INTO `rp_period_in_out` VALUES (257, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020238', 'B020238-灵鹿谷演示数据-袋', '袋', NULL, NULL, '45', NULL, NULL, '45');
INSERT INTO `rp_period_in_out` VALUES (258, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020242', 'B020242-灵鹿谷演示数据-瓶', '瓶', '8', NULL, '80', NULL, NULL, '80');
INSERT INTO `rp_period_in_out` VALUES (259, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020243', NULL, NULL, NULL, NULL, '974', NULL, NULL, '974');
INSERT INTO `rp_period_in_out` VALUES (260, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020244', NULL, NULL, NULL, NULL, '80', NULL, NULL, '80');
INSERT INTO `rp_period_in_out` VALUES (261, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020445', 'B020445-灵鹿谷演示数据-瓶', '瓶', NULL, NULL, '336', NULL, NULL, '336');
INSERT INTO `rp_period_in_out` VALUES (262, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'B020533', 'B020533-灵鹿谷演示数据-包', '包', NULL, NULL, '54', NULL, NULL, '54');
INSERT INTO `rp_period_in_out` VALUES (263, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C010425', NULL, NULL, NULL, NULL, '124', NULL, NULL, '124');
INSERT INTO `rp_period_in_out` VALUES (264, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C010440', NULL, NULL, NULL, NULL, '36', NULL, NULL, '36');
INSERT INTO `rp_period_in_out` VALUES (265, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030034', NULL, NULL, NULL, NULL, '13', NULL, NULL, '13');
INSERT INTO `rp_period_in_out` VALUES (266, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030074', NULL, NULL, NULL, NULL, '126', NULL, NULL, '126');
INSERT INTO `rp_period_in_out` VALUES (267, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030077', NULL, NULL, NULL, NULL, '48', NULL, NULL, '48');
INSERT INTO `rp_period_in_out` VALUES (268, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030119', 'C030119-灵鹿谷演示数据-箱', '箱', NULL, NULL, '15', NULL, NULL, '15');
INSERT INTO `rp_period_in_out` VALUES (269, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030122', NULL, NULL, NULL, NULL, '39', NULL, NULL, '39');
INSERT INTO `rp_period_in_out` VALUES (270, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030123', 'C030123-灵鹿谷演示数据-箱', '箱', NULL, NULL, '34', NULL, NULL, '34');
INSERT INTO `rp_period_in_out` VALUES (271, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030131', 'C030131-灵鹿谷演示数据-箱', '箱', NULL, NULL, '37', NULL, NULL, '37');
INSERT INTO `rp_period_in_out` VALUES (272, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030224', NULL, NULL, NULL, NULL, '29', NULL, NULL, '29');
INSERT INTO `rp_period_in_out` VALUES (273, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030245', NULL, NULL, NULL, NULL, '12', NULL, NULL, '12');
INSERT INTO `rp_period_in_out` VALUES (274, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030250', NULL, NULL, NULL, NULL, '220', NULL, NULL, '220');
INSERT INTO `rp_period_in_out` VALUES (275, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030306', 'C030306-灵鹿谷演示数据-箱', '箱', NULL, NULL, NULL, NULL, NULL, '31');
INSERT INTO `rp_period_in_out` VALUES (276, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030307', NULL, NULL, NULL, NULL, '70', NULL, NULL, '70');
INSERT INTO `rp_period_in_out` VALUES (277, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030322', NULL, NULL, NULL, NULL, '140', NULL, NULL, '140');
INSERT INTO `rp_period_in_out` VALUES (278, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030360', NULL, NULL, NULL, NULL, '12', NULL, NULL, '12');
INSERT INTO `rp_period_in_out` VALUES (279, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030366', NULL, NULL, NULL, NULL, '240', NULL, NULL, '240');
INSERT INTO `rp_period_in_out` VALUES (280, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030385', NULL, NULL, NULL, NULL, '10', NULL, NULL, '10');
INSERT INTO `rp_period_in_out` VALUES (281, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030403', NULL, NULL, NULL, NULL, '960', NULL, NULL, '960');
INSERT INTO `rp_period_in_out` VALUES (282, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030404', NULL, NULL, NULL, NULL, '120', NULL, NULL, '120');
INSERT INTO `rp_period_in_out` VALUES (283, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030429', NULL, NULL, NULL, NULL, '96', NULL, NULL, '96');
INSERT INTO `rp_period_in_out` VALUES (284, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030430', NULL, NULL, NULL, NULL, '20', NULL, NULL, '20');
INSERT INTO `rp_period_in_out` VALUES (285, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030436', NULL, NULL, NULL, NULL, '4', NULL, NULL, '4');
INSERT INTO `rp_period_in_out` VALUES (286, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030437', NULL, NULL, NULL, NULL, '24', NULL, NULL, '24');
INSERT INTO `rp_period_in_out` VALUES (287, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030438', NULL, NULL, NULL, NULL, '2', NULL, NULL, '2');
INSERT INTO `rp_period_in_out` VALUES (288, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030440', NULL, NULL, NULL, NULL, '12', NULL, NULL, '12');
INSERT INTO `rp_period_in_out` VALUES (289, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030446', 'C030446-灵鹿谷演示数据-袋', '袋', '12', NULL, '36', NULL, NULL, '36');
INSERT INTO `rp_period_in_out` VALUES (290, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030448', NULL, NULL, NULL, NULL, '454', NULL, NULL, '454');
INSERT INTO `rp_period_in_out` VALUES (291, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030449', 'C030449-灵鹿谷演示数据-袋', '袋', '12', NULL, '228', NULL, NULL, '228');
INSERT INTO `rp_period_in_out` VALUES (292, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030450', NULL, NULL, NULL, NULL, '972', NULL, NULL, '972');
INSERT INTO `rp_period_in_out` VALUES (293, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030455', NULL, NULL, NULL, NULL, '756', NULL, NULL, '756');
INSERT INTO `rp_period_in_out` VALUES (294, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030457', NULL, NULL, NULL, NULL, '348', NULL, NULL, '348');
INSERT INTO `rp_period_in_out` VALUES (295, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030458', 'C030458-灵鹿谷演示数据-袋', '袋', '12', NULL, '24', NULL, NULL, '24');
INSERT INTO `rp_period_in_out` VALUES (296, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030459', NULL, NULL, NULL, NULL, '49', NULL, NULL, '49');
INSERT INTO `rp_period_in_out` VALUES (297, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030460', 'C030460-灵鹿谷演示数据-袋', '袋', '12', NULL, '10', NULL, NULL, '10');
INSERT INTO `rp_period_in_out` VALUES (298, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030461', NULL, NULL, NULL, NULL, '684', NULL, NULL, '684');
INSERT INTO `rp_period_in_out` VALUES (299, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030530', NULL, NULL, NULL, NULL, '320', NULL, NULL, '320');
INSERT INTO `rp_period_in_out` VALUES (300, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030531', 'C030531-灵鹿谷演示数据-瓶', '瓶', '12', NULL, '72', NULL, NULL, '72');
INSERT INTO `rp_period_in_out` VALUES (301, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030532', NULL, NULL, NULL, NULL, '108', NULL, NULL, '108');
INSERT INTO `rp_period_in_out` VALUES (302, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030534', NULL, NULL, NULL, NULL, '2400', NULL, NULL, '2400');
INSERT INTO `rp_period_in_out` VALUES (303, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030535', NULL, NULL, NULL, NULL, '294', NULL, NULL, '294');
INSERT INTO `rp_period_in_out` VALUES (304, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030536', NULL, NULL, NULL, NULL, '1447', NULL, NULL, '1447');
INSERT INTO `rp_period_in_out` VALUES (305, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030537', 'C030537-灵鹿谷演示数据-盒', '盒', '24', NULL, '1224', NULL, NULL, '1224');
INSERT INTO `rp_period_in_out` VALUES (306, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030540', NULL, NULL, NULL, NULL, '84', NULL, NULL, '84');
INSERT INTO `rp_period_in_out` VALUES (307, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030542', NULL, NULL, NULL, NULL, '36', NULL, NULL, '36');
INSERT INTO `rp_period_in_out` VALUES (308, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030544', NULL, NULL, NULL, NULL, '490', NULL, NULL, '490');
INSERT INTO `rp_period_in_out` VALUES (309, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030546', NULL, NULL, NULL, NULL, '48', NULL, NULL, '48');
INSERT INTO `rp_period_in_out` VALUES (310, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030547', 'C030547-灵鹿谷演示数据-袋', '袋', '6', NULL, '280', NULL, NULL, '280');
INSERT INTO `rp_period_in_out` VALUES (311, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030548', NULL, NULL, NULL, NULL, '51', NULL, NULL, '51');
INSERT INTO `rp_period_in_out` VALUES (312, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030549', NULL, NULL, NULL, NULL, '35', NULL, NULL, '35');
INSERT INTO `rp_period_in_out` VALUES (313, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030611', NULL, NULL, NULL, NULL, '276', NULL, NULL, '276');
INSERT INTO `rp_period_in_out` VALUES (314, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030626', NULL, NULL, NULL, NULL, '180', NULL, NULL, '180');
INSERT INTO `rp_period_in_out` VALUES (315, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030633', 'C030633-灵鹿谷演示数据-盒', '盒', '24', NULL, '24', NULL, NULL, '24');
INSERT INTO `rp_period_in_out` VALUES (316, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030647', NULL, NULL, NULL, NULL, '13', NULL, NULL, '13');
INSERT INTO `rp_period_in_out` VALUES (317, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030648', 'C030648-灵鹿谷演示数据-盒', '盒', '48', NULL, '48', NULL, NULL, '48');
INSERT INTO `rp_period_in_out` VALUES (318, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030652', NULL, NULL, NULL, NULL, '48', NULL, NULL, '48');
INSERT INTO `rp_period_in_out` VALUES (319, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030653', 'C030653-灵鹿谷演示数据-盒', '盒', '48', NULL, '48', NULL, NULL, '48');
INSERT INTO `rp_period_in_out` VALUES (320, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030656', 'C030656-灵鹿谷演示数据-盒', '盒', '24', NULL, '2', NULL, NULL, '2');
INSERT INTO `rp_period_in_out` VALUES (321, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030663', 'C030663-灵鹿谷演示数据-盒', '盒', NULL, NULL, '36', NULL, NULL, '36');
INSERT INTO `rp_period_in_out` VALUES (322, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030681', NULL, NULL, NULL, NULL, '1368', NULL, NULL, '1368');
INSERT INTO `rp_period_in_out` VALUES (323, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030736', NULL, NULL, NULL, NULL, '20', NULL, NULL, '20');
INSERT INTO `rp_period_in_out` VALUES (324, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030742', 'C030742-灵鹿谷演示数据-袋', '袋', NULL, NULL, '9', NULL, NULL, '9');
INSERT INTO `rp_period_in_out` VALUES (325, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030744', 'C030744-灵鹿谷演示数据-袋', '袋', NULL, NULL, '36', NULL, NULL, '36');
INSERT INTO `rp_period_in_out` VALUES (326, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030762', 'C030762-灵鹿谷演示数据-箱', '箱', NULL, NULL, '16', NULL, NULL, '16');
INSERT INTO `rp_period_in_out` VALUES (327, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030791', 'C030791-灵鹿谷演示数据-箱', '箱', NULL, NULL, '4', NULL, NULL, '4');
INSERT INTO `rp_period_in_out` VALUES (328, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030916', NULL, NULL, NULL, NULL, '102', NULL, NULL, '102');
INSERT INTO `rp_period_in_out` VALUES (329, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030950', 'C030950-灵鹿谷演示数据-箱', '箱', '', NULL, '15', NULL, NULL, '15');
INSERT INTO `rp_period_in_out` VALUES (330, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C030951', 'C030951-灵鹿谷演示数据-箱', '箱', '', NULL, '35', NULL, NULL, '35');
INSERT INTO `rp_period_in_out` VALUES (331, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C040025', NULL, NULL, NULL, NULL, '12', NULL, NULL, '12');
INSERT INTO `rp_period_in_out` VALUES (332, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C040026', 'C040026-灵鹿谷演示数据-罐', '罐', '6', NULL, '18', NULL, NULL, '18');
INSERT INTO `rp_period_in_out` VALUES (333, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C040032', 'C040032-灵鹿谷演示数据-袋', '袋', '8', NULL, '16', NULL, NULL, '16');
INSERT INTO `rp_period_in_out` VALUES (334, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C040033', NULL, NULL, NULL, NULL, '16', NULL, NULL, '16');
INSERT INTO `rp_period_in_out` VALUES (335, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C050038', NULL, NULL, NULL, NULL, '2100', NULL, NULL, '2100');
INSERT INTO `rp_period_in_out` VALUES (336, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'C050058', 'C050058-灵鹿谷演示数据-袋', '袋', '30', NULL, '11', NULL, NULL, '11');
INSERT INTO `rp_period_in_out` VALUES (337, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'E010019', 'E010019-灵鹿谷演示数据-提', '提', NULL, NULL, '80', NULL, NULL, '80');
INSERT INTO `rp_period_in_out` VALUES (338, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'E010106', 'E010106-灵鹿谷演示数据-盒', '盒', NULL, NULL, '760', NULL, NULL, '760');
INSERT INTO `rp_period_in_out` VALUES (339, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'E010184', 'E010184-灵鹿谷演示数据-包', '包', '', NULL, '144', NULL, NULL, '144');
INSERT INTO `rp_period_in_out` VALUES (340, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'E020008', 'E020008-灵鹿谷演示数据-箱', '箱', NULL, NULL, '60', NULL, NULL, '60');
INSERT INTO `rp_period_in_out` VALUES (341, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'E020048', NULL, NULL, NULL, NULL, '18', NULL, NULL, '18');
INSERT INTO `rp_period_in_out` VALUES (342, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'F031115', 'F031115-灵鹿谷演示数据-盒', '盒', NULL, NULL, '25', NULL, NULL, '25');
INSERT INTO `rp_period_in_out` VALUES (343, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-012019-01-01', 'admin', 'F031701', 'F031701-灵鹿谷演示数据-双', '双', NULL, NULL, NULL, NULL, NULL, '88');

-- ----------------------------
-- View structure for mv_cus
-- ----------------------------
DROP VIEW IF EXISTS `mv_cus`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_cus` AS select `mc`.`id` AS `id`,`mc`.`ke_hu_bian_ma` AS `cus_code`,concat(`mc`.`ke_hu_bian_ma`,'-',`mc`.`zhong_wen_qch`) AS `cus_name` from `md_cus` `mc` order by `mc`.`ke_hu_bian_ma`;

-- ----------------------------
-- View structure for mv_cus_cost
-- ----------------------------
DROP VIEW IF EXISTS `mv_cus_cost`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_cus_cost` AS select `mc`.`id` AS `id`,`mc`.`ke_hu_bian_ma` AS `cus_code`,`mc`.`zhong_wen_qch` AS `cus_name`,(select `wc`.`cost_data` from `wm_day_cost` `wc` where (`wc`.`cus_code` = `mc`.`ke_hu_bian_ma`) limit 1) AS `cost_data` from `md_cus` `mc`;

-- ----------------------------
-- View structure for mv_cus_other
-- ----------------------------
DROP VIEW IF EXISTS `mv_cus_other`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_cus_other` AS select `mc`.`id` AS `id`,`mc`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`mc`.`ke_hu_bian_ma` AS `cus_code`,concat(`mc`.`ke_hu_bian_ma`,'-',`mc`.`zhong_wen_qch`) AS `cus_name` from `md_cus_other` `mc` order by `mc`.`ke_hu_bian_ma`;

-- ----------------------------
-- View structure for mv_down_and_up
-- ----------------------------
DROP VIEW IF EXISTS `mv_down_and_up`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_down_and_up` AS select 'H' AS `leixing`,`wm_to_down_goods`.`id` AS `id`,`wm_to_down_goods`.`create_name` AS `create_name`,`wm_to_down_goods`.`create_by` AS `create_by`,`wm_to_down_goods`.`create_date` AS `create_date`,`wm_to_down_goods`.`order_id` AS `order_id`,`wm_to_down_goods`.`order_id_i` AS `order_id_i`,`wm_to_down_goods`.`goods_unit` AS `goods_unit`,`wm_to_down_goods`.`goods_pro_data` AS `goods_pro_data`,`wm_to_down_goods`.`goods_batch` AS `goods_batch`,`wm_to_down_goods`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wm_to_down_goods`.`bin_id_from` AS `bin_id`,`wm_to_down_goods`.`cus_code` AS `cus_code`,`wm_to_down_goods`.`base_unit` AS `base_unit`,(0 - `wm_to_down_goods`.`base_goodscount`) AS `base_goodscount`,(select `md_goods`.`goods_id` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_down_goods`.`goods_id`)) AS `goods_id`,(select `md_goods`.`zhl_kg` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_down_goods`.`goods_id`)) AS `zhl_kg`,(select `md_goods`.`chl_shl` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_down_goods`.`goods_id`)) AS `chl_shl`,(select `md_goods`.`jf_shp_lei` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_down_goods`.`goods_id`)) AS `jf_shp_lei` from `wm_to_down_goods` union all select 'S' AS `leixing`,`wm_to_up_goods`.`id` AS `id`,`wm_to_up_goods`.`create_name` AS `create_name`,`wm_to_up_goods`.`create_by` AS `create_by`,`wm_to_up_goods`.`create_date` AS `create_date`,`wm_to_up_goods`.`order_id` AS `order_id`,`wm_to_up_goods`.`order_id_i` AS `order_id_i`,`wm_to_up_goods`.`goods_unit` AS `goods_unit`,`wm_to_up_goods`.`goods_pro_data` AS `goods_pro_data`,`wm_to_up_goods`.`goods_batch` AS `goods_batch`,`wm_to_up_goods`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wm_to_up_goods`.`bin_id` AS `bin_id`,`wm_to_up_goods`.`cus_code` AS `cus_code`,`wm_to_up_goods`.`base_unit` AS `base_unit`,`wm_to_up_goods`.`base_goodscount` AS `base_goodscount`,(select `md_goods`.`goods_id` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_up_goods`.`goods_id`)) AS `goods_id`,(select `md_goods`.`zhl_kg` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_up_goods`.`goods_id`)) AS `zhl_kg`,(select `md_goods`.`chl_shl` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_up_goods`.`goods_id`)) AS `chl_shl`,(select `md_goods`.`jf_shp_lei` from `mv_goods` `md_goods` where (`md_goods`.`goods_code` = `wm_to_up_goods`.`goods_id`)) AS `jf_shp_lei` from `wm_to_up_goods`;

-- ----------------------------
-- View structure for mv_du_days
-- ----------------------------
DROP VIEW IF EXISTS `mv_du_days`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_du_days` AS select date_format(`mv_down_and_up`.`create_date`,'yyyy-MM-dd') AS `date_format(create_date,'yyyy-MM-dd')` from `mv_down_and_up` group by date_format(`mv_down_and_up`.`create_date`,'yyyy-MM-dd');

-- ----------------------------
-- View structure for mv_goods
-- ----------------------------
DROP VIEW IF EXISTS `mv_goods`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_goods` AS select `mg`.`id` AS `id`,`mg`.`suo_shu_ke_hu` AS `cus_code`,`mg`.`shp_bian_ma` AS `goods_id`,`mg`.`shp_bian_ma` AS `goods_code`,concat(`mg`.`shp_bian_ma`,'-',`mg`.`shp_ming_cheng`,'-',`mg`.`shl_dan_wei`) AS `goods_name`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`mg`.`jf_shp_lei` AS `jf_shp_lei`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`mg`.`cf_wen_ceng` AS `cf_wen_ceng`,`mg`.`mp_dan_ceng` AS `mp_dan_ceng`,`mg`.`mp_ceng_gao` AS `mp_ceng_gao`,`mg`.`shp_tiao_ma` AS `shp_tiao_ma`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `zhl_kgm`,`mg`.`chl_shl` AS `chl_shl`,`mg`.`ti_ji_cm` AS `ti_ji_cm`,`mg`.`zhl_kg` AS `zhl_kg`,`mg`.`zhl_kg` AS `zhl_kg_zx`,`mg`.`chp_shu_xing` AS `chp_shu_xing`,`mg`.`jsh_dan_wei` AS `baseunit`,`mg`.`JIZHUN_WENDU` AS `jizhun_wendu`,`mg`.`SHP_BIAN_MAKH` AS `shp_bian_makh`,'N' AS `chailing`,`mg`.`shl_dan_wei` AS `zhx_unit`,`mg`.`shp_gui_ge` AS `shp_gui_ge` from `md_goods` `mg` union all select concat(`mg`.`id`,'l') AS `id`,`mg`.`suo_shu_ke_hu` AS `cus_code`,`mg`.`shp_bian_ma` AS `goods_id`,concat(`mg`.`shp_bian_ma`,'l') AS `goods_code`,concat(`mg`.`shp_bian_ma`,'l-',`mg`.`shp_ming_cheng`,'-',`mg`.`jsh_dan_wei`) AS `goods_name`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`mg`.`jf_shp_lei` AS `jf_shp_lei`,`mg`.`jsh_dan_wei` AS `shl_dan_wei`,`mg`.`cf_wen_ceng` AS `cf_wen_ceng`,`mg`.`mp_dan_ceng` AS `mp_dan_ceng`,`mg`.`mp_ceng_gao` AS `mp_ceng_gao`,`mg`.`shp_tiao_ma` AS `shp_tiao_ma`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `zhl_kgm`,`mg`.`chl_shl` AS `chl_shl`,cast((`mg`.`ti_ji_cm` / `mg`.`chl_shl`) as signed) AS `ti_ji_cm`,(`mg`.`zhl_kg` / `mg`.`chl_shl`) AS `zhl_kg`,`mg`.`zhl_kg` AS `zhl_kg_zx`,`mg`.`chp_shu_xing` AS `chp_shu_xing`,`mg`.`jsh_dan_wei` AS `baseunit`,`mg`.`JIZHUN_WENDU` AS `jizhun_wendu`,`mg`.`SHP_BIAN_MAKH` AS `shp_bian_makh`,'Y' AS `chailing`,`mg`.`shl_dan_wei` AS `zhx_unit`,`mg`.`shp_gui_ge` AS `shp_gui_ge` from `md_goods` `mg` where (`mg`.`chl_kong_zhi` = 'Y');

-- ----------------------------
-- View structure for mv_stock_cus
-- ----------------------------
DROP VIEW IF EXISTS `mv_stock_cus`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_stock_cus` AS select `wg`.`id` AS `id`,`wg`.`kuctype` AS `kuctype`,cast(sum(`wg`.`goods_qua`) as signed) AS `goods_qua`,`wg`.`goods_unit` AS `goods_unit`,cast(sum(`wg`.`base_goodscount`) as signed) AS `base_goodscount`,`wg`.`base_unit` AS `base_unit`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,(`wg`.`goods_pro_data` + interval `wg`.`bzhi_qi` day) AS `dqr`,`mb`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,`mb`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`mb`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`wg`.`goods_id` AS `goods_id`,`wg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wg`.`shl_dan_wei` AS `shl_dan_wei`,`wg`.`hiti` AS `hiti`,`wg`.`shp_bian_makh` AS `shp_bian_makh`,(cast(sum(`wg`.`base_goodscount`) as signed) * `wg`.`zhl_kg`) AS `zhong_liang` from (`wv_stock_base` `wg` left join `md_bin` `mb` on((`wg`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`))) group by `wg`.`cus_code`,`wg`.`zhong_wen_qch`,`wg`.`goods_code`,`wg`.`goods_pro_data`,`wg`.`bzhi_qi`,`wg`.`kuctype` having (sum(`wg`.`base_goodscount`) <> 0) order by `wg`.`cus_code`,`wg`.`goods_id`;

-- ----------------------------
-- View structure for mv_stock_yj
-- ----------------------------
DROP VIEW IF EXISTS `mv_stock_yj`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_stock_yj` AS select `mv_stock_yj_base`.`id` AS `id`,`mv_stock_yj_base`.`kuctype` AS `kuctype`,`mv_stock_yj_base`.`base_goodscount` AS `base_goodscount`,`mv_stock_yj_base`.`base_unit` AS `base_unit`,`mv_stock_yj_base`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`mv_stock_yj_base`.`bin_id` AS `bin_id`,`mv_stock_yj_base`.`cus_code` AS `cus_code`,`mv_stock_yj_base`.`zhong_wen_qch` AS `zhong_wen_qch`,`mv_stock_yj_base`.`goods_id` AS `goods_id`,`mv_stock_yj_base`.`shp_ming_cheng` AS `shp_ming_cheng`,`mv_stock_yj_base`.`shl_dan_wei` AS `shl_dan_wei`,`mv_stock_yj_base`.`goods_pro_data` AS `goods_pro_data`,`mv_stock_yj_base`.`bzhi_qi` AS `bzhi_qi`,`mv_stock_yj_base`.`dqr` AS `dqr`,`mv_stock_yj_base`.`res_date` AS `res_date`,`mv_stock_yj_base`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`mv_stock_yj_base`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`mv_stock_yj_base`.`shp_bian_makh` AS `shp_bian_makh`,cast((`mv_stock_yj_base`.`res_date` / `mv_stock_yj_base`.`bzhi_qi`) as decimal(10,2)) AS `guoqibili` from `mv_stock_yj_base`;

-- ----------------------------
-- View structure for mv_stock_yj_base
-- ----------------------------
DROP VIEW IF EXISTS `mv_stock_yj_base`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_stock_yj_base` AS select `wg`.`id` AS `id`,`wg`.`kuctype` AS `kuctype`,cast(sum(`wg`.`base_goodscount`) as signed) AS `base_goodscount`,`wg`.`base_unit` AS `base_unit`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_id`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,(`wg`.`goods_pro_data` + interval `wg`.`bzhi_qi` day) AS `dqr`,(`wg`.`bzhi_qi` - (to_days(now()) - to_days(`wg`.`goods_pro_data`))) AS `res_date`,1 AS `qu_huo_ci_xu`,2 AS `shang_jia_ci_xu`,`mg`.`shp_bian_makh` AS `shp_bian_makh` from (`wv_stock_base` `wg` left join `mv_goods` `mg` on((`mg`.`goods_code` = `wg`.`goods_id`))) group by `wg`.`cus_code`,`wg`.`zhong_wen_qch`,`mg`.`goods_id`,`mg`.`shp_ming_cheng`,`wg`.`goods_pro_data`,`wg`.`bzhi_qi`,`wg`.`kuctype` having (sum(`wg`.`base_goodscount`) <> 0) order by `dqr`,`wg`.`cus_code`;

-- ----------------------------
-- View structure for rp_wm_down_and_qm
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_down_and_qm`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_down_and_qm` AS select `t`.`id` AS `id`,`h`.`om_sta` AS `om_sta`,`t`.`om_notice_id` AS `om_notice_id`,`h`.`IM_CUS_CODE` AS `im_cus_code`,`h`.`ocus_code` AS `ocus_code`,`h`.`ocus_name` AS `ocus_name`,`h`.`om_beizhu` AS `om_beizhu`,`h`.`delv_addr` AS `delv_addr`,`t`.`goods_id` AS `goods_id`,`t`.`goods_name` AS `goods_name`,`t`.`base_goodscount` AS `base_goodscount`,`t`.`goods_unit` AS `goods_unit`,`t`.`plan_sta` AS `plan_sta`,(select sum(`om`.`base_goodscount`) from `wm_om_qm_i` `om` where (`om`.`iom_notice_item` = `t`.`id`)) AS `sumqua` from (`wm_om_notice_i` `t` join `wm_om_notice_h` `h`) where ((`t`.`om_notice_id` = `h`.`om_notice_id`) and ((`h`.`om_sta` <> '已删除') or isnull(`h`.`om_sta`))) order by `h`.`create_date` desc;

-- ----------------------------
-- View structure for rp_wm_his_stock_ku
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_his_stock_ku`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_his_stock_ku` AS select `wh`.`id` AS `id`,`wh`.`his_date` AS `his_date`,`wh`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`wh`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wh`.`bin_id` AS `bin_id`,`wh`.`goods_id` AS `goods_id`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wh`.`count` AS `count`,`wh`.`base_unit` AS `base_unit`,(`mg`.`zhl_kg` / `mg`.`chl_shl`) AS `zhl_kg`,`mg`.`chl_shl` AS `chl_shl` from ((`wm_his_stock_ku` `wh` join `md_cus` `mc`) join `md_goods` `mg`) where ((`wh`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wh`.`goods_id` = `mg`.`shp_bian_ma`));

-- ----------------------------
-- View structure for rp_wm_in_qm
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_in_qm`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_in_qm` AS select `wg`.`id` AS `id`,`wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`im_notice_id` AS `im_notice_id`,`wg`.`item_text` AS `item_text`,`wg`.`rec_deg` AS `rec_deg`,`wg`.`bin_id` AS `ku_wei_bian_ma`,`wg`.`tin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,`wg`.`qm_ok_quat` AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`mg`.`zhl_kg` AS `zhl_kg`,(`wg`.`base_goodscount` * `mg`.`zhl_kg`) AS `sumzhl` from ((`wm_in_qm_i` `wg` join `md_cus` `mc`) join `mv_goods` `mg`) where ((`wg`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wg`.`goods_id` = `mg`.`goods_code`)) having (`wg`.`base_goodscount` > 0);

-- ----------------------------
-- View structure for rp_wm_to_down_goods
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_to_down_goods`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_to_down_goods` AS select `wg`.`id` AS `id`,`wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`order_id` AS `order_id`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id_from` AS `bin_id`,`wg`.`bin_id_to` AS `bin_id_to`,`wg`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`mg`.`zhl_kg` AS `zhl_kg`,(select `wm_om_notice_h`.`re_member` from `wm_om_notice_h` where (`wm_om_notice_h`.`om_notice_id` = `wg`.`order_id`)) AS `shouhuoren` from ((`wm_to_down_goods` `wg` join `md_cus` `mc`) join `mv_goods` `mg`) where ((`wg`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wg`.`goods_id` = `mg`.`goods_code`)) order by `wg`.`create_date` desc;

-- ----------------------------
-- View structure for rp_wm_to_up_goods
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_to_up_goods`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_to_up_goods` AS select `wg`.`id` AS `id`,`wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`order_id` AS `order_id`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`mg`.`zhl_kg` AS `zhl_kg` from ((`wm_to_up_goods` `wg` join `md_cus` `mc`) join `mv_goods` `mg`) where ((`wg`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wg`.`goods_id` = `mg`.`goods_code`)) order by `wg`.`create_date` desc;

-- ----------------------------
-- View structure for rp_wm_up_and_down
-- ----------------------------
DROP VIEW IF EXISTS `rp_wm_up_and_down`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rp_wm_up_and_down` AS select `wv`.`id` AS `id`,`wv`.`create_date` AS `create_date`,`wv`.`order_id` AS `order_id`,`wv`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wv`.`bin_id` AS `bin_id`,`wv`.`cus_code` AS `cus_code`,`wv`.`zhong_wen_qch` AS `zhong_wen_qch`,`wv`.`goods_id` AS `goods_id`,`wv`.`shp_ming_cheng` AS `shp_ming_cheng`,`wv`.`goods_pro_data` AS `goods_pro_data`,`wv`.`base_goodscount` AS `base_goodscount`,`wv`.`base_unit` AS `base_unit`,`mb`.`ku_wei_lei_xing` AS `leixing` from (`wv_stock_base` `wv` join `md_bin` `mb`) where ((`wv`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`) and (`wv`.`kuctype` = '库存'));

-- ----------------------------
-- View structure for v_order_stat
-- ----------------------------
DROP VIEW IF EXISTS `v_order_stat`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_order_stat` AS select count(`wm_im_notice_h`.`id`) AS `count`,left(`wm_im_notice_h`.`create_date`,7) AS `month` from `wm_im_notice_h` where (left(`wm_im_notice_h`.`create_date`,4) = left(sysdate(),4)) group by `month` order by `month`;

-- ----------------------------
-- View structure for wave_fuhe
-- ----------------------------
DROP VIEW IF EXISTS `wave_fuhe`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_fuhe` AS select `wd`.`id` AS `id`,`wd`.`create_by` AS `create_by`,`wd`.`create_name` AS `create_name`,`wd`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wd`.`order_id` AS `order_id`,`wd`.`order_type` AS `order_type`,`wd`.`goods_id` AS `goods_id`,`mg`.`goods_name` AS `goods_name`,`wd`.`base_goodscount` AS `goods_qua`,`mg`.`baseunit` AS `shl_dan_wei`,`wd`.`cus_code` AS `cus_code`,`mc`.`cus_name` AS `cus_name`,`wd`.`goods_pro_data` AS `goods_pro_data`,`wd`.`down_sta` AS `down_sta` from ((`wm_to_down_goods` `wd` join `mv_goods` `mg`) join `mv_cus` `mc`) where ((`wd`.`cus_code` = `mc`.`cus_code`) and (`wd`.`goods_id` = `mg`.`goods_code`) and (`wd`.`order_type` = '99') and isnull(`wd`.`down_sta`));

-- ----------------------------
-- View structure for wave_fuhe_head
-- ----------------------------
DROP VIEW IF EXISTS `wave_fuhe_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_fuhe_head` AS select `wave_fuhe`.`order_id` AS `order_id`,`wave_fuhe`.`cus_name` AS `cus_name`,`wave_fuhe`.`create_by` AS `create_by` from `wave_fuhe` group by `wave_fuhe`.`order_id`,`wave_fuhe`.`cus_name`,`wave_fuhe`.`create_by`;

-- ----------------------------
-- View structure for wave_to_down
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_down`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_down` AS select `wo`.`id` AS `id`,`wo`.`create_by` AS `create_by`,`wo`.`create_name` AS `create_name`,`wo`.`cus_code` AS `cus_code`,`wo`.`cus_name` AS `cus_name`,`wo`.`wave_id` AS `wave_id`,`wo`.`goods_id` AS `goods_id`,`wo`.`goods_name` AS `goods_name`,`wo`.`im_cus_code` AS `im_cus_code`,`wo`.`om_bei_zhu` AS `om_bei_zhu`,`wo`.`bin_id` AS `bin_id`,`wo`.`tin_id` AS `tin_id`,`wo`.`pro_data` AS `pro_data`,sum(`wo`.`base_goodscount`) AS `base_goodscount`,`wo`.`base_unit` AS `base_unit` from `wm_om_qm_i` `wo` where ((`wo`.`wave_id` is not null) and (`wo`.`bin_sta` = 'N')) group by `wo`.`cus_code`,`wo`.`cus_name`,`wo`.`wave_id`,`wo`.`goods_id`,`wo`.`goods_name`,`wo`.`im_cus_code`,`wo`.`om_bei_zhu`,`wo`.`bin_id`,`wo`.`tin_id`,`wo`.`pro_data`;

-- ----------------------------
-- View structure for wave_to_down_head
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_down_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_down_head` AS select `wave_to_down`.`wave_id` AS `wave_id`,`wave_to_down`.`cus_name` AS `cus_name` from `wave_to_down` group by `wave_to_down`.`wave_id`,`wave_to_down`.`cus_name`;

-- ----------------------------
-- View structure for wave_to_fj
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_fj`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_fj` AS select `wo`.`id` AS `id`,`wo`.`create_by` AS `create_by`,`wo`.`create_name` AS `create_name`,`wo`.`cus_code` AS `cus_code`,`wo`.`cus_name` AS `cus_name`,`wo`.`om_notice_id` AS `om_notice_id`,`wo`.`iom_notice_item` AS `iom_notice_item`,`wo`.`goods_id` AS `goods_id`,`wo`.`goods_name` AS `goods_name`,`wo`.`bin_id` AS `bin_id`,`wo`.`tin_id` AS `tin_id`,`wo`.`pro_data` AS `pro_data`,sum(`wo`.`base_goodscount`) AS `base_goodscount`,`wo`.`base_unit` AS `base_unit`,`wo`.`wave_id` AS `wave_id` from `wm_om_qm_i` `wo` where ((`wo`.`wave_id` is not null) and (`wo`.`bin_sta` = 'H')) group by `wo`.`cus_code`,`wo`.`cus_name`,`wo`.`om_notice_id`,`wo`.`iom_notice_item`,`wo`.`goods_id`,`wo`.`goods_name`,`wo`.`bin_id`,`wo`.`tin_id`;

-- ----------------------------
-- View structure for wave_to_fj_head
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_fj_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_fj_head` AS select `wave_to_fj`.`om_notice_id` AS `om_notice_id`,`wave_to_fj`.`cus_name` AS `cus_name`,`wave_to_fj`.`wave_id` AS `wave_id` from `wave_to_fj` group by `wave_to_fj`.`om_notice_id`,`wave_to_fj`.`cus_name`,`wave_to_fj`.`wave_id`;

-- ----------------------------
-- View structure for wave_to_zcfh
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_zcfh`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_zcfh` AS select `wo`.`id` AS `id`,`wo`.`create_by` AS `create_by`,`wo`.`create_name` AS `create_name`,`wo`.`cus_code` AS `cus_code`,`wo`.`cus_name` AS `cus_name`,`wo`.`om_notice_id` AS `om_notice_id`,`wo`.`iom_notice_item` AS `iom_notice_item`,`wo`.`goods_id` AS `goods_id`,`wo`.`goods_name` AS `goods_name`,`wo`.`bin_id` AS `bin_id`,`wo`.`tin_id` AS `tin_id`,`wo`.`pro_data` AS `pro_data`,sum(`wo`.`base_goodscount`) AS `base_goodscount`,`wo`.`base_unit` AS `base_unit`,`wo`.`wave_id` AS `wave_id` from `wm_om_qm_i` `wo` where ((`wo`.`wave_id` is not null) and (`wo`.`bin_sta` = 'F')) group by `wo`.`cus_code`,`wo`.`cus_name`,`wo`.`om_notice_id`,`wo`.`iom_notice_item`,`wo`.`goods_id`,`wo`.`goods_name`,`wo`.`bin_id`,`wo`.`tin_id`;

-- ----------------------------
-- View structure for wave_to_zcfh_head
-- ----------------------------
DROP VIEW IF EXISTS `wave_to_zcfh_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_zcfh_head` AS select `wave_to_zcfh`.`om_notice_id` AS `om_notice_id`,`wave_to_zcfh`.`cus_name` AS `cus_name`,`wave_to_zcfh`.`wave_id` AS `wave_id` from `wave_to_zcfh` group by `wave_to_zcfh`.`om_notice_id`,`wave_to_zcfh`.`cus_name`,`wave_to_zcfh`.`wave_id`;

-- ----------------------------
-- View structure for wv_avabin
-- ----------------------------
DROP VIEW IF EXISTS `wv_avabin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_avabin` AS select `md`.`id` AS `id`,`md`.`bin_store` AS `bin_store`,`md`.`ku_wei_shu_xing` AS `ku_wei_shu_xing`,`md`.`CHP_SHU_XING` AS `chp_shu_xing`,`md`.`ku_wei_bian_ma` AS `binid`,`md`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`md`.`zui_da_ti_ji` AS `zui_da_ti_ji`,`md`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`md`.`chang` AS `chang`,`md`.`kuan` AS `kuan`,`md`.`gao` AS `gao`,`md`.`zui_da_tuo_pan` AS `zui_da_tuo_pan`,`md`.`ting_yong` AS `ting_yong`,`md`.`ku_wei_lei_xing` AS `ku_wei_lei_xing` from `md_bin` `md` where ((`md`.`ting_yong` <> 'Y') and (`md`.`zui_da_tuo_pan` > (select count(0) from `wv_stock` `ws` where ((`ws`.`goods_qua` <> 0) and (`ws`.`ku_wei_bian_ma` = `md`.`ku_wei_bian_ma`))))) order by `md`.`shang_jia_ci_xu`;

-- ----------------------------
-- View structure for wv_avabin_all
-- ----------------------------
DROP VIEW IF EXISTS `wv_avabin_all`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_avabin_all` AS select `md`.`id` AS `id`,`md`.`bin_store` AS `bin_store`,`md`.`ku_wei_shu_xing` AS `ku_wei_shu_xing`,`md`.`CHP_SHU_XING` AS `chp_shu_xing`,`md`.`ku_wei_bian_ma` AS `binid`,`md`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`md`.`zui_da_ti_ji` AS `zui_da_ti_ji`,`md`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`md`.`chang` AS `chang`,`md`.`kuan` AS `kuan`,`md`.`gao` AS `gao`,`md`.`zui_da_tuo_pan` AS `zui_da_tuo_pan`,`md`.`ting_yong` AS `ting_yong`,`md`.`ku_wei_lei_xing` AS `ku_wei_lei_xing` from `md_bin` `md` where (`md`.`ting_yong` <> 'Y') order by `md`.`shang_jia_ci_xu`;

-- ----------------------------
-- View structure for wv_bin
-- ----------------------------
DROP VIEW IF EXISTS `wv_bin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_bin` AS select `md`.`id` AS `id`,`md`.`bin_store` AS `bin_store`,`md`.`ku_wei_shu_xing` AS `ku_wei_shu_xing`,`md`.`CHP_SHU_XING` AS `chp_shu_xing`,`md`.`ku_wei_bian_ma` AS `binid`,`md`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`md`.`zui_da_ti_ji` AS `zui_da_ti_ji`,`md`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`md`.`chang` AS `chang`,`md`.`kuan` AS `kuan`,`md`.`gao` AS `gao`,`md`.`zui_da_tuo_pan` AS `zui_da_tuo_pan`,`md`.`ting_yong` AS `ting_yong`,`md`.`ku_wei_lei_xing` AS `ku_wei_lei_xing` from `md_bin` `md` where (`md`.`ting_yong` <> 'Y') order by `md`.`shang_jia_ci_xu`;

-- ----------------------------
-- View structure for wv_bin_all
-- ----------------------------
DROP VIEW IF EXISTS `wv_bin_all`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_bin_all` AS select `md`.`id` AS `id`,`md`.`bin_store` AS `bin_store`,`md`.`ku_wei_shu_xing` AS `ku_wei_shu_xing`,`md`.`CHP_SHU_XING` AS `chp_shu_xing`,`md`.`ku_wei_bian_ma` AS `binid`,`md`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`md`.`zui_da_ti_ji` AS `zui_da_ti_ji`,`md`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`md`.`chang` AS `chang`,`md`.`kuan` AS `kuan`,`md`.`gao` AS `gao`,`md`.`zui_da_tuo_pan` AS `zui_da_tuo_pan`,`md`.`ting_yong` AS `ting_yong`,`md`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,(select count(0) from `wv_stock` `ws` where ((`ws`.`goods_qua` <> 0) and (`ws`.`ku_wei_bian_ma` = `md`.`ku_wei_bian_ma`))) AS `tincount`,(select group_concat('货主：',`ws`.`zhong_wen_qch`,',  商品：',`ws`.`shp_ming_cheng`,',  生产日期：',`ws`.`goods_pro_data`,',  数量：',`ws`.`base_goodscount`,',  单位：',`ws`.`shl_dan_wei` separator '|') AS `des` from `wv_stock` `ws` where ((`ws`.`goods_qua` <> 0) and (`ws`.`ku_wei_bian_ma` = `md`.`ku_wei_bian_ma`))) AS `des` from `md_bin` `md` order by `md`.`ming_xi3`,`md`.`ku_wei_bian_ma`;

-- ----------------------------
-- View structure for wv_day_cost_sum
-- ----------------------------
DROP VIEW IF EXISTS `wv_day_cost_sum`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_day_cost_sum` AS select concat(`wc`.`cost_data`,`wc`.`cus_code`,`wc`.`cost_code`) AS `id`,`wc`.`cost_data` AS `cost_data`,`wc`.`cus_code` AS `cus_code`,`wc`.`cus_name` AS `cus_name`,`wc`.`cost_code` AS `cost_code`,`wc`.`cost_name` AS `cost_name`,`wc`.`cost_js` AS `cost_js`,round(sum(`wc`.`day_cost_yj`),2) AS `yuanj`,round(sum(`wc`.`day_cost_bhs`),2) AS `bhsj`,round(sum(`wc`.`day_cost_se`),2) AS `shuie`,round(sum(`wc`.`cost_sl`),2) AS `cost_sl`,round(sum(`wc`.`day_cost_hsj`),2) AS `hansj`,`wc`.`cost_unit` AS `cost_unit` from `wm_day_cost` `wc` group by `wc`.`cus_code`,`wc`.`cus_name`,`wc`.`cost_code`,`wc`.`cost_name`,`wc`.`cost_data`,`wc`.`cost_js`,`wc`.`cost_unit`;

-- ----------------------------
-- View structure for wv_gi
-- ----------------------------
DROP VIEW IF EXISTS `wv_gi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gi` AS select `wd`.`id` AS `id`,`wd`.`create_date` AS `create_date`,`wd`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wd`.`order_id` AS `order_id`,`wd`.`goods_id` AS `goods_id`,`mg`.`goods_name` AS `goods_name`,`wd`.`base_goodscount` AS `goods_qua`,`mg`.`baseunit` AS `shl_dan_wei`,`mg`.`zhx_unit` AS `zhx_unit`,`mg`.`chl_shl` AS `chl_shl`,`wd`.`cus_code` AS `cus_code`,`mc`.`cus_name` AS `cus_name`,`wd`.`goods_pro_data` AS `goods_pro_data`,`wd`.`down_sta` AS `down_sta` from ((`wm_to_down_goods` `wd` join `mv_goods` `mg`) join `mv_cus` `mc`) where ((`wd`.`cus_code` = `mc`.`cus_code`) and (`wd`.`goods_id` = `mg`.`goods_code`));

-- ----------------------------
-- View structure for wv_gi_head
-- ----------------------------
DROP VIEW IF EXISTS `wv_gi_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gi_head` AS select `wv_gi`.`order_id` AS `order_id`,`wv_gi`.`cus_name` AS `cus_name` from `wv_gi` where isnull(`wv_gi`.`down_sta`) group by `wv_gi`.`order_id`,`wv_gi`.`cus_name` order by `wv_gi`.`order_id` desc;

-- ----------------------------
-- View structure for wv_gi_notice
-- ----------------------------
DROP VIEW IF EXISTS `wv_gi_notice`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gi_notice` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`update_date` AS `update_date`,`wg`.`id` AS `id`,`wg`.`om_notice_id` AS `om_notice_id`,`wg`.`iom_notice_item` AS `iom_notice_item`,`wg`.`bin_id` AS `bin_id`,`wg`.`tin_id` AS `tin_id`,`wg`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`qm_ok_quat` AS `gi_count`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhx_unit` AS `zhx_unit`,`mg`.`chl_shl` AS `chl_shl`,`wg`.`goods_unit` AS `shl_dan_wei`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`wg`.`assign_to` AS `assign_To`,(select `wm_om_notice_h`.`om_beizhu` from `wm_om_notice_h` where (`wm_om_notice_h`.`om_notice_id` = `wg`.`om_notice_id`)) AS `om_bei_zhu` from ((`wm_om_qm_i` `wg` join `md_cus` `mc`) join `mv_goods` `mg`) where ((`wg`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wg`.`goods_id` = `mg`.`goods_code`) and (`wg`.`bin_sta` = 'N')) order by `wg`.`bin_id`;

-- ----------------------------
-- View structure for wv_gi_notice_head
-- ----------------------------
DROP VIEW IF EXISTS `wv_gi_notice_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gi_notice_head` AS select `wv_gi_notice`.`om_notice_id` AS `om_notice_id`,`wv_gi_notice`.`zhong_wen_qch` AS `zhong_wen_qch` from `wv_gi_notice` group by `wv_gi_notice`.`om_notice_id`,`wv_gi_notice`.`zhong_wen_qch` order by `wv_gi_notice`.`om_bei_zhu` desc;

-- ----------------------------
-- View structure for wv_gr
-- ----------------------------
DROP VIEW IF EXISTS `wv_gr`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gr` AS select `i`.`id` AS `id`,`i`.`im_notice_id` AS `im_notice_id`,'托盘上' AS `kucunsta`,`i`.`bin_id` AS `bin_id`,`i`.`tin_id` AS `tin_id`,`i`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`i`.`goods_id` AS `goods_id`,`mg`.`goods_name` AS `shp_ming_cheng`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`i`.`qm_ok_quat` AS `qm_ok_quat`,`i`.`pro_data` AS `pro_data`,`i`.`create_date` AS `create_date`,`i`.`item_text` AS `item_text`,`mg`.`bzhi_qi` AS `bzhi_qi` from ((`md_cus` `mc` join `mv_goods` `mg`) join `wm_in_qm_i` `i`) where ((`i`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`i`.`goods_id` = `mg`.`goods_code`) and (`i`.`bin_sta` = 'N'));

-- ----------------------------
-- View structure for wv_last_move
-- ----------------------------
DROP VIEW IF EXISTS `wv_last_move`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_last_move` AS select `wt`.`id` AS `id`,`wt`.`create_date` AS `create_date`,`wt`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wt`.`bin_id` AS `bin_id`,`wt`.`goods_id` AS `goods_id`,`wt`.`goods_pro_data` AS `goods_pro_data` from `wm_to_up_goods` `wt` union all select `wt`.`id` AS `id`,`wt`.`create_date` AS `create_date`,`wt`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wt`.`bin_id_from` AS `bin_id`,`wt`.`goods_id` AS `goods_id`,`wt`.`goods_pro_data` AS `goods_pro_data` from `wm_to_down_goods` `wt`;

-- ----------------------------
-- View structure for wv_last_picking
-- ----------------------------
DROP VIEW IF EXISTS `wv_last_picking`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_last_picking` AS select `wt`.`id` AS `id`,`wt`.`create_date` AS `create_date`,`wt`.`bin_id` AS `ku_wei_bian_ma`,`wt`.`tin_id` AS `bin_id`,`wt`.`goods_id` AS `goods_id`,`wt`.`pro_data` AS `goods_pro_data` from `wm_om_qm_i` `wt` order by `wt`.`create_date` desc;

-- ----------------------------
-- View structure for wv_last_picking_stock
-- ----------------------------
DROP VIEW IF EXISTS `wv_last_picking_stock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_last_picking_stock` AS select `wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_code` AS `goods_code`,`wg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wg`.`shp_gui_ge` AS `shp_gui_ge`,`wg`.`chl_shl` AS `chl_shl`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`dqr` AS `dqr`,`wg`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,`wg`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`wg`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`wg`.`bin_store` AS `bin_store`,`wg`.`base_goodscount` AS `base_goodscount`,(select `wv_last_picking`.`create_date` from `wv_last_picking` where ((`wv_last_picking`.`ku_wei_bian_ma` = `wg`.`ku_wei_bian_ma`) and (`wv_last_picking`.`goods_id` = `wg`.`goods_id`)) limit 1) AS `LAST_date`,sum(`wg`.`base_goodscount`) AS `keyongkucun`,sum((case when (`wg`.`kuctype` = '待下架') then `wg`.`base_goodscount` end)) AS `daixiaj`,`wg`.`base_unit` AS `base_unit` from `wv_stock` `wg` group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data`;

-- ----------------------------
-- View structure for wv_notice
-- ----------------------------
DROP VIEW IF EXISTS `wv_notice`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_notice` AS select `i`.`id` AS `id`,`h`.`notice_id` AS `notice_id`,`h`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`h`.`im_sta` AS `im_sta`,`i`.`goods_code` AS `goods_code`,`mg`.`goods_name` AS `shp_ming_cheng`,`mg`.`shp_tiao_ma` AS `shp_tiao_ma`,`mg`.`cf_wen_ceng` AS `cf_wen_ceng`,`mg`.`mp_dan_ceng` AS `mp_dan_ceng`,`mg`.`mp_ceng_gao` AS `mp_ceng_gao`,`mg`.`ti_ji_cm` AS `ti_ji_cm`,`i`.`goods_count` AS `goods_count`,ifnull(`i`.`goods_qm_count`,0) AS `goods_qm_count`,(`i`.`goods_count` - ifnull(`i`.`goods_qm_count`,0)) AS `gr_count`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`i`.`goods_fvol` AS `goods_fvol`,`i`.`goods_weight` AS `goods_weight`,(curdate() - interval (`mg`.`bzhi_qi` - `mg`.`zhl_kgm`) day) AS `lastgrdate`,(select `wm_in_qm_i`.`pro_data` from `wm_in_qm_i` where ((`wm_in_qm_i`.`goods_id` = `i`.`goods_code`) and (`wm_in_qm_i`.`im_notice_id` <> `i`.`im_notice_id`)) order by `wm_in_qm_i`.`create_date` desc limit 1) AS `preprodate`,(select `wm_in_qm_i`.`rec_deg` from `wm_in_qm_i` where (`wm_in_qm_i`.`im_notice_id` = `i`.`im_notice_id`) order by `wm_in_qm_i`.`create_date` desc limit 1) AS `rec_deg` from (((`wm_im_notice_h` `h` join `wm_im_notice_i` `i`) join `md_cus` `mc`) join `mv_goods` `mg`) where ((`h`.`notice_id` = `i`.`im_notice_id`) and (`h`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`i`.`bin_pre` = 'N') and (`i`.`goods_code` = `mg`.`goods_code`) and (`h`.`order_type_code` <> '04')) order by `h`.`notice_id` desc;

-- ----------------------------
-- View structure for wv_notice_head
-- ----------------------------
DROP VIEW IF EXISTS `wv_notice_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_notice_head` AS select `wv_notice`.`notice_id` AS `notice_id`,`wv_notice`.`zhong_wen_qch` AS `zhong_wen_qch` from `wv_notice` group by `wv_notice`.`notice_id`,`wv_notice`.`zhong_wen_qch`;

-- ----------------------------
-- View structure for wv_no_use_bin
-- ----------------------------
DROP VIEW IF EXISTS `wv_no_use_bin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_no_use_bin` AS select `md`.`id` AS `id`,`md`.`bin_store` AS `bin_store`,`md`.`ku_wei_shu_xing` AS `ku_wei_shu_xing`,`md`.`CHP_SHU_XING` AS `chp_shu_xing`,`md`.`ku_wei_bian_ma` AS `binid`,`md`.`suo_shu_ke_hu` AS `suo_shu_ke_hu`,`md`.`zui_da_ti_ji` AS `zui_da_ti_ji`,`md`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`md`.`chang` AS `chang`,`md`.`kuan` AS `kuan`,`md`.`gao` AS `gao`,`md`.`zui_da_tuo_pan` AS `zui_da_tuo_pan`,`md`.`ting_yong` AS `ting_yong`,`md`.`ku_wei_lei_xing` AS `ku_wei_lei_xing` from `md_bin` `md` where ((`md`.`ting_yong` <> 'Y') and (1 > (select count(0) from `wv_stock` `ws` where ((`ws`.`goods_qua` <> 0) and (`ws`.`ku_wei_bian_ma` = `md`.`ku_wei_bian_ma`))))) order by `md`.`shang_jia_ci_xu`;

-- ----------------------------
-- View structure for wv_stock
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock` AS select concat(`wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`goods_id`,`wg`.`goods_pro_data`) AS `id`,`wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`kuctype` AS `kuctype`,cast(sum(`wg`.`base_goodscount`) as signed) AS `goods_qua`,`wg`.`goods_unit` AS `goods_unit`,cast(sum(`wg`.`base_goodscount`) as signed) AS `base_goodscount`,`wg`.`base_unit` AS `base_unit`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_code` AS `goods_code`,`wg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wg`.`shl_dan_wei` AS `shl_dan_wei`,`wg`.`chl_shl` AS `chl_shl`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`shp_gui_ge` AS `shp_gui_ge`,(`wg`.`goods_pro_data` + interval ifnull(`wg`.`bzhi_qi`,0) day) AS `dqr`,`mb`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,`mb`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`mb`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`mb`.`bin_store` AS `bin_store` from (`wv_stock_base` `wg` join `md_bin` `mb`) where (`wg`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`) group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data`,`wg`.`kuctype` having (sum(`wg`.`base_goodscount`) <> 0);

-- ----------------------------
-- View structure for wv_stock_base
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_base`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_base` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,`wg`.`kuctype` AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_qua` AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `yushoutianshu`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,concat(`mg`.`mp_ceng_gao`,'*',`mg`.`mp_dan_ceng`) AS `hiti`,`mg`.`shp_bian_makh` AS `shp_bian_makh`,`mg`.`chl_shl` AS `chl_shl`,`wg`.`order_id` AS `order_id`,`mg`.`zhl_kg` AS `zhl_kg`,`mg`.`shp_gui_ge` AS `shp_gui_ge` from (`wv_stock_base_stock` `wg` left join `mv_goods` `mg` on((`wg`.`goods_id` = `mg`.`goods_code`)));

-- ----------------------------
-- View structure for wv_stock_base_bak
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_base_bak`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_base_bak` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,sum(`wg`.`goods_qua`) AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `yushoutianshu`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,sum(`wg`.`base_goodscount`) AS `base_goodscount`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,concat(`mg`.`mp_ceng_gao`,'*',`mg`.`mp_dan_ceng`) AS `hiti`,`mg`.`shp_bian_makh` AS `shp_bian_makh`,`mg`.`chl_shl` AS `chl_shl`,`wg`.`order_id` AS `order_id`,`mg`.`zhl_kg` AS `zhl_kg` from (`wm_to_up_goods` `wg` left join `mv_goods` `mg` on((`wg`.`goods_id` = `mg`.`goods_code`))) group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data` union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id_from`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,sum((0 - `wg`.`goods_quaok`)) AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `yushoutianshu`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,sum((0 - `wg`.`base_goodscount`)) AS `base_goodscount`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`mg`.`chl_shl` AS `chl_shl`,concat(`mg`.`mp_ceng_gao`,'*',`mg`.`mp_dan_ceng`) AS `hiti`,`mg`.`shp_bian_makh` AS `shp_bian_makh`,`wg`.`order_id` AS `order_id`,`mg`.`zhl_kg` AS `zhl_kg` from (`wm_to_down_goods` `wg` left join `mv_goods` `mg` on((`wg`.`goods_id` = `mg`.`goods_code`))) group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id_from`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data` union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'待下架' AS `kuctype`,`wg`.`bin_id` AS `ku_wei_bian_ma`,trim(`wg`.`tin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,sum((0 - `wg`.`qm_ok_quat`)) AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `yushoutianshu`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,sum((0 - `wg`.`base_goodscount`)) AS `base_goodscount`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`mg`.`chl_shl` AS `chl_shl`,concat(`mg`.`mp_ceng_gao`,'*',`mg`.`mp_dan_ceng`) AS `hiti`,`mg`.`shp_bian_makh` AS `shp_bian_makh`,`wg`.`om_notice_id` AS `order_id`,`mg`.`zhl_kg` AS `zhl_kg` from (`wm_om_qm_i` `wg` left join `mv_goods` `mg` on((`wg`.`goods_id` = `mg`.`goods_code`))) where ((`wg`.`bin_sta` = 'N') or (`wg`.`bin_sta` = 'I')) group by `wg`.`bin_id`,`wg`.`tin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`pro_data`;

-- ----------------------------
-- View structure for wv_stock_base_stock
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_base_stock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_base_stock` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_qua` AS `goods_qua`,`wg`.`order_id` AS `order_id`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount` from `wm_to_up_goods` `wg` union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id_from`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,(0 - `wg`.`goods_quaok`) AS `goods_qua`,`wg`.`order_id` AS `order_id`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,(0 - `wg`.`base_goodscount`) AS `base_goodscount` from `wm_to_down_goods` `wg` union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'待下架' AS `kuctype`,`wg`.`bin_id` AS `ku_wei_bian_ma`,trim(`wg`.`tin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,(0 - `wg`.`qm_ok_quat`) AS `goods_qua`,`wg`.`om_notice_id` AS `order_id`,`wg`.`pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,(0 - `wg`.`base_goodscount`) AS `base_goodscount` from `wm_om_qm_i` `wg` where ((`wg`.`bin_sta` = 'N') or (`wg`.`bin_sta` = 'I'));

-- ----------------------------
-- View structure for wv_stock_last_stt
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_last_stt`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_last_stt` AS select `ws`.`create_date` AS `create_date`,`ws`.`create_name` AS `create_name`,`ws`.`create_by` AS `create_by`,concat(`ws`.`ku_wei_bian_ma`,`ws`.`bin_id`,`ws`.`goods_id`,`ws`.`goods_pro_data`) AS `id`,`ws`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`ws`.`bin_id` AS `bin_id`,`ws`.`cus_code` AS `cus_code`,`ws`.`zhong_wen_qch` AS `zhong_wen_qch`,`ws`.`goods_code` AS `goods_code`,`ws`.`goods_id` AS `goods_id`,cast(sum(`ws`.`base_goodscount`) as signed) AS `goods_qua`,`ws`.`shp_ming_cheng` AS `shp_ming_cheng`,`ws`.`goods_pro_data` AS `goods_pro_data`,`ws`.`bzhi_qi` AS `bzhi_qi`,`ws`.`yushoutianshu` AS `yushoutianshu`,`ws`.`base_unit` AS `goods_unit`,(select max(`wvp`.`create_date`) from `wv_last_picking` `wvp` where ((`wvp`.`ku_wei_bian_ma` = `ws`.`ku_wei_bian_ma`) and (`wvp`.`goods_id` = `ws`.`goods_id`))) AS `last_move` from `wv_stock_base` `ws` where ((`ws`.`kuctype` = '库存') or (`ws`.`kuctype` = ' 待下架')) group by `ws`.`ku_wei_bian_ma`,`ws`.`bin_id`,`ws`.`cus_code`,`ws`.`zhong_wen_qch`,`ws`.`goods_code`,`ws`.`goods_pro_data`,`ws`.`bzhi_qi` having (sum(`ws`.`base_goodscount`) > 0) order by `ws`.`ku_wei_bian_ma`;

-- ----------------------------
-- View structure for wv_stock_stt
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_stt`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_stt` AS select `ws`.`create_date` AS `create_date`,`ws`.`create_name` AS `create_name`,`ws`.`create_by` AS `create_by`,concat(`ws`.`ku_wei_bian_ma`,`ws`.`bin_id`,`ws`.`goods_id`,`ws`.`goods_pro_data`) AS `id`,`ws`.`kuctype` AS `kuctype`,`ws`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`ws`.`bin_id` AS `bin_id`,`ws`.`cus_code` AS `cus_code`,`ws`.`zhong_wen_qch` AS `zhong_wen_qch`,`ws`.`goods_code` AS `goods_code`,`ws`.`goods_id` AS `goods_id`,cast(sum(`ws`.`base_goodscount`) as signed) AS `goods_qua`,`ws`.`shp_ming_cheng` AS `shp_ming_cheng`,`ws`.`goods_pro_data` AS `goods_pro_data`,`ws`.`bzhi_qi` AS `bzhi_qi`,`ws`.`yushoutianshu` AS `yushoutianshu`,`ws`.`base_unit` AS `goods_unit`,(select `wm_stt_in_goods`.`stt_sta` from `wm_stt_in_goods` where ((`wm_stt_in_goods`.`bin_id` = `ws`.`ku_wei_bian_ma`) and (`wm_stt_in_goods`.`tin_id` = `ws`.`bin_id`) and (`wm_stt_in_goods`.`goods_id` = `ws`.`goods_id`) and (`wm_stt_in_goods`.`goods_pro_data` = `ws`.`goods_pro_data`)) limit 1) AS `stt_sta`,(select `wm_to_move_goods`.`move_sta` from `wm_to_move_goods` where ((`wm_to_move_goods`.`bin_from` = `ws`.`ku_wei_bian_ma`) and (`wm_to_move_goods`.`tin_from` = `ws`.`bin_id`) and (`wm_to_move_goods`.`goods_id` = `ws`.`goods_id`) and (`wm_to_move_goods`.`goods_pro_data` = `ws`.`goods_pro_data`)) order by `wm_to_move_goods`.`create_date` desc limit 1) AS `move_sta`,(select `wv_last_move`.`create_date` from `wv_last_move` where ((`wv_last_move`.`ku_wei_bian_ma` = `ws`.`ku_wei_bian_ma`) and (`wv_last_move`.`bin_id` = `ws`.`bin_id`) and (`wv_last_move`.`goods_id` = `ws`.`goods_id`) and (`wv_last_move`.`goods_pro_data` = `ws`.`goods_pro_data`)) order by `wv_last_move`.`create_date` desc limit 1) AS `last_move` from `wv_stock_base` `ws` where ((`ws`.`kuctype` = '库存') or (`ws`.`kuctype` = ' 待下架')) group by `ws`.`ku_wei_bian_ma`,`ws`.`bin_id`,`ws`.`cus_code`,`ws`.`zhong_wen_qch`,`ws`.`goods_code`,`ws`.`goods_pro_data`,`ws`.`bzhi_qi`,`ws`.`kuctype` having (sum(`ws`.`base_goodscount`) > 0) order by `ws`.`ku_wei_bian_ma`;

-- ----------------------------
-- View structure for wv_stock_stt_bin
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_stt_bin`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_stt_bin` AS select `ws`.`create_date` AS `create_date`,`ws`.`create_name` AS `create_name`,`ws`.`create_by` AS `create_by`,concat(`ws`.`ku_wei_bian_ma`,`ws`.`goods_id`,`ws`.`goods_pro_data`) AS `id`,`ws`.`kuctype` AS `kuctype`,`ws`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`ws`.`bin_id` AS `bin_id`,`ws`.`cus_code` AS `cus_code`,`ws`.`zhong_wen_qch` AS `zhong_wen_qch`,`ws`.`goods_id` AS `goods_id`,cast(sum(`ws`.`goods_qua`) as signed) AS `goods_qua`,`ws`.`shp_ming_cheng` AS `shp_ming_cheng`,`ws`.`goods_pro_data` AS `goods_pro_data`,`ws`.`bzhi_qi` AS `bzhi_qi`,`ws`.`goods_unit` AS `goods_unit`,(select `wm_stt_in_goods`.`stt_sta` from `wm_stt_in_goods` where (`wm_stt_in_goods`.`bin_id` = `ws`.`ku_wei_bian_ma`) order by `wm_stt_in_goods`.`create_date` desc limit 1) AS `stt_sta`,(select `wm_to_move_goods`.`move_sta` from `wm_to_move_goods` where (`wm_to_move_goods`.`bin_from` = `ws`.`ku_wei_bian_ma`) order by `wm_to_move_goods`.`create_date` desc limit 1) AS `move_sta`,(select `wv_last_move`.`create_date` from `wv_last_move` where ((`wv_last_move`.`ku_wei_bian_ma` = `ws`.`ku_wei_bian_ma`) and (`wv_last_move`.`goods_id` = `ws`.`goods_id`)) order by `wv_last_move`.`create_date` desc limit 1) AS `last_move` from `wv_stock_base` `ws` where (`ws`.`kuctype` = '库存') group by `ws`.`ku_wei_bian_ma`,`ws`.`cus_code`,`ws`.`zhong_wen_qch`,`ws`.`goods_id`,`ws`.`goods_pro_data`,`ws`.`bzhi_qi`,`ws`.`kuctype` order by `ws`.`ku_wei_bian_ma`;

-- ----------------------------
-- View structure for wv_stt_head
-- ----------------------------
DROP VIEW IF EXISTS `wv_stt_head`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stt_head` AS select `wm_stt_in_goods`.`create_date` AS `id` from `wm_stt_in_goods` where (`wm_stt_in_goods`.`stt_sta` = '计划中') group by `wm_stt_in_goods`.`create_date`;

-- ----------------------------
-- Procedure structure for countfeiyong
-- ----------------------------
DROP PROCEDURE IF EXISTS `countfeiyong`;
delimiter ;;
CREATE PROCEDURE `countfeiyong`(IN `countDate` date)
BEGIN







END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_rp_period_in_out
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_rp_period_in_out`;
delimiter ;;
CREATE PROCEDURE `update_rp_period_in_out`(IN datefrom VARCHAR(45), IN dateto VARCHAR(45), IN username VARCHAR(45))
BEGIN
delete from  `rp_period_in_out` where  username = username;

INSERT INTO  `rp_period_in_out`
( 
`create_by`,
`date_period`,
`username`,
`goods_id`,
`goods_name`,
`goods_unit`,
`goods_guige`,
`goods_qc`,
`goods_in`,
`goods_out`,
`goods_qm`,
`goods_now`)
 SELECT   username, CONCAT(datefrom,dateto),username,wv.goods_id,wv.shp_ming_cheng,wv.shl_dan_wei,wv.shp_gui_ge,  
(SELECT 
            SUM(IFNULL(iwm.base_goodscount,0)   )
        FROM
             mv_down_and_up iwm
        WHERE
            TO_DAYS(iwm.create_date) < TO_DAYS(datefrom) 
                  AND iwm.goods_id = wv.goods_id),
  (SELECT 
            SUM(IFNULL(iwm.base_goodscount,0)  )
        FROM
             wm_to_up_goods iwm
        WHERE
            TO_DAYS(iwm.create_date) >= TO_DAYS(datefrom) AND TO_DAYS(iwm.create_date) <= TO_DAYS(dateto)
                  AND iwm.order_id <> 'ZY' AND iwm.goods_id = wv.goods_id)  ,
(SELECT 
            SUM(IFNULL(ABS(iwm.base_goodscount),0)   )
        FROM
             wm_to_down_goods iwm
        WHERE
            TO_DAYS(iwm.create_date) >= TO_DAYS(datefrom) AND TO_DAYS(iwm.create_date) <= TO_DAYS(dateto)
               AND iwm.order_id <> 'ZY'  AND iwm.goods_id = wv.goods_id),
(SELECT 
            SUM(IFNULL( iwm.base_goodscount,0)   )
        FROM
             mv_down_and_up iwm
        WHERE
            TO_DAYS(iwm.create_date) <= TO_DAYS(dateto) 
                  AND iwm.goods_id = wv.goods_id),
SUM(IFNULL(base_goodscount,0)) FROM wv_stock wv GROUP BY wv.goods_id;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_wm_his_stock
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_wm_his_stock`;
delimiter ;;
CREATE PROCEDURE `update_wm_his_stock`(IN wmdate VARCHAR(45))
BEGIN

DELETE FROM wm_his_stock WHERE his_date = wmdate;
DELETE FROM wm_his_stock_ku WHERE his_date = wmdate;
delete from wm_day_his WHERE his_date <> '9999-12-31';
DELETE  FROM zzjee.wm_day_cost WHERE day_cost_yj = 0;

INSERT INTO wm_his_stock (
  `id` ,
  `his_date` ,
  `cus_code` ,
  `ku_wei_bian_ma` ,
  `bin_id` ,
  `goods_id` ,
  `count` ,
  `base_unit`
)
SELECT 
    CONCAT(wmdate,
            mdp.cus_code,
            mdp.ku_wei_bian_ma,
            mdp.bin_id,
            mdp.goods_id) AS id,
    wmdate AS his_date,
    mdp.cus_code,
    mdp.ku_wei_bian_ma,
    mdp.bin_id,
    mdp.goods_id,
    SUM(base_goodscount) AS COUNT,
    mdp.base_unit
 
FROM
    mv_down_and_up mdp
         JOIN `md_bin` `mb`
WHERE (`mdp`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`) AND(
    (mdp.leixing = 'S'
        AND TO_DAYS(mdp.create_date) <= TO_DAYS(wmdate))
        OR (mdp.order_id <> 'ZY'
        AND mdp.leixing = 'H'
        AND TO_DAYS(mdp.create_date) < TO_DAYS(wmdate))
        OR (mdp.order_id = 'ZY'
        AND mdp.leixing = 'H'
        AND TO_DAYS(mdp.create_date) <= TO_DAYS(wmdate)))
GROUP BY mdp.cus_code , mdp.ku_wei_bian_ma , mdp.bin_id
HAVING SUM(base_goodscount) <> 0
ORDER BY mdp.cus_code , mdp.create_date;
INSERT INTO wm_his_stock_ku (
  `id` ,
  `his_date` ,
  `cus_code` ,
  `ku_wei_bian_ma` ,
  `bin_id` ,
  `goods_id` ,
  `count` ,
  `base_unit`
)
SELECT 
    CONCAT(wmdate,
            mdp.cus_code,
            mdp.ku_wei_bian_ma,
            mdp.bin_id,
            mdp.goods_id) AS id,
    wmdate AS his_date,
    mdp.cus_code,
    mdp.ku_wei_bian_ma,
    mdp.bin_id,
    mdp.goods_id,
    SUM(base_goodscount) AS COUNT,
    mdp.base_unit
 
FROM
    mv_down_and_up mdp
         JOIN `md_bin` `mb`
WHERE (`mdp`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`) AND
    ((mdp.leixing = 'S'
        AND TO_DAYS(mdp.create_date) <= TO_DAYS(wmdate))
        OR (mdp.leixing = 'H'
        AND TO_DAYS(mdp.create_date) <= TO_DAYS(wmdate)))
        
GROUP BY mdp.cus_code , mdp.ku_wei_bian_ma , mdp.bin_id,mdp.goods_id
HAVING SUM(base_goodscount) <> 0
ORDER BY mdp.cus_code , mdp.create_date;




INSERT INTO `wm_day_his`
(`id`,
`his_date`,
`his_day_in`,
`his_day_out`,
`his_day_amount`)
select 
    cost_date as id,
    cost_date ,
    (SELECT 
            sum(iwm.base_goodscount * iwm.zhl_kg)
        FROM
             mv_down_and_up iwm
        where
            to_days(iwm.create_date) = to_days(hku.cost_date)
                and iwm.leixing = 'S') as his_day_in,
   (SELECT 
            sum(owm.base_goodscount * owm.zhl_kg)
        FROM
             mv_down_and_up owm
        where
            to_days(owm.create_date) = to_days(hku.cost_date)
                and owm.leixing = 'H') as his_day_out,
(SELECT 
            sum(iowm.base_goodscount * iowm.zhl_kg)
        FROM
             mv_down_and_up iowm
        where
            to_days(iowm.create_date) <= to_days(hku.cost_date)
                ) as his_day_amount
from
    wm_day_cost_conf hku
group by cost_date
order by cost_date asc;



END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
