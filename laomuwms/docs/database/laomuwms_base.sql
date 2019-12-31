CREATE DATABASE  IF NOT EXISTS `laomuwms_base` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laomuwms_base`;
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

 Date: 27/12/2019 13:51:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ba_act_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_act_type`;
CREATE TABLE `ba_act_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `act_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业类型代码',
  `act_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业类型名称',
  `oper_step_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务环节',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_act_type
-- ----------------------------
INSERT INTO `ba_act_type` VALUES ('4028b8815ddb4424015ddb6d4fe50001', '管理员', 'admin', '2017-08-13 19:49:20', NULL, NULL, NULL, 'A04', 'A04', '03', '借货先出', '11');
INSERT INTO `ba_act_type` VALUES ('4028b8815ddb4424015ddb7ac9ea0007', '管理员', 'admin', '2017-08-13 20:04:03', NULL, NULL, NULL, 'A04', 'A04', '04', '品质变更', '11');
INSERT INTO `ba_act_type` VALUES ('8a7ba3345da000e0015da002ef730005', '管理员', 'admin', '2017-08-02 06:55:33', '管理员', 'admin', '2017-08-13 19:49:03', 'A03', 'A03', '02', '下架', '11');
INSERT INTO `ba_act_type` VALUES ('8a7ba3345da000e0015da00302df0006', '管理员', 'admin', '2017-08-02 06:55:38', '管理员', 'admin', '2017-08-13 19:48:51', 'A03', 'A03', '01', '上架', '11');

-- ----------------------------
-- Table structure for ba_area
-- ----------------------------
DROP TABLE IF EXISTS `ba_area`;
CREATE TABLE `ba_area`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `area_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大区代码',
  `area_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大区名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_area
-- ----------------------------
INSERT INTO `ba_area` VALUES ('8a7ba3345d97830b015d9e237c19000a', '管理员', 'admin', '2017-08-01 22:11:51', NULL, NULL, NULL, 'A03', 'A03', 'dq1', 'da21');

-- ----------------------------
-- Table structure for ba_barea
-- ----------------------------
DROP TABLE IF EXISTS `ba_barea`;
CREATE TABLE `ba_barea`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `barea_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '片区代码',
  `barea_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '片区名称',
  `barea_rdata` double NULL DEFAULT NULL COMMENT '回单时限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_barea
-- ----------------------------
INSERT INTO `ba_barea` VALUES ('8a7ba3345d97830b015d9e22cb5a0009', '管理员', 'admin', '2017-08-01 22:11:06', NULL, NULL, NULL, 'A03', 'A03', 'ba1', 'ba12', 1);

-- ----------------------------
-- Table structure for ba_bin_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_bin_type`;
CREATE TABLE `ba_bin_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `bin_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库位类型代码',
  `bin_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库位类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_bin_type
-- ----------------------------
INSERT INTO `ba_bin_type` VALUES ('402881b265cd6c020165ce2a6e8000ab', 'cg01', 'cg01', '2018-09-12 22:23:31', NULL, NULL, NULL, 'A04', 'A04', '短少储位', '短少储位');
INSERT INTO `ba_bin_type` VALUES ('4028b8815ddb4424015ddb6f23940004', '管理员', 'admin', '2017-08-13 19:51:20', 'admin', 'admin', '2017-09-16 16:57:47', 'A04', 'A04', '不良品区', '不良品区');
INSERT INTO `ba_bin_type` VALUES ('4028b8815ddb4424015ddb7166e40005', '管理员', 'admin', '2017-08-13 19:53:48', 'test1', 'test1', '2017-09-02 11:44:24', 'A04', 'A04', '进货暂存', '进货暂存');
INSERT INTO `ba_bin_type` VALUES ('4028b8815ddb4424015ddb718c270006', '管理员', 'admin', '2017-08-13 19:53:58', 'test1', 'test1', '2017-09-02 11:44:16', 'A04', 'A04', '出货暂存', '出货暂存');
INSERT INTO `ba_bin_type` VALUES ('8a7ba3345da000e0015da2fa829f0026', '管理员', 'admin', '2017-08-02 20:45:12', 'admin', 'admin', '2017-09-16 16:57:42', 'A03', 'A03', '良品区', '良品区');
INSERT INTO `ba_bin_type` VALUES ('8a7ba3345e2bde20015e40afa713000e', 'test1', 'test1', '2017-09-02 11:43:26', NULL, NULL, NULL, 'A04', 'A04', '整板储位', '整板储位');
INSERT INTO `ba_bin_type` VALUES ('8a7ba3345e2bde20015e40b03a90000f', 'test1', 'test1', '2017-09-02 11:44:04', NULL, NULL, NULL, 'A04', 'A04', '整箱储位', '整箱储位');
INSERT INTO `ba_bin_type` VALUES ('8a7ba3345e2bde20015e40b5a54e0010', 'test1', 'test1', '2017-09-02 11:49:59', NULL, NULL, NULL, 'A04', 'A04', '拆零储位', '拆零储位');

-- ----------------------------
-- Table structure for ba_buss_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_buss_type`;
CREATE TABLE `ba_buss_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `buss_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型代码',
  `buss_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型名称',
  `buss_type_text` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_buss_type
-- ----------------------------
INSERT INTO `ba_buss_type` VALUES ('8a7ba3345da000e0015da3010115002e', '管理员', 'admin', '2017-08-02 20:52:18', '管理员', 'admin', '2017-08-06 10:11:23', 'A03', 'A03', '01', '进货', '1');

-- ----------------------------
-- Table structure for ba_city
-- ----------------------------
DROP TABLE IF EXISTS `ba_city`;
CREATE TABLE `ba_city`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `city_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区代码',
  `city_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区名称',
  `city_serc` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区助记码',
  `city_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市类型',
  `barea_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '片区信息',
  `darea_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大区信息',
  `city_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_city
-- ----------------------------
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e2434e9000c', '管理员', 'admin', '2017-08-01 22:12:39', NULL, NULL, NULL, 'A03', 'A03', '8a7ba3345d97830b015d9e23d49d000b', '12', '12', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e249793000d', '管理员', 'admin', '2017-08-01 22:13:04', NULL, NULL, NULL, 'A03', 'A03', '8a7ba3345d97830b015d9e2434e9000c', '1111111', '11111', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e24c269000e', '管理员', 'admin', '2017-08-01 22:13:15', NULL, NULL, NULL, 'A03', 'A03', '8a7ba3345d97830b015d9e2434e9000c', '34324', '23423423423424', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e2753b6000f', '管理员', 'admin', '2017-08-01 22:16:03', NULL, NULL, NULL, 'A03', 'A03', '12', '12', '12', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e2f50870010', '管理员', 'admin', '2017-08-01 22:24:47', NULL, NULL, NULL, 'A03', 'A03', NULL, '北京', 'bj', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e2f7b0d0011', '管理员', 'admin', '2017-08-01 22:24:58', NULL, NULL, NULL, 'A03', 'A03', NULL, '河南', 'hn', 'city1', 'ba1', 'dq1', NULL);
INSERT INTO `ba_city` VALUES ('8a7ba3345d97830b015d9e2fb2520012', '管理员', 'admin', '2017-08-01 22:25:12', NULL, NULL, NULL, 'A03', 'A03', '8a7ba3345d97830b015d9e2f50870010', '海淀', 'hd', 'city1', 'ba1', 'dq1', NULL);

-- ----------------------------
-- Table structure for ba_city_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_city_type`;
CREATE TABLE `ba_city_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `city_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市类型代码',
  `city_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_city_type
-- ----------------------------
INSERT INTO `ba_city_type` VALUES ('8a7ba3345d97830b015d9e2278b50008', '管理员', 'admin', '2017-08-01 22:10:45', NULL, NULL, NULL, 'A03', 'A03', 'city1', 'city12');

-- ----------------------------
-- Table structure for ba_classfl
-- ----------------------------
DROP TABLE IF EXISTS `ba_classfl`;
CREATE TABLE `ba_classfl`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `classfl_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业分类代码',
  `classfl_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业分类名称',
  `classfl_del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_classfl
-- ----------------------------
INSERT INTO `ba_classfl` VALUES ('8a7ba3345da000e0015da2ee81d40020', '管理员', 'admin', '2017-08-02 20:32:06', NULL, NULL, NULL, 'A03', 'A03', 'Z01', '快消', NULL);
INSERT INTO `ba_classfl` VALUES ('8a7ba3345da000e0015da2eea3cc0021', '管理员', 'admin', '2017-08-02 20:32:14', NULL, NULL, NULL, 'A03', 'A03', 'Z02', '科技', NULL);

-- ----------------------------
-- Table structure for ba_com_deg
-- ----------------------------
DROP TABLE IF EXISTS `ba_com_deg`;
CREATE TABLE `ba_com_deg`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `com_deg_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业等级代码',
  `com_deg_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业等级名称',
  `com_deg_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_com_deg
-- ----------------------------
INSERT INTO `ba_com_deg` VALUES ('8a7ba3345d97830b015d979daab40002', '管理员', 'admin', '2017-07-31 15:47:58', '管理员', 'admin', '2017-08-02 20:32:39', 'A03', 'A03', 'A', '优', NULL);
INSERT INTO `ba_com_deg` VALUES ('8a7ba3345da000e0015da2eedbe30022', '管理员', 'admin', '2017-08-02 20:32:29', NULL, NULL, NULL, 'A03', 'A03', 'B', '良', NULL);

