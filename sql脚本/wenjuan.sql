/*
SQLyog Ultimate v9.62 
MySQL - 5.5.20 : Database - wenjuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wenjuan` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `wenjuan`;

/*Table structure for table `basics_file` */

DROP TABLE IF EXISTS `basics_file`;

CREATE TABLE `basics_file` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '系统文件',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(2) DEFAULT '1',
  `realName` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '真实名称',
  `uniName` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '唯一名称',
  `filePath` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '文件路径',
  `fileType` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '文件类型',
  `imgFlag` int(11) DEFAULT '0' COMMENT '是否是图片',
  `surface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '数据库表名',
  `nature` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '字段名称',
  `surfaceId` bigint(20) DEFAULT NULL COMMENT '数据库表信息Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_api` */

DROP TABLE IF EXISTS `manage_api`;

CREATE TABLE `manage_api` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '页面所用到的 api',
  `state` int(1) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resourceId` bigint(20) DEFAULT NULL COMMENT '页面资源id',
  `resUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_environment` */

DROP TABLE IF EXISTS `manage_environment`;

CREATE TABLE `manage_environment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '环境表',
  `emailHost` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件主机',
  `emailPassword` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件密码',
  `emailSender` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送者',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `introduceVideoUrl` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '介绍视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_frontlink` */

DROP TABLE IF EXISTS `manage_frontlink`;

CREATE TABLE `manage_frontlink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '前台链接',
  `state` int(1) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `linkUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `linkName` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `linkCode` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '编码',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_frontrole` */

DROP TABLE IF EXISTS `manage_frontrole`;

CREATE TABLE `manage_frontrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '前台角色',
  `state` int(1) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roleDesc` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `roleName` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_link_role` */

DROP TABLE IF EXISTS `manage_link_role`;

CREATE TABLE `manage_link_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '前台角色',
  `state` int(1) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roleId` bigint(20) DEFAULT NULL COMMENT '描述',
  `linkId` bigint(20) DEFAULT NULL COMMENT '名称',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_resource` */

DROP TABLE IF EXISTS `manage_resource`;

CREATE TABLE `manage_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNum` int(11) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `resCode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resType` int(11) DEFAULT NULL,
  `resUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `btnFlag` int(5) DEFAULT '0' COMMENT '默认是按钮,是页面的话可以添加页面链接',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_resource_role` */

DROP TABLE IF EXISTS `manage_resource_role`;

CREATE TABLE `manage_resource_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resourceId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_role` */

DROP TABLE IF EXISTS `manage_role`;

CREATE TABLE `manage_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleDesc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `roleName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `roleType` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_subscriber` */

DROP TABLE IF EXISTS `manage_subscriber`;

CREATE TABLE `manage_subscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '前台用户',
  `state` int(1) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `useFlag` int(1) DEFAULT '1' COMMENT '是否禁用',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_subscriber_role` */

DROP TABLE IF EXISTS `manage_subscriber_role`;

CREATE TABLE `manage_subscriber_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '前台用户角色',
  `state` int(1) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scriberId` bigint(20) DEFAULT NULL COMMENT '前台用户',
  `roleId` bigint(20) DEFAULT NULL COMMENT '前台角色',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_user` */

DROP TABLE IF EXISTS `manage_user`;

