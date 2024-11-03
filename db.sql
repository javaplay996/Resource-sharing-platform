/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhiyuangongxiangpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhiyuangongxiangpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhiyuangongxiangpingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/zhiyuangongxiangpingtai/upload/1617711060549.jpg'),(2,'picture2','http://localhost:8080/zhiyuangongxiangpingtai/upload/1617711066105.jpg'),(3,'picture3','http://localhost:8080/zhiyuangongxiangpingtai/upload/1617711072096.jpg'),(6,'homepage','http://localhost:8080/zhiyuangongxiangpingtai/upload/1617711117573.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-06 17:23:06'),(2,'sex_types','性别',2,'女',NULL,'2021-04-06 17:23:06'),(3,'bumen_types','所属部门名称',1,'项目类型1',NULL,'2021-04-06 17:23:06'),(4,'bumen_types','所属部门名称',2,'项目类型2',NULL,'2021-04-06 17:23:06'),(5,'bumen_types','所属部门名称',3,'项目类型3',NULL,'2021-04-06 17:23:06'),(6,'xuexizhiyuan_types','资源分类名称',1,'分类1',NULL,'2021-04-06 17:23:06'),(7,'xuexizhiyuan_types','资源分类名称',2,'分类2',NULL,'2021-04-06 17:23:07'),(8,'xuexizhiyuan_types','资源分类名称',3,'分类3',NULL,'2021-04-06 17:23:07'),(9,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-06 17:23:07'),(10,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-06 17:23:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=1617703185727 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1617703185726,'2021-04-06 17:59:44','123','123\r\n',1,1,'admin','开放');

/*Table structure for table `mianshitongzhi` */

DROP TABLE IF EXISTS `mianshitongzhi`;

CREATE TABLE `mianshitongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mianshitongzhi_name` varchar(255) DEFAULT NULL COMMENT '公司名称 Search111',
  `mianshitongzhi_zhiwei` varchar(255) DEFAULT NULL COMMENT '职位',
  `mianshitongzhi_photo` varchar(255) DEFAULT NULL COMMENT '公司图片',
  `mianshitongzhi_daiyu` varchar(255) DEFAULT NULL COMMENT '公司待遇',
  `mianshitongzhi_yuexin` varchar(255) DEFAULT NULL COMMENT '月薪',
  `mianshitongzhi_dizhi` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `yonghu_id` int(255) DEFAULT NULL COMMENT '上传人',
  `mianshitongzhi_content` varchar(200) DEFAULT NULL COMMENT '公司详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='面试通知';

/*Data for the table `mianshitongzhi` */

insert  into `mianshitongzhi`(`id`,`mianshitongzhi_name`,`mianshitongzhi_zhiwei`,`mianshitongzhi_photo`,`mianshitongzhi_daiyu`,`mianshitongzhi_yuexin`,`mianshitongzhi_dizhi`,`yonghu_id`,`mianshitongzhi_content`,`create_time`) values (1,'公司名称1','职位1','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617712013788.jpg','公司待遇1','12','公司地址1',1,'公司详情1\r\n','2021-04-06 20:27:08'),(2,'公司名称2','职位2','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714402223.jpg','公司待遇2','22','公司地址2',1,'公司详情2\r\n','2021-04-06 21:06:49'),(4,'公司名称3','职位3','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714588856.jpg','公司待遇3','33','公司地址3',1,'公司详情3\r\n','2021-04-06 21:09:58'),(5,'公司名称4','职位4','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714719509.JPG','公司待遇4','44','公司地址4',3,'公司详情4\r\n','2021-04-06 21:12:08');

/*Table structure for table `mianshitongzhi_collection` */

DROP TABLE IF EXISTS `mianshitongzhi_collection`;

CREATE TABLE `mianshitongzhi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mianshitongzhi_id` int(11) DEFAULT NULL COMMENT '面试通知id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='面试通知收藏';

/*Data for the table `mianshitongzhi_collection` */

