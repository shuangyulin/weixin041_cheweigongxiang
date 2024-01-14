/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd9cd3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd9cd3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd9cd3`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616297578353 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-21 11:24:06',1,1,'提问1','回复1',1),(62,'2021-03-21 11:24:06',2,2,'提问2','回复2',2),(63,'2021-03-21 11:24:06',3,3,'提问3','回复3',3),(64,'2021-03-21 11:24:06',4,4,'提问4','回复4',4),(65,'2021-03-21 11:24:06',5,5,'提问5','回复5',5),(66,'2021-03-21 11:24:06',6,6,'提问6','回复6',6),(1616297578352,'2021-03-21 11:32:57',1616297382358,NULL,'你好',NULL,1);

/*Table structure for table `cheliangleixing` */

DROP TABLE IF EXISTS `cheliangleixing`;

CREATE TABLE `cheliangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车辆类型';

/*Data for the table `cheliangleixing` */

insert  into `cheliangleixing`(`id`,`addtime`,`pinpai`) values (31,'2021-03-21 11:24:06','奔驰'),(32,'2021-03-21 11:24:06','路虎'),(33,'2021-03-21 11:24:06','品牌3'),(34,'2021-03-21 11:24:06','品牌4'),(35,'2021-03-21 11:24:06','品牌5'),(36,'2021-03-21 11:24:06','品牌6');

/*Table structure for table `cheliangxinxi` */

DROP TABLE IF EXISTS `cheliangxinxi`;

CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `cheliangleixing` varchar(200) DEFAULT NULL COMMENT '车辆类型',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangtupian` varchar(200) DEFAULT NULL COMMENT '车辆图片',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616297454711 DEFAULT CHARSET=utf8 COMMENT='车辆信息';

/*Data for the table `cheliangxinxi` */

insert  into `cheliangxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`dianhua`,`cheliangleixing`,`chepaihao`,`cheliangtupian`,`dengjishijian`,`userid`) values (22,'2021-03-21 11:24:06','账号2','姓名2','电话2','车辆类型2','车牌号2','http://localhost:8080/ssmd9cd3/upload/cheliangxinxi_cheliangtupian2.jpg','2021-03-21 11:24:06',2),(23,'2021-03-21 11:24:06','账号3','姓名3','电话3','车辆类型3','车牌号3','http://localhost:8080/ssmd9cd3/upload/cheliangxinxi_cheliangtupian3.jpg','2021-03-21 11:24:06',3),(24,'2021-03-21 11:24:06','账号4','姓名4','电话4','车辆类型4','车牌号4','http://localhost:8080/ssmd9cd3/upload/cheliangxinxi_cheliangtupian4.jpg','2021-03-21 11:24:06',4),(25,'2021-03-21 11:24:06','账号5','姓名5','电话5','车辆类型5','车牌号5','http://localhost:8080/ssmd9cd3/upload/cheliangxinxi_cheliangtupian5.jpg','2021-03-21 11:24:06',5),(26,'2021-03-21 11:24:06','账号6','姓名6','电话6','车辆类型6','车牌号6','http://localhost:8080/ssmd9cd3/upload/cheliangxinxi_cheliangtupian6.jpg','2021-03-21 11:24:06',6),(1616297437657,'2021-03-21 11:30:36','100','张三','12345678910','路虎','粤S 76666','http://localhost:8080/ssmd9cd3/upload/1616297434620.jpg','2021-03-21 11:30:21',1616297382358),(1616297453927,'2021-03-21 11:30:53','100','张三','12345678910','奔驰','粤S 88888','http://localhost:8080/ssmd9cd3/upload/1616297451435.jpg','2021-03-21 11:30:38',1616297382358);

/*Table structure for table `cheweixinxi` */

DROP TABLE IF EXISTS `cheweixinxi`;

CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `meitianjiage` int(11) DEFAULT NULL COMMENT '每天价格',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `beizhu` longtext COMMENT '备注',
  `cheweitupian` varchar(200) DEFAULT NULL COMMENT '车位图片',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616297292553 DEFAULT CHARSET=utf8 COMMENT='车位信息';

/*Data for the table `cheweixinxi` */