-- ----------------------------
-- Table structure for ba_com_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_com_type`;
CREATE TABLE `ba_com_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `com_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业属性代码',
  `com_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业属性名称',
  `com_type_del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_com_type
-- ----------------------------
INSERT INTO `ba_com_type` VALUES ('402881885f6d522d015f6d6271d50001', 'admin', 'admin', '2017-10-30 21:04:49', NULL, NULL, NULL, 'A04', 'A04', '03', '进货配送供应商', NULL);
INSERT INTO `ba_com_type` VALUES ('8a7ba3345d97830b015d9797ceb30001', '管理员', 'admin', '2017-07-31 15:41:34', '管理员', 'admin', '2017-08-06 10:06:23', 'A03', 'A03', '02', '一般客户', 'Y');
INSERT INTO `ba_com_type` VALUES ('8a7ba3345da000e0015da30c2ba20035', '管理员', 'admin', '2017-08-02 21:04:30', '管理员', 'admin', '2017-08-06 10:06:13', 'A03', 'A03', '01', '一般供应商', NULL);

-- ----------------------------
-- Table structure for ba_comp
-- ----------------------------
DROP TABLE IF EXISTS `ba_comp`;
CREATE TABLE `ba_comp`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `com_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司代码',
  `com_zh_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司中文简称',
  `com_zh_aname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司中文全称',
  `com_zh_addr` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文地址',
  `com_en_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司英文简称',
  `com_en_aname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司英文全称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_comp
-- ----------------------------
INSERT INTO `ba_comp` VALUES ('8a7ba3345da000e0015da30c8e710037', '管理员', 'admin', '2017-08-02 21:04:55', NULL, NULL, NULL, 'A03', 'A03', 'a01', '2', '2', '2', '2', '2');

-- ----------------------------
-- Table structure for ba_cont_spec
-- ----------------------------
DROP TABLE IF EXISTS `ba_cont_spec`;
CREATE TABLE `ba_cont_spec`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cont_spec_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱规代码',
  `cont_spec_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱规名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cont_spec
-- ----------------------------
INSERT INTO `ba_cont_spec` VALUES ('8a7ba3345da000e0015da000e06e0000', '管理员', 'admin', '2017-08-02 06:53:18', NULL, NULL, NULL, 'A03', 'A03', '42', '42');
INSERT INTO `ba_cont_spec` VALUES ('8a7ba3345da000e0015da000f7b80001', '管理员', 'admin', '2017-08-02 06:53:24', NULL, NULL, NULL, 'A03', 'A03', '40', '40');

-- ----------------------------
-- Table structure for ba_cont_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_cont_type`;
CREATE TABLE `ba_cont_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cont_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱型代码',
  `cont_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cont_type
-- ----------------------------
INSERT INTO `ba_cont_type` VALUES ('8a7ba3345da000e0015da30328520034', '管理员', 'admin', '2017-08-02 20:54:39', NULL, NULL, NULL, 'A03', 'A03', '4', '4');

-- ----------------------------
-- Table structure for ba_cost
-- ----------------------------
DROP TABLE IF EXISTS `ba_cost`;
CREATE TABLE `ba_cost`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cost_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用代码',
  `cost_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用名称',
  `cost_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cost
-- ----------------------------
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c86bbef0000', 'admin', 'admin', '2017-10-18 06:49:08', 'admin', 'admin', '2017-10-18 06:49:27', 'A04', 'A04', '103', '超低温仓租', '02');
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c86ed210001', 'admin', 'admin', '2017-10-18 06:49:20', NULL, NULL, NULL, 'A04', 'A04', '101', '正常仓租', '02');
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c8817780002', 'admin', 'admin', '2017-10-18 06:50:37', NULL, NULL, NULL, 'A04', 'A04', '310', '复冻处理费 冷藏大于8度', '01');
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c8880ff0003', 'admin', 'admin', '2017-10-18 06:51:04', 'admin', 'admin', '2017-12-13 12:56:34', 'A04', 'A04', '308', '复冻费温差25度以上', '01');
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c88be760004', 'admin', 'admin', '2017-10-18 06:51:20', 'admin', 'admin', '2017-12-13 12:55:36', 'A04', 'A04', '306', '复冻费温差13-24度', '01');
INSERT INTO `ba_cost` VALUES ('402881885f2c86bb015f2c89093a0005', 'admin', 'admin', '2017-10-18 06:51:39', 'admin', 'admin', '2017-12-13 12:55:07', 'A04', 'A04', '304', '复冻费温差10-12度', '01');
INSERT INTO `ba_cost` VALUES ('402881885f2e3442015f2e34428d0000', 'admin', 'admin', '2017-10-18 14:38:17', NULL, NULL, NULL, 'A04', 'A04', '140', '折扣', '03');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f5269f05e0000', 'admin', 'admin', '2017-10-25 15:23:15', NULL, NULL, NULL, 'A04', 'A04', '5021', '操作费出/托', '01');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f526a54930001', 'admin', 'admin', '2017-10-25 15:23:41', NULL, NULL, NULL, 'A04', 'A04', '5011', '操作费出/吨', '01');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f526a9b400002', 'admin', 'admin', '2017-10-25 15:23:59', 'admin', 'admin', '2017-12-07 09:29:20', 'A04', 'A04', '5031', '操作费出/轻抛按箱', '01');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f526ad04a0003', 'admin', 'admin', '2017-10-25 15:24:12', 'admin', 'admin', '2017-12-07 09:42:09', 'A04', 'A04', '5041', '操作费出/删除', '01');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f526b22240004', 'admin', 'admin', '2017-10-25 15:24:33', NULL, NULL, NULL, 'A04', 'A04', '6011', '出货 分拣3-10', '01');
INSERT INTO `ba_cost` VALUES ('402881885f5269f0015f526b5ede0005', 'admin', 'admin', '2017-10-25 15:24:49', NULL, NULL, NULL, 'A04', 'A04', '6021', '出货分拣10以上', '01');
INSERT INTO `ba_cost` VALUES ('402881885f6d522d015f6d522d480000', 'admin', 'admin', '2017-10-30 20:47:02', NULL, NULL, NULL, 'A04', 'A04', '150', '加工费', '03');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c0160294e4cfd0000', 'admin', 'admin', '2017-12-06 08:51:25', NULL, NULL, NULL, 'A04', 'A04', '1011', '正常仓租/吨', '01');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c0160294e98ac0001', 'admin', 'admin', '2017-12-06 08:51:44', NULL, NULL, NULL, 'A04', 'A04', '1031', '超低温仓租/按吨', '02');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c01602950d1850002', 'admin', 'admin', '2017-12-06 08:54:10', 'admin', 'admin', '2017-12-07 09:39:34', 'A04', 'A04', '1012', '正常仓租/按托', '02');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c016029512f550003', 'admin', 'admin', '2017-12-06 08:54:34', 'admin', 'admin', '2017-12-07 09:31:36', 'A04', 'A04', '1013', '正常仓租/按箱', '01');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c0160295175560004', 'admin', 'admin', '2017-12-06 08:54:52', NULL, NULL, NULL, 'A04', 'A04', '1014', '正常仓租/5KG以上按箱', '02');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c01602951acb20005', 'admin', 'admin', '2017-12-06 08:55:06', 'admin', 'admin', '2017-12-07 09:39:27', 'A04', 'A04', '1032', '超低温仓租/按托', '02');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c01602951fb110006', 'admin', 'admin', '2017-12-06 08:55:26', 'admin', 'admin', '2017-12-07 09:39:02', 'A04', 'A04', '1033', '超低温仓租/按箱', '02');
INSERT INTO `ba_cost` VALUES ('4028818860294e4c016029523f0f0007', 'admin', 'admin', '2017-12-06 08:55:44', 'admin', 'admin', '2017-12-07 09:40:15', 'A04', 'A04', '1034', '超低温仓租/删除', '02');
INSERT INTO `ba_cost` VALUES ('40288188602e896d01602ea299da002e', 'admin', 'admin', '2017-12-07 09:41:36', NULL, NULL, NULL, 'A04', 'A04', '1014', '正常仓租/删除', '02');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f3504800b0000', 'admin', 'admin', '2017-10-19 22:23:28', NULL, NULL, NULL, 'A04', 'A04', '501', '操作费/吨', '01');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f3504b51d0001', 'admin', 'admin', '2017-10-19 22:23:41', NULL, NULL, NULL, 'A04', 'A04', '502', '操作费/托', '01');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f35051cc20002', 'admin', 'admin', '2017-10-19 22:24:08', 'admin', 'admin', '2017-12-07 09:31:13', 'A04', 'A04', '503', '操作费/轻抛按箱', '01');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f350564b20003', 'admin', 'admin', '2017-10-19 22:24:26', NULL, NULL, NULL, 'A04', 'A04', '504', '操作费/轻抛5以上', '01');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f35059ac10004', 'admin', 'admin', '2017-10-19 22:24:40', 'admin', 'admin', '2017-10-24 17:20:47', 'A04', 'A04', '601', '分拣3-10', '01');
INSERT INTO `ba_cost` VALUES ('402882ec5f350480015f3505bdb90005', 'admin', 'admin', '2017-10-19 22:24:49', 'admin', 'admin', '2017-10-24 17:20:38', 'A04', 'A04', '602', '分拣10以上', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345da000e0015da30fb6a4003b', '管理员', 'admin', '2017-08-02 21:08:22', 'admin', 'admin', '2017-09-22 13:05:54', 'A03', 'A03', '10', '寄库/托', '02');
INSERT INTO `ba_cost` VALUES ('8a7ba3345da000e0015db54d00d9004c', '管理员', 'admin', '2017-08-06 10:08:28', 'admin', 'admin', '2017-09-22 13:05:17', 'A03', 'A03', '30', '复冻处置费/吨', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345da000e0015db54d3cb8004d', '管理员', 'admin', '2017-08-06 10:08:44', 'admin', 'admin', '2017-09-22 13:06:51', 'A03', 'A03', '50', '卸货费/吨', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7f88afb0035', 'admin', 'admin', '2017-09-22 13:03:57', 'admin', 'admin', '2017-09-22 13:05:45', 'A04', 'A04', '20', '包库/托', '02');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7f9ff280036', 'admin', 'admin', '2017-09-22 13:05:32', NULL, NULL, NULL, 'A04', 'A04', '40', '复冻处置费/托', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fc5a480038', 'admin', 'admin', '2017-09-22 13:08:06', NULL, NULL, NULL, 'A04', 'A04', '70', '过磅/托', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fcba930039', 'admin', 'admin', '2017-09-22 13:08:31', NULL, NULL, NULL, 'A04', 'A04', '80', '托盘防滑封膜/托', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fd2db4003a', 'admin', 'admin', '2017-09-22 13:09:00', 'admin', 'admin', '2017-09-22 13:09:38', 'A04', 'A04', '90', '打包/件', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fd8c5c003b', 'admin', 'admin', '2017-09-22 13:09:25', NULL, NULL, NULL, 'A04', 'A04', '100', '简单换包装贴标/件', '01');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fe2882003c', 'admin', 'admin', '2017-09-22 13:10:05', NULL, NULL, NULL, 'A04', 'A04', '110', '租用月台', '02');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fe7a98003d', 'admin', 'admin', '2017-09-22 13:10:26', NULL, NULL, NULL, 'A04', 'A04', '120', '低温穿堂打包', '02');
INSERT INTO `ba_cost` VALUES ('8a7ba3345ea72fd9015ea7fee72c003e', 'admin', 'admin', '2017-09-22 13:10:53', NULL, NULL, NULL, 'A04', 'A04', '130', '其他费用', '03');

