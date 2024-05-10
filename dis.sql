-- phpMyAdmin SQL Dump
-- version 4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2023-03-26 15:04:05
-- 服务器版本： 5.5.53
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dis`
--
CREATE DATABASE IF NOT EXISTS `disney` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `disney`;

-- --------------------------------------------------------

--
-- 表的结构 `dis`
--

DROP TABLE IF EXISTS `disney`;
CREATE TABLE IF NOT EXISTS `disney` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '项目',
  `pics` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '配图',
  `infos` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '介绍',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Disney' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dis`
--

INSERT INTO `disney` ('id', 'name', 'pics', 'infos', 'createTime') VALUES
(1, '用户', 'images/p5.jpg','用户<br>姓名<br>学号<br>地址'),
(2, '用户', './images/1599634502.jpeg','用户<br>姓名<br>学号<br>地址','用户地址',2024-4-1'),
(3, '用户', './images/1599634404.jpeg','用户<br>姓名<br>学号<br>地址','用户地址',2024-4-1'),
(4, '用户', 'images/p6.jpg','用户<br>姓名<br>学号<br>地址','用户地址',2024-4-1'),

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `pass` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户类型',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` ('id', 'name', 'pass', 'type', 'createTime') VALUES
(1, 'admin', 'admin888', 'admin', '2023-03-28 01:59:04'),
(2, 'Dis', 'Dis', 'user', '2023-03-28 05:24:48'),
(3, 'test', 'test', 'user', '2023-03-28 18:12:51');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
