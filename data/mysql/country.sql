-- MySQL dump 10.13  Distrib 5.5.30, for osx10.9 (i386)
--
-- Host: localhost    Database: countries
-- ------------------------------------------------------
-- Server version	5.5.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique ID of the country. Primary Key',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Use this country in applications',
  `code3l` varchar(3) NOT NULL COMMENT 'ISO 3166-1 alpha-3 three-letter code',
  `code2l` varchar(2) NOT NULL COMMENT 'ISO 3166-1 alpha-2 two-letter code',
  `name` varchar(64) NOT NULL COMMENT 'Name of the country in English',
  `flag_32` varchar(255) DEFAULT NULL,
  `flag_128` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_countries_name` (`name`),
  UNIQUE KEY `idx_countries_code3l` (`code3l`),
  UNIQUE KEY `idx_countries_code2l` (`code2l`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=434 COMMENT='Hold the list of countries. Each country is a row';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,1,'AFG','AF','Afghanistan','AF-32.png','AF-128.png'),(2,1,'ALB','AL','Albania','AL-32.png','AL-128.png'),(3,1,'DZA','DZ','Algeria','DZ-32.png','DZ-128.png'),(4,1,'AND','AD','Andorra','AD-32.png','AD-128.png'),(5,1,'AGO','AO','Angola','AO-32.png','AO-128.png'),(6,1,'ATG','AG','Antigua and Barbuda','AG-32.png','AG-128.png'),(7,1,'ARG','AR','Argentina','AR-32.png','AR-128.png'),(8,1,'ARM','AM','Armenia','AM-32.png','AM-128.png'),(9,1,'AUS','AU','Australia','AU-32.png','AU-128.png'),(10,1,'AUT','AT','Austria','AT-32.png','AT-128.png'),(11,1,'AZE','AZ','Azerbaijan','AZ-32.png','AZ-128.png'),(12,1,'BHS','BS','Bahamas','BS-32.png','BS-128.png'),(13,1,'BHR','BH','Bahrain','BH-32.png','BH-128.png'),(14,1,'BGD','BD','Bangladesh','BD-32.png','BD-128.png'),(15,1,'BRB','BB','Barbados','BB-32.png','BB-128.png'),(16,1,'BLR','BY','Belarus','BY-32.png','BY-128.png'),(17,1,'BEL','BE','Belgium','BE-32.png','BE-128.png'),(18,1,'BLZ','BZ','Belize','BZ-32.png','BZ-128.png'),(19,1,'BEN','BJ','Benin','BJ-32.png','BJ-128.png'),(20,1,'BTN','BT','Bhutan','BT-32.png','BT-128.png'),(21,1,'BIH','BA','Bosnia and Herzegovina','BA-32.png','BA-128.png'),(22,1,'BWA','BW','Botswana','BW-32.png','BW-128.png'),(23,1,'BRA','BR','Brazil','BR-32.png','BR-128.png'),(24,1,'BRN','BN','Brunei','BN-32.png','BN-128.png'),(25,1,'BGR','BG','Bulgaria','BG-32.png','BG-128.png'),(26,1,'BFA','BF','Burkina Faso','BF-32.png','BF-128.png'),(27,1,'BDI','BI','Burundi','BI-32.png','BI-128.png'),(28,1,'KHM','KH','Cambodia','KH-32.png','KH-128.png'),(29,1,'CMR','CM','Cameroon','CM-32.png','CM-128.png'),(30,1,'CAN','CA','Canada','CA-32.png','CA-128.png'),(31,1,'CPV','CV','Cape Verde','CV-32.png','CV-128.png'),(32,1,'CAF','CF','Central African Republic','CF-32.png','CF-128.png'),(33,1,'TCD','TD','Chad','TD-32.png','TD-128.png'),(34,1,'CHL','CL','Chile','CL-32.png','CL-128.png'),(35,1,'CHN','CN','China','CN-32.png','CN-128.png'),(36,1,'COL','CO','Colombia','CO-32.png','CO-128.png'),(37,1,'COM','KM','Comoros','KM-32.png','KM-128.png'),(38,1,'COG','CG','Congo','CG-32.png','CG-128.png'),(39,1,'CRI','CR','Costa Rica','CR-32.png','CR-128.png'),(40,1,'HRV','HR','Croatia','HR-32.png','HR-128.png'),(41,1,'CUB','CU','Cuba','CU-32.png','CU-128.png'),(42,1,'CYP','CY','Cyprus','CY-32.png','CY-128.png'),(43,1,'CZE','CZ','Czech Republic','CZ-32.png','CZ-128.png'),(44,1,'CIV','CI','Côte d\'Ivoire','CI-32.png','CI-128.png'),(45,1,'DNK','DK','Denmark','DK-32.png','DK-128.png'),(46,1,'DJI','DJ','Djibouti','DJ-32.png','DJ-128.png'),(47,1,'DMA','DM','Dominica','DM-32.png','DM-128.png'),(48,1,'DOM','DO','Dominican Republic','DO-32.png','DO-128.png'),(49,1,'ECU','EC','Ecuador','EC-32.png','EC-128.png'),(50,1,'EGY','EG','Egypt','EG-32.png','EG-128.png'),(51,1,'SLV','SV','El Salvador','SV-32.png','SV-128.png'),(52,1,'GNQ','GQ','Equatorial Guinea','GQ-32.png','GQ-128.png'),(53,1,'ERI','ER','Eritrea','ER-32.png','ER-128.png'),(54,1,'EST','EE','Estonia','EE-32.png','EE-128.png'),(55,1,'ETH','ET','Ethiopia','ET-32.png','ET-128.png'),(56,1,'FJI','FJ','Fiji','FJ-32.png','FJ-128.png'),(57,1,'FIN','FI','Finland','FI-32.png','FI-128.png'),(58,1,'FRA','FR','France','FR-32.png','FR-128.png'),(59,1,'GAB','GA','Gabon','GA-32.png','GA-128.png'),(60,1,'GMB','GM','Gambia, The','GM-32.png','GM-128.png'),(61,1,'GEO','GE','Georgia','GE-32.png','GE-128.png'),(62,1,'DEU','DE','Germany','DE-32.png','DE-128.png'),(63,1,'GHA','GH','Ghana','GH-32.png','GH-128.png'),(64,1,'GRC','GR','Greece','GR-32.png','GR-128.png'),(65,1,'GRD','GD','Grenada','GD-32.png','GD-128.png'),(66,1,'GTM','GT','Guatemala','GT-32.png','GT-128.png'),(67,1,'GIN','GN','Guinea','GN-32.png','GN-128.png'),(68,1,'GNB','GW','Guinea-Bissau','GW-32.png','GW-128.png'),(69,1,'GUY','GY','Guyana','GY-32.png','GY-128.png'),(70,1,'HTI','HT','Haiti','HT-32.png','HT-128.png'),(71,1,'HND','HN','Honduras','HN-32.png','HN-128.png'),(72,1,'HUN','HU','Hungary','HU-32.png','HU-128.png'),(73,1,'ISL','IS','Iceland','IS-32.png','IS-128.png'),(74,1,'IND','IN','India','IN-32.png','IN-128.png'),(75,1,'IDN','ID','Indonesia','ID-32.png','ID-128.png'),(76,1,'IRQ','IQ','Iraq','IQ-32.png','IQ-128.png'),(77,1,'IRL','IE','Ireland','IE-32.png','IE-128.png'),(78,1,'ISR','IL','Israel','IL-32.png','IL-128.png'),(79,1,'ITA','IT','Italy','IT-32.png','IT-128.png'),(80,1,'JAM','JM','Jamaica','JM-32.png','JM-128.png'),(81,1,'JPN','JP','Japan','JP-32.png','JP-128.png'),(82,1,'JOR','JO','Jordan','JO-32.png','JO-128.png'),(83,1,'KAZ','KZ','Kazakhstan','KZ-32.png','KZ-128.png'),(84,1,'KEN','KE','Kenya','KE-32.png','KE-128.png'),(85,1,'KIR','KI','Kiribati','KI-32.png','KI-128.png'),(86,1,'KWT','KW','Kuwait','KW-32.png','KW-128.png'),(87,1,'KGZ','KG','Kyrgyzstan','KG-32.png','KG-128.png'),(88,1,'LAO','LA','Laos','LA-32.png','LA-128.png'),(89,1,'LVA','LV','Latvia','LV-32.png','LV-128.png'),(90,1,'LBN','LB','Lebanon','LB-32.png','LB-128.png'),(91,1,'LSO','LS','Lesotho','LS-32.png','LS-128.png'),(92,1,'LBR','LR','Liberia','LR-32.png','LR-128.png'),(93,1,'LBY','LY','Libya','LY-32.png','LY-128.png'),(94,1,'LIE','LI','Liechtenstein','LI-32.png','LI-128.png'),(95,1,'LTU','LT','Lithuania','LT-32.png','LT-128.png'),(96,1,'LUX','LU','Luxembourg','LU-32.png','LU-128.png'),(97,1,'MDG','MG','Madagascar','MG-32.png','MG-128.png'),(98,1,'MWI','MW','Malawi','MW-32.png','MW-128.png'),(99,1,'MYS','MY','Malaysia','MY-32.png','MY-128.png'),(100,1,'MDV','MV','Maldives','MV-32.png','MV-128.png'),(101,1,'MLI','ML','Mali','ML-32.png','ML-128.png'),(102,1,'MLT','MT','Malta','MT-32.png','MT-128.png'),(103,1,'MHL','MH','Marshall Islands','MH-32.png','MH-128.png'),(104,1,'MRT','MR','Mauritania','MR-32.png','MR-128.png'),(105,1,'MUS','MU','Mauritius','MU-32.png','MU-128.png'),(106,1,'MEX','MX','Mexico','MX-32.png','MX-128.png'),(107,1,'MCO','MC','Monaco','MC-32.png','MC-128.png'),(108,1,'MNG','MN','Mongolia','MN-32.png','MN-128.png'),(109,1,'MNE','ME','Montenegro','ME-32.png','ME-128.png'),(110,1,'MAR','MA','Morocco','MA-32.png','MA-128.png'),(111,1,'MOZ','MZ','Mozambique','MZ-32.png','MZ-128.png'),(112,1,'MMR','MM','Myanmar','MM-32.png','MM-128.png'),(113,1,'NAM','NA','Namibia','NA-32.png','NA-128.png'),(114,1,'NRU','NR','Nauru','NR-32.png','NR-128.png'),(115,1,'NPL','NP','Nepal','NP-32.png','NP-128.png'),(116,1,'NLD','NL','Netherlands','NL-32.png','NL-128.png'),(117,1,'NZL','NZ','New Zealand','NZ-32.png','NZ-128.png'),(118,1,'NIC','NI','Nicaragua','NI-32.png','NI-128.png'),(119,1,'NER','NE','Niger','NE-32.png','NE-128.png'),(120,1,'NGA','NG','Nigeria','NG-32.png','NG-128.png'),(121,1,'NOR','NO','Norway','NO-32.png','NO-128.png'),(122,1,'OMN','OM','Oman','OM-32.png','OM-128.png'),(123,1,'PAK','PK','Pakistan','PK-32.png','PK-128.png'),(124,1,'PLW','PW','Palau','PW-32.png','PW-128.png'),(125,1,'PAN','PA','Panama','PA-32.png','PA-128.png'),(126,1,'PNG','PG','Papua New Guinea','PG-32.png','PG-128.png'),(127,1,'PRY','PY','Paraguay','PY-32.png','PY-128.png'),(128,1,'PER','PE','Peru','PE-32.png','PE-128.png'),(129,1,'PHL','PH','Philippines','PH-32.png','PH-128.png'),(130,1,'POL','PL','Poland','PL-32.png','PL-128.png'),(131,1,'PRT','PT','Portugal','PT-32.png','PT-128.png'),(132,1,'QAT','QA','Qatar','QA-32.png','QA-128.png'),(133,1,'ROU','RO','Romania','RO-32.png','RO-128.png'),(134,1,'RUS','RU','Russia','RU-32.png','RU-128.png'),(135,1,'RWA','RW','Rwanda','RW-32.png','RW-128.png'),(136,1,'KNA','KN','Saint Kitts and Nevis','KN-32.png','KN-128.png'),(137,1,'LCA','LC','Saint Lucia','LC-32.png','LC-128.png'),(138,1,'VCT','VC','Saint Vincent and the Grenadines','VC-32.png','VC-128.png'),(139,1,'WSM','WS','Samoa','WS-32.png','WS-128.png'),(140,1,'SMR','SM','San Marino','SM-32.png','SM-128.png'),(141,1,'STP','ST','São Tomé and Príncipe','ST-32.png','ST-128.png'),(142,1,'SAU','SA','Saudi Arabia','SA-32.png','SA-128.png'),(143,1,'SEN','SN','Senegal','SN-32.png','SN-128.png'),(144,1,'SRB','RS','Serbia','RS-32.png','RS-128.png'),(145,1,'SYC','SC','Seychelles','SC-32.png','SC-128.png'),(146,1,'SLE','SL','Sierra Leone','SL-32.png','SL-128.png'),(147,1,'SGP','SG','Singapore','SG-32.png','SG-128.png'),(148,1,'SVK','SK','Slovakia','SK-32.png','SK-128.png'),(149,1,'SVN','SI','Slovenia','SI-32.png','SI-128.png'),(150,1,'SLB','SB','Solomon Islands','SB-32.png','SB-128.png'),(151,1,'SOM','SO','Somalia','SO-32.png','SO-128.png'),(152,1,'ZAF','ZA','South Africa','ZA-32.png','ZA-128.png'),(153,1,'ESP','ES','Spain','ES-32.png','ES-128.png'),(154,1,'LKA','LK','Sri Lanka','LK-32.png','LK-128.png'),(155,1,'SDN','SD','Sudan','SD-32.png','SD-128.png'),(156,1,'SUR','SR','Suriname','SR-32.png','SR-128.png'),(157,1,'SWZ','SZ','Swaziland','SZ-32.png','SZ-128.png'),(158,1,'SWE','SE','Sweden','SE-32.png','SE-128.png'),(159,1,'CHE','CH','Switzerland','CH-32.png','CH-128.png'),(160,1,'SYR','SY','Syria','SY-32.png','SY-128.png'),(161,1,'TJK','TJ','Tajikistan','TJ-32.png','TJ-128.png'),(162,1,'THA','TH','Thailand','TH-32.png','TH-128.png'),(163,1,'TLS','TL','Timor-Leste','TL-32.png','TL-128.png'),(164,1,'TGO','TG','Togo','TG-32.png','TG-128.png'),(165,1,'TON','TO','Tonga','TO-32.png','TO-128.png'),(166,1,'TTO','TT','Trinidad and Tobago','TT-32.png','TT-128.png'),(167,1,'TUN','TN','Tunisia','TN-32.png','TN-128.png'),(168,1,'TUR','TR','Turkey','TR-32.png','TR-128.png'),(169,1,'TKM','TM','Turkmenistan','TM-32.png','TM-128.png'),(170,1,'TUV','TV','Tuvalu','TV-32.png','TV-128.png'),(171,1,'UGA','UG','Uganda','UG-32.png','UG-128.png'),(172,1,'UKR','UA','Ukraine','UA-32.png','UA-128.png'),(173,1,'ARE','AE','United Arab Emirates','AE-32.png','AE-128.png'),(174,1,'URY','UY','Uruguay','UY-32.png','UY-128.png'),(175,1,'UZB','UZ','Uzbekistan','UZ-32.png','UZ-128.png'),(176,1,'VUT','VU','Vanuatu','VU-32.png','VU-128.png'),(177,1,'VNM','VN','Viet Nam','VN-32.png','VN-128.png'),(178,1,'YEM','YE','Yemen','YE-32.png','YE-128.png'),(179,1,'ZMB','ZM','Zambia','ZM-32.png','ZM-128.png'),(180,1,'ZWE','ZW','Zimbabwe','ZW-32.png','ZW-128.png'),(181,1,'COK','CK','Cook Islands','CK-32.png','CK-128.png'),(182,1,'BOL','BO','Bolivia','BO-32.png','BO-128.png'),(183,1,'ZAR','CD','Democratic Republic of the Congo','CD-32.png','CD-128.png'),(184,1,'EUR','EU','European Union','EU-32.png','EU-128.png'),(185,1,'FSM','FM','Micronesia','FM-32.png','FM-128.png'),(186,1,'GBR','GB','United Kingdom','GB-32.png','GB-128.png'),(187,1,'IRN','IR','Iran','IR-32.png','IR-128.png'),(188,1,'PRK','KP','North Korea','KP-32.png','KP-128.png'),(189,1,'KOR','KR','South Korea','KR-32.png','KR-128.png'),(190,1,'MDA','MD','Moldova','MD-32.png','MD-128.png'),(191,1,'MKD','MK','Macedonia','MK-32.png','MK-128.png'),(192,1,'NIU','NU','Niue','NU-32.png','NU-128.png'),(193,1,'TZA','TZ','Tanzania','TZ-32.png','TZ-128.png'),(194,1,'VEN','VE','Venezuela','VE-32.png','VE-128.png'),(195,1,'AIA','AI','Anguilla','AI-32.png','AI-128.png'),(196,1,'ATA','AQ','Antarctica','AQ-32.png','AQ-128.png'),(197,1,'ASM','AS','American Samoa','AS-32.png','AS-128.png'),(198,1,'ABW','AW','Aruba','AW-32.png','AW-128.png'),(199,1,'ALA','AX','Åland Islands','AX-32.png','AX-128.png'),(200,1,'BLM','BL','Saint Barthélemy','BL-32.png','BL-128.png'),(201,1,'BMU','BM','Bermuda','BM-32.png','BM-128.png'),(202,1,'BES','BQ','Bonaire, Saint Eustatius And Saba','BQ-32.png','BQ-128.png'),(203,1,'BVT','BV','Bouvet Island','BV-32.png','BV-128.png'),(204,1,'CCK','CC','Cocos (Keeling) Islands','CC-32.png','CC-128.png'),(205,1,'CUW','CW','Curaçao','CW-32.png','CW-128.png'),(206,1,'CXR','CX','Christmas Island','CX-32.png','CX-128.png'),(207,1,'ESH','EH','Western Sahara','EH-32.png','EH-128.png'),(208,1,'FLK','FK','Falkland Islands (Malvinas)','FK-32.png','FK-128.png'),(209,1,'FRO','FO','Faroe Islands','FO-32.png','FO-128.png'),(210,1,'GUF','GF','French Guiana','GF-32.png','GF-128.png'),(211,1,'GGY','GG','Guernsey','GG-32.png','GG-128.png'),(212,1,'GIB','GI','Gibraltar','GI-32.png','GI-128.png'),(213,1,'GRL','GL','Greenland','GL-32.png','GL-128.png'),(214,1,'GLP','GP','Guadeloupe','GP-32.png','GP-128.png'),(215,1,'SGS','GS','South Georgia and the South Sandwich Islands','GS-32.png','GS-128.png'),(216,1,'GUM','GU','Guam','GU-32.png','GU-128.png'),(217,1,'HKG','HK','Hong Kong','HK-32.png','HK-128.png'),(218,1,'HMD','HM','Heard Island And McDonald Islands','HM-32.png','HM-128.png'),(219,1,'IMN','IM','Isle of Man','IM-32.png','IM-128.png'),(220,1,'IOT','IO','British Indian Ocean Territory','IO-32.png','IO-128.png'),(221,1,'JEY','JE','Jersey','JE-32.png','JE-128.png'),(222,1,'CYM','KY','Cayman Islands','KY-32.png','KY-128.png'),(223,1,'MAF','MF','Saint Martin','MF-32.png','MF-128.png'),(224,1,'MAC','MO','Macao','MO-32.png','MO-128.png'),(225,1,'MNP','MP','Northern Mariana Islands','MP-32.png','MP-128.png'),(226,1,'MTQ','MQ','Martinique','MQ-32.png','MQ-128.png'),(227,1,'MSR','MS','Montserrat','MS-32.png','MS-128.png'),(228,1,'NCL','NC','New Caledonia','NC-32.png','NC-128.png'),(229,1,'NFK','NF','Norfolk Island','NF-32.png','NF-128.png'),(230,1,'PYF','PF','French Polynesia','PF-32.png','PF-128.png'),(231,1,'SPM','PM','Saint Pierre and Miquelon','PM-32.png','PM-128.png'),(232,1,'PCN','PN','Pitcairn Islands','PN-32.png','PN-128.png'),(233,1,'PRI','PR','Puerto Rico','PR-32.png','PR-128.png'),(234,1,'PSE','PS','Palestinian Territory, Occupied','PS-32.png','PS-128.png'),(235,1,'REU','RE','Réunion','RE-32.png','RE-128.png'),(236,1,'SHN','SH','Saint Helena, Ascension and Tristan da Cunha','SH-32.png','SH-128.png'),(237,1,'SJM','SJ','Svalbard and Jan Mayen','SJ-32.png','SJ-128.png'),(238,1,'SXM','SX','Sint Maarten','SX-32.png','SX-128.png'),(239,1,'TCA','TC','Turks and Caicos Islands','TC-32.png','TC-128.png'),(240,1,'ATF','TF','French Southern and Antarctic Lands','TF-32.png','TF-128.png'),(241,1,'TKL','TK','Tokelau','TK-32.png','TK-128.png'),(242,1,'TWN','TW','Taiwan','TW-32.png','TW-128.png'),(243,1,'UMI','UM','United States Minor Outlying Islands','UM-32.png','UM-128.png'),(244,1,'USA','US','United States','US-32.png','US-128.png'),(245,1,'VAT','VA','Vatican City State','VA-32.png','VA-128.png'),(246,1,'VGB','VG','Virgin Islands','VG-32.png','VG-128.png'),(247,1,'VIR','VI','US Virgin Islands','VI-32.png','VI-128.png'),(248,1,'WLF','WF','Wallis and Futuna','WF-32.png','WF-128.png'),(249,1,'MYT','YT','Mayotte','YT-32.png','YT-128.png'),(250,1,'SSD','SS','South Sudan','SS-32.png','SS-128.png');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-07 12:24:59