-- ----------------------------
-- Table structure for ba_cost_conf
-- ----------------------------
DROP TABLE IF EXISTS `ba_cost_conf`;
CREATE TABLE `ba_cost_conf`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cost_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用名称',
  `cost_jg` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格RMB',
  `cost_sl` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税率',
  `cost_zk` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `cost_bhs` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不含税价RMB',
  `cost_hs` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '含税价RMB',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cost_conf
-- ----------------------------
INSERT INTO `ba_cost_conf` VALUES ('111', 'admin', 'admin', '2017-09-29 05:44:44', '蔡丽云', 'FDE0001', '2018-07-11 09:58:11', 'A04', 'A04', '1011', '3.5', '0', '1', '3.5', '3.5');
INSERT INTO `ba_cost_conf` VALUES ('113', 'admin', 'admin', '2017-12-07 09:48:25', NULL, NULL, NULL, 'A04', 'A04', '1013', '0.18', '0', '1', '0.18', '0.18');
INSERT INTO `ba_cost_conf` VALUES ('114', 'admin', 'admin', '2017-09-29 05:44:31', '蔡丽云', 'FDE0001', '2017-12-07 09:08:08', 'A04', 'A04', '1031', '10', '0', '1', '10', '10');
INSERT INTO `ba_cost_conf` VALUES ('211', 'admin', 'admin', '2017-09-29 05:44:38', 'admin', 'admin', '2017-10-18 06:54:44', 'A04', 'A04', '304', '38', '0', '1', '38', '38');
INSERT INTO `ba_cost_conf` VALUES ('212', 'admin', 'admin', '2017-10-18 06:54:58', NULL, NULL, NULL, 'A04', 'A04', '306', '48', '0', '1', '48', '48');
INSERT INTO `ba_cost_conf` VALUES ('213', 'admin', 'admin', '2017-10-18 06:55:11', NULL, NULL, NULL, 'A04', 'A04', '308', '65', '0', '1', '65', '65');
INSERT INTO `ba_cost_conf` VALUES ('311', 'admin', 'admin', '2017-10-18 06:56:04', 'admin', 'admin', '2017-10-24 17:16:04', 'A04', 'A04', '501', '30', '0', '1', '30', '30');
INSERT INTO `ba_cost_conf` VALUES ('411', 'admin', 'admin', '2017-12-07 09:50:33', NULL, NULL, NULL, 'A04', 'A04', '5011', '30', '0', '1', '30', '30');
INSERT INTO `ba_cost_conf` VALUES ('412', 'admin', 'admin', '2017-12-07 09:51:16', NULL, NULL, NULL, 'A04', 'A04', '5031', '1.5', '0', '1', '1.5', '1.5');

-- ----------------------------
-- Table structure for ba_cost_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_cost_type`;
CREATE TABLE `ba_cost_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cost_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用代码',
  `cost_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用名称',
  `cost_type_del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cost_type
-- ----------------------------
INSERT INTO `ba_cost_type` VALUES ('8a7ba3345d97830b015d9e3099b60013', '管理员', 'admin', '2017-08-01 22:26:11', '管理员', 'admin', '2017-08-06 10:07:35', 'A03', 'A03', '01', '按次计费', NULL);
INSERT INTO `ba_cost_type` VALUES ('8a7ba3345da000e0015db54c7fa5004a', '管理员', 'admin', '2017-08-06 10:07:55', NULL, NULL, NULL, 'A03', 'A03', '02', '按时间段计费', NULL);
INSERT INTO `ba_cost_type` VALUES ('8a7ba3345da000e0015db54cbf7e004b', '管理员', 'admin', '2017-08-06 10:08:12', NULL, NULL, NULL, 'A03', 'A03', '03', '其他费用', NULL);

-- ----------------------------
-- Table structure for ba_cus_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_cus_sta`;
CREATE TABLE `ba_cus_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `cus_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户状态代码',
  `cus_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户状态名称',
  `cus_sta_del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_cus_sta
-- ----------------------------
INSERT INTO `ba_cus_sta` VALUES ('8a7ba3345da000e0015da30c40790036', '管理员', 'admin', '2017-08-02 21:04:35', NULL, NULL, NULL, 'A03', 'A03', '3', '3', NULL);

-- ----------------------------
-- Table structure for ba_deg_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_deg_type`;
CREATE TABLE `ba_deg_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `deg_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '温层代码',
  `deg_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '温层名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_deg_type
-- ----------------------------
INSERT INTO `ba_deg_type` VALUES ('4028b8815e749f6f015e749f6f190000', 'admin', 'admin', '2017-09-12 13:45:59', '黄佳怡', 'hjy', '2017-09-16 16:33:45', 'A04', 'A04', '冷藏', '冷藏');
INSERT INTO `ba_deg_type` VALUES ('8a7ba3345da000e0015da2fa0ed50024', '管理员', 'admin', '2017-08-02 20:44:43', '黄佳怡', 'hjy', '2017-09-16 16:34:10', 'A03', 'A03', '恒温', '恒温');
INSERT INTO `ba_deg_type` VALUES ('8a7ba3345da000e0015da2fa2d0b0025', '管理员', 'admin', '2017-08-02 20:44:50', '黄佳怡', 'hjy', '2017-09-16 16:33:58', 'A03', 'A03', '超低温', '超低温');
INSERT INTO `ba_deg_type` VALUES ('8a7ba3345e89adf5015e89adf5920000', 'test1', 'test1', '2017-09-16 15:53:52', '黄佳怡', 'hjy', '2017-09-16 16:36:20', 'A04', 'A04', '低温', '低温');
INSERT INTO `ba_deg_type` VALUES ('8a7ba3345e89adf5015e89b1739e0001', 'test1', 'test1', '2017-09-16 15:57:41', '黄佳怡', 'hjy', '2017-09-16 16:33:25', 'A04', 'A04', '常温', '常温');
INSERT INTO `ba_deg_type` VALUES ('8a7ba3345e89c44a015e89d2fc640002', '黄佳怡', 'hjy', '2017-09-16 16:34:19', NULL, NULL, NULL, 'A04', 'A04', '调温', '调温');

-- ----------------------------
-- Table structure for ba_del_mode
-- ----------------------------
DROP TABLE IF EXISTS `ba_del_mode`;
CREATE TABLE `ba_del_mode`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `del_mode_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接货方式代码',
  `del_mode_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接货方式名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_del_mode
-- ----------------------------
INSERT INTO `ba_del_mode` VALUES ('8a7ba3345da000e0015da30172fc0032', '管理员', 'admin', '2017-08-02 20:52:47', NULL, NULL, NULL, 'A03', 'A03', '5', '55');

-- ----------------------------
-- Table structure for ba_edu_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_edu_sta`;
CREATE TABLE `ba_edu_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `edu_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历代码',
  `edu_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_edu_sta
-- ----------------------------
INSERT INTO `ba_edu_sta` VALUES ('8a7ba3345da000e0015da30ff6da003c', '管理员', 'admin', '2017-08-02 21:08:38', NULL, NULL, NULL, 'A03', 'A03', 'gz', 'gz');

-- ----------------------------
-- Table structure for ba_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `ba_goods_brand`;
CREATE TABLE `ba_goods_brand`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `goods_brand_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌代码',
  `goods_brand_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `goods_brand_www` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌网址',
  `goods_brand_pic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌图片',
  `goods_brand_text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `goods_brand_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_goods_brand
