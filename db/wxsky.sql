

-- 导出 wxsky 的数据库结构
CREATE DATABASE IF NOT EXISTS `wxsky` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wxsky`;


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
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
