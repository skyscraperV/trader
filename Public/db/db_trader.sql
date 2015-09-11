﻿# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 127.0.0.1    Database: db_trader
# ------------------------------------------------------
# Server version 5.5.15

DROP DATABASE IF EXISTS `db_trader`;
CREATE DATABASE `db_trader` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_trader`;

#
# Source for table tbl_good
#

DROP TABLE IF EXISTS `tbl_good`;
CREATE TABLE `tbl_good` (
  `autogoodid` int(11) NOT NULL AUTO_INCREMENT,
  `goodid` int(11) NOT NULL DEFAULT '0',
  `goodname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autogoodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_good
#

LOCK TABLES `tbl_good` WRITE;
/*!40000 ALTER TABLE `tbl_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_good` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_historytrade
#

DROP TABLE IF EXISTS `tbl_historytrade`;
CREATE TABLE `tbl_historytrade` (
  `autotradeid` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `goodname` varchar(255) DEFAULT NULL,
  `tradetype` int(11) DEFAULT NULL,
  `tradenum` double DEFAULT NULL,
  `operstarttime` varchar(255) DEFAULT NULL,
  `operstartprice` double DEFAULT NULL,
  `operendtime` varchar(255) DEFAULT NULL,
  `operendprice` double DEFAULT NULL,
  `stoplossprice` double DEFAULT NULL,
  `stopgainprice` double DEFAULT NULL,
  `gainedmoney` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autotradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_historytrade
#

LOCK TABLES `tbl_historytrade` WRITE;
/*!40000 ALTER TABLE `tbl_historytrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_historytrade` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_news
#

DROP TABLE IF EXISTS `tbl_news`;
CREATE TABLE `tbl_news` (
  `autonewsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodid` int(11) DEFAULT NULL,
  `askprice` double DEFAULT NULL,
  `bidprice` double DEFAULT NULL,
  `newsdate` datetime DEFAULT NULL,
  PRIMARY KEY (`autonewsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_news
#

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_openbarn
#

DROP TABLE IF EXISTS `tbl_openbarn`;
CREATE TABLE `tbl_openbarn` (
  `autoopenbarnid` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` bigint(20) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `goodname` varchar(255) DEFAULT NULL,
  `tradetype` int(11) DEFAULT NULL,
  `tradenum` double DEFAULT NULL,
  `operstarttime` datetime DEFAULT NULL,
  `operstartprice` double DEFAULT NULL,
  `buyprice` double DEFAULT NULL,
  `sellprice` double DEFAULT NULL,
  `stoplossprice` double DEFAULT NULL,
  `stopgainprice` double DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autoopenbarnid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_openbarn
#

LOCK TABLES `tbl_openbarn` WRITE;
/*!40000 ALTER TABLE `tbl_openbarn` DISABLE KEYS */;
INSERT INTO `tbl_openbarn` VALUES (1,6636156,'112','USOUSD',0,10,'2017-08-21 21:42:54',42.935,NULL,NULL,0,0,'');
INSERT INTO `tbl_openbarn` VALUES (2,6636157,'112','USDCNH',1,10,'2017-08-22 21:42:54',42.935,NULL,NULL,0,0,'\"\"');
/*!40000 ALTER TABLE `tbl_openbarn` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_oper
#

DROP TABLE IF EXISTS `tbl_oper`;
CREATE TABLE `tbl_oper` (
  `autoperid` int(11) NOT NULL AUTO_INCREMENT,
  `operid` int(11) DEFAULT NULL,
  `operdate` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `ipaddr` varchar(11) DEFAULT NULL,
  `opercontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autoperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_oper
#

LOCK TABLES `tbl_oper` WRITE;
/*!40000 ALTER TABLE `tbl_oper` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_oper` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_pendorder
#

DROP TABLE IF EXISTS `tbl_pendorder`;
CREATE TABLE `tbl_pendorder` (
  `autopendorderid` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `goodname` varchar(255) DEFAULT NULL,
  `tradetype` int(11) DEFAULT NULL,
  `tradenum` double DEFAULT NULL,
  `pricebaseline` double DEFAULT NULL,
  `stoplossprice` double DEFAULT NULL,
  `stopgainprice` double DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  PRIMARY KEY (`autopendorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_pendorder
#

LOCK TABLES `tbl_pendorder` WRITE;
/*!40000 ALTER TABLE `tbl_pendorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pendorder` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_trade
#

DROP TABLE IF EXISTS `tbl_trade`;
CREATE TABLE `tbl_trade` (
  `autotradeid` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `goodname` varchar(255) DEFAULT NULL,
  `tradetype` int(11) DEFAULT NULL,
  `tradenum` double DEFAULT NULL,
  `operstarttime` varchar(255) DEFAULT NULL,
  `operstartprice` double DEFAULT NULL,
  `operendtime` varchar(255) DEFAULT NULL,
  `operendprice` double DEFAULT NULL,
  `stoplossprice` double DEFAULT NULL,
  `stopgainprice` double DEFAULT NULL,
  `gainedmoney` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `limitpricetype` int(11) DEFAULT NULL,
  `limitprice` double DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autotradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_trade
#

LOCK TABLES `tbl_trade` WRITE;
/*!40000 ALTER TABLE `tbl_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_trade` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tbl_user
#

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `autouserid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `petname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `mobilenum` varchar(255) DEFAULT NULL,
  `identitynum` varchar(255) DEFAULT NULL,
  `ischeck` varchar(255) DEFAULT NULL,
  `levenum` varchar(255) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `authnum` varchar(255) DEFAULT NULL,
  `userAvatar` varchar(255) DEFAULT NULL,
  `reemail` varchar(255) DEFAULT NULL,
  `reemailchecksum` varchar(255) DEFAULT NULL,
  `rephone` varchar(255) DEFAULT NULL,
  `rephonechecksum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autouserid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

#
# Dumping data for table tbl_user
#

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (29,'112','admin','123456@qq.com','admin','admin123',NULL,NULL,NULL,NULL,NULL,'15312121212','',NULL,'1',NULL,NULL,'ush9','http://localhost:8087/trader/Public/userAvatar/112.jpg','','','','');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
