/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmg1el1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmg1el1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmg1el1`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmg1el1/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmg1el1/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmg1el1/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'picture4','http://localhost:8080/ssmg1el1/upload/1619431284346.jpg');

/*Table structure for table `discusskaogongziliao` */

DROP TABLE IF EXISTS `discusskaogongziliao`;

CREATE TABLE `discusskaogongziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='考公资料评论表';

/*Data for the table `discusskaogongziliao` */

insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-26 17:55:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-26 17:55:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-26 17:55:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-26 17:55:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-26 17:55:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskaogongziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-26 17:55:04',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskaoyanziliao` */

DROP TABLE IF EXISTS `discusskaoyanziliao`;

CREATE TABLE `discusskaoyanziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='考研资料评论表';

/*Data for the table `discusskaoyanziliao` */

insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-26 17:55:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-26 17:55:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-26 17:55:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-26 17:55:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-26 17:55:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskaoyanziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-26 17:55:04',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusswenxianziliao` */

DROP TABLE IF EXISTS `discusswenxianziliao`;

CREATE TABLE `discusswenxianziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431574973 DEFAULT CHARSET=utf8 COMMENT='文献资料评论表';

/*Data for the table `discusswenxianziliao` */

insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-26 17:55:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-26 17:55:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-26 17:55:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-26 17:55:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-26 17:55:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-26 17:55:04',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusswenxianziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619431574972,'2021-04-26 18:06:14',1619431380214,1619431225216,'12345678901','测试','你好');

/*Table structure for table `discusszhaopinxinxi` */

DROP TABLE IF EXISTS `discusszhaopinxinxi`;

CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';

/*Data for the table `discusszhaopinxinxi` */

insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-26 17:55:04',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-04-26 17:55:04',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-04-26 17:55:04',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-04-26 17:55:04',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-04-26 17:55:04',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-04-26 17:55:04',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431745086 DEFAULT CHARSET=utf8 COMMENT='学习交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (81,'2021-04-26 17:55:04','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (82,'2021-04-26 17:55:04','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (83,'2021-04-26 17:55:04','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (84,'2021-04-26 17:55:04','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (85,'2021-04-26 17:55:04','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (86,'2021-04-26 17:55:04','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619431721122,'2021-04-26 18:08:40','测试','<p>请输入内容测试</p>\n<p>私人则只有自已可见，公开则所有人都可见<img src=\"../../../upload/1619431716555.jpg\" alt=\"\" width=\"1920\" height=\"1181\" /></p>',0,1619431225216,'12345678901','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619431745085,'2021-04-26 18:09:04',NULL,'测试',1619431721122,1619431225216,'12345678901',NULL);

/*Table structure for table `jianlitoudi` */

DROP TABLE IF EXISTS `jianlitoudi`;

CREATE TABLE `jianlitoudi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `suozaixuexiao` varchar(200) DEFAULT NULL COMMENT '所在学校',
  `yuanxizhuanye` varchar(200) DEFAULT NULL COMMENT '院系专业',
  `jianlixinxi` varchar(200) DEFAULT NULL COMMENT '简历信息',
  `toudishijian` datetime DEFAULT NULL COMMENT '投递时间',
  `beizhuxinxi` varchar(200) DEFAULT NULL COMMENT '备注信息',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `gongsifengmian` varchar(200) DEFAULT NULL COMMENT '公司封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431649818 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `jianlitoudi` */

insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (51,'2021-04-26 17:55:04','手机号1','昵称1','所在学校1','院系专业1','','2021-04-26 17:55:04','备注信息1','企业名称1','招聘岗位1','招聘人数1','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian1.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (52,'2021-04-26 17:55:04','手机号2','昵称2','所在学校2','院系专业2','','2021-04-26 17:55:04','备注信息2','企业名称2','招聘岗位2','招聘人数2','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian2.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (53,'2021-04-26 17:55:04','手机号3','昵称3','所在学校3','院系专业3','','2021-04-26 17:55:04','备注信息3','企业名称3','招聘岗位3','招聘人数3','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian3.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (54,'2021-04-26 17:55:04','手机号4','昵称4','所在学校4','院系专业4','','2021-04-26 17:55:04','备注信息4','企业名称4','招聘岗位4','招聘人数4','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian4.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (55,'2021-04-26 17:55:04','手机号5','昵称5','所在学校5','院系专业5','','2021-04-26 17:55:04','备注信息5','企业名称5','招聘岗位5','招聘人数5','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian5.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (56,'2021-04-26 17:55:04','手机号6','昵称6','所在学校6','院系专业6','','2021-04-26 17:55:04','备注信息6','企业名称6','招聘岗位6','招聘人数6','http://localhost:8080/ssmg1el1/upload/jianlitoudi_gongsifengmian6.jpg');
insert  into `jianlitoudi`(`id`,`addtime`,`shoujihao`,`nicheng`,`suozaixuexiao`,`yuanxizhuanye`,`jianlixinxi`,`toudishijian`,`beizhuxinxi`,`qiyemingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`gongsifengmian`) values (1619431649817,'2021-04-26 18:07:28','12345678901','测试学生','测试学校','计算机学院软件工程','http://localhost:8080/ssmg1el1/upload/1619431641976.docx','2021-04-26 00:00:00','测试','测试企业','测试岗位','2','http://localhost:8080/ssmg1el1/upload/1619431524305.jpg');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoujihao` varchar(200) NOT NULL COMMENT '手机号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `suozaixuexiao` varchar(200) DEFAULT NULL COMMENT '所在学校',
  `yuanxizhuanye` varchar(200) DEFAULT NULL COMMENT '院系专业',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoujihao` (`shoujihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431235640 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (21,'2021-04-26 17:55:04','教师1','123456','昵称1','男','773890001@qq.com','所在学校1','院系专业1','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (22,'2021-04-26 17:55:04','教师2','123456','昵称2','男','773890002@qq.com','所在学校2','院系专业2','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (23,'2021-04-26 17:55:04','教师3','123456','昵称3','男','773890003@qq.com','所在学校3','院系专业3','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (24,'2021-04-26 17:55:04','教师4','123456','昵称4','男','773890004@qq.com','所在学校4','院系专业4','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (25,'2021-04-26 17:55:04','教师5','123456','昵称5','男','773890005@qq.com','所在学校5','院系专业5','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (26,'2021-04-26 17:55:04','教师6','123456','昵称6','男','773890006@qq.com','所在学校6','院系专业6','http://localhost:8080/ssmg1el1/upload/jiaoshi_touxiang6.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (1619431235639,'2021-04-26 18:00:35','12345678902','123456','测试教师','女','12@163.com','测试学校','计算机学院软件工程','http://localhost:8080/ssmg1el1/upload/1619431480377.jpg');

/*Table structure for table `kaogongziliao` */

DROP TABLE IF EXISTS `kaogongziliao`;

CREATE TABLE `kaogongziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `datijiqiao` varchar(200) DEFAULT NULL COMMENT '答题技巧',
  `zhiweibiao` longtext COMMENT '职位表',
  `beizhuxinxi` longtext COMMENT '备注信息',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431450984 DEFAULT CHARSET=utf8 COMMENT='考公资料';

/*Data for the table `kaogongziliao` */

insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (71,'2021-04-26 17:55:04','标题1','简介1','','职位表1','备注信息1','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian1.jpg','是','',1,1,1);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (72,'2021-04-26 17:55:04','标题2','简介2','','职位表2','备注信息2','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian2.jpg','是','',2,2,2);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (73,'2021-04-26 17:55:04','标题3','简介3','','职位表3','备注信息3','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian3.jpg','是','',3,3,3);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (74,'2021-04-26 17:55:04','标题4','简介4','','职位表4','备注信息4','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian4.jpg','是','',4,4,4);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (75,'2021-04-26 17:55:04','标题5','简介5','','职位表5','备注信息5','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian5.jpg','是','',5,5,5);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (76,'2021-04-26 17:55:04','标题6','简介6','','职位表6','备注信息6','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaogongziliao_fengmiantupian6.jpg','是','',6,6,6);
insert  into `kaogongziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`datijiqiao`,`zhiweibiao`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (1619431450983,'2021-04-26 18:04:10','测试简介','测试标题','http://localhost:8080/ssmg1el1/upload/1619431438078.docx','<p>测试</p>','<p>测试</p>','2021-04-26 18:04:00','http://localhost:8080/ssmg1el1/upload/1619431443569.jpg','是','',0,0,1);

/*Table structure for table `kaoyanziliao` */

DROP TABLE IF EXISTS `kaoyanziliao`;

CREATE TABLE `kaoyanziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `yicuotixing` varchar(200) DEFAULT NULL COMMENT '易错提醒',
  `xuexiaozhaolubi` longtext COMMENT '学校招录比',
  `beizhuxinxi` longtext COMMENT '备注信息',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431417260 DEFAULT CHARSET=utf8 COMMENT='考研资料';

/*Data for the table `kaoyanziliao` */

insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (61,'2021-04-26 17:55:04','标题1','简介1','','学校招录比1','备注信息1','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian1.jpg','是','',1,1,1);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (62,'2021-04-26 17:55:04','标题2','简介2','','学校招录比2','备注信息2','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian2.jpg','是','',2,2,2);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (63,'2021-04-26 17:55:04','标题3','简介3','','学校招录比3','备注信息3','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian3.jpg','是','',3,3,3);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (64,'2021-04-26 17:55:04','标题4','简介4','','学校招录比4','备注信息4','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian4.jpg','是','',4,4,4);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (65,'2021-04-26 17:55:04','标题5','简介5','','学校招录比5','备注信息5','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian5.jpg','是','',5,5,5);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (66,'2021-04-26 17:55:04','标题6','简介6','','学校招录比6','备注信息6','2021-04-26 17:55:04','http://localhost:8080/ssmg1el1/upload/kaoyanziliao_fengmiantupian6.jpg','是','',6,6,6);
insert  into `kaoyanziliao`(`id`,`addtime`,`biaoti`,`jianjie`,`yicuotixing`,`xuexiaozhaolubi`,`beizhuxinxi`,`fabushijian`,`fengmiantupian`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicknum`) values (1619431417259,'2021-04-26 18:03:36','测试标题','测试简介','http://localhost:8080/ssmg1el1/upload/1619431403814.docx','<p>测试</p>','<p>测试</p>','2021-04-26 18:03:26','http://localhost:8080/ssmg1el1/upload/1619431410701.jpg','是','',0,1,1);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431654350 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619431654349,'2021-04-26 18:07:33',1619431225216,1619431528318,'zhaopinxinxi','测试企业','http://localhost:8080/ssmg1el1/upload/1619431524305.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','msvo6vbaqcbjyvksx4mspg2odtktpdk5','2021-04-26 17:56:37','2021-04-26 19:00:43');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'学生1','xuesheng','学生','kpc0wo1662p2z0vcbckc57fduk13lm8b','2021-04-26 17:58:36','2021-04-26 18:58:37');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619431225216,'12345678901','xuesheng','学生','rdkud5dg8drfpibbosg4l87kicytrf87','2021-04-26 18:01:36','2021-04-26 19:07:03');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619431235639,'12345678902','jiaoshi','教师','2rkwz34vit2db6glp7eywgmx2q0hjj09','2021-04-26 18:04:18','2021-04-26 19:04:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 17:55:04');

/*Table structure for table `wenxianziliao` */

DROP TABLE IF EXISTS `wenxianziliao`;

CREATE TABLE `wenxianziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxizhuanye` varchar(200) DEFAULT NULL COMMENT '院系专业',
  `wenxian` varchar(200) DEFAULT NULL COMMENT '文献',
  `lunwen` varchar(200) DEFAULT NULL COMMENT '论文',
  `qikan` varchar(200) DEFAULT NULL COMMENT '期刊',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `beizhuxinxi` longtext COMMENT '备注信息',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431380215 DEFAULT CHARSET=utf8 COMMENT='文献资料';

/*Data for the table `wenxianziliao` */

insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-26 17:55:04','院系专业1','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian1.jpg','2021-04-26 17:55:04','备注信息1','是','',1,1,'2021-04-26 17:55:04',1);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (32,'2021-04-26 17:55:04','院系专业2','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian2.jpg','2021-04-26 17:55:04','备注信息2','是','',2,2,'2021-04-26 17:55:04',2);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (33,'2021-04-26 17:55:04','院系专业3','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian3.jpg','2021-04-26 17:55:04','备注信息3','是','',3,3,'2021-04-26 17:55:04',3);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (34,'2021-04-26 17:55:04','院系专业4','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian4.jpg','2021-04-26 17:55:04','备注信息4','是','',4,4,'2021-04-26 17:55:04',4);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (35,'2021-04-26 17:55:04','院系专业5','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian5.jpg','2021-04-26 17:55:04','备注信息5','是','',5,5,'2021-04-26 17:55:04',5);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (36,'2021-04-26 17:55:04','院系专业6','','','','http://localhost:8080/ssmg1el1/upload/wenxianziliao_fengmiantupian6.jpg','2021-04-26 17:55:04','备注信息6','是','',6,6,'2021-04-26 17:55:04',6);
insert  into `wenxianziliao`(`id`,`addtime`,`yuanxizhuanye`,`wenxian`,`lunwen`,`qikan`,`fengmiantupian`,`fabushijian`,`beizhuxinxi`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619431380214,'2021-04-26 18:02:59','计算机学院软件工程','http://localhost:8080/ssmg1el1/upload/1619431361779.docx','http://localhost:8080/ssmg1el1/upload/1619431365197.docx','http://localhost:8080/ssmg1el1/upload/1619431370090.docx','http://localhost:8080/ssmg1el1/upload/1619431374033.jpg','2021-04-26 18:02:56','<p>测试</p>','是','',1,0,'2021-04-26 18:07:08',4);

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoujihao` varchar(200) NOT NULL COMMENT '手机号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `suozaixuexiao` varchar(200) DEFAULT NULL COMMENT '所在学校',
  `yuanxizhuanye` varchar(200) DEFAULT NULL COMMENT '院系专业',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoujihao` (`shoujihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431225217 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (11,'2021-04-26 17:55:04','学生1','123456','昵称1','男','773890001@qq.com','所在学校1','院系专业1','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (12,'2021-04-26 17:55:04','学生2','123456','昵称2','男','773890002@qq.com','所在学校2','院系专业2','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (13,'2021-04-26 17:55:04','学生3','123456','昵称3','男','773890003@qq.com','所在学校3','院系专业3','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (14,'2021-04-26 17:55:04','学生4','123456','昵称4','男','773890004@qq.com','所在学校4','院系专业4','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (15,'2021-04-26 17:55:04','学生5','123456','昵称5','男','773890005@qq.com','所在学校5','院系专业5','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (16,'2021-04-26 17:55:04','学生6','123456','昵称6','男','773890006@qq.com','所在学校6','院系专业6','http://localhost:8080/ssmg1el1/upload/xuesheng_touxiang6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`shoujihao`,`mima`,`nicheng`,`xingbie`,`dianziyouxiang`,`suozaixuexiao`,`yuanxizhuanye`,`touxiang`) values (1619431225216,'2021-04-26 18:00:25','12345678901','123456','测试学生','男','1@163.com','测试学校','计算机学院软件工程','http://localhost:8080/ssmg1el1/upload/1619431345051.jpg');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbianhao` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsiyouxiang` varchar(200) DEFAULT NULL COMMENT '公司邮箱',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `gongsifengmian` varchar(200) DEFAULT NULL COMMENT '公司封面',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `gongzidaiyu` longtext COMMENT '工资待遇',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaopinbianhao` (`zhaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619431528319 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (41,'2021-04-26 17:55:04','招聘编号1','企业名称1','13823888881','773890001@qq.com',1,'招聘岗位1','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian1.jpg','职位要求1','工资待遇1','2021-04-26 17:55:04',1);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (42,'2021-04-26 17:55:04','招聘编号2','企业名称2','13823888882','773890002@qq.com',2,'招聘岗位2','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian2.jpg','职位要求2','工资待遇2','2021-04-26 17:55:04',2);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (43,'2021-04-26 17:55:04','招聘编号3','企业名称3','13823888883','773890003@qq.com',3,'招聘岗位3','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian3.jpg','职位要求3','工资待遇3','2021-04-26 17:55:04',3);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (44,'2021-04-26 17:55:04','招聘编号4','企业名称4','13823888884','773890004@qq.com',4,'招聘岗位4','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian4.jpg','职位要求4','工资待遇4','2021-04-26 17:55:04',4);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (45,'2021-04-26 17:55:04','招聘编号5','企业名称5','13823888885','773890005@qq.com',5,'招聘岗位5','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian5.jpg','职位要求5','工资待遇5','2021-04-26 17:55:04',5);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (46,'2021-04-26 17:55:04','招聘编号6','企业名称6','13823888886','773890006@qq.com',6,'招聘岗位6','http://localhost:8080/ssmg1el1/upload/zhaopinxinxi_gongsifengmian6.jpg','职位要求6','工资待遇6','2021-04-26 17:55:04',6);
insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`qiyemingcheng`,`lianxifangshi`,`gongsiyouxiang`,`zhaopinrenshu`,`zhaopingangwei`,`gongsifengmian`,`zhiweiyaoqiu`,`gongzidaiyu`,`clicktime`,`clicknum`) values (1619431528318,'2021-04-26 18:05:28','1619431495410','测试企业','12345678909','12@163.com',2,'测试岗位','http://localhost:8080/ssmg1el1/upload/1619431524305.jpg','<p>测试</p>','<p>测试</p>','2021-04-26 18:09:14',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