-- ----------------------------
INSERT INTO `ba_goods_brand` VALUES ('8a7ba3345da000e0015da06e5282000b', '管理员', 'admin', '2017-08-02 08:52:50', NULL, NULL, NULL, 'A03', 'A03', 'Z01', '圣农', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ba_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `ba_goods_class`;
CREATE TABLE `ba_goods_class`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `goods_class_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计费商品类代码',
  `goods_class_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计费商品类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_goods_class
-- ----------------------------
INSERT INTO `ba_goods_class` VALUES ('402881885f3219b7015f3219b76c0000', 'admin', 'admin', '2017-10-19 08:47:47', NULL, NULL, NULL, 'A04', 'A04', '20', '整托');
INSERT INTO `ba_goods_class` VALUES ('402881885f3219b7015f3219f8ab0001', 'admin', 'admin', '2017-10-19 08:48:03', 'admin', 'admin', '2017-12-07 09:28:10', 'A04', 'A04', '30', '轻抛/按箱');
INSERT INTO `ba_goods_class` VALUES ('402881885f3219b7015f321a3de20002', 'admin', 'admin', '2017-10-19 08:48:21', NULL, NULL, NULL, 'A04', 'A04', '40', '轻抛5KG以上');
INSERT INTO `ba_goods_class` VALUES ('8a7ba3345da000e0015da06dc4d5000a', '管理员', 'admin', '2017-08-02 08:52:14', 'admin', 'admin', '2017-10-19 08:49:05', 'A03', 'A03', '10', '计费吨');

-- ----------------------------
-- Table structure for ba_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_goods_type`;
CREATE TABLE `ba_goods_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `goods_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品属性编码',
  `goods_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品属性名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_goods_type
-- ----------------------------
INSERT INTO `ba_goods_type` VALUES ('402881886448beb201651808b28c33ca', '傅娜娜', 'ODE0009', '2018-08-08 13:35:47', '初始', 'admin', '2018-08-15 11:31:40', 'A04', 'A04', '饮料冲调', '饮料冲调');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba3dd9b0000', '初始', 'admin', '2018-08-15 11:31:59', NULL, NULL, NULL, 'A04', 'A04', '中外名酒', '中外名酒');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba412630001', '初始', 'admin', '2018-08-15 11:32:13', NULL, NULL, NULL, 'A04', 'A04', '数码产品', '数码产品');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba44cc10002', '初始', 'admin', '2018-08-15 11:32:27', NULL, NULL, NULL, 'A04', 'A04', '办公用品', '办公用品');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba47ead0003', '初始', 'admin', '2018-08-15 11:32:40', NULL, NULL, NULL, 'A04', 'A04', '纸品', '纸品');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba4b2170004', '初始', 'admin', '2018-08-15 11:32:53', NULL, NULL, NULL, 'A04', 'A04', '美妆个护', '美妆个护');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba500830005', '初始', 'admin', '2018-08-15 11:33:13', NULL, NULL, NULL, 'A04', 'A04', '清洁用品', '清洁用品');
INSERT INTO `ba_goods_type` VALUES ('402881b2653ba3dd01653ba534fe0006', '初始', 'admin', '2018-08-15 11:33:27', NULL, NULL, NULL, 'A04', 'A04', '家居日用', '家居日用');
INSERT INTO `ba_goods_type` VALUES ('8a7ba3345e89c44a015e89d61d320006', 'admin', 'admin', '2017-09-16 16:37:44', '初始', 'admin', '2018-08-15 11:33:44', 'A04', 'A04', '食品', '食品');
INSERT INTO `ba_goods_type` VALUES ('8a7ba3345e89c44a015e89d674f90008', 'admin', 'admin', '2017-09-16 16:38:06', '黄佳怡', 'hjy', '2017-09-18 10:15:57', 'A04', 'A04', '其它', '其它');

-- ----------------------------
-- Table structure for ba_kehushuxing
-- ----------------------------
DROP TABLE IF EXISTS `ba_kehushuxing`;
CREATE TABLE `ba_kehushuxing`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `kehushuxing_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户属性编码',
  `kehushuxing_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户属性名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_kehushuxing
-- ----------------------------
INSERT INTO `ba_kehushuxing` VALUES ('40288188602ad24d01602b7281900032', 'admin', 'admin', '2017-12-06 18:50:12', NULL, NULL, NULL, 'A04', 'A04', '10', '整体计重');
INSERT INTO `ba_kehushuxing` VALUES ('40288188602ad24d01602b72c59e0033', 'admin', 'admin', '2017-12-06 18:50:30', NULL, NULL, NULL, 'A04', 'A04', '20', '单SKU计重');

-- ----------------------------
-- Table structure for ba_kehuzhuangtai
-- ----------------------------
DROP TABLE IF EXISTS `ba_kehuzhuangtai`;
CREATE TABLE `ba_kehuzhuangtai`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `kehuzhuangtai_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `kehuzhuangtai_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_kehuzhuangtai
-- ----------------------------
INSERT INTO `ba_kehuzhuangtai` VALUES ('40288188602e896d01602eea26710099', 'admin', 'admin', '2017-12-07 10:59:45', 'admin', 'admin', '2017-12-14 12:08:48', 'A04', 'A04', '10', '整板+箱/件');
INSERT INTO `ba_kehuzhuangtai` VALUES ('40288188602e896d01602eea4014009a', 'admin', 'admin', '2017-12-07 10:59:51', 'admin', 'admin', '2017-12-14 12:08:28', 'A04', 'A04', '20', '整板计费');

-- ----------------------------
-- Table structure for ba_lad_mode
-- ----------------------------
DROP TABLE IF EXISTS `ba_lad_mode`;
CREATE TABLE `ba_lad_mode`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `lad_mode_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提货方式代码',
  `lad_mode_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提货方式名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_lad_mode
-- ----------------------------
INSERT INTO `ba_lad_mode` VALUES ('8a7ba3345da000e0015da30286690033', '管理员', 'admin', '2017-08-02 20:53:57', NULL, NULL, NULL, 'A03', 'A03', '1', '2');

-- ----------------------------
-- Table structure for ba_oper_step
-- ----------------------------
DROP TABLE IF EXISTS `ba_oper_step`;
CREATE TABLE `ba_oper_step`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `oper_step_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务环节代码',
  `oper_step_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务环节名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_oper_step
-- ----------------------------
INSERT INTO `ba_oper_step` VALUES ('8a7ba3345da000e0015da002be540004', '管理员', 'admin', '2017-08-02 06:55:20', NULL, NULL, NULL, 'A03', 'A03', '11', '11');

-- ----------------------------
-- Table structure for ba_oper_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_oper_type`;
CREATE TABLE `ba_oper_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `oper_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型代码',
  `oper_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_oper_type
-- ----------------------------
INSERT INTO `ba_oper_type` VALUES ('8a7ba3345da000e0015db54fea850050', '管理员', 'admin', '2017-08-06 10:11:39', '管理员', 'admin', '2017-08-14 20:42:58', 'A03', 'A03', '01', '人工');
INSERT INTO `ba_oper_type` VALUES ('8a7ba3345da000e0015db55008dc0051', '管理员', 'admin', '2017-08-06 10:11:47', '管理员', 'admin', '2017-08-14 20:43:06', 'A03', 'A03', '02', '叉车');

-- ----------------------------
-- Table structure for ba_order_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_order_type`;
CREATE TABLE `ba_order_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `order_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单类型代码',
  `order_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_order_type
-- ----------------------------
INSERT INTO `ba_order_type` VALUES ('402881885eea8e01015eea8e01de0000', 'admin', 'admin', '2017-10-05 11:22:08', NULL, NULL, NULL, 'A04', 'A04', '04', '越库通知');
INSERT INTO `ba_order_type` VALUES ('4028818860bc98290160c7145fce068b', 'admin', 'admin', '2018-01-06 00:08:09', NULL, NULL, NULL, 'A04', 'A04', '09', '其他入库');
INSERT INTO `ba_order_type` VALUES ('4028818860bc98290160c7147eff068c', 'admin', 'admin', '2018-01-06 00:08:17', NULL, NULL, NULL, 'A04', 'A04', '11', '出库通知');
INSERT INTO `ba_order_type` VALUES ('4028818860bc98290160c7149c7a068d', 'admin', 'admin', '2018-01-06 00:08:24', NULL, NULL, NULL, 'A04', 'A04', '19', '其他出库');
INSERT INTO `ba_order_type` VALUES ('8a7ba3345da000e0015da300dabe002d', '管理员', 'admin', '2017-08-02 20:52:08', '管理员', 'admin', '2017-08-06 10:10:35', 'A03', 'A03', '01', '到货通知');
INSERT INTO `ba_order_type` VALUES ('8a7ba3345da000e0015db54f3313004e', '管理员', 'admin', '2017-08-06 10:10:52', NULL, NULL, NULL, 'A03', 'A03', '02', '出货通知');
INSERT INTO `ba_order_type` VALUES ('8a7ba3345da000e0015db54f5f91004f', '管理员', 'admin', '2017-08-06 10:11:04', NULL, NULL, NULL, 'A03', 'A03', '03', '退货通知');

