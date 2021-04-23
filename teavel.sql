/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.19 : Database - travel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travel` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `travel`;

/*Table structure for table `attractions` */

DROP TABLE IF EXISTS `attractions`;

CREATE TABLE `attractions` (
  `attractionsId` int NOT NULL AUTO_INCREMENT COMMENT '景点id',
  `attractionsName` varchar(50) NOT NULL COMMENT '景点名称',
  `attractionsAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点地点',
  `openTime` varchar(50) NOT NULL COMMENT '开发时间',
  `closeTime` varchar(50) NOT NULL COMMENT '关闭时间',
  `fares` int NOT NULL COMMENT '票价',
  `cheapFares` int DEFAULT NULL COMMENT '票价优惠',
  `cheapMessage` varchar(200) DEFAULT NULL COMMENT '优惠信息及优惠时间说明',
  PRIMARY KEY (`attractionsId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `attractions` */

insert  into `attractions`(`attractionsId`,`attractionsName`,`attractionsAddress`,`openTime`,`closeTime`,`fares`,`cheapFares`,`cheapMessage`) values (1,'石门栈道','汉中市勉县河东店镇316国道西侧','2021-04-16 22:01:57','2021-04-20 22:02:05',120,1,'五一劳动节特价优惠，时限假日期间');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bookingId` int NOT NULL AUTO_INCREMENT COMMENT '预约编号',
  `bookingUser` varchar(50) NOT NULL COMMENT '预约用户',
  `bookingAttractionsName` varchar(50) NOT NULL COMMENT '预约景点名称',
  `bookingTime` varchar(200) NOT NULL COMMENT '预约时间段自定义',
  PRIMARY KEY (`bookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `booking` */

insert  into `booking`(`bookingId`,`bookingUser`,`bookingAttractionsName`,`bookingTime`) values (1,'小李','姜子牙文化场','2021-4-29 14:00'),(2,'小四','龙门客栈','2021-5-1 13:10'),(3,'11','11','111');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) NOT NULL COMMENT '用户姓名',
  `age` int NOT NULL COMMENT '年龄',
  `number` varchar(30) NOT NULL COMMENT '电话联系方式',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '家庭住址',
  `counsel` varchar(200) DEFAULT NULL COMMENT '咨询信息',
  `counselOk` tinyint(1) DEFAULT NULL COMMENT '咨询信息是否处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`age`,`number`,`address`,`counsel`,`counselOk`) values (1,'小张',22,'6255604','陕西省汉中市户县','',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
