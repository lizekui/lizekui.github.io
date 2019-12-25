CREATE DATABASE API_CloudEntryService DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE API_CloudEntryService;
-- ----------------------------
-- Table structure for MultilanOrderInfo
-- ----------------------------
DROP TABLE IF EXISTS `MultilanOrderInfo`;
CREATE TABLE `MultilanOrderInfo` (
  `OnlyId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Id` varchar(255) NOT NULL COMMENT '����id',
  `Status` tinyint(4) DEFAULT NULL COMMENT '״̬',
  `Splitspeaker` tinyint(4) DEFAULT NULL COMMENT '����˵����, ��Ѷ�ɵ��������� 1:���� 0:������',
  `FileName` varchar(128) DEFAULT NULL COMMENT '�ļ�����',
  `OriginalFilePath` varchar(255) DEFAULT NULL COMMENT 'ԭʼ�ļ�λ��',
  `DownloadFileUrl` varchar(2560) DEFAULT NULL COMMENT '��Ƶ���ص�ַ',
  `OriginalSize` bigint(20) DEFAULT NULL COMMENT '�ļ���С, ��λkb',
  `CallbackUrl` varchar(255) DEFAULT NULL COMMENT '�ص���ַ',
  `ConvertDuration` bigint(20) DEFAULT NULL COMMENT '��Ƶʱ��, ��λms',
  `DownloadStatus` tinyint(4) DEFAULT NULL COMMENT '������Ƶ״̬, -1:����ʧ��, 0:δ��ʼ, 1:������, 2:�������',
  `ConvertStatus` tinyint(4) DEFAULT NULL COMMENT 'ת��״̬, -1:ת��ʧ��, 0:δ��ʼ, 1:ת����, 2:ת�����',
  `TranscriptStatus` tinyint(4) DEFAULT NULL COMMENT 'תд״̬, -1:תдʧ��, 0:δ��ʼ, 1:תд��, 2:תд���',
  `TransStartTime` datetime DEFAULT NULL COMMENT 'תд��ʼʱ��',
  `TransEndTime` datetime DEFAULT NULL COMMENT 'תд����ʱ��',
  `CreateTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `FailType` tinyint(4) DEFAULT NULL COMMENT '�ļ�����',
  `RecordLanguage` varchar(32) DEFAULT NULL COMMENT 'תд����',
  `TransTime` bigint(20) DEFAULT NULL COMMENT 'תд�������ʱ��, ��λms',
  `TransResult` longtext COMMENT 'תд���json',
  PRIMARY KEY (`OnlyId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
