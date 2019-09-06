/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : demo.top

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 06/09/2019 23:15:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dl_sys_manager
-- ----------------------------
DROP TABLE IF EXISTS `dl_sys_manager`;
CREATE TABLE `dl_sys_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password_hash` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NOT NULL COMMENT '状态[-1:删除;0:禁用;1启用]',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `login`(`username`, `password_hash`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统_用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl_sys_manager
-- ----------------------------
INSERT INTO `dl_sys_manager` VALUES (1, '账号', 'e10adc3949ba59abbe56e057f20f883e', '昵称', '真实姓名', '13084565607', 1, 1567691292, 1567609304);

-- ----------------------------
-- Table structure for dl_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `dl_sys_menu`;
CREATE TABLE `dl_sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址链接',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `pid` int(10) NOT NULL DEFAULT 0 COMMENT '父id(0为顶级)',
  `sort` int(5) NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '状态',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统_菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl_sys_menu
-- ----------------------------
INSERT INTO `dl_sys_menu` VALUES (1, 'Dashboard', 'javascript:;', 'layui-icon layui-icon-home', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (2, '欢迎页', '#/console/welcome', NULL, 1, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (3, '系统管理', 'javascript:;', 'layui-icon layui-icon-set', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (4, '用户管理', '#/system/user', NULL, 3, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (5, '角色管理', '#/system/role', NULL, 3, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (6, '权限管理', '#/system/authorities', NULL, 3, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (7, '登录日志', '#/system/loginRecord', NULL, 3, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (8, '模板页面', 'javascript:;', 'layui-icon layui-icon-template', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (9, '表单页', 'javascript:;', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (10, '表格页', 'javascript:;', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (11, '错误页', 'javascript:;', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (12, '个人中心', '#/template/user-info', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (13, '登录页面', './components/template/login.html', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (14, '文件管理', '#/template/file/fileMain', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (15, '路由传参', '#/template/routerDemo', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (16, '多系统', './side-more.html', NULL, 8, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (17, '扩展组件', 'javascript:;', 'layui-icon layui-icon-app', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (18, '下拉菜单', '#/plugin/dropdown', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (19, '消息通知', '#/plugin/notice', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (20, '弹窗组件', '#/plugin/dialog', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (21, '鼠标右键', '#/plugin/contextMenu', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (22, '打印插件', '#/plugin/printer', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (23, '表格扩展', '#/plugin/tableX', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (24, '更多扩展', '#/plugin/other', NULL, 17, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (25, 'LayUI组件', 'javascript:;', 'layui-icon layui-icon-release', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (26, '组件演示', '#/template/iframe/id=laydemo', NULL, 25, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (27, 'layui文档', '#/template/iframe/id=layui', '', 25, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (28, 'layer弹窗组件', '#/template/iframe/id=layer', NULL, 25, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (29, 'laydate日期组件', '#/template/iframe/id=laydate', NULL, 25, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (30, '多级菜单', 'javascript:;', 'layui-icon-unlink', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (31, '二级菜单', 'javascript:;', NULL, 30, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (32, '二级菜单', 'javascript:;', NULL, 30, 0, 0, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (33, '一级菜单', 'javascript:;', 'layui-icon-unlink', 0, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (34, '菜单管理', '#/system/menu', NULL, 3, 0, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (35, '测试菜单', 'javascript:;', '1', 1, 1, 1, NULL, NULL);
INSERT INTO `dl_sys_menu` VALUES (36, '复制欢迎页', '#/console/welcome', '', 35, 0, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