-- ----------------------------
-- Table structure for ba_platform
-- ----------------------------
DROP TABLE IF EXISTS `ba_platform`;
CREATE TABLE `ba_platform`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `platform_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月台代码',
  `platform_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月台名称',
  `platform_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_platform
-- ----------------------------
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb4fad1b0013', '管理员', 'admin', '2017-08-13 19:16:58', '管理员', 'admin', '2017-08-13 19:17:15', 'A04', 'A04', '03', '03', NULL);
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb4fc9200015', '管理员', 'admin', '2017-08-13 19:17:05', '管理员', 'admin', '2017-08-13 19:17:20', 'A04', 'A04', '04', '04', NULL);
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb5061e7001b', '管理员', 'admin', '2017-08-13 19:17:45', NULL, NULL, NULL, 'A04', 'A04', '05', '05', NULL);
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb507de7001d', '管理员', 'admin', '2017-08-13 19:17:52', NULL, NULL, NULL, 'A04', 'A04', '06', '06', NULL);
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb5097c5001f', '管理员', 'admin', '2017-08-13 19:17:58', NULL, NULL, NULL, 'A04', 'A04', '07', '07', NULL);
INSERT INTO `ba_platform` VALUES ('4028b8815ddb387a015ddb50bcaa0021', '管理员', 'admin', '2017-08-13 19:18:08', NULL, NULL, NULL, 'A04', 'A04', '08', '08', NULL);
INSERT INTO `ba_platform` VALUES ('8a7ba3345da000e0015db5512d820055', '管理员', 'admin', '2017-08-06 10:13:02', '管理员', 'admin', '2017-08-13 19:17:25', 'A03', 'A03', '01', '01', NULL);
INSERT INTO `ba_platform` VALUES ('8a7ba3345da000e0015db551695c0056', '管理员', 'admin', '2017-08-06 10:13:17', '管理员', 'admin', '2017-08-13 19:17:31', 'A03', 'A03', '02', '02', NULL);
INSERT INTO `ba_platform` VALUES ('8a7ba3345e2b929c015e36cebd9e00ee', 'test1', 'test1', '2017-08-31 13:41:12', NULL, NULL, NULL, 'A04', 'A04', '09', '09', NULL);
INSERT INTO `ba_platform` VALUES ('8a7ba3345e2b929c015e36cf089200f0', 'test1', 'test1', '2017-08-31 13:41:31', NULL, NULL, NULL, 'A04', 'A04', '10', '10', NULL);

-- ----------------------------
-- Table structure for ba_port
-- ----------------------------
DROP TABLE IF EXISTS `ba_port`;
CREATE TABLE `ba_port`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `port_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '港口代码',
  `port_zh_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名称',
  `port_en_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `port_th_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '港口三字代码',
  `port_ucode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '港口UNCODE',
  `port_code1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '港口代码1',
  `port_code2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '港口代码2',
  `port_text` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `port_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_port
-- ----------------------------
INSERT INTO `ba_port` VALUES ('8a7ba3345da000e0015da300bcd9002c', '管理员', 'admin', '2017-08-02 20:52:00', NULL, NULL, NULL, 'A03', 'A03', '阿', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ba_pos_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_pos_sta`;
CREATE TABLE `ba_pos_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `pos_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在职状态代码',
  `pos_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在职状态名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_pos_sta
-- ----------------------------
INSERT INTO `ba_pos_sta` VALUES ('8a7ba3345da000e0015da31026d9003e', '管理员', 'admin', '2017-08-02 21:08:51', NULL, NULL, NULL, 'A03', 'A03', 'zz', 'zz');

-- ----------------------------
-- Table structure for ba_price_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_price_type`;
CREATE TABLE `ba_price_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `price_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格类型代码',
  `price_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_price_type
-- ----------------------------
INSERT INTO `ba_price_type` VALUES ('8a7ba3345da000e0015da30f577f0038', '管理员', 'admin', '2017-08-02 21:07:57', NULL, NULL, NULL, 'A03', 'A03', 'lx', 'lx');

-- ----------------------------
-- Table structure for ba_pronut_method
-- ----------------------------
DROP TABLE IF EXISTS `ba_pronut_method`;
CREATE TABLE `ba_pronut_method`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `pronut_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计费方式代码',
  `pronut_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计费方式名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_pronut_method
-- ----------------------------
INSERT INTO `ba_pronut_method` VALUES ('8a7ba3345da000e0015da30f7a930039', '管理员', 'admin', '2017-08-02 21:08:06', NULL, NULL, NULL, 'A03', 'A03', 'fs', 'fs');

-- ----------------------------
-- Table structure for ba_pronut_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_pronut_type`;
CREATE TABLE `ba_pronut_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `pronut_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '计量类型代码',
  `pronut_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计量类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_pronut_type
-- ----------------------------
INSERT INTO `ba_pronut_type` VALUES ('8a7ba3345da000e0015da30f91e0003a', '管理员', 'admin', '2017-08-02 21:08:12', NULL, NULL, NULL, 'A03', 'A03', 'lx', 'lx');

-- ----------------------------
-- Table structure for ba_qm_qa
-- ----------------------------
DROP TABLE IF EXISTS `ba_qm_qa`;
CREATE TABLE `ba_qm_qa`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `qm_qa_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品质代码',
  `qm_qa_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品质代码名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_qm_qa
-- ----------------------------
INSERT INTO `ba_qm_qa` VALUES ('8a7ba3345da000e0015da1e4191f001f', '管理员', 'admin', '2017-08-02 15:41:06', NULL, NULL, NULL, 'A03', 'A03', 'Z01', '过期');

-- ----------------------------
-- Table structure for ba_qm_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_qm_sta`;
CREATE TABLE `ba_qm_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `qm_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品检状态代码',
  `qm_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品检状态名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_qm_sta
-- ----------------------------
INSERT INTO `ba_qm_sta` VALUES ('8a7ba3345da000e0015da1e3e6d0001e', '管理员', 'admin', '2017-08-02 15:40:53', '管理员', 'admin', '2017-08-06 10:06:44', 'A03', 'A03', '01', '通过');
INSERT INTO `ba_qm_sta` VALUES ('8a7ba3345da000e0015db54b55a50049', '管理员', 'admin', '2017-08-06 10:06:39', NULL, NULL, NULL, 'A03', 'A03', '02', '拒绝');

-- ----------------------------
-- Table structure for ba_sex_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_sex_sta`;
CREATE TABLE `ba_sex_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `sex_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别代码',
  `sex_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_sex_sta
-- ----------------------------
INSERT INTO `ba_sex_sta` VALUES ('8a7ba3345da000e0015da3100d92003d', '管理员', 'admin', '2017-08-02 21:08:44', NULL, NULL, NULL, 'A03', 'A03', 'n', 'n');

-- ----------------------------
-- Table structure for ba_snro
-- ----------------------------
DROP TABLE IF EXISTS `ba_snro`;
CREATE TABLE `ba_snro`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `snro_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号类型',
  `snro_org` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构',
  `snro_findex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前缀',
  `snro_split` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分隔符',
  `snro_year` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年位数',
  `snro_month` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月位数',
  `snro_day` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日位数',
  `snro_seri` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '序号位数',
  `snro_exp` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '示例号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_snro
-- ----------------------------
INSERT INTO `ba_snro` VALUES ('8a7ba3345da000e0015da31092d70040', '管理员', 'admin', '2017-08-02 21:09:18', NULL, NULL, NULL, 'A03', 'A03', '1', 'd', 'dd', 'd', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ba_snro_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_snro_type`;
CREATE TABLE `ba_snro_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `snro_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码类型代码',
  `snro_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_snro_type
-- ----------------------------
INSERT INTO `ba_snro_type` VALUES ('402881b2679610a30167c6d14e590002', '初始', 'admin', '2018-12-19 22:14:25', NULL, NULL, NULL, 'A04', 'A04', '01', '到货通知');
INSERT INTO `ba_snro_type` VALUES ('8a7ba3345d97830b015d9e3a1fa80015', '管理员', 'admin', '2017-08-01 22:36:35', NULL, NULL, NULL, 'A03', 'A03', '1', '11');

-- ----------------------------
-- Table structure for ba_store
-- ----------------------------
DROP TABLE IF EXISTS `ba_store`;
CREATE TABLE `ba_store`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `store_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库代码',
  `store_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `store_text` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_store
-- ----------------------------
INSERT INTO `ba_store` VALUES ('402881885ebafcfb015ebb1127340007', '池新福', 'ODE0001', '2017-09-26 06:03:37', '初始', 'admin', '2018-08-15 11:01:58', 'A04', 'A04', 'BJ', 'BJ', '其它');
INSERT INTO `ba_store` VALUES ('402881885ffc44ba016010bb8d6602c4', '郑承毅', 'ODE0006', '2017-12-01 14:20:15', '初始', 'admin', '2018-08-15 11:04:31', 'A04', 'A04', 'XNK', '冷藏虚拟库', '其它,食物,饮料');
INSERT INTO `ba_store` VALUES ('402881b265a1a14e0165a1a14ed60000', '初始', 'admin', '2018-09-04 06:50:27', NULL, NULL, NULL, 'A04', 'A04', '01A', '01A', NULL);
INSERT INTO `ba_store` VALUES ('402881b2679610a30167c67138220001', '初始', 'admin', '2018-12-19 20:29:27', '初始', 'admin', '2018-12-27 22:52:04', 'A04', 'A04', 'xkn-D', '灵鹿谷', '中外名酒,其它,办公用品,家居日用,数码产品,清洁用品,纸品,美妆个护,食品,饮料冲调');

-- ----------------------------
-- Table structure for ba_sys_conf
-- ----------------------------
DROP TABLE IF EXISTS `ba_sys_conf`;
CREATE TABLE `ba_sys_conf`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `sys_conf_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统参数类型',
  `sys_conf_step` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务操作环节',
  `sys_conf_org` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织',
  `sys_conf_partner` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作伙伴',
  `sys_para1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数1',
  `sys_para2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数2',
  `sys_para3` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数3',
  `sys_conf_text` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_sys_conf
-- ----------------------------
INSERT INTO `ba_sys_conf` VALUES ('8a7ba3345da000e0015da06371410007', '管理员', 'admin', '2017-08-02 08:40:57', NULL, NULL, NULL, 'A03', 'A03', 'Z02', '11', '1', '1', '1', '1', '1', NULL);

-- ----------------------------
-- Table structure for ba_sysp_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_sysp_type`;
CREATE TABLE `ba_sysp_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `sysp_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统参数类型代码',
  `sysp_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统参数类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_sysp_type