insert  into `mianshitongzhi_collection`(`id`,`mianshitongzhi_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-06 21:23:00','2021-04-06 21:23:00');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',1,'http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617703213127.jpg','2021-04-06 18:00:16','新闻详情1\r\n','2021-04-06 18:00:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','k2fm3ynqc23um0ivord8s90ybalwgmup','2021-04-06 17:41:29','2021-04-06 22:01:41'),(2,1,'111','yonghu','用户','agh8zhol0ntrbsxe7ke4ftz0qfolfzok','2021-04-06 19:49:40','2021-04-06 22:22:14'),(3,3,'333','yonghu','用户','rjshlm60s50tf40vthmge72o5qncd78a','2021-04-06 21:11:42','2021-04-06 22:23:28');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuexizhiyuan` */

DROP TABLE IF EXISTS `xuexizhiyuan`;

CREATE TABLE `xuexizhiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuexizhiyuan_name` varchar(255) DEFAULT NULL COMMENT '资源名称 Search111',
  `xuexizhiyuan_Photo` varchar(255) DEFAULT NULL COMMENT '资源图片',
  `xuexizhiyuan_file` varchar(255) DEFAULT NULL COMMENT '资源下载',
  `xuexizhiyuan_types` int(11) DEFAULT NULL COMMENT '资源分类 Search111',
  `yonghu_id` int(255) DEFAULT NULL COMMENT '上传人',
  `xuexizhiyuan_content` varchar(200) DEFAULT NULL COMMENT '资源详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学习资源';

/*Data for the table `xuexizhiyuan` */

insert  into `xuexizhiyuan`(`id`,`xuexizhiyuan_name`,`xuexizhiyuan_Photo`,`xuexizhiyuan_file`,`xuexizhiyuan_types`,`yonghu_id`,`xuexizhiyuan_content`,`create_time`) values (1,'资源名称1','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617708644230.jpg','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617708648970.jpg',3,1,'资源详情1\r\n','2021-04-06 19:30:53'),(2,'资源名称2','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714614790.jpg','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714619179.rar',1,1,'资源详情1\r\n','2021-04-06 21:10:23'),(3,'资源名称3','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714645908.JPG','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714647912.xls',1,1,'资源详情3\r\n','2021-04-06 21:10:54');

/*Table structure for table `xuexizhiyuan_collection` */

DROP TABLE IF EXISTS `xuexizhiyuan_collection`;

CREATE TABLE `xuexizhiyuan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuexizhiyuan_id` int(11) DEFAULT NULL COMMENT '学习资源id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学习资源收藏';

/*Data for the table `xuexizhiyuan_collection` */

insert  into `xuexizhiyuan_collection`(`id`,`xuexizhiyuan_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,1,1,'2021-04-06 20:21:08','2021-04-06 20:21:08');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '所属部门名称',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_role` varchar(200) DEFAULT NULL COMMENT '身份',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`bumen_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_role`,`create_time`) values (1,'111','123456','学生1',2,1,'410882199902114456','13879788494','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617707348794.jpg','学生','2021-04-06 19:09:15'),(2,'222','123456','学生2',1,NULL,'410882199902112456','13879788492','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617712625646.jpg','学生','2021-04-06 20:37:06'),(3,'333','123456','老师1',1,NULL,'410882199902122456','13879788424','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617712672520.jpg','老师','2021-04-06 20:37:54'),(4,'444','123456','老师2',2,NULL,'410882199902214456','13879788294','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617712693014.jpg','老师','2021-04-06 20:38:14');

/*Table structure for table `zhiliaowendang` */

DROP TABLE IF EXISTS `zhiliaowendang`;

CREATE TABLE `zhiliaowendang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiliaowendang_name` varchar(255) DEFAULT NULL COMMENT '文档名称 Search111',
  `zhiliaowendang_photo` varchar(255) DEFAULT NULL COMMENT '文档图片',
  `zhiliaowendang_daxiao` varchar(255) DEFAULT NULL COMMENT '文档大小',
  `zhiliaowendang_file` varchar(255) DEFAULT NULL COMMENT '文档下载',
  `yonghu_id` int(255) DEFAULT NULL COMMENT '上传人',
  `zhiliaowendang_content` varchar(200) DEFAULT NULL COMMENT '文档详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资料文档';

/*Data for the table `zhiliaowendang` */

insert  into `zhiliaowendang`(`id`,`zhiliaowendang_name`,`zhiliaowendang_photo`,`zhiliaowendang_daxiao`,`zhiliaowendang_file`,`yonghu_id`,`zhiliaowendang_content`,`create_time`) values (1,'文档名称1','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617709597806.jpg','10g','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617710563682.rar',1,'文档详情1\r\n','2021-04-06 19:46:48'),(2,'文档名称2','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714669997.JPG','100G','http://localhost:8080/zhiyuangongxiangpingtai/file/download?fileName=1617714680233.JPG',1,'文档详情2\r\n','2021-04-06 21:11:23');

/*Table structure for table `zhiliaowendang_collection` */

DROP TABLE IF EXISTS `zhiliaowendang_collection`;

CREATE TABLE `zhiliaowendang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiliaowendang_id` int(11) DEFAULT NULL COMMENT '资料文档id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资料文档收藏';

/*Data for the table `zhiliaowendang_collection` */

insert  into `zhiliaowendang_collection`(`id`,`zhiliaowendang_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-06 20:18:47','2021-04-06 20:18:47'),(2,1,3,'2021-04-06 21:26:19','2021-04-06 21:26:19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