CREATE TABLE `manage_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `nickName` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `useFlag` int(2) DEFAULT '1',
  `state` int(2) DEFAULT '1',
  `portraitUrl` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `telNumber` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mailbox` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `userType` int(20) DEFAULT NULL,
  `adminId` bigint(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `manage_user_role` */

DROP TABLE IF EXISTS `manage_user_role`;

CREATE TABLE `manage_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_answer` */

DROP TABLE IF EXISTS `wj_answer`;

CREATE TABLE `wj_answer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '问卷问题表',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `questionId` bigint(20) DEFAULT NULL COMMENT '问卷',
  `problemId` bigint(20) DEFAULT NULL COMMENT '问题',
  `qType` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '问题类型',
  `orderNum` int(5) DEFAULT NULL COMMENT '排序号，题号',
  `replyId` bigint(20) DEFAULT NULL COMMENT '用户回答表Id',
  `checkId` bigint(20) DEFAULT NULL COMMENT '检查id',
  `content` varchar(2048) COLLATE utf8_bin DEFAULT NULL COMMENT '答案内容(选择题是选项列表)',
  `fen` int(3) DEFAULT NULL COMMENT '评分题分数',
  `latitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '维度（定位，位置）',
  `longitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '精度（定位，位置）',
  `address` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '地址（定位，位置）',
  `addressDesc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '地址描述（定位题）',
  `imgPath` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '图片题文件路径',
  `imgId` bigint(40) DEFAULT NULL COMMENT '图片题文件ID',
  `filePath` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '文件题文件路径',
  `fileId` bigint(40) DEFAULT NULL COMMENT '文件题文件ID',
  `reg` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '验证正则（填空）',
  `score` int(3) DEFAULT '1' COMMENT '问题满分',
  `obtain` int(3) DEFAULT '0' COMMENT '问题得分',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_banner` */

DROP TABLE IF EXISTS `wj_banner`;

CREATE TABLE `wj_banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bannerType` int(2) DEFAULT NULL COMMENT '0不可跳转1可以跳转',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagePath` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片路径',
  `linkUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序号',
  `state` int(2) DEFAULT '1',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_candidate` */

DROP TABLE IF EXISTS `wj_candidate`;

CREATE TABLE `wj_candidate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '候选项',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orderNum` int(5) DEFAULT NULL COMMENT '排序号 选手号',
  `cover` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '封面图片 id列表',
  `imgIntroduce` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '候选项图片介绍 id列表',
  `introduce` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '文字介绍',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '候选名称',
  `supNum` int(20) DEFAULT NULL COMMENT '票数',
  `useFlag` int(2) DEFAULT '0' COMMENT '-1拒绝 0审核中1已通过',
  `voteId` bigint(20) DEFAULT NULL COMMENT '投票活动id',
  `voteType` int(2) DEFAULT NULL COMMENT '投票类型',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '报名人 weUserId',
  `comment` varchar(20) COLLATE utf8_bin DEFAULT '0' COMMENT '评论数量',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_check` */

DROP TABLE IF EXISTS `wj_check`;

CREATE TABLE `wj_check` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '验证信息',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检查名称',
  `technique` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '对应的方法',
  `reg` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '验证正则',
  `icon` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'icon',
  `orderNum` int(3) DEFAULT NULL COMMENT '排序号',
  `msg` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '错误提示',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_choice` */

DROP TABLE IF EXISTS `wj_choice`;

CREATE TABLE `wj_choice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '选项表',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `problemId` bigint(20) DEFAULT NULL COMMENT '题目id',
  `name` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '选项内容',
  `cover` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '选项图片列表',
  `flag` int(1) DEFAULT '0' COMMENT '0错误  1正确',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序号',
  `selectNum` int(20) DEFAULT '0' COMMENT '选择该选项的人数',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_comment` */

DROP TABLE IF EXISTS `wj_comment`;

CREATE TABLE `wj_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评价表',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT '1',
  `comment` varchar(2048) COLLATE utf8_bin DEFAULT NULL COMMENT '评论 数量',
  `useless` bigint(20) DEFAULT '0' COMMENT '没用 数量',
  `fabulous` bigint(20) DEFAULT '0' COMMENT '赞 数量',
  `subscriberId` bigint(20) DEFAULT NULL COMMENT '主人Id',
  `subscriberSurface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主人表',
  `subscriberNature` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主人文字信息段',
  `surface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被评论 表名',
  `nature` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被评论 字段名',
  `surfaceId` bigint(20) DEFAULT NULL COMMENT '被评论 id',
  `costSurface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '代价 表名',
  `costNature` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '代价 字段名',
  `costSurfaceId` bigint(20) DEFAULT NULL COMMENT '代价 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_commentrecord` */

DROP TABLE IF EXISTS `wj_commentrecord`;

CREATE TABLE `wj_commentrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论记录',
  `state` int(2) NOT NULL DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subscriberId` bigint(20) DEFAULT NULL COMMENT '主人id',
  `subscriberSurface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主人表',
  `useless` int(2) DEFAULT NULL COMMENT '无用',
  `fabulous` int(2) DEFAULT NULL COMMENT '超赞',
  `surfaceId` bigint(20) DEFAULT NULL COMMENT '被点赞的Id',
  `surface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被点赞的表',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_footprint` */

DROP TABLE IF EXISTS `wj_footprint`;

CREATE TABLE `wj_footprint` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '足迹表',
  `state` int(2) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '首次浏览时间',
  `subscriberId` bigint(20) DEFAULT NULL COMMENT '主人表id',
  `subscriberSurface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主人表名',
  `surfaceId` bigint(20) DEFAULT NULL COMMENT '被浏览的表id',
  `surface` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被浏览的表名',
  `updataTime` timestamp NULL DEFAULT NULL COMMENT '最近浏览时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_problem` */

DROP TABLE IF EXISTS `wj_problem`;

CREATE TABLE `wj_problem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '题目',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(2) DEFAULT '1',
  `name` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '题目',
  `questionId` bigint(20) DEFAULT NULL COMMENT '问卷id',
  `orderNum` int(5) DEFAULT '1' COMMENT '题号',
  `qType` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '题目类型',
  `cover` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '题目图片列表',
  `must` int(2) DEFAULT '1' COMMENT '1必须作答',
  `choicesNunber` int(4) DEFAULT NULL COMMENT '选项数量 (之针对单选多选)',
  `answerNumber` int(4) DEFAULT NULL COMMENT '作答的人数',
  `lineNumber` int(3) DEFAULT '1' COMMENT '行数（只针对填空，简答题）',
  `checkType` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检查类型就是验证的icon',
  `checkId` bigint(20) DEFAULT NULL COMMENT '检查id  (只对填空题填空)',
  `maxFen` int(2) DEFAULT '10' COMMENT '满分(只针对评分题目)',
  `fraction` int(10) DEFAULT '0' COMMENT '总分(只针对评分题目)',
  `score` int(3) DEFAULT NULL COMMENT '题目满分1-25',
  `genre` int(2) DEFAULT '0' COMMENT '是否该题是否已经阅卷',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '微信用户id',
  `examineFlag` int(2) DEFAULT NULL COMMENT '0调查问卷   1测试问卷(只针对单选多选题型)',
  `reg` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '填空题验证规则',
  `msg` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '验证提示',
  `answerId` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '答案ID列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_question` */

DROP TABLE IF EXISTS `wj_question`;

CREATE TABLE `wj_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '问卷试卷表',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(2) DEFAULT '1',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '问卷名称',
  `cover` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '封面图片 id列表',
  `introduce` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '试卷说明',
  `imgIntroduce` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '试卷说明图片id列表',
  `themeColor` varchar(16) COLLATE utf8_bin DEFAULT '#000' COMMENT '主题颜色',
  `restrictFlag` int(2) DEFAULT '0' COMMENT '不限制ip和地区',
  `ipWxUserFrequency` int(2) DEFAULT '2' COMMENT '每个ip限制人数',
  `province` varchar(32) COLLATE utf8_bin DEFAULT '不限' COMMENT '省份',
  `city` varchar(32) COLLATE utf8_bin DEFAULT '不限' COMMENT '市',
  `district` varchar(32) COLLATE utf8_bin DEFAULT '不限' COMMENT '区县',
  `overt` int(1) DEFAULT NULL COMMENT '是否公开作答',
  `sponsor` int(11) DEFAULT NULL COMMENT '是否显示 主办方信息',
  `sponsorName` varchar(48) COLLATE utf8_bin DEFAULT NULL COMMENT '主办方名称',
  `sponsorPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '主办方电话',
  `voteCode` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '自动生成试卷密码',
  `suspend` int(2) DEFAULT '1' COMMENT '0暂停',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '微信用户id',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `problemNumber` int(16) DEFAULT NULL COMMENT '问题数量',
  `answerNumber` int(16) DEFAULT NULL COMMENT '回答人数',
  `unusual` int(2) DEFAULT NULL COMMENT '管理标志,1正常0异常',
  `unusualEplain` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '异常原因',
  `reportEplain` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '举报信息',
  `rWxUserId` bigint(20) DEFAULT '0' COMMENT '举报人',
  `sumScore` int(12) DEFAULT NULL COMMENT '问卷总分',
  `examineFlag` int(2) DEFAULT NULL COMMENT '0调查问卷   1测试问卷(只针对1,2,3题型)',
  `zipCode` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '压缩包路径二维码',
  `zipPath` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '压缩包路径',
  `sendFlag` int(2) DEFAULT NULL COMMENT '是否自动发送',
  `mailbox` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `cproblemsStr` text COLLATE utf8_bin COMMENT 'cproblemsStr',
  `problemsStr` text COLLATE utf8_bin COMMENT 'problemsStr',
  `questionDataStr` text COLLATE utf8_bin COMMENT 'questionDataStr',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_reply` */

DROP TABLE IF EXISTS `wj_reply`;

CREATE TABLE `wj_reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户回答表',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `questionId` bigint(20) DEFAULT NULL COMMENT '试题id  表wj_question',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `examineFlag` int(2) DEFAULT NULL COMMENT '0调查问卷   1测试问卷(只针对1,2,3题型)',
  `ipAddress` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ip地址',
  `province` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `city` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `district` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '区县',
  `street` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '街道',
  `streetNumber` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '街道号',
  `latitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '维度',
  `longitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  `fraction` int(5) DEFAULT NULL COMMENT '分数',
  `wentisStr` text COLLATE utf8_bin COMMENT '答案字符串',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_vote` */

DROP TABLE IF EXISTS `wj_vote`;

CREATE TABLE `wj_vote` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '投票名称',
  `cover` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '封面图片 id列表',
  `introduce` varchar(2048) COLLATE utf8_bin DEFAULT NULL COMMENT '投票介绍文字',
  `imgIntroduce` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '投票介绍图片id列表',
  `themeColor` varchar(10) COLLATE utf8_bin DEFAULT '#000' COMMENT '主题颜色',
  `repeatFlag` int(2) DEFAULT '0' COMMENT '0不重复投票',
  `frequency` int(3) DEFAULT '1' COMMENT '每日次数',
  `restrictFlag` int(2) DEFAULT '0' COMMENT '不限制ip和地区',
  `province` varchar(32) COLLATE utf8_bin DEFAULT '不限' COMMENT '省份',
  `city` varchar(32) COLLATE utf8_bin DEFAULT '不限' COMMENT '市',
  `district` varchar(64) COLLATE utf8_bin DEFAULT '不限' COMMENT '区县',
  `ipWxUserFrequency` int(3) DEFAULT '1' COMMENT 'ip微信 投票次数限制',
  `overt` int(2) DEFAULT '0' COMMENT '是否公开投票',
  `comment` int(2) DEFAULT '1' COMMENT '是否开启评论',
  `outside` int(2) DEFAULT '1' COMMENT '开始前是否开放报名',
  `sponsor` int(2) DEFAULT '0' COMMENT '是否显示 主办方信息',
  `sponsorName` varchar(48) COLLATE utf8_bin DEFAULT NULL COMMENT '主办方名称',
  `sponsorPhone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '主办方电话',
  `reward` int(2) DEFAULT '0' COMMENT '0不设置奖励',
  `rewardDesc` varchar(2048) COLLATE utf8_bin DEFAULT NULL COMMENT '奖励说明',
  `rewarImg` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '奖励图片  id列表',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `voteType` int(2) DEFAULT '2' COMMENT '1文字 2 图片 3 图文',
  `unusual` int(2) DEFAULT '1' COMMENT '管理标志,1正常0异常',
  `unusualEplain` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '异常原因',
  `reportEplain` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '举报信息',
  `rWxUserId` bigint(20) DEFAULT NULL COMMENT '举报人',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '发起人id',
  `candidateNum` int(3) DEFAULT NULL COMMENT '候选数量   候选数量为2会变成对战样式',
  `candidateIndex` int(3) DEFAULT NULL COMMENT '候选项序号',
  `supNum` int(20) DEFAULT NULL COMMENT '总票数',
  `voteDataStr` text COLLATE utf8_bin COMMENT 'voteDataStr',
  `voteCode` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '自动生成投票密码',
  `suspend` int(2) DEFAULT '1' COMMENT '0暂停',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wj_voterecord` */

DROP TABLE IF EXISTS `wj_voterecord`;

CREATE TABLE `wj_voterecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投票记录',
  `state` int(2) DEFAULT '1',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `voteId` bigint(20) DEFAULT NULL COMMENT '投票id',
  `wxUserId` bigint(20) DEFAULT NULL COMMENT '投票人',
  `candidateId` bigint(20) DEFAULT NULL COMMENT '候选项id',
  `comment` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '评论  没用到',
  `useless` bigint(20) DEFAULT NULL COMMENT '没用 数量没用到',
  `fabulous` bigint(20) DEFAULT NULL COMMENT '赞 数量 没用到',
  `ipAddress` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ip地址',
  `province` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `city` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `district` varchar(62) COLLATE utf8_bin DEFAULT NULL COMMENT '区县',
  `street` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '街道',
  `streetNumber` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '街道号',
  `latitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '维度',
  `longitude` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wx_param` */

DROP TABLE IF EXISTS `wx_param`;

CREATE TABLE `wx_param` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accessToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `appId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `appSecret` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `keyPath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mchId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mchKey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mpAccessToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mpAppId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mpAppSecret` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mpMchId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mpMchKey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `projectType` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `wx_user` */

DROP TABLE IF EXISTS `wx_user`;

CREATE TABLE `wx_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatarUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `gender` int(11) NOT NULL,
  `nickName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `realName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `userType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subscriberId` bigint(20) DEFAULT NULL COMMENT 'subscriber前台用户的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
