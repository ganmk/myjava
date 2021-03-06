-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        8.0.23 - MySQL Community Server - GPL
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 book 的数据库结构
CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book`;

-- 导出  表 book.readers 结构
CREATE TABLE IF NOT EXISTS `readers` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'readerID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `userface` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 正在导出表  book.readers 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `readers` DISABLE KEYS */;
INSERT INTO `readers` (`id`, `name`, `phone`, `telephone`, `address`, `enabled`, `username`, `password`, `userface`, `remark`) VALUES
	(3, '系统管理员', '18568887789', '029-82881234', '深圳南山', 1, 'admin', '$2a$10$IJAu/Gpcyzk5zparRyReH.fyrMVYsOQE4V2evat0SyQPaypZMU1r2', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', NULL),
	(5, '李白', '18568123489', '029-82123434', '海口美兰', 1, 'libai', '$2a$10$IJAu/Gpcyzk5zparRyReH.fyrMVYsOQE4V2evat0SyQPaypZMU1r2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', NULL),
	(10, '韩愈', '18568123666', '029-82111555', '广州番禺', 1, 'hanyu', '$2a$10$IJAu/Gpcyzk5zparRyReH.fyrMVYsOQE4V2evat0SyQPaypZMU1r2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', NULL),
	(11, '柳宗元', '18568123377', '029-82111333', '广州天河', 1, 'liuzongyuan', '$2a$10$IJAu/Gpcyzk5zparRyReH.fyrMVYsOQE4V2evat0SyQPaypZMU1r2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', NULL),
	(12, '曾巩', '18568128888', '029-82111222', '广州越秀', 1, 'zenggong', '$2a$10$IJAu/Gpcyzk5zparRyReH.fyrMVYsOQE4V2evat0SyQPaypZMU1r2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', NULL);
/*!40000 ALTER TABLE `readers` ENABLE KEYS */;

-- 导出  表 book.role 结构
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nameZh` varchar(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- 正在导出表  book.role 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- 导出  表 book.t_book 结构
CREATE TABLE IF NOT EXISTS `t_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) NOT NULL,
  `bookauthor` varchar(255) NOT NULL,
  `bookprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- 正在导出表  book.t_book 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` (`id`, `bookname`, `bookauthor`, `bookprice`) VALUES
	(1, '老人与海', '海明威', 66),
	(2, '三国演义', '罗贯中', 23.1),
	(3, '围城', '钱钟书', 81),
	(4, '红楼梦', '曹雪芹', 50),
	(5, '西游记', '吴承恩', 40),
	(6, '水浒传', '施耐庵', 56.7),
	(7, '基督山伯爵', '大仲马', 100),
	(8, '苏菲的世界', '乔斯坦·贾德 ', 40),
	(9, '麦田里的守望者', '塞林格', 56.7),
	(10, '呼啸山庄', '艾米莉·勃朗特 ', 43),
	(11, '巴黎圣母院', '维克多.雨果 ', 56.7),
	(12, '雷雨', '曹禺', 68),
	(13, '大海', '天蚕土豆', 99.9),
	(14, 'qq', 'qq', 12),
	(15, '明朝那些事', '当年明月', 358.2),
	(16, 'Think in Java', 'dreamsunday', 124);
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
