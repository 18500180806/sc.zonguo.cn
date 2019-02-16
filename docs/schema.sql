/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.24 : Database - wetech_admin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wetech_admin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wetech_admin`;

/*Table structure for table `sys_group` */

DROP TABLE IF EXISTS `sys_group`;

CREATE TABLE `sys_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '组名称',
  `type` varchar(50) DEFAULT NULL COMMENT '组类型',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户组表';

/*Data for the table `sys_group` */

insert  into `sys_group`(`id`,`name`,`type`,`description`) values (1,'第一组','GROUP_1','第一组描述'),(2,'第二组','GROUP_2','第二组描述'),(3,'第三组','GROUP_3','第三组描述');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ip` varchar(45) DEFAULT NULL COMMENT '用户ip',
  `req_method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `req_uri` text COMMENT '请求URL',
  `exec_method` varchar(200) DEFAULT NULL COMMENT '执行方法',
  `exec_time` bigint(20) DEFAULT NULL COMMENT '响应时间',
  `args` text COMMENT '参数',
  `return_val` text COMMENT '返回值',
  `exec_desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`username`,`ip`,`req_method`,`req_uri`,`exec_method`,`exec_time`,`args`,`return_val`,`exec_desc`,`status`,`create_time`) values (3,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/role/delete','Result tech.wetech.admin.modules.system.web.RoleController.delete(Long[])',104,'[2]','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 11:24:23'),(4,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/role/delete','Result tech.wetech.admin.modules.system.web.RoleController.delete(Long[])',99,'[2]','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 11:24:28'),(5,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/user/create','Result tech.wetech.admin.modules.system.web.UserController.create(User)',282,'{\"id\":23,\"organizationId\":1,\"username\":\"1212\",\"password\":\"dfb8f9d9765549125251503c8cbddeae\",\"salt\":\"d4a287961261120fd2220af70fa63af4\",\"roleIds\":\"5\",\"roleIdList\":[5],\"groupIds\":\"1\",\"groupIdList\":[1],\"locked\":false,\"credentialsSalt\":\"1212d4a287961261120fd2220af70fa63af4\"}','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 14:41:38'),(6,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/organization/update','Result tech.wetech.admin.modules.system.web.OrganizationController.update(Organization)',105,'{\"id\":2,\"name\":\"???\",\"parentId\":1,\"parentIds\":\"0/1/\",\"available\":true,\"leaf\":false,\"priority\":1,\"rootNode\":false}','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 14:43:44'),(7,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/create','Result tech.wetech.admin.modules.system.web.ResourceController.create(Resource)',207,'{\"id\":89,\"name\":\"???\",\"type\":\"MENU\",\"url\":\"#\",\"permission\":\"\",\"parentId\":1,\"parentIds\":\"0/1/\",\"available\":true,\"icon\":\"\",\"priority\":null,\"leaf\":false,\"rootNode\":false}','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 14:47:09'),(8,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/create','Result tech.wetech.admin.modules.system.web.ResourceController.create(Resource)',211,'{\"id\":90,\"name\":\"??????\",\"type\":\"BUTTON\",\"url\":\"\",\"permission\":\"\",\"parentId\":89,\"parentIds\":\"0/1/89/\",\"available\":true,\"icon\":\"\",\"priority\":null,\"leaf\":false,\"rootNode\":false}','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 14:48:07'),(9,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/update','Result tech.wetech.admin.modules.system.web.ResourceController.update(Resource)',109,'{\"id\":89,\"name\":\"123\",\"type\":\"MENU\",\"url\":\"#\",\"permission\":\"\",\"parentId\":1,\"parentIds\":\"0/1/\",\"available\":true,\"icon\":\"\",\"priority\":1,\"leaf\":false,\"rootNode\":false}','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 14:49:00'),(10,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/delete','Result tech.wetech.admin.modules.system.web.ResourceController.delete(Long)',100,'21','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 16:18:12'),(11,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/delete','Result tech.wetech.admin.modules.system.web.ResourceController.delete(Long)',106,'89','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 16:21:01'),(12,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/delete','Result tech.wetech.admin.modules.system.web.ResourceController.delete(Long)',99,'90','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 16:21:28'),(13,'admin','127.0.0.1','POST HTTP/1.1','http://localhost:8080/wetech-admin/resource/delete','Result tech.wetech.admin.modules.system.web.ResourceController.delete(Long)',103,'88','{\"success\":true,\"code\":\"200\",\"msg\":\"????\",\"data\":{}}','????????','????','2019-02-15 16:26:32');

/*Table structure for table `sys_organization` */

DROP TABLE IF EXISTS `sys_organization`;

CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '组织名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(100) DEFAULT NULL COMMENT '父编号列表',
  `available` tinyint(1) DEFAULT '0' COMMENT '是否有效',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `leaf` tinyint(1) DEFAULT '0' COMMENT '叶子节点',
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='组织机构表';

/*Data for the table `sys_organization` */

insert  into `sys_organization`(`id`,`name`,`parent_id`,`parent_ids`,`available`,`priority`,`leaf`) values (1,'总公司',0,'0/',1,0,0),(2,'???',1,'0/1/',1,1,0),(3,'分公司33',1,'0/1/',1,23,0),(4,'分公司10',2,'0/1/2/',1,221,0),(5,'一级节点',1,'0/1/',1,122,0),(6,'二级节点',17,'0/1/17/',1,NULL,0),(7,'三级节点',18,'0/1/17/18/',0,NULL,0),(8,'133',2,'0/1/2/',1,121212,0),(9,'222',3,'0/1/3/',1,3333,0),(10,'222',24,'0/1/2/24/',1,333,0),(11,'232',3,'0/1/3/',1,2323,0),(12,'333',32,'0/1/3/32/',1,444,0),(13,'222',2,'0/1/2/',1,3333,0),(14,'333',25,'0/1/3/25/',1,232332,0);

/*Table structure for table `sys_resource` */

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `type` varchar(50) DEFAULT NULL COMMENT '资源类型',
  `url` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(100) DEFAULT NULL COMMENT '父编号列表',
  `permission` varchar(100) DEFAULT NULL COMMENT '权限字符串',
  `available` tinyint(1) DEFAULT '0' COMMENT '是否有效',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `leaf` tinyint(1) DEFAULT '0' COMMENT '叶子节点',
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='资源表';

/*Data for the table `sys_resource` */

insert  into `sys_resource`(`id`,`name`,`type`,`url`,`parent_id`,`parent_ids`,`permission`,`available`,`icon`,`priority`,`leaf`) values (1,'资源','MENU','#',0,'0/','',1,'',0,0),(11,'组织机构管理','MENU','#',1,'0/1/','organization:*',1,'fa fa-sitemap',3,0),(12,'组织机构新增','BUTTON','',11,'0/1/11/','organization:create',1,NULL,NULL,0),(13,'组织机构修改','BUTTON','',11,'0/1/11/','organization:update',1,NULL,NULL,0),(14,'组织机构删除','BUTTON','',11,'0/1/11/','organization:delete',1,NULL,NULL,0),(15,'组织机构查看','BUTTON','',11,'0/1/11/','organization:view',1,NULL,NULL,0),(21,'用户管理','MENU','#',1,'0/1/','',1,'fa fa-user',1,0),(22,'用户新增','BUTTON','',46,'0/1/21/','user:create',1,NULL,NULL,0),(23,'用户修改','BUTTON','',46,'0/1/21/','user:update',1,'',NULL,0),(24,'用户删除','BUTTON','',46,'0/1/21/','user:delete',1,NULL,NULL,0),(25,'用户查看','BUTTON','',46,'0/1/21/','user:view',1,NULL,NULL,0),(31,'资源管理','MENU','#',1,'0/1/','resource:*',1,'fa fa-desktop',2,0),(32,'资源新增','BUTTON','',31,'0/1/31/','resource:create',1,NULL,NULL,0),(33,'资源修改','BUTTON','',31,'0/1/31/','resource:update',1,'',NULL,0),(34,'资源删除','BUTTON','',31,'0/1/31/','resource:delete',1,NULL,NULL,0),(35,'资源查看','BUTTON','',31,'0/1/31/','resource:view',1,NULL,NULL,0),(41,'角色管理','MENU','#role',21,'0/1/','role:*',1,'fa fa-child',2,1),(42,'角色新增','BUTTON','',41,'0/1/41/','role:create',1,NULL,NULL,0),(43,'角色修改','BUTTON','',41,'0/1/41/','role:update',1,NULL,NULL,0),(44,'角色删除','BUTTON','',41,'0/1/41/','role:delete',1,NULL,NULL,0),(45,'角色查看','BUTTON','',41,'0/1/41/','role:view',1,NULL,NULL,0),(46,'系统用户','MENU','#user',21,'0/1/11/','user:*',1,'fa fa-wrench',1,1),(47,'组织机构','MENU','#organization',11,'0/1/11/','organization:*',1,'fa fa-suitcase',NULL,1),(50,'资源管理','MENU','#resource',31,'0/1/','resource:*',1,'fa fa-cubes',NULL,1),(69,'系统管理','MENU','#',1,'0/1/','system:*',1,'fa fa-wrench',4,0),(70,'系统日志','MENU','#log',69,'0/1/69/','log:*',1,'fa fa-history',NULL,1),(73,'一级菜单','MENU','#',1,'0/1/','',1,'',999,0),(83,'用户组管理','MENU','#group',21,'0/1/21/','group:*',1,'fa fa-users',3,0),(84,'用户组新增','BUTTON','',83,'0/1/21/83/','group:create',1,'',NULL,0),(85,'用户组修改','BUTTON','',83,'0/1/21/83/','group:update',1,'',NULL,0),(86,'用户组删除','BUTTON','',83,'0/1/21/83/','group:delete',1,'',NULL,0),(87,'用户组查看','BUTTON','#',83,'0/1/21/83/','group:view',1,'',NULL,0);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role` varchar(100) DEFAULT NULL COMMENT '角色名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `resource_ids` varchar(100) DEFAULT NULL COMMENT '资源编号列表',
  `available` tinyint(1) DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_resource_ids` (`resource_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`role`,`description`,`resource_ids`,`available`) values (1,'admin','超级管理员','11,21,31,41,46,69,70,83',0),(2,'guest','访客','15,25,35,45',0),(4,'ceshi3','测试的角色','12,14,34,35',0),(5,'test','测试角色','12,13,14,43,47',0),(6,'测试1','222','73',0);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `organization_id` bigint(20) DEFAULT NULL COMMENT '组织机构编号',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) DEFAULT NULL COMMENT '盐值',
  `role_ids` varchar(100) DEFAULT NULL COMMENT '角色列表',
  `group_ids` varchar(100) DEFAULT NULL COMMENT '组列表',
  `locked` tinyint(1) DEFAULT '0' COMMENT '是否锁定',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_user_username` (`username`),
  KEY `idx_sys_user_organization_id` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`organization_id`,`username`,`password`,`salt`,`role_ids`,`group_ids`,`locked`) values (1,1,'admin','d3c59d25033dbf980d29554025c23a75','8d78869f470951332959580424d4bf4f','1','1',0),(2,2,'ceshi','c067bee5cf7f216f352011cb9064241e','2632e0a577dba732bbfb4b298ff0b6e5','4','1',0),(3,4,'ceshi22323','f0c6227912db35e27eaa82308be055cd','a2425da3d41a6ef79a1ec69a7d845767','1','1',0),(4,3,'guest22223','6622b95a30cf730253550985718102bc','7de124e9822c092d56750969eebcf260','1,2','1',0),(5,3,'guest','fdd97263888fb3767d55ff084751c125','9f1bdc22981ae8730e89f94d241a73cc','2','1',0),(6,14,'12434','f17bf5e211de8a5cb611c4b6d83b728b','ffb57814a69d37ec1898282d4090cbfc','2','1',0),(7,3,'admin212','f51764c4e21a7226f92ce79bef273a33','b184db3641404a412c28d0863f46054e','2,4','1',0),(8,4,'1208','0aff55b46e9c7f91f622c0f579f6b43f','3f83092c188d3de0695d260aec6ac4c1','1,2,4,5','1',0),(9,14,'12234343','3e5657ac9987290841d99ed6f575f4e0','b48f560c40f4a53a0793184e45992f3d','1,2,4,5','1',0),(10,3,'ada','150f2974610a97f26f9f295329e24afc','ec55c34cc25616aff30c0cc08f43f9eb','2,4,5','1',0),(11,3,'232323','4ffa547335faf5b18ccff6e9a227af88','8e3272e3ac9aac76370af12692f993ce','1,2','1',0),(12,3,'ceshcie','cca5985abc9a89f4d29e2e02aa6afca2','b789c54f40d592cdeaa17c452cee27b2','4','1',0),(13,3,'1233445','6283a19b895a571a2637a3bec3215cf3','34245e29965cfcd25da1fa671f5047d3','2','1',0),(14,3,'12334','677a3e446421395315aeb52844959acd','4e8f403e236e5910a2d13532796963bd','4','1',0),(15,3,'1221','3a7b7a1d99a5e23fb9f9e1e88da499b0','f91e00aadbdea44b8d3a18f490173eb6','1','1',0),(16,3,'123456','2aa2c7bf65db34867eb4fd7a49b8b18f','685e4e4a2a9d57ccb2a3bd24ee01691a','5','1',0),(17,2,'123434','355ff1f1a7c60a82b9d0685ec6406987','821b7c15dcf108502a1a024a5746e7b7','2','1',0),(18,3,'admin2','6e327ade642adb0d344b9909f7d9f990','ccf50557508af772c13bedfcc320c4f1','1,2,4,5','1',0),(19,3,'cee','ca9708541f98523b5c0b88661b2bb559','3ea093a5cb06042f825fcdb51b76cb5c','1,2,4,5','1',0),(20,3,'admin222','13503530117f28b48fc32a1eea299bf0','7292e549e492358c0233fde9e1c46ac3','1,2,4','1',0),(21,14,'admin333','387a1e939344d1dee392a7c02debb34b','28e95c4e30c53414e5b63cca2427e173','1,2,4','1',0),(22,4,'john','e755e2c4bb208ac9665bed5b9f6b81c5','33a2c9562d191e090d83840a2920f3c1','1','1',0),(23,1,'1212','dfb8f9d9765549125251503c8cbddeae','d4a287961261120fd2220af70fa63af4','5','1',0);

/*Table structure for table `wxuser` */

DROP TABLE IF EXISTS `wxuser`;

CREATE TABLE `wxuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `uopenid` varchar(120) DEFAULT NULL COMMENT '微信的openid',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `wxuser` */

insert  into `wxuser`(`id`,`uopenid`,`createtime`) values (2,'123','2019-02-16 13:27:03'),(3,'123','2019-02-16 13:35:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
