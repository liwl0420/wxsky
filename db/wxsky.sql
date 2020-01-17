-- --------------------------------------------------------
-- 主机:                           192.168.87.37
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------


-- 导出 wxsky 的数据库结构
CREATE DATABASE IF NOT EXISTS `wxsky`
USE `wxsky`;


-- 导出  表 wxsky.tbl_show_info 结构
CREATE TABLE IF NOT EXISTS `tbl_show_info` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '演出名称',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0未开售，1售票中，2已过期，3已删除',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出信息表';



-- 导出  表 wxsky.tbl_show_place 结构
CREATE TABLE IF NOT EXISTS `tbl_show_place` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '场所名称',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出场所表';



-- 导出  表 wxsky.tbl_user 结构
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `username` varchar(16) NOT NULL COMMENT '用户名，8~16位，由英文/数字/下划线组成，英文开头',
  `password` varchar(32) NOT NULL COMMENT '密码，6~16位，由英文/数字/下划线组成，MD5加密',
  `nickname` varchar(16) NOT NULL COMMENT '昵称',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  wxsky.tbl_user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id`, `username`, `password`, `nickname`, `createtime`) VALUES
	('37f97c95-1be2-11ea-a6ed-d4ae52c67b6b', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '2019-12-11 14:51:58');

