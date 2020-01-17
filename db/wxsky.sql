-- --------------------------------------------------------
-- 主机:                           192.168.87.37
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 wxsky 的数据库结构
CREATE DATABASE IF NOT EXISTS `wxsky` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wxsky`;


-- 导出  表 wxsky.tbl_book 结构
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE IF NOT EXISTS `tbl_book` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `cusid` varchar(16) NOT NULL COMMENT '客户表主键id',
  `receiver` varchar(32) NOT NULL COMMENT '收货人',
  `telephone` varchar(16) NOT NULL COMMENT '手机号码',
  `address` varchar(64) NOT NULL COMMENT '收货地址',
  `isdefault` int(11) NOT NULL DEFAULT '0' COMMENT '是否默认，1是，0否',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货地址表';

-- 正在导出表  wxsky.tbl_book 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_book` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_city 结构
DROP TABLE IF EXISTS `tbl_city`;
CREATE TABLE IF NOT EXISTS `tbl_city` (
  `id` int(11) NOT NULL COMMENT '城市序号',
  `city` varchar(50) NOT NULL COMMENT '城市名称',
  `pid` int(11) NOT NULL COMMENT '省份ID',
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中国主要城市';

-- 正在导出表  wxsky.tbl_city 的数据：~391 rows (大约)
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` (`id`, `city`, `pid`) VALUES
	(10, '七台河市', 10),
	(7, '万宁市', 24),
	(2, '三亚市', 24),
	(4, '三明市', 14),
	(12, '三门峡市', 17),
	(1, '上海市', 3),
	(11, '上饶市', 15),
	(8, '东方市', 24),
	(17, '东莞市', 20),
	(5, '东营市', 16),
	(5, '中卫市', 30),
	(18, '中山市', 20),
	(13, '临夏回族自治州', 21),
	(10, '临汾市', 6),
	(13, '临沂市', 16),
	(8, '临沧市', 25),
	(12, '临高县', 24),
	(6, '丹东市', 8),
	(11, '丽水市', 12),
	(6, '丽江市', 25),
	(9, '乌兰察布市', 32),
	(3, '乌海市', 32),
	(21, '乌苏市', 31),
	(1, '乌鲁木齐市', 31),
	(15, '乐东黎族自治县', 24),
	(10, '乐山市', 22),
	(4, '九江市', 15),
	(16, '云林县', 7),
	(21, '云浮市', 20),
	(6, '五家渠市', 31),
	(3, '五指山市', 24),
	(15, '亳州市', 13),
	(13, '仙桃市', 18),
	(18, '伊宁市', 31),
	(7, '伊春市', 10),
	(6, '佛山市', 20),
	(9, '佳木斯市', 10),
	(17, '保亭黎族苗族自治县', 24),
	(6, '保定市', 5),
	(4, '保山市', 25),
	(15, '信阳市', 17),
	(5, '儋州市', 24),
	(2, '克拉玛依市', 31),
	(14, '六安市', 13),
	(2, '六盘水市', 23),
	(1, '兰州市', 21),
	(11, '兴安盟', 32),
	(9, '内江市', 22),
	(21, '凉山彝族自治州', 22),
	(2, '包头市', 32),
	(1, '北京市', 1),
	(5, '北海市', 28),
	(3, '十堰市', 18),
	(1, '南京市', 11),
	(11, '南充市', 22),
	(1, '南宁市', 28),
	(7, '南平市', 14),
	(15, '南投县', 7),
	(1, '南昌市', 15),
	(6, '南通市', 11),
	(13, '南阳市', 17),
	(17, '博乐市', 31),
	(2, '厦门市', 14),
	(4, '双鸭山市', 10),
	(22, '台东县', 7),
	(13, '台中县', 7),
	(4, '台中市', 7),
	(8, '台北县', 7),
	(1, '台北市', 7),
	(18, '台南县', 7),
	(5, '台南市', 7),
	(10, '台州市', 12),
	(1, '合肥市', 13),
	(8, '吉安市', 15),
	(2, '吉林市', 9),
	(7, '吐鲁番市', 31),
	(11, '吕梁市', 6),
	(3, '吴忠市', 30),
	(16, '周口市', 17),
	(7, '呼伦贝尔市', 32),
	(1, '呼和浩特市', 32),
	(11, '和田市', 31),
	(11, '咸宁市', 18),
	(4, '咸阳市', 27),
	(10, '哈密市', 31),
	(1, '哈尔滨市', 10),
	(2, '唐山市', 5),
	(14, '商丘市', 17),
	(10, '商洛市', 27),
	(9, '喀什市', 31),
	(17, '嘉义县', 7),
	(7, '嘉义市', 7),
	(4, '嘉兴市', 12),
	(5, '嘉峪关市', 21),
	(3, '四平市', 9),
	(4, '固原市', 30),
	(5, '图木舒克市', 31),
	(3, '基隆市', 7),
	(20, '塔城市', 31),
	(13, '大兴安岭地区', 10),
	(2, '大同市', 6),
	(6, '大庆市', 10),
	(13, '大理白族自治州', 25),
	(2, '大连市', 8),
	(4, '天水市', 21),
	(1, '天津市', 2),
	(14, '天门市', 18),
	(1, '太原市', 6),
	(19, '奎屯市', 31),
	(10, '威海市', 16),
	(13, '娄底市', 19),
	(9, '孝感市', 18),
	(9, '宁德市', 14),
	(2, '宁波市', 12),
	(8, '安庆市', 13),
	(9, '安康市', 27),
	(5, '安阳市', 17),
	(4, '安顺市', 23),
	(10, '定安县', 24),
	(11, '定西市', 21),
	(9, '宜兰县', 7),
	(13, '宜宾市', 22),
	(5, '宜昌市', 18),
	(9, '宜春市', 15),
	(3, '宝鸡市', 27),
	(17, '宣城市', 13),
	(12, '宿州市', 13),
	(13, '宿迁市', 11),
	(20, '屏东县', 7),
	(11, '屯昌县', 24),
	(4, '山南地区', 29),
	(6, '岳阳市', 19),
	(14, '崇左市', 28),
	(13, '巢湖市', 13),
	(17, '巴中市', 22),
	(8, '巴彦淖尔市', 32),
	(4, '常州市', 11),
	(7, '常德市', 19),
	(8, '平凉市', 21),
	(4, '平顶山市', 17),
	(7, '广元市', 22),
	(14, '广安市', 22),
	(1, '广州市', 20),
	(10, '庆阳市', 21),
	(13, '库尔勒市', 31),
	(10, '廊坊市', 5),
	(6, '延安市', 27),
	(9, '延边朝鲜族自治州', 9),
	(2, '开封市', 17),
	(7, '张家口市', 5),
	(8, '张家界市', 19),
	(7, '张掖市', 21),
	(14, '彰化县', 7),
	(3, '徐州市', 11),
	(14, '德宏傣族景颇族自治州', 25),
	(14, '德州市', 16),
	(5, '德阳市', 22),
	(9, '忻州市', 6),
	(12, '怀化市', 19),
	(15, '怒江傈傈族自治州', 25),
	(7, '思茅市', 25),
	(17, '恩施土家族苗族自治州', 18),
	(11, '惠州市', 20),
	(1, '成都市', 22),
	(10, '扬州市', 11),
	(8, '承德市', 5),
	(10, '抚州市', 15),
	(4, '抚顺市', 8),
	(1, '拉萨市', 29),
	(20, '揭阳市', 20),
	(3, '攀枝花市', 22),
	(9, '文山壮族苗族自治州', 25),
	(6, '文昌市', 24),
	(7, '新乡市', 17),
	(5, '新余市', 15),
	(11, '新竹县', 7),
	(6, '新竹市', 7),
	(2, '无锡市', 11),
	(5, '日喀则地区', 29),
	(11, '日照市', 16),
	(1, '昆明市', 25),
	(14, '昌吉市　', 31),
	(14, '昌江黎族自治县', 24),
	(3, '昌都地区', 29),
	(5, '昭通市', 25),
	(7, '晋中市', 6),
	(5, '晋城市', 6),
	(2, '景德镇市', 15),
	(2, '曲靖市', 25),
	(6, '朔州市', 6),
	(13, '朝阳市', 8),
	(5, '本溪市', 8),
	(13, '来宾市', 28),
	(1, '杭州市', 12),
	(7, '松原市', 9),
	(7, '林芝地区', 29),
	(6, '果洛藏族自治州', 26),
	(4, '枣庄市', 16),
	(2, '柳州市', 28),
	(2, '株洲市', 19),
	(3, '桂林市', 28),
	(10, '桃园县', 7),
	(12, '梅州市', 20),
	(4, '梧州市', 28),
	(12, '楚雄彝族自治州', 25),
	(8, '榆林市', 27),
	(6, '武威市', 21),
	(1, '武汉市', 18),
	(6, '毕节地区', 23),
	(11, '永州市', 19),
	(7, '汉中市', 27),
	(4, '汕头市', 20),
	(13, '汕尾市', 20),
	(7, '江门市', 20),
	(16, '池州市', 13),
	(1, '沈阳市', 8),
	(9, '沧州市', 5),
	(12, '河池市', 28),
	(14, '河源市', 20),
	(5, '泉州市', 14),
	(9, '泰安市', 16),
	(12, '泰州市', 11),
	(4, '泸州市', 22),
	(3, '洛阳市', 17),
	(1, '济南市', 16),
	(8, '济宁市', 16),
	(18, '济源市', 17),
	(2, '海东地区', 26),
	(3, '海北藏族自治州', 26),
	(5, '海南藏族自治州', 26),
	(1, '海口市', 24),
	(8, '海西蒙古族藏族自治州', 26),
	(3, '淄博市', 16),
	(6, '淮北市', 13),
	(4, '淮南市', 13),
	(8, '淮安市', 11),
	(2, '深圳市', 20),
	(16, '清远市', 20),
	(3, '温州市', 12),
	(5, '渭南市', 27),
	(5, '湖州市', 12),
	(3, '湘潭市', 19),
	(14, '湘西土家族苗族自治州', 19),
	(8, '湛江市', 20),
	(10, '滁州市', 13),
	(16, '滨州市', 16),
	(11, '漯河市', 17),
	(6, '漳州市', 14),
	(7, '潍坊市', 16),
	(15, '潜江市', 18),
	(19, '潮州市', 20),
	(9, '澄迈县', 24),
	(21, '澎湖县', 7),
	(1, '澳门特别行政区', 33),
	(9, '濮阳市', 17),
	(6, '烟台市', 16),
	(8, '焦作市', 17),
	(8, '牡丹江市', 10),
	(9, '玉林市', 28),
	(7, '玉树藏族自治州', 26),
	(3, '玉溪市', 25),
	(3, '珠海市', 20),
	(18, '琼中黎族苗族自治县', 24),
	(4, '琼海市', 24),
	(14, '甘南藏族自治州', 21),
	(20, '甘孜藏族自治州', 22),
	(8, '白城市', 9),
	(6, '白山市', 9),
	(13, '白沙黎族自治县', 24),
	(3, '白银市', 21),
	(10, '百色市', 28),
	(9, '益阳市', 19),
	(9, '盐城市', 11),
	(11, '盘锦市', 8),
	(12, '眉山市', 22),
	(2, '石嘴山市', 30),
	(1, '石家庄市', 5),
	(3, '石河子市　', 31),
	(16, '神农架林区', 18),
	(1, '福州市', 14),
	(3, '秦皇岛市', 5),
	(16, '米泉市', 31),
	(10, '红河哈尼族彝族自治州', 25),
	(6, '绍兴市', 12),
	(12, '绥化市', 10),
	(6, '绵阳市', 22),
	(15, '聊城市', 16),
	(10, '肇庆市', 20),
	(2, '自贡市', 22),
	(9, '舟山市', 12),
	(2, '芜湖市', 13),
	(23, '花莲县', 7),
	(5, '苏州市', 11),
	(12, '苗栗县', 7),
	(9, '茂名市', 20),
	(4, '荆州市', 18),
	(8, '荆门市', 18),
	(3, '莆田市', 14),
	(12, '莱芜市', 16),
	(17, '菏泽市', 16),
	(3, '萍乡市', 15),
	(8, '营口市', 8),
	(14, '葫芦岛市', 8),
	(3, '蚌埠市', 13),
	(11, '衡水市', 5),
	(4, '衡阳市', 19),
	(8, '衢州市', 12),
	(6, '襄樊市', 18),
	(11, '西双版纳傣族自治州', 25),
	(1, '西宁市', 26),
	(1, '西安市', 27),
	(10, '许昌市', 17),
	(8, '贵港市', 28),
	(1, '贵阳市', 23),
	(11, '贺州市', 28),
	(18, '资阳市', 22),
	(7, '赣州市', 15),
	(4, '赤峰市', 32),
	(4, '辽源市', 9),
	(10, '辽阳市', 8),
	(15, '达州市', 22),
	(8, '运城市', 6),
	(7, '连云港市', 11),
	(16, '迪庆藏族自治州', 25),
	(5, '通化市', 9),
	(5, '通辽市', 32),
	(8, '遂宁市', 22),
	(3, '遵义市', 23),
	(5, '邢台市', 5),
	(2, '那曲地区', 29),
	(4, '邯郸市', 5),
	(5, '邵阳市', 19),
	(1, '郑州市', 17),
	(10, '郴州市', 19),
	(6, '鄂尔多斯市', 32),
	(7, '鄂州市', 18),
	(9, '酒泉市', 21),
	(1, '重庆市', 4),
	(7, '金华市', 12),
	(2, '金昌市', 21),
	(7, '钦州市', 28),
	(12, '铁岭市', 8),
	(5, '铜仁地区', 23),
	(2, '铜川市', 27),
	(7, '铜陵市', 13),
	(1, '银川市', 30),
	(10, '锡林郭勒盟', 32),
	(7, '锦州市', 8),
	(11, '镇江市', 11),
	(1, '长春市', 9),
	(1, '长沙市', 19),
	(4, '长治市', 6),
	(15, '阜康市', 31),
	(9, '阜新市', 8),
	(11, '阜阳市', 13),
	(6, '防城港市', 28),
	(15, '阳江市', 20),
	(3, '阳泉市', 6),
	(8, '阿克苏市', 31),
	(22, '阿勒泰市', 31),
	(12, '阿图什市', 31),
	(19, '阿坝藏族羌族自治州', 22),
	(12, '阿拉善盟', 32),
	(4, '阿拉尔市', 31),
	(6, '阿里地区', 29),
	(12, '陇南市', 21),
	(16, '陵水黎族自治县', 24),
	(12, '随州市', 18),
	(16, '雅安市', 22),
	(2, '青岛市', 16),
	(3, '鞍山市', 8),
	(5, '韶关市', 20),
	(1, '香港特别行政区', 34),
	(5, '马鞍山市', 13),
	(17, '驻马店市', 17),
	(19, '高雄县', 7),
	(2, '高雄市', 7),
	(5, '鸡西市', 10),
	(6, '鹤壁市', 17),
	(3, '鹤岗市', 10),
	(6, '鹰潭市', 15),
	(10, '黄冈市', 18),
	(4, '黄南藏族自治州', 26),
	(9, '黄山市', 13),
	(2, '黄石市', 18),
	(11, '黑河市', 10),
	(8, '黔东南苗族侗族自治州', 23),
	(9, '黔南布依族苗族自治州', 23),
	(7, '黔西南布依族苗族自治州', 23),
	(2, '齐齐哈尔市', 10),
	(8, '龙岩市', 14);
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_customer 结构
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `wxname` varchar(16) NOT NULL COMMENT '微信昵称',
  `wxappid` varchar(32) NOT NULL COMMENT '微信唯一键',
  `nickname` varchar(16) NOT NULL COMMENT '昵称',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0正常 1冻结',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户表';

-- 正在导出表  wxsky.tbl_customer 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_provincial 结构
DROP TABLE IF EXISTS `tbl_provincial`;
CREATE TABLE IF NOT EXISTS `tbl_provincial` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '省份ID',
  `provincial` varchar(50) NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中国省/自治区/直辖市/港澳';

-- 正在导出表  wxsky.tbl_provincial 的数据：~34 rows (大约)
/*!40000 ALTER TABLE `tbl_provincial` DISABLE KEYS */;
INSERT INTO `tbl_provincial` (`id`, `provincial`) VALUES
	(1, '北京市'),
	(2, '天津市'),
	(3, '上海市'),
	(4, '重庆市'),
	(5, '河北省'),
	(6, '山西省'),
	(7, '台湾省'),
	(8, '辽宁省'),
	(9, '吉林省'),
	(10, '黑龙江省'),
	(11, '江苏省'),
	(12, '浙江省'),
	(13, '安徽省'),
	(14, '福建省'),
	(15, '江西省'),
	(16, '山东省'),
	(17, '河南省'),
	(18, '湖北省'),
	(19, '湖南省'),
	(20, '广东省'),
	(21, '甘肃省'),
	(22, '四川省'),
	(23, '贵州省'),
	(24, '海南省'),
	(25, '云南省'),
	(26, '青海省'),
	(27, '陕西省'),
	(28, '广西壮族自治区'),
	(29, '西藏自治区'),
	(30, '宁夏回族自治区'),
	(31, '新疆维吾尔自治区'),
	(32, '内蒙古自治区'),
	(33, '澳门特别行政区'),
	(34, '香港特别行政区');
/*!40000 ALTER TABLE `tbl_provincial` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_show_info 结构
DROP TABLE IF EXISTS `tbl_show_info`;
CREATE TABLE IF NOT EXISTS `tbl_show_info` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `show_place_id` varchar(36) NOT NULL COMMENT '演出场所ID',
  `name` varchar(64) NOT NULL COMMENT '演出名称',
  `poster` varchar(128) DEFAULT NULL COMMENT '海报路径',
  `introduction` varchar(256) DEFAULT NULL COMMENT '演出简介',
  `details` varchar(256) DEFAULT NULL COMMENT '演出详情',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0未开售，1售票中，2已过期，3已删除',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出信息表';

-- 正在导出表  wxsky.tbl_show_info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_show_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_show_info` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_show_order 结构
DROP TABLE IF EXISTS `tbl_show_order`;
CREATE TABLE IF NOT EXISTS `tbl_show_order` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `ordernum` varchar(36) NOT NULL COMMENT '订单编号，按规律自动生成',
  `cusid` varchar(16) NOT NULL COMMENT '客户订单id',
  `infoid` varchar(16) NOT NULL COMMENT '演出信息表id',
  `paymoney` decimal(5,2) NOT NULL COMMENT '商品总额',
  `postmoney` varchar(16) NOT NULL COMMENT '邮费',
  `paytype` varchar(16) NOT NULL COMMENT '取票方式',
  `receiver` varchar(32) NOT NULL COMMENT '取票人',
  `telephone` varchar(16) NOT NULL COMMENT '手机号码',
  `address` varchar(64) NOT NULL COMMENT '收获地址',
  `votes` int(11) NOT NULL DEFAULT '0' COMMENT '票数',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0待支付，1交易成功，2交易失败，  3交易取消',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- 正在导出表  wxsky.tbl_show_order 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_show_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_show_order` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_show_perform 结构
DROP TABLE IF EXISTS `tbl_show_perform`;
CREATE TABLE IF NOT EXISTS `tbl_show_perform` (
  `id` varchar(36) NOT NULL COMMENT '场次ID',
  `show_info_id` varchar(36) NOT NULL COMMENT '所属演出ID',
  `name` varchar(32) NOT NULL COMMENT '场次名称',
  `show_time` datetime NOT NULL COMMENT '演出时间',
  `show_duration` int(11) NOT NULL COMMENT '演出时长',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出场次表';

-- 正在导出表  wxsky.tbl_show_perform 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_show_perform` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_show_perform` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_show_place 结构
DROP TABLE IF EXISTS `tbl_show_place`;
CREATE TABLE IF NOT EXISTS `tbl_show_place` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '场所名称',
  `pid` int(11) NOT NULL COMMENT '省份ID',
  `cid` int(11) NOT NULL COMMENT '城市ID',
  `address` varchar(256) NOT NULL COMMENT '详细地址',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0正常，1删除',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出场所表';

-- 正在导出表  wxsky.tbl_show_place 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_show_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_show_place` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_show_place_template 结构
DROP TABLE IF EXISTS `tbl_show_place_template`;
CREATE TABLE IF NOT EXISTS `tbl_show_place_template` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '模板名称',
  `place_id` varchar(36) NOT NULL COMMENT '所属场所ID',
  `x_axis_seat_num` int(11) NOT NULL COMMENT 'X轴座位数',
  `y_axis_seat_num` int(11) NOT NULL COMMENT 'Y轴座位数',
  `seat_type_list` text NOT NULL COMMENT '座位类型数组，JSON格式',
  `first_seat_row` int(11) NOT NULL COMMENT '初始行号',
  `first_seat_col` int(11) NOT NULL COMMENT '初始列号',
  `digit_mode` int(11) NOT NULL COMMENT '连号模式，0连续，1奇数，2偶数',
  `seat_order` varchar(8) NOT NULL COMMENT '座位号排序，on：顺序（从左到右递增），off：倒序（从左到右递减）',
  `seat_area` text NOT NULL COMMENT '座位区域的数据（包括座位类型与颜色区别），JSON格式',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0正常，1删除',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='演出场所模板表';

-- 正在导出表  wxsky.tbl_show_place_template 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `tbl_show_place_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_show_place_template` ENABLE KEYS */;


-- 导出  表 wxsky.tbl_user 结构
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `username` varchar(16) NOT NULL COMMENT '用户名，8~16位，由英文/数字/下划线组成，英文开头',
  `password` varchar(32) NOT NULL COMMENT '密码，6~16位，由英文/数字/下划线组成，MD5加密',
  `nickname` varchar(16) NOT NULL COMMENT '昵称',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0正常，1冻结',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  wxsky.tbl_user 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id`, `username`, `password`, `nickname`, `status`, `createtime`) VALUES
	('37f97c95-1be2-11ea-a6ed-d4ae52c67b6b', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 0, '2019-12-11 14:51:58');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
