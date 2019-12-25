/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : api_cloudentryservice

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2019-06-27 11:15:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for multilanorderinfo
-- ----------------------------
DROP TABLE IF EXISTS `multilanorderinfo`;
CREATE TABLE `multilanorderinfo` (
  `OnlyId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Id` varchar(255) NOT NULL COMMENT '订单id',
  `Status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `Splitspeaker` tinyint(4) DEFAULT NULL COMMENT '区分说话人, 仅讯飞的中文适用 1:区分 0:不区分',
  `FileName` varchar(128) DEFAULT NULL COMMENT '文件名称',
  `OriginalFilePath` varchar(255) DEFAULT NULL COMMENT '原始文件位置',
  `DownloadFileUrl` varchar(2560) DEFAULT NULL COMMENT '音频下载地址',
  `OriginalSize` bigint(20) DEFAULT NULL COMMENT '文件大小, 单位kb',
  `CallbackUrl` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `ConvertDuration` bigint(20) DEFAULT NULL COMMENT '音频时长, 单位ms',
  `DownloadStatus` tinyint(4) DEFAULT NULL COMMENT '下载音频状态, -1:下载失败, 0:未开始, 1:下载中, 2:下载完成',
  `ConvertStatus` tinyint(4) DEFAULT NULL COMMENT '转码状态, -1:转码失败, 0:未开始, 1:转码中, 2:转码完成',
  `TranscriptStatus` tinyint(4) DEFAULT NULL COMMENT '转写状态, -1:转写失败, 0:未开始, 1:转写中, 2:转写完成',
  `TransStartTime` datetime DEFAULT NULL COMMENT '转写开始时间',
  `TransEndTime` datetime DEFAULT NULL COMMENT '转写结束时间',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `FailType` tinyint(4) DEFAULT NULL COMMENT '文件类型',
  `RecordLanguage` varchar(32) DEFAULT NULL COMMENT '转写语种',
  `TransTime` bigint(20) DEFAULT NULL COMMENT '转写服务分析时长, 单位ms',
  `TransResult` longtext COMMENT '转写结果json',
  PRIMARY KEY (`OnlyId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
