/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.5.49 : Database - ssm_steam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_steam` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm_steam`;

/*Table structure for table `item_info` */

DROP TABLE IF EXISTS `item_info`;

CREATE TABLE `item_info` (
  `item_id` varchar(36) NOT NULL COMMENT '游戏id',
  `item_name` varchar(255) DEFAULT NULL COMMENT '游戏名称',
  `item_tagids` varchar(255) DEFAULT NULL COMMENT '游戏标签/分类',
  `item_platform` varchar(255) DEFAULT NULL COMMENT '游戏所属平台',
  `item_discount` int(11) DEFAULT NULL COMMENT '游戏折扣(百分比)',
  `item_original_price` double DEFAULT NULL COMMENT '游戏原价',
  `item_cap_image` varchar(255) DEFAULT NULL COMMENT '游戏分类图片地址(184*69)',
  `item_release_date` varchar(64) DEFAULT NULL COMMENT '发售日期',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热门(0不是,1是热门)',
  `is_hot_sale` tinyint(1) DEFAULT '0' COMMENT '是否为热销(0不是,1是)',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '是否为免费(0不是,1是免费)',
  `is_specials` tinyint(1) DEFAULT '0' COMMENT '是否为特价商品(0不是,1是)',
  `is_upcoming` tinyint(1) DEFAULT '0' COMMENT '是否即将推出(0不是,1是)(0为已上架)',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否为新品(0不是,1是）',
  `is_enable` tinyint(1) DEFAULT '0' COMMENT '是否下架(0,不是 1,下架）',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item_info` */

insert  into `item_info`(`item_id`,`item_name`,`item_tagids`,`item_platform`,`item_discount`,`item_original_price`,`item_cap_image`,`item_release_date`,`is_hot`,`is_hot_sale`,`is_free`,`is_specials`,`is_upcoming`,`is_new`,`is_enable`) values ('10001','PLAYERUNKNOWN\'S BATTLEGROUNDS','11#5','12',0,98,NULL,'2017-06-14',1,1,0,0,0,1,1),('10002','NBA 2K19','2#5','12#13',0,199,NULL,'2018-09-09',1,1,0,0,0,1,1),('10003','MONSTER HUNTER: WORLD','3#4#5#10','12#13',0,308,NULL,'2018-01-31',1,1,0,0,0,1,1),('10004','Grand Theft Auto V','10#4#5','12#13',34,189,NULL,'2018-07-17',1,1,0,1,0,1,1),('10005','The Witcher 3: Wild Hunt - Game of the Year Edition','4','13#14',60,158,NULL,'2016-05-23',1,1,0,1,0,0,0),('10006','Hellblade: Senua\'s Sacrifice','1#3','12',50,88,NULL,'2018-09-06',1,1,0,1,0,1,1),('10007','Tom Clancy’s The Division™','11','12',70,208,NULL,'2018-08-16',1,1,0,1,0,0,1),('10008','Two Point Hospital','1#5','#13',0,158,NULL,'2017-06-21',1,1,0,1,0,0,1),('10010','SCUM','11#4','12#13',0,70,NULL,'2018-07-13',1,1,0,1,0,0,1),('10011','Shadow of the Tomb Raider Croft Edition','3','12',19,561,NULL,'2018-05-03',1,1,0,1,0,0,1),('10012','Dying Light','11','14',0,127,NULL,'2018-06-21',1,1,0,1,0,0,1),('10013','Cities: Skylines','6','14',75,88,NULL,'2018-07-10',0,0,0,0,0,0,1),('10014','Stellaris','6','14',61,112,NULL,'2018-03-14',0,0,0,0,0,0,1),('10015','Expansion - Hearts of Iron IV: Waking the Tiger','6','13',34,70,NULL,'2018-04-21',0,0,0,0,0,0,1),('10016','Kingdoms and Castles','9','13',25,36,NULL,'2017-09-28',0,0,0,0,0,0,1),('10017','Grim Dawn','10','12',76,78,NULL,'2017-05-15',0,0,0,0,0,0,1),('10018','BATTLETECH','9','13',30,116,NULL,'2018-06-27',0,0,0,0,0,0,1),('10019','Europa Universalis IV','6','14',75,112,NULL,'2018-05-10',0,0,0,0,0,0,1),('10020','Breathedge','3','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10021','Hop Step Sing! Nozokanaide Naked Heart (HQ Edition)','1','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10022','Dakar 18','8','12',0,138,NULL,NULL,0,0,0,0,1,0,1),('10023','I’m not a Monster','9','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10024','Assetto Corsa Competizione','2','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10025','Construction Simulator 2 US - Pocket Edition','6','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10026','Edge Of Eternity','10','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10027','Spire of Sorcery – Character Generator','7','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10028','Bad Dream: Fever','3','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10029','Gift of Parthax','7','12',0,0,NULL,NULL,0,0,0,0,1,0,1),('10030','Scythe: Digital Edition','11#9','12#13',22,70,NULL,'2018-09-09',1,0,0,1,0,1,1),('10031','Witch Hunt','10#3#4','12#13',11,127,NULL,'2018-09-08',1,0,0,1,0,1,1),('10032','Shadows: Awakening','4','12',0,134,NULL,'2018-09-10',1,0,0,0,0,1,1),('10033','NARUTO TO BORUTO: SHINOBI STRIKER','4','12',0,268,NULL,'2018-09-06',1,0,0,0,0,1,1),('10034','The Messenger','7','12',0,70,NULL,'2018-09-03',1,0,0,0,0,1,1),('10035','Ultimate Fishing Simulator','1','12',0,68,NULL,'2018-09-05',1,0,0,0,0,1,1),('10036','Two Point Hospital','6','12',0,158,NULL,'2018-09-07',1,0,0,0,0,1,1),('10037','FACEIT 2018 London CS:GO Major Championship Mega Bundle','11','12',0,278,NULL,'2018-09-09',1,0,0,0,0,1,1),('10098','尼尔-机械纪元','3#4#10#11','12#13',30,428,NULL,NULL,1,1,0,1,0,0,1),('11111','格兰蒂亚2','4#1','12',0,0,NULL,NULL,1,0,1,1,0,0,1),('11113','极品飞车22','2#8','12#13',0,0,NULL,NULL,1,0,1,1,0,1,1),('11122','塞尔达传说','10#3#4#5','12#13#14#15',0,0,NULL,'2018-09-28',1,0,1,1,0,0,1),('2','NBA','1#2','12#13#14',0,0,NULL,NULL,1,0,1,1,0,0,1),('25001','拳皇14','4#5','12#13',0,0,NULL,'2018-09-24',1,0,1,1,0,0,1),('35001','最终幻想-核心危机','10#3#4','12#13',58,339,NULL,'2018-10-06',1,0,1,1,0,0,1);

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '系统数据词典id',
  `dict_type_id` varchar(32) DEFAULT NULL COMMENT '系统数据词典分类id',
  `dict_type_name` varchar(64) DEFAULT NULL COMMENT '系统数据词典名称',
  `dict_field_name` varchar(32) DEFAULT NULL COMMENT '对应字段名称',
  `dict_item_name` varchar(64) DEFAULT NULL COMMENT '系统数据词典子项目名称',
  `is_enable` tinyint(1) DEFAULT '0' COMMENT '是否启用该项(0不启用，1启用)',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`dict_id`,`dict_type_id`,`dict_type_name`,`dict_field_name`,`dict_item_name`,`is_enable`) values ('1','01','游戏标签','item_tagids','休闲',1),('10','01','游戏标签','item_tagids','角色扮演',1),('11','01','游戏标签','item_tagids','射击',1),('12','02','游戏平台','item_platform','win',1),('13','02','游戏平台','item_platform','mac',1),('14','02','游戏平台','item_platform','linux',1),('15','02','游戏平台','item_platform','vive',1),('16','03','游戏标志位','is_hot','热门',1),('17','03','游戏标志位','is_hot_sale','畅销',0),('18','03','游戏标志位','is_free','免费',0),('19','03','游戏标志位','is_specials','特价',0),('2','01','游戏标签','item_tagids','体育',1),('20','03','游戏标志位','is_upcoming','即将推出',0),('21','03','游戏标志位','is_new','新品',0),('22','03','游戏标志位','is_enable','上架',0),('3','01','游戏标签','item_tagids','冒险',1),('4','01','游戏标签','item_tagids','动作',1),('5','01','游戏标签','item_tagids','大型多人在线',1),('6','01','游戏标签','item_tagids','模拟',1),('7','01','游戏标签','item_tagids','独立',1),('8','01','游戏标签','item_tagids','竞速',1),('9','01','游戏标签','item_tagids','策略',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