insert  into `cheweixinxi`(`id`,`addtime`,`cheweihao`,`cheweizhuangtai`,`meitianjiage`,`cheweiweizhi`,`beizhu`,`cheweitupian`,`clicknum`) values (41,'2021-03-21 11:24:06','车位号1','待租赁',1,'车位位置1','备注1','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian1.jpg',4),(42,'2021-03-21 11:24:06','车位号2','待租赁',2,'车位位置2','备注2','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian2.jpg',3),(43,'2021-03-21 11:24:06','车位号3','已租赁',3,'车位位置3','备注3','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian3.jpg',4),(44,'2021-03-21 11:24:06','车位号4','已租赁',4,'车位位置4','备注4','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian4.jpg',5),(45,'2021-03-21 11:24:06','车位号5','已租赁',5,'车位位置5','备注5','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian5.jpg',5),(46,'2021-03-21 11:24:06','车位号6','已租赁',6,'车位位置6','备注6','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian6.jpg',6),(1616297292552,'2021-03-21 11:28:12','10','已租赁',200,'8号区','备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注备注','http://localhost:8080/ssmd9cd3/upload/1616297283335.jpg',4);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd9cd3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmd9cd3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmd9cd3/upload/picture3.jpg'),(6,'homepage',NULL),(7,'芜湖','http://localhost:8080/ssmd9cd3/upload/1616297325510.jpg');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `cheweihao` varchar(200) DEFAULT NULL COMMENT '车位号',
  `meitianjiage` varchar(200) DEFAULT NULL COMMENT '每天价格',
  `zulinshizhang` int(11) NOT NULL COMMENT '租赁时长',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zulinshijian` datetime NOT NULL COMMENT '租赁时间',
  `cheweitupian` varchar(200) DEFAULT NULL COMMENT '车位图片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616297520334 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanhao`,`zhanghao`,`xingming`,`dianhua`,`cheweihao`,`meitianjiage`,`zulinshizhang`,`jiage`,`zulinshijian`,`cheweitupian`,`sfsh`,`shhf`,`ispay`,`clicknum`,`userid`) values (51,'2021-03-21 11:24:06','订单号1','账号1','姓名1','电话1','车位号1','每天价格1',1,'价格1','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian1.jpg','是','过！','未支付',1,1),(52,'2021-03-21 11:24:06','订单号2','账号2','姓名2','电话2','车位号2','每天价格2',2,'价格2','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian2.jpg','是','','未支付',2,2),(53,'2021-03-21 11:24:06','订单号3','账号3','姓名3','电话3','车位号3','每天价格3',3,'价格3','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian3.jpg','是','','未支付',3,3),(54,'2021-03-21 11:24:06','订单号4','账号4','姓名4','电话4','车位号4','每天价格4',4,'价格4','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian4.jpg','是','','未支付',4,4),(55,'2021-03-21 11:24:06','订单号5','账号5','姓名5','电话5','车位号5','每天价格5',5,'价格5','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian5.jpg','是','','未支付',5,5),(56,'2021-03-21 11:24:06','订单号6','账号6','姓名6','电话6','车位号6','每天价格6',6,'价格6','2021-03-21 11:24:06','http://localhost:8080/ssmd9cd3/upload/dingdanxinxi_cheweitupian6.jpg','是','','未支付',6,6),(1616297494981,'2021-03-21 11:31:34','1616297483595','100','张三','12345678910','10','200',10,'2000','2021-03-21 11:34:23','http://localhost:8080/ssmd9cd3/upload/1616297283335.jpg','是','','已支付',7,1616297382358),(1616297520333,'2021-03-21 11:31:59','1616297510691','100','张三','12345678910','车位号1','1',88888,'88888','2021-03-21 11:31:50','http://localhost:8080/ssmd9cd3/upload/cheweixinxi_cheweitupian1.jpg','','','',5,1616297382358);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','zpsozeuk2dsonjwc29ln0c20ddw9g0ls','2021-03-21 11:25:59','2021-03-21 12:33:06'),(2,1616297382358,'100','yonghu','用户','5xmdcmw7q1nv4scp8jbddqau8jqqzoc4','2021-03-21 11:29:55','2021-03-21 12:33:59');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-21 11:24:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616297382359 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`) values (11,'2021-03-21 11:24:06','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001'),(12,'2021-03-21 11:24:06','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002'),(13,'2021-03-21 11:24:06','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003'),(14,'2021-03-21 11:24:06','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004'),(15,'2021-03-21 11:24:06','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005'),(1616297200824,'2021-03-21 11:26:40','666','1','张益达','男',22,'12345678910','2@qq.com','123456789123456789'),(1616297382358,'2021-03-21 11:29:42','100','654321','张三','男',222,'12345678910','3@qq.com','123456789123456789');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