-- ----------------------------
INSERT INTO `ba_sysp_type` VALUES ('8a7ba3345d97830b015d97a8ac180003', '管理员', 'admin', '2017-07-31 16:00:00', '管理员', 'admin', '2017-08-02 08:37:36', 'A03', 'A03', 'Z02', '自动导入');
INSERT INTO `ba_sysp_type` VALUES ('8a7ba3345d97830b015d97aafb410005', '管理员', 'admin', '2017-07-31 16:02:31', '管理员', 'admin', '2017-08-02 08:37:23', 'A03', 'A03', 'Z01', '自动审核');

-- ----------------------------
-- Table structure for ba_unit
-- ----------------------------
DROP TABLE IF EXISTS `ba_unit`;
CREATE TABLE `ba_unit`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `unit_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位代码',
  `unit_zh_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位名称',
  `unit_en_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `unit_change` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国际度量衡换算值',
  `unit_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型',
  `unit_del` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_unit
-- ----------------------------
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc236250007', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '个', '个', '个', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc236b70008', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '条', '条', '条', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc237130009', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '桶', '桶', '桶', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc2378f000a', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '瓶', '瓶', '瓶', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc237d1000b', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '支', '支', '支', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23815000c', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '包', '包', '包', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23861000d', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '副', '副', '副', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc238a2000e', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '箱', '箱', '箱', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc238e6000f', '初始', 'admin', '2018-08-15 12:05:08', NULL, NULL, NULL, 'A04', 'A04', '盒', '盒', '盒', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc239310010', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '把', '把', '把', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc239720011', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '套', '套', '套', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc239ae0012', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '提', '提', '提', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc239f10013', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '袋', '袋', '袋', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23a210014', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '台', '台', '台', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23a550015', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '卷', '卷', '卷', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23a970016', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '只', '只', '只', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23ada0017', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '块', '块', '块', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23b250018', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '双', '双', '双', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23b7f0019', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '件', '件', '件', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23bc4001a', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '升', '升', '升', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23c0f001b', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '根', '根', '根', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23c51001c', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '杯', '杯', '杯', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23c94001d', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '组', '组', '组', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23cdf001e', '初始', 'admin', '2018-08-15 12:05:09', NULL, NULL, NULL, 'A04', 'A04', '张', '张', '张', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23d22001f', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '罐', '罐', '罐', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23d640020', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '串', '串', '串', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23da50021', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '片', '片', '片', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23dea0022', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '本', '本', '本', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23e5d0023', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '辆', '辆', '辆', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23ea10024', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '捆', '捆', '捆', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23ee40025', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '卡', '卡', '卡', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23f1e0026', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '听', '听', '听', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23f610027', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '付', '付', '付', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23f9a0028', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '斤', '斤', '斤', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc23fe70029', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '排', '排', '排', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc24032002a', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '粒', '粒', '粒', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc24072002b', '初始', 'admin', '2018-08-15 12:05:10', NULL, NULL, NULL, 'A04', 'A04', '板', '板', '板', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc240f2002c', '初始', 'admin', '2018-08-15 12:05:11', NULL, NULL, NULL, 'A04', 'A04', '筒', '筒', '筒', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc24132002d', '初始', 'admin', '2018-08-15 12:05:11', NULL, NULL, NULL, 'A04', 'A04', '对', '对', '对', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc24176002e', '初始', 'admin', '2018-08-15 12:05:11', NULL, NULL, NULL, 'A04', 'A04', '打', '打', '打', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc241b9002f', '初始', 'admin', '2018-08-15 12:05:11', NULL, NULL, NULL, 'A04', 'A04', '平方', '平方', '平方', NULL, NULL, NULL);
INSERT INTO `ba_unit` VALUES ('402881b2653ba3dd01653bc241f20030', '初始', 'admin', '2018-08-15 12:05:11', NULL, NULL, NULL, 'A04', 'A04', '面', '面', '面', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ba_unit_type
-- ----------------------------
DROP TABLE IF EXISTS `ba_unit_type`;
CREATE TABLE `ba_unit_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `unit_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型代码',
  `unit_type_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_unit_type
-- ----------------------------
INSERT INTO `ba_unit_type` VALUES ('8a7ba3345da000e0015da064a6a70008', '管理员', 'admin', '2017-08-02 08:42:17', NULL, NULL, NULL, 'A03', 'A03', 'Z01', '重量');

-- ----------------------------
-- Table structure for ba_work_sta
-- ----------------------------
DROP TABLE IF EXISTS `ba_work_sta`;
CREATE TABLE `ba_work_sta`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `work_sta_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作状态代码',
  `work_sta_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作状态名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ba_work_sta
-- ----------------------------
INSERT INTO `ba_work_sta` VALUES ('8a7ba3345da000e0015da3104191003f', '管理员', 'admin', '2017-08-02 21:08:57', NULL, NULL, NULL, 'A03', 'A03', 'gz', 'gz');

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
-- View structure for mv_goods
-- ----------------------------
DROP VIEW IF EXISTS `mv_goods`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mv_goods` AS select `mg`.`id` AS `id`,`mg`.`suo_shu_ke_hu` AS `cus_code`,`mg`.`shp_bian_ma` AS `goods_id`,`mg`.`shp_bian_ma` AS `goods_code`,concat(`mg`.`shp_bian_ma`,'-',`mg`.`shp_ming_cheng`,'-',`mg`.`shl_dan_wei`) AS `goods_name`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`mg`.`jf_shp_lei` AS `jf_shp_lei`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,`mg`.`cf_wen_ceng` AS `cf_wen_ceng`,`mg`.`mp_dan_ceng` AS `mp_dan_ceng`,`mg`.`mp_ceng_gao` AS `mp_ceng_gao`,`mg`.`shp_tiao_ma` AS `shp_tiao_ma`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `zhl_kgm`,`mg`.`chl_shl` AS `chl_shl`,`mg`.`ti_ji_cm` AS `ti_ji_cm`,`mg`.`zhl_kg` AS `zhl_kg`,`mg`.`zhl_kg` AS `zhl_kg_zx`,`mg`.`chp_shu_xing` AS `chp_shu_xing`,`mg`.`jsh_dan_wei` AS `baseunit`,`mg`.`JIZHUN_WENDU` AS `jizhun_wendu`,`mg`.`SHP_BIAN_MAKH` AS `shp_bian_makh`,'N' AS `chailing`,`mg`.`shl_dan_wei` AS `zhx_unit`,`mg`.`shp_gui_ge` AS `shp_gui_ge`,`mg`.`shp_pin_pai` AS `SHP_PIN_PAI`,`mg`.`gao_zh_xiang` AS `GAO_ZH_XIANG`,`mg`.`ku_zh_xiang` AS `KU_ZH_XIANG`,`mg`.`ch_zh_xiang` AS `CH_ZH_XIANG` from `md_goods` `mg` union all select concat(`mg`.`id`,'l') AS `id`,`mg`.`suo_shu_ke_hu` AS `cus_code`,`mg`.`shp_bian_ma` AS `goods_id`,concat(`mg`.`shp_bian_ma`,'l') AS `goods_code`,concat(`mg`.`shp_bian_ma`,'l-',`mg`.`shp_ming_cheng`,'-',`mg`.`jsh_dan_wei`) AS `goods_name`,`mg`.`shp_ming_cheng` AS `shp_ming_cheng`,`mg`.`jf_shp_lei` AS `jf_shp_lei`,`mg`.`jsh_dan_wei` AS `shl_dan_wei`,`mg`.`cf_wen_ceng` AS `cf_wen_ceng`,`mg`.`mp_dan_ceng` AS `mp_dan_ceng`,`mg`.`mp_ceng_gao` AS `mp_ceng_gao`,`mg`.`shp_tiao_ma` AS `shp_tiao_ma`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `zhl_kgm`,`mg`.`chl_shl` AS `chl_shl`,cast((`mg`.`ti_ji_cm` / `mg`.`chl_shl`) as signed) AS `ti_ji_cm`,(`mg`.`zhl_kg` / `mg`.`chl_shl`) AS `zhl_kg`,`mg`.`zhl_kg` AS `zhl_kg_zx`,`mg`.`chp_shu_xing` AS `chp_shu_xing`,`mg`.`jsh_dan_wei` AS `baseunit`,`mg`.`JIZHUN_WENDU` AS `jizhun_wendu`,`mg`.`SHP_BIAN_MAKH` AS `shp_bian_makh`,'Y' AS `chailing`,`mg`.`shl_dan_wei` AS `zhx_unit`,`mg`.`shp_gui_ge` AS `shp_gui_ge`,`mg`.`shp_pin_pai` AS `SHP_PIN_PAI`,`mg`.`gao_zh_xiang` AS `GAO_ZH_XIANG`,`mg`.`ku_zh_xiang` AS `KU_ZH_XIANG`,`mg`.`ch_zh_xiang` AS `CH_ZH_XIANG` from `md_goods` `mg` where (`mg`.`chl_kong_zhi` = 'Y');

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
-- View structure for tmsv_app_menu
-- ----------------------------
DROP VIEW IF EXISTS `tmsv_app_menu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tmsv_app_menu` AS select distinct `t_s_base_user`.`username` AS `username`,`tms_app_menu`.`title` AS `title`,`tms_app_menu`.`pagename` AS `pagename`,`tms_app_menu`.`sortno` AS `sortno`,`tms_app_menu`.`icon` AS `icon`,`tms_app_menu`.`iconcolor` AS `iconcolor` from ((((`t_s_base_user` join `t_s_role_user` on((`t_s_base_user`.`ID` = `t_s_role_user`.`userid`))) join `t_s_role_function` on((`t_s_role_user`.`roleid` = `t_s_role_function`.`roleid`))) join `t_s_function` on((`t_s_role_function`.`functionid` = `t_s_function`.`ID`))) join `tms_app_menu` on((`t_s_function`.`functionurl` = `tms_app_menu`.`functionurl`))) order by `t_s_base_user`.`username`,`tms_app_menu`.`sortno`,`tms_app_menu`.`icon`,`tms_app_menu`.`iconcolor`;

-- ----------------------------
-- View structure for tmsv_order_stat
-- ----------------------------
DROP VIEW IF EXISTS `tmsv_order_stat`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tmsv_order_stat` AS select count(`tms_yw_dingdan`.`id`) AS `count`,left(`tms_yw_dingdan`.`create_date`,7) AS `month` from `tms_yw_dingdan` where ((`tms_yw_dingdan`.`zhuangtai` <> '已删除') and (left(`tms_yw_dingdan`.`create_date`,4) = left(sysdate(),4))) group by `month` order by `month`;

-- ----------------------------
-- View structure for v_order_stat
-- ----------------------------
DROP VIEW IF EXISTS `v_order_stat`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_order_stat` AS select count(`wm_im_notice_h`.`id`) AS `count`,left(`wm_im_notice_h`.`create_date`,7) AS `month` from `wm_im_notice_h` where (left(`wm_im_notice_h`.`create_date`,4) = left(sysdate(),4)) group by `month` order by `month`;

-- ----------------------------
-- View structure for v_tms_dz
-- ----------------------------
DROP VIEW IF EXISTS `v_tms_dz`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_tms_dz` AS select `tms_md_dz`.`id` AS `id`,concat(`tms_md_dz`.`username`,'-',`tms_md_dz`.`lianxiren`,'-',`tms_md_dz`.`dianhua`,'-',`tms_md_dz`.`xiangxidizhi`) AS `dizhi` from `tms_md_dz`;

-- ----------------------------
-- View structure for v_ysdd
-- ----------------------------
DROP VIEW IF EXISTS `v_ysdd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_ysdd` AS select `tms_yw_dingdan`.`id` AS `id`,date_format(`tms_yw_dingdan`.`create_date`,'%Y-%m-%d') AS `create_date`,`tms_yw_dingdan`.`fahuoren` AS `fahuoren`,`tms_yw_dingdan`.`huowu` AS `huowu`,`tms_yw_dingdan`.`hwshjs` AS `hwshjs`,`tms_yw_dingdan`.`zhongl` AS `zhongl`,`tms_yw_dingdan`.`tiji` AS `tiji`,`tms_yw_dingdan`.`shrdh` AS `shrdh`,`tms_yw_dingdan`.`shouhuoren` AS `shouhuoren`,`tms_yw_dingdan`.`hwshfs` AS `hwshfs`,`tms_yw_dingdan`.`shrsj` AS `shrsj`,`tms_yw_dingdan`.`daishouk` AS `daishouk`,`tms_yw_dingdan`.`hwyf` AS `hwyf`,((`tms_yw_dingdan`.`daishouk` + `tms_yw_dingdan`.`hwyf`) + `tms_yw_dingdan`.`hwxhf`) AS `hwzfy`,`tms_yw_dingdan`.`hwxhf` AS `hwxhf`,`tms_yw_dingdan`.`chehao` AS `chehao`,`tms_yw_dingdan`.`zhuangtai` AS `zhuangtai`,`tms_yw_dingdan`.`ywhdbz` AS `ywhdbz`,`tms_yw_dingdan`.`sdsj` AS `sdsj`,`tms_yw_dingdan`.`by1` AS `by1`,`tms_yw_dingdan`.`ywkhdh` AS `YWKHDH` from `tms_yw_dingdan` where (`tms_yw_dingdan`.`zhuangtai` <> '已删除');

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
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wave_to_down` AS select `wo`.`id` AS `id`,`wo`.`create_by` AS `create_by`,`wo`.`create_name` AS `create_name`,`wo`.`cus_code` AS `cus_code`,`wo`.`cus_name` AS `cus_name`,`wo`.`wave_id` AS `wave_id`,`wo`.`goods_id` AS `goods_id`,`wo`.`goods_name` AS `goods_name`,`wo`.`im_cus_code` AS `im_cus_code`,`wo`.`bin_id` AS `bin_id`,`wo`.`tin_id` AS `tin_id`,`wo`.`pro_data` AS `pro_data`,sum(`wo`.`base_goodscount`) AS `base_goodscount`,(select `wvs`.`goods_qua` from `wv_stock_stt_ava` `wvs` where ((`wvs`.`ku_wei_bian_ma` = `wo`.`bin_id`) and (`wvs`.`bin_id` = `wo`.`tin_id`) and (`wvs`.`goods_id` = `wo`.`goods_id`) and (`wvs`.`goods_pro_data` = `wo`.`pro_data`) and (`wvs`.`cus_code` = `wo`.`cus_code`)) limit 1) AS `om_bei_zhu`,`wo`.`base_unit` AS `base_unit` from `wm_om_qm_i` `wo` where ((`wo`.`wave_id` is not null) and (`wo`.`bin_sta` = 'N')) group by `wo`.`cus_code`,`wo`.`cus_name`,`wo`.`wave_id`,`wo`.`goods_id`,`wo`.`goods_name`,`wo`.`bin_id`,`wo`.`tin_id`,`wo`.`pro_data`;

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
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_gi_notice` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`update_date` AS `update_date`,`wg`.`id` AS `id`,`wg`.`om_notice_id` AS `om_notice_id`,`wg`.`iom_notice_item` AS `iom_notice_item`,`wg`.`bin_id` AS `bin_id`,`wg`.`tin_id` AS `tin_id`,`wg`.`cus_code` AS `cus_code`,`mc`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`qm_ok_quat` AS `gi_count`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhx_unit` AS `zhx_unit`,`mg`.`chl_shl` AS `chl_shl`,`wg`.`goods_unit` AS `shl_dan_wei`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`wg`.`assign_to` AS `assign_To`,`mg`.`shp_gui_ge` AS `shp_gui_ge`,(select `wm_om_notice_h`.`om_beizhu` from `wm_om_notice_h` where (`wm_om_notice_h`.`om_notice_id` = `wg`.`om_notice_id`)) AS `om_bei_zhu` from ((`wm_om_qm_i` `wg` join `md_cus` `mc`) join `mv_goods` `mg`) where ((`wg`.`cus_code` = `mc`.`ke_hu_bian_ma`) and (`wg`.`goods_id` = `mg`.`goods_code`) and (`wg`.`bin_sta` = 'N')) order by `wg`.`bin_id`;

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
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_last_move` AS select `wt`.`id` AS `id`,`wt`.`create_date` AS `create_date`,`wt`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wt`.`bin_id` AS `bin_id`,`wt`.`goods_id` AS `goods_id`,`wt`.`goods_pro_data` AS `goods_pro_data` from `wm_to_up_goods` `wt` where ((to_days(now()) - to_days(`wt`.`create_date`)) < 7) union all select `wt`.`id` AS `id`,`wt`.`create_date` AS `create_date`,`wt`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wt`.`bin_id_from` AS `bin_id`,`wt`.`goods_id` AS `goods_id`,`wt`.`goods_pro_data` AS `goods_pro_data` from `wm_to_down_goods` `wt` where ((to_days(now()) - to_days(`wt`.`create_date`)) < 7);

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
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock` AS select concat(`wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`goods_id`,`wg`.`goods_pro_data`) AS `id`,`wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`kuctype` AS `kuctype`,cast(sum(`wg`.`base_goodscount`) as signed) AS `goods_qua`,`wg`.`goods_unit` AS `goods_unit`,cast(sum(`wg`.`base_goodscount`) as signed) AS `base_goodscount`,`wg`.`base_unit` AS `base_unit`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_code` AS `goods_code`,`wg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wg`.`shl_dan_wei` AS `shl_dan_wei`,`wg`.`chl_shl` AS `chl_shl`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`shp_gui_ge` AS `shp_gui_ge`,(`wg`.`goods_pro_data` + interval ifnull(`wg`.`bzhi_qi`,0) day) AS `dqr`,`mb`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,`mb`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`mb`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`mb`.`bin_store` AS `bin_store`,`wg`.`ti_ji_cm` AS `ti_ji_cm` from (`wv_stock_base` `wg` join `md_bin` `mb`) where (`wg`.`ku_wei_bian_ma` = `mb`.`ku_wei_bian_ma`) group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data`,`wg`.`kuctype` having (sum(`wg`.`base_goodscount`) <> 0);

-- ----------------------------
-- View structure for wv_stock_base
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_base`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_base` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,`wg`.`kuctype` AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`mg`.`goods_id` AS `goods_code`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_qua` AS `goods_qua`,`mg`.`goods_name` AS `shp_ming_cheng`,`wg`.`goods_pro_data` AS `goods_pro_data`,`mg`.`bzhi_qi` AS `bzhi_qi`,`mg`.`zhl_kgm` AS `yushoutianshu`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount`,`mg`.`shl_dan_wei` AS `shl_dan_wei`,concat(`mg`.`mp_ceng_gao`,'*',`mg`.`mp_dan_ceng`) AS `hiti`,`mg`.`shp_bian_makh` AS `shp_bian_makh`,`mg`.`chl_shl` AS `chl_shl`,`wg`.`order_id` AS `order_id`,`mg`.`zhl_kg` AS `zhl_kg`,`mg`.`shp_gui_ge` AS `shp_gui_ge`,`mg`.`ti_ji_cm` AS `ti_ji_cm` from (`wv_today_stock_move` `wg` left join `mv_goods` `mg` on((`wg`.`goods_id` = `mg`.`goods_code`)));

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
-- View structure for wv_stock_stt_ava
-- ----------------------------
DROP VIEW IF EXISTS `wv_stock_stt_ava`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_stock_stt_ava` AS select `wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wg`.`bin_id` AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`zhong_wen_qch` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_code` AS `goods_code`,`wg`.`shp_ming_cheng` AS `shp_ming_cheng`,`wg`.`shp_gui_ge` AS `shp_gui_ge`,`wg`.`chl_shl` AS `chl_shl`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`bzhi_qi` AS `bzhi_qi`,`wg`.`dqr` AS `dqr`,`wg`.`ku_wei_lei_xing` AS `ku_wei_lei_xing`,`wg`.`qu_huo_ci_xu` AS `qu_huo_ci_xu`,`wg`.`shang_jia_ci_xu` AS `shang_jia_ci_xu`,`wg`.`bin_store` AS `bin_store`,`wg`.`base_goodscount` AS `base_goodscount`,sum(`wg`.`base_goodscount`) AS `goods_qua`,`wg`.`base_unit` AS `base_unit` from `wv_stock` `wg` group by `wg`.`ku_wei_bian_ma`,`wg`.`bin_id`,`wg`.`cus_code`,`wg`.`goods_id`,`wg`.`goods_pro_data`;

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
-- View structure for wv_today_stock_move
-- ----------------------------
DROP VIEW IF EXISTS `wv_today_stock_move`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wv_today_stock_move` AS select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,`wg`.`goods_qua` AS `goods_qua`,`wg`.`order_id` AS `order_id`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,`wg`.`base_goodscount` AS `base_goodscount` from `wm_to_up_goods` `wg` where (to_days(`wg`.`create_date`) = to_days(now())) union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'库存' AS `kuctype`,`wg`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,trim(`wg`.`bin_id_from`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,(0 - `wg`.`goods_quaok`) AS `goods_qua`,`wg`.`order_id` AS `order_id`,`wg`.`goods_pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,(0 - `wg`.`base_goodscount`) AS `base_goodscount` from `wm_to_down_goods` `wg` where (to_days(`wg`.`create_date`) = to_days(now())) union all select `wg`.`create_date` AS `create_date`,`wg`.`create_name` AS `create_name`,`wg`.`create_by` AS `create_by`,`wg`.`id` AS `id`,'待下架' AS `kuctype`,`wg`.`bin_id` AS `ku_wei_bian_ma`,trim(`wg`.`tin_id`) AS `bin_id`,`wg`.`cus_code` AS `cus_code`,`wg`.`cus_code` AS `zhong_wen_qch`,`wg`.`goods_id` AS `goods_id`,(0 - `wg`.`qm_ok_quat`) AS `goods_qua`,`wg`.`om_notice_id` AS `order_id`,`wg`.`pro_data` AS `goods_pro_data`,`wg`.`goods_unit` AS `goods_unit`,`wg`.`base_unit` AS `base_unit`,(0 - `wg`.`base_goodscount`) AS `base_goodscount` from `wm_om_qm_i` `wg` where ((`wg`.`bin_sta` = 'N') or (`wg`.`bin_sta` = 'I')) union all select `wm_his_stock_data`.`his_date` AS `create_date`,'system' AS `create_name`,'system' AS `create_by`,`wm_his_stock_data`.`id` AS `id`,'库存' AS `kuctype`,`wm_his_stock_data`.`ku_wei_bian_ma` AS `ku_wei_bian_ma`,`wm_his_stock_data`.`bin_id` AS `bin_id`,`wm_his_stock_data`.`cus_code` AS `cus_code`,`wm_his_stock_data`.`cus_name` AS `zhong_wen_qch`,`wm_his_stock_data`.`goods_id` AS `goods_id`,`wm_his_stock_data`.`count` AS `goods_qua`,'kucun' AS `order_id`,`wm_his_stock_data`.`pro_data` AS `goods_pro_data`,`wm_his_stock_data`.`base_unit` AS `goods_unit`,`wm_his_stock_data`.`base_unit` AS `base_unit`,`wm_his_stock_data`.`count` AS `base_goodscount` from `wm_his_stock_data`;

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
-- Procedure structure for delete_jeecgDemo_createDate
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_jeecgDemo_createDate`;
delimiter ;;
CREATE PROCEDURE `delete_jeecgDemo_createDate`(IN `createDate` date)
BEGIN 
  delete from jeecg_demo where create_date >= createDate;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for formDataList
-- ----------------------------
DROP PROCEDURE IF EXISTS `formDataList`;
delimiter ;;
CREATE PROCEDURE `formDataList`(tableName varchar(50),dbFields varchar(500),whereSql varchar(1000))
BEGIN
	declare exe_sql varchar(2000);
	SET exe_sql = CONCAT("select ",dbFields," from ",tableName,whereSql);
	set @v_sql=exe_sql;   
	prepare stmt from @v_sql; 
	EXECUTE stmt;     
	deallocate prepare stmt; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for replaceOrgCode
-- ----------------------------
DROP PROCEDURE IF EXISTS `replaceOrgCode`;
delimiter ;;
CREATE PROCEDURE `replaceOrgCode`()
BEGIN
DECLARE code_length int DEFAULT 0 ;
DECLARE new_code VARCHAR(500);
DECLARE org_id VARCHAR(500);
DECLARE old_code VARCHAR(500);
DECLARE code_length_index int DEFAULT 1;
DECLARE b int default 0;
DECLARE pro CURSOR for select id,org_code,LENGTH(org_code) from t_s_depart;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET b = 1;
OPEN pro;
FETCH pro into org_id,old_code,code_length;
 while b<>1 do
   set code_length_index=1;
	 set new_code='';
	 while code_length_index<code_length do
     set new_code=CONCAT(new_code,'A',SUBSTR(old_code,code_length_index,2));
     set code_length_index=code_length_index+2;
   end while;
    update t_s_depart set org_code=new_code where id=org_id;
  FETCH pro into org_id,old_code,code_length;
end while;
close pro;
end
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
CREATE PROCEDURE `update_wm_his_stock`(in wmdate varchar(45))
BEGIN

delete from wm_his_stock where his_date = wmdate;
delete from wm_his_stock_ku where his_date = wmdate;
delete  FROM wm_day_cost where day_cost_yj = 0;
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
    concat(wmdate,
            mdp.cus_code,
            mdp.ku_wei_bian_ma,
            mdp.bin_id,
            mdp.goods_id) as id,
    wmdate as his_date,
    mdp.cus_code,
    mdp.ku_wei_bian_ma,
    mdp.bin_id,
    mdp.goods_id,
    sum(base_goodscount) as count,
    mdp.base_unit
 
FROM
    mv_down_and_up mdp
where
    (mdp.leixing = 'S'
        and to_days(mdp.create_date) <= to_days(wmdate))
        or (mdp.order_id <> 'ZY'
        and mdp.leixing = 'H'
        and to_days(mdp.create_date) < to_days(wmdate))
        or (mdp.order_id = 'ZY'
        and mdp.leixing = 'H'
        and to_days(mdp.create_date) <= to_days(wmdate))
group by mdp.cus_code , mdp.ku_wei_bian_ma , mdp.bin_id
having sum(base_goodscount) <> 0
order by cus_code , create_date;


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
    concat(wmdate,
            mdp.cus_code,
            mdp.ku_wei_bian_ma,
            mdp.bin_id,
            mdp.goods_id) as id,
    wmdate as his_date,
    mdp.cus_code,
    mdp.ku_wei_bian_ma,
    mdp.bin_id,
    mdp.goods_id,
    sum(base_goodscount) as count,
    mdp.base_unit
 
FROM
    mv_down_and_up mdp
where
    (mdp.leixing = 'S'
        and to_days(mdp.create_date) <= to_days(wmdate))
        or (mdp.leixing = 'H'
        and to_days(mdp.create_date) <= to_days(wmdate))
        
group by mdp.cus_code , mdp.ku_wei_bian_ma , mdp.bin_id,mdp.goods_id
having sum(base_goodscount) <> 0
order by cus_code , create_date;



END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_wm_last_day_stock
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_wm_last_day_stock`;
delimiter ;;
CREATE PROCEDURE `update_wm_last_day_stock`(in wmdate varchar(45))
BEGIN
 
delete from wm_his_stock_data;
 

INSERT INTO wm_his_stock_data (
  `id` ,
  `his_date` ,
  `cus_code` ,
  `ku_wei_bian_ma` ,
  `bin_id` ,
  `goods_id` ,
  `count` ,
  `base_unit`,
	`pro_data`
)
SELECT 
    concat(wmdate,
            mdp.cus_code,
            mdp.ku_wei_bian_ma,
            mdp.bin_id,
            mdp.goods_id,mdp.goods_pro_data) as id,
    wmdate as his_date,
    mdp.cus_code,
    mdp.ku_wei_bian_ma,
    mdp.bin_id,
    mdp.goods_id,
    sum(base_goodscount) as count,
    mdp.base_unit,
goods_pro_data
 
FROM
    mv_down_and_up mdp
where
    (mdp.leixing = 'S'
        and to_days(mdp.create_date) <= to_days(wmdate))
        or (mdp.leixing = 'H'
        and to_days(mdp.create_date) <= to_days(wmdate))
        
group by mdp.cus_code , mdp.ku_wei_bian_ma , mdp.bin_id,mdp.goods_id,mdp.goods_pro_data
having sum(base_goodscount) <> 0
order by cus_code , create_date;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
