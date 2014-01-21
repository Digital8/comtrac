-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: comtrac
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `field_acp_scripts_and_styles`
--

DROP TABLE IF EXISTS `field_acp_scripts_and_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_acp_scripts_and_styles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_acp_scripts_and_styles`
--

LOCK TABLES `field_acp_scripts_and_styles` WRITE;
/*!40000 ALTER TABLE `field_acp_scripts_and_styles` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_acp_scripts_and_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_blog_file`
--

DROP TABLE IF EXISTS `field_blog_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_blog_file` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_blog_file`
--

LOCK TABLES `field_blog_file` WRITE;
/*!40000 ALTER TABLE `field_blog_file` DISABLE KEYS */;
INSERT INTO `field_blog_file` VALUES (1113,'ray_and_pat_itinerary.pdf',0,'','2013-12-24 01:56:42','2013-12-24 01:56:42'),(1045,'comtrac_-_innovation_patent.pdf',0,'','2013-12-27 19:41:34','2013-12-27 19:41:34');
/*!40000 ALTER TABLE `field_blog_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_body`
--

DROP TABLE IF EXISTS `field_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_body`
--

LOCK TABLES `field_body` WRITE;
/*!40000 ALTER TABLE `field_body` DISABLE KEYS */;
INSERT INTO `field_body` VALUES (27,'<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>'),(1129,'<p>COMtrac: INspection, INvestogation and Breif Management Systems: Overview Inforamtion </p><p>COMtrac is a innovative product that will increase the efficiency and effectiveness of your investigations which in turn will result in significant increase in agency productivity.</p><p>Some of the befits of COMtrac can be viewed in web based videos on the following links:</p><p><a href=\"http://www.screencast.com/users/COMtrac/folders/COMtrac%20Presentations/media/ccee42d0-e919-44b2-a8b4-a563ee673b47\" target=\"_blank\">COMtrac – The Experience</a></p><p><a href=\"http://www.screencast.com/users/COMtrac/folders/COMtrac%20Presentations/media/9712062b-9d14-4c66-a95c-f28039afc8af\" target=\"_blank\">COMtrac – The evolution of investigation management</a></p><p><strong>(Please note: Some government agencies will not allow users to access web based videos)</strong></p><p>General Informaiotn: </p><p>1. Overview</p><p>2. COMtrac info brochure </p><p>3. Web 24 hosting information</p><p>3. IT specifications</p><p>4. Costing </p><p> </p>');
/*!40000 ALTER TABLE `field_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_bottom_linkenquiry`
--

DROP TABLE IF EXISTS `field_bottom_linkenquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_bottom_linkenquiry` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_bottom_linkenquiry`
--

LOCK TABLES `field_bottom_linkenquiry` WRITE;
/*!40000 ALTER TABLE `field_bottom_linkenquiry` DISABLE KEYS */;
INSERT INTO `field_bottom_linkenquiry` VALUES (1013,'Organise a live demo'),(1014,'Organise a live demo'),(1017,'Organise a live demo'),(1021,'Organise a live demo'),(1018,'Organise a live demo'),(1019,'Organise a live demo'),(1020,'Organise a live demo'),(1025,'Organise a live demo'),(1077,'Organise a live demo');
/*!40000 ALTER TABLE `field_bottom_linkenquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_branch_address`
--

DROP TABLE IF EXISTS `field_branch_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_branch_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_branch_address`
--

LOCK TABLES `field_branch_address` WRITE;
/*!40000 ALTER TABLE `field_branch_address` DISABLE KEYS */;
INSERT INTO `field_branch_address` VALUES (1064,'32 Turbot Street'),(1133,'Canary Wharf');
/*!40000 ALTER TABLE `field_branch_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_branch_city_state_postcode`
--

DROP TABLE IF EXISTS `field_branch_city_state_postcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_branch_city_state_postcode` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_branch_city_state_postcode`
--

LOCK TABLES `field_branch_city_state_postcode` WRITE;
/*!40000 ALTER TABLE `field_branch_city_state_postcode` DISABLE KEYS */;
INSERT INTO `field_branch_city_state_postcode` VALUES (1064,'Brisbane Queensland 4000'),(1133,'London E14 5NR');
/*!40000 ALTER TABLE `field_branch_city_state_postcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_branch_number`
--

DROP TABLE IF EXISTS `field_branch_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_branch_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_branch_number`
--

LOCK TABLES `field_branch_number` WRITE;
/*!40000 ALTER TABLE `field_branch_number` DISABLE KEYS */;
INSERT INTO `field_branch_number` VALUES (1064,'+61 (7) 3040 2111'),(1065,'(02) 8091 7333'),(1066,'(03) 9028 8222'),(1133,'+44 (0) 203 059 7863');
/*!40000 ALTER TABLE `field_branch_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_branch_place`
--

DROP TABLE IF EXISTS `field_branch_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_branch_place` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_branch_place`
--

LOCK TABLES `field_branch_place` WRITE;
/*!40000 ALTER TABLE `field_branch_place` DISABLE KEYS */;
INSERT INTO `field_branch_place` VALUES (1064,'Level 27 Santos Place'),(1133,'Level 18 40 Bank Street');
/*!40000 ALTER TABLE `field_branch_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col1_content`
--

DROP TABLE IF EXISTS `field_col1_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col1_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col1_content`
--

LOCK TABLES `field_col1_content` WRITE;
/*!40000 ALTER TABLE `field_col1_content` DISABLE KEYS */;
INSERT INTO `field_col1_content` VALUES (1,'<p>Proven to reduce investigation time frames by 50% or more. Increase capacity and capability of front line services through innovative investigative technology. Do more (investigations) with less (resources).</p>'),(1013,'<ul class=\"circle list\"><li>Reduce costs associated with prolonged, unsuccessful or poorly managed inspections, audits or investigations</li><li>The small, per-user, annual fee for using COMtrac is a very small price to pay when compared with the efficiency and staff productivity gains that result</li></ul>'),(1014,'<ul class=\"plain list\"><li>Generates an element based investigation plan.</li><li>Real time analysis of the evidentiary state of investigations.</li><li>Self generating electronic brief of evidence.</li><li>Automatically prepares investigator and witness statements.</li><li>Stores and manages evidence.</li><li>Supported with a field based investigators notebook mobile application.</li><li>Map investigative activity to lawful authority.</li><li>Identifies evidence shortfalls and potential defences.</li><li>Maps evidence to offences, elements and proofs.</li><li>Integrates with most IT support systems, and usable on mobile Apple and Android.</li></ul>');
/*!40000 ALTER TABLE `field_col1_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col1_title`
--

DROP TABLE IF EXISTS `field_col1_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col1_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col1_title`
--

LOCK TABLES `field_col1_title` WRITE;
/*!40000 ALTER TABLE `field_col1_title` DISABLE KEYS */;
INSERT INTO `field_col1_title` VALUES (1,'Increase Efficiency'),(1013,'Reduce Costs'),(1014,'For Investigators');
/*!40000 ALTER TABLE `field_col1_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col2_content`
--

DROP TABLE IF EXISTS `field_col2_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col2_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col2_content`
--

LOCK TABLES `field_col2_content` WRITE;
/*!40000 ALTER TABLE `field_col2_content` DISABLE KEYS */;
INSERT INTO `field_col2_content` VALUES (1,'<p>Replace individual evidence and brief management practices with consistent strategic methodologies. Proven to reduce risk associated with investigations through technology driven pathways.</p>'),(1013,'<ul class=\"circle list\"><li>Investigators or other staff need only enter simple data and upload exhibits into COMtrac – the system does the rest</li><li>Save over 50% of staff time by automating the administrative functions of an inspection or investigation</li><li>Share the case load with other investigators in remote locations</li></ul>'),(1014,'<ul class=\"plain list\"><li>Generates a comprehensive inspection or audit plan.</li><li>Complimented by a field based mobile application.</li><li>Produces detailed scope for inspections or audits.</li><li>Provides procedural advice for conducting inspections.</li><li>Outlines evidence sources/test to seek during inspections to confirm compliance.</li><li>Creates inspection checklists and inspection input areas (mapped against inspection conditions).</li><li>Automatically produces non-compliance notice for entity.</li><li>Generates a wide range of compliance reports.</li></ul>');
/*!40000 ALTER TABLE `field_col2_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col2_title`
--

DROP TABLE IF EXISTS `field_col2_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col2_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col2_title`
--

LOCK TABLES `field_col2_title` WRITE;
/*!40000 ALTER TABLE `field_col2_title` DISABLE KEYS */;
INSERT INTO `field_col2_title` VALUES (1,'Reduce Risk'),(1013,'Simplify & Save Time'),(1014,'For Inspectors');
/*!40000 ALTER TABLE `field_col2_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col3_content`
--

DROP TABLE IF EXISTS `field_col3_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col3_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col3_content`
--

LOCK TABLES `field_col3_content` WRITE;
/*!40000 ALTER TABLE `field_col3_content` DISABLE KEYS */;
INSERT INTO `field_col3_content` VALUES (1,'<p>Increase quality of investigations through evidence to offence element mapping, real time evidence evaluation, automated brief checking and event chronologies.</p>'),(1013,'<ul class=\"circle list\"><li>COMtrac automatically elementises all offences – resulting in consistent and strategic inspection, audit or investigative and brief management processes</li><li>Increase regulatory efficiency with COMtrac managing the administrative burdens of your inspections, audits and investigations</li><li>Use of intuitive reporting to monitor case load, efficiency and effectiveness</li></ul>'),(1014,'<ul class=\"plain list\"><li>Customisable manager dashboard with at a glance team overviews, and summaries of each investigators case load, current status of inspections, audits or investigations.</li><li>Ability to create business intelligence reports for reporting on regulatory outcomes.</li><li>Back end documents can be customised to meet your organisational needs.</li><li>No major capital purchases required for software, installation or build.</li><li>Flexible web based application designed to meet your individual needs.</li></ul>');
/*!40000 ALTER TABLE `field_col3_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col3_title`
--

DROP TABLE IF EXISTS `field_col3_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col3_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col3_title`
--

LOCK TABLES `field_col3_title` WRITE;
/*!40000 ALTER TABLE `field_col3_title` DISABLE KEYS */;
INSERT INTO `field_col3_title` VALUES (1,'Improve Quality'),(1013,'Increase Productivity'),(1014,'For Management');
/*!40000 ALTER TABLE `field_col3_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col4_content`
--

DROP TABLE IF EXISTS `field_col4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col4_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col4_content`
--

LOCK TABLES `field_col4_content` WRITE;
/*!40000 ALTER TABLE `field_col4_content` DISABLE KEYS */;
INSERT INTO `field_col4_content` VALUES (1,'<p>Electronic briefs of evidence, investigator statements, and other compliance reports are built systematically and automatically as investigation progresses.</p>'),(1013,'<ul class=\"circle list\"><li>Avoid reputational harm from poor practices through a streamlined and professional approach</li><li>Decrease legal risks associated with investigations</li></ul>'),(1014,'<ul class=\"plain list\"><li>Contains prosecutor’s analytical tools, which assesses strength of evidence.</li><li>Real time analysis of the evidentiary state of inspections, audits or investigations.</li><li>Electronic brief of evidence with ability to automate separation of charges or offenders.</li><li>Electronic brief of evidence compatible with all Windows and Apple operating systems.</li><li>Courtroom brief of evidence navigation.</li></ul>');
/*!40000 ALTER TABLE `field_col4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_col4_title`
--

DROP TABLE IF EXISTS `field_col4_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_col4_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_col4_title`
--

LOCK TABLES `field_col4_title` WRITE;
/*!40000 ALTER TABLE `field_col4_title` DISABLE KEYS */;
INSERT INTO `field_col4_title` VALUES (1,'Electronic Evidence Briefs'),(1013,'Electronic Evidence Briefs'),(1014,'For Prosecutors');
/*!40000 ALTER TABLE `field_col4_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_display_keyfeatures`
--

DROP TABLE IF EXISTS `field_display_keyfeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_display_keyfeatures` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_display_keyfeatures`
--

LOCK TABLES `field_display_keyfeatures` WRITE;
/*!40000 ALTER TABLE `field_display_keyfeatures` DISABLE KEYS */;
INSERT INTO `field_display_keyfeatures` VALUES (1,1);
/*!40000 ALTER TABLE `field_display_keyfeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES (41,'mickael@digital8.com.au');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_email_field`
--

DROP TABLE IF EXISTS `field_email_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email_field` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email_field`
--

LOCK TABLES `field_email_field` WRITE;
/*!40000 ALTER TABLE `field_email_field` DISABLE KEYS */;
INSERT INTO `field_email_field` VALUES (1098,'mike@digital8.com.au'),(1103,'mickael@digital8.com.au'),(1116,'test@gmail.com'),(1126,'skye@bprs.com.au'),(1134,'cdoran@icets.com.au'),(1135,'jrrtrade@gmail.com'),(1138,'mike@digital8.com.au'),(1139,'mickael@digital8.com.au');
/*!40000 ALTER TABLE `field_email_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_answered`
--

DROP TABLE IF EXISTS `field_enquiry_answered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_answered` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_answered`
--

LOCK TABLES `field_enquiry_answered` WRITE;
/*!40000 ALTER TABLE `field_enquiry_answered` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_enquiry_answered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_bottom`
--

DROP TABLE IF EXISTS `field_enquiry_bottom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_bottom` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_bottom`
--

LOCK TABLES `field_enquiry_bottom` WRITE;
/*!40000 ALTER TABLE `field_enquiry_bottom` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_enquiry_bottom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_company`
--

DROP TABLE IF EXISTS `field_enquiry_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_company` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_company`
--

LOCK TABLES `field_enquiry_company` WRITE;
/*!40000 ALTER TABLE `field_enquiry_company` DISABLE KEYS */;
INSERT INTO `field_enquiry_company` VALUES (1102,'Digital8'),(1104,'Digital8'),(1105,'Digital8'),(1106,'Test'),(1115,'Test'),(1117,'Digital8'),(1120,'Digital8'),(1121,'Digital8'),(1122,'Digital8'),(1128,'ATO'),(1137,'BPRS'),(1140,'Digital8');
/*!40000 ALTER TABLE `field_enquiry_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_content`
--

DROP TABLE IF EXISTS `field_enquiry_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_content`
--

LOCK TABLES `field_enquiry_content` WRITE;
/*!40000 ALTER TABLE `field_enquiry_content` DISABLE KEYS */;
INSERT INTO `field_enquiry_content` VALUES (1102,'Test enquiry from contact page'),(1104,'Test Enq from home'),(1105,'Test From Contact page'),(1106,'Testing to see if you receive this email Skye?'),(1115,'Test'),(1117,'Testing, testing, 1, 2, 3.'),(1120,'Test enquiry'),(1121,'Test enquiry'),(1122,'test test'),(1128,'My name is Brett Irwin and I am the Director of Investigations with the Fraud Prevention and Internal Investigations Unit of the Australian Taxation Office. I recently attended at the APSAC conference and I picked up your brochure in relation to the COMtrac system. \r\nAs this office is in the process of looking at an update of our information management systems I was interested in having a look at the COMtrac system to see if it may be something that we could utilise. If it could be arranged for us to see the system live that would be ideal. \r\nIn any case we will be in Brisbane at some stage in the next 2 weeks and would like to talk to someone about the Comtrac system.\r\nI can be contacted on the above numbers or at the email address listed.\r\n\r\nThank you\r\n\r\nBrett Irwin'),(1137,'Test sent on the 7/1 from Contact page of website.'),(1140,'Test Enquiry From Digital8');
/*!40000 ALTER TABLE `field_enquiry_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_email`
--

DROP TABLE IF EXISTS `field_enquiry_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_email`
--

LOCK TABLES `field_enquiry_email` WRITE;
/*!40000 ALTER TABLE `field_enquiry_email` DISABLE KEYS */;
INSERT INTO `field_enquiry_email` VALUES (1102,'mike@digital8.com.au'),(1104,'mike@digital8.com.au'),(1105,'mickael@digital8.com.au'),(1106,'test@digital8.com.au'),(1115,'test@gmail.com'),(1117,'michael@digital8.com.au'),(1120,'mickael@digital8.com.au'),(1121,'mickael@digital8.com.au'),(1122,'mickael@digital8.com.au'),(1128,'brett.irwin@ato.gov.au'),(1137,'skye@bprs.com.au'),(1140,'mickael@digital8.com.au');
/*!40000 ALTER TABLE `field_enquiry_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_name`
--

DROP TABLE IF EXISTS `field_enquiry_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_name`
--

LOCK TABLES `field_enquiry_name` WRITE;
/*!40000 ALTER TABLE `field_enquiry_name` DISABLE KEYS */;
INSERT INTO `field_enquiry_name` VALUES (1102,'Mike Test'),(1104,'Mike FromHome'),(1105,'Mike FromContact'),(1106,'Brook'),(1115,'Test'),(1117,'Michael'),(1120,'Mike Digital8'),(1121,'Mike Digital8'),(1122,'Mike Test'),(1128,'Brett Irwin'),(1137,'Skye'),(1140,'Mike Test');
/*!40000 ALTER TABLE `field_enquiry_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_enquiry_phone`
--

DROP TABLE IF EXISTS `field_enquiry_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_enquiry_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_enquiry_phone`
--

LOCK TABLES `field_enquiry_phone` WRITE;
/*!40000 ALTER TABLE `field_enquiry_phone` DISABLE KEYS */;
INSERT INTO `field_enquiry_phone` VALUES (1102,'0401505610'),(1104,'04105401561'),(1105,'0560156115'),(1106,'0403572554'),(1115,'00000000000'),(1117,'1234 4321'),(1120,'040450512'),(1121,'040450512'),(1122,'20605120'),(1128,'0262166291'),(1137,'0421128000'),(1140,'04104516015');
/*!40000 ALTER TABLE `field_enquiry_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_faq_answer`
--

DROP TABLE IF EXISTS `field_faq_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_faq_answer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_faq_answer`
--

LOCK TABLES `field_faq_answer` WRITE;
/*!40000 ALTER TABLE `field_faq_answer` DISABLE KEYS */;
INSERT INTO `field_faq_answer` VALUES (1030,'COMtrac is for any agency, which has a role or responsibility for conducting criminal, statutory, civil or internal investigations, who wants structured and consistent investigations. '),(1049,'COMtrac can be hosted on our dedicated secure servers which have certified physical and web security measures. Or alternatively, COMtrac can be hosted your own agency intranet servers.'),(1050,'We understand the importance of security. COMtrac\'s data centre, network and system security is tightly controlled to provide you with peace of mind. Full details of our security measures are found on our \'Features\' page.'),(1051,'For agency based clients Investigation Management Australia can provide an optional support package which includes: '),(1052,'COMtrac patented design is applicable to all government and private sector agencies.  The only customisation is the input of client agency legislation, offences and authorised investigative powers.  This can be done through the administration area by your agency, or IMA can provide a consultancy service to elementise offences and map legislative or administrative evidence gathering powers to investigative task.'),(1053,'Yes. COMtrac is web based Investigation Management system. It’s build using latest Microsoft web technologies: ASP.net, .Net 4.0, SQL Server 2008. COMtrac can be used over the internet as well as an intranet application on the local network. It can be run on the single server or in web farm environment. COMtrac includes a resource area where access to existing agency databases can be integrated with COMtrac.'),(1054,'It\'s up to you!  There is an optional support agreement for agencies who require specific agency development.  For single or small user groups there are no maintenance fees.  IMA has a continued development and quality program where users will received free upgrades and improvements to their license database during the term of the licensed agreement.'),(1055,'All COMtrac licenses are on a minimum 12-month agreement.'),(1056,'Yes. The user management feature allows any tier level structure to be created for individual users so that they only have access to investigations which they oversee, manage or individually are assigned to investigate.'),(1057,'Because COMtrac is designed to work with all investigative processes it can be implemented immediately.  The only set up time is associated with the input of legislation and authorities into the administration area.'),(1058,'Yes. Forms can be adjusted if the user or client agency has entered into a 12-month support agreement, which provides three days a month of additional formatting or development.'),(1059,'Yes. COMtrac can be used on any mobile tablet.'),(1060,'COMtrac is suitable for any type of investigation including criminal, civil, administrative or disciplinary. The concept of COMtrac was developed through the patented technology of “Elementising Evidence” which can be applied to any investigation which has an objective based outcome.');
/*!40000 ALTER TABLE `field_faq_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_faq_complementary_answer`
--

DROP TABLE IF EXISTS `field_faq_complementary_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_faq_complementary_answer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_faq_complementary_answer`
--

LOCK TABLES `field_faq_complementary_answer` WRITE;
/*!40000 ALTER TABLE `field_faq_complementary_answer` DISABLE KEYS */;
INSERT INTO `field_faq_complementary_answer` VALUES (1051,'<ul class=\"circle list\"><li>Unlimited help desk support</li><li>Coverage Monday to Friday - 8:30 am - 5:30 pm AEST</li><li>Technical issue resolution via telephone, email and/or web</li><li>Preferred access to our support team</li><li>Office link wireless server database maintenance</li><li>On site technical support</li><li>Three days per month of additional development for specific client agency based features</li></ul>');
/*!40000 ALTER TABLE `field_faq_complementary_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_faq_question`
--

DROP TABLE IF EXISTS `field_faq_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_faq_question` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_faq_question`
--

LOCK TABLES `field_faq_question` WRITE;
/*!40000 ALTER TABLE `field_faq_question` DISABLE KEYS */;
INSERT INTO `field_faq_question` VALUES (1030,'Who is COMTrac for?'),(1049,'Where is the database located?'),(1050,'How is information security maintained?'),(1051,'What level of support is available?'),(1052,'Does it need to be customised to our agency?'),(1053,'Can COMtrac integrate with existing databases?'),(1054,'Are there ongoing maintenance fees?'),(1055,'What are the contract periods?'),(1056,'Can the database have different access and security levels?'),(1057,'How long is implementation time?'),(1058,'Can electronic forms be adjusted?'),(1059,'Does it work on mobile devices? '),(1060,'What type of investigations does it cater for?');
/*!40000 ALTER TABLE `field_faq_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_features_images`
--

DROP TABLE IF EXISTS `field_features_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_features_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_features_images`
--

LOCK TABLES `field_features_images` WRITE;
/*!40000 ALTER TABLE `field_features_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_features_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_first_content`
--

DROP TABLE IF EXISTS `field_first_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_first_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_first_content`
--

LOCK TABLES `field_first_content` WRITE;
/*!40000 ALTER TABLE `field_first_content` DISABLE KEYS */;
INSERT INTO `field_first_content` VALUES (1025,'\"To replace individual inspection, audit and investigative management practices with an intuitive, consistent and innovative solution that will ensure efficiency and excellence of all investigations and regulatory activity.\"');
/*!40000 ALTER TABLE `field_first_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_first_title`
--

DROP TABLE IF EXISTS `field_first_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_first_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_first_title`
--

LOCK TABLES `field_first_title` WRITE;
/*!40000 ALTER TABLE `field_first_title` DISABLE KEYS */;
INSERT INTO `field_first_title` VALUES (1027,'Investment Management Australia Pty Ltd'),(1025,'Our Vision');
/*!40000 ALTER TABLE `field_first_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_fourth_header`
--

DROP TABLE IF EXISTS `field_fourth_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_fourth_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_fourth_header`
--

LOCK TABLES `field_fourth_header` WRITE;
/*!40000 ALTER TABLE `field_fourth_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_fourth_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_headline`
--

DROP TABLE IF EXISTS `field_headline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_headline`
--

LOCK TABLES `field_headline` WRITE;
/*!40000 ALTER TABLE `field_headline` DISABLE KEYS */;
INSERT INTO `field_headline` VALUES (1,'COMtrac - Homepage');
/*!40000 ALTER TABLE `field_headline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_home_sectioncontent`
--

DROP TABLE IF EXISTS `field_home_sectioncontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_home_sectioncontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_home_sectioncontent`
--

LOCK TABLES `field_home_sectioncontent` WRITE;
/*!40000 ALTER TABLE `field_home_sectioncontent` DISABLE KEYS */;
INSERT INTO `field_home_sectioncontent` VALUES (1,'COMtrac is an innovative, on line solution to better manage any investigative or regulatory function. COMtrac provides a digital and mobile environment where any regulatory task - be it investigative, inspection or audit, is strategically guided and managed to ensure efficient, effective and legally robust outcomes. \r\n\r\nCOMtrac was designed by law enforcement officers, using internationally recognised best practice regulatory principles.  It is simple to use, easily configured, and cost effective.\r\n\r\nCOMtrac is the future of compliance and enforcement ... Today  \r\n																								');
/*!40000 ALTER TABLE `field_home_sectioncontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_home_sectionintro`
--

DROP TABLE IF EXISTS `field_home_sectionintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_home_sectionintro` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_home_sectionintro`
--

LOCK TABLES `field_home_sectionintro` WRITE;
/*!40000 ALTER TABLE `field_home_sectionintro` DISABLE KEYS */;
INSERT INTO `field_home_sectionintro` VALUES (1,'COMtrac is the evolution of inspection, audit, investigation and brief management technology for law enforcement and regulatory agencies.');
/*!40000 ALTER TABLE `field_home_sectionintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_home_sectiontitle`
--

DROP TABLE IF EXISTS `field_home_sectiontitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_home_sectiontitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_home_sectiontitle`
--

LOCK TABLES `field_home_sectiontitle` WRITE;
/*!40000 ALTER TABLE `field_home_sectiontitle` DISABLE KEYS */;
INSERT INTO `field_home_sectiontitle` VALUES (1,'What is COMtrac?');
/*!40000 ALTER TABLE `field_home_sectiontitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_home_video_link`
--

DROP TABLE IF EXISTS `field_home_video_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_home_video_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_home_video_link`
--

LOCK TABLES `field_home_video_link` WRITE;
/*!40000 ALTER TABLE `field_home_video_link` DISABLE KEYS */;
INSERT INTO `field_home_video_link` VALUES (1,'http://player.vimeo.com/video/82532790');
/*!40000 ALTER TABLE `field_home_video_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_home_video_title`
--

DROP TABLE IF EXISTS `field_home_video_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_home_video_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_home_video_title`
--

LOCK TABLES `field_home_video_title` WRITE;
/*!40000 ALTER TABLE `field_home_video_title` DISABLE KEYS */;
INSERT INTO `field_home_video_title` VALUES (1,'COMtrac - The Experience');
/*!40000 ALTER TABLE `field_home_video_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_left_content`
--

DROP TABLE IF EXISTS `field_left_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_left_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_left_content`
--

LOCK TABLES `field_left_content` WRITE;
/*!40000 ALTER TABLE `field_left_content` DISABLE KEYS */;
INSERT INTO `field_left_content` VALUES (1013,'<p>COMtrac is a logical and intuitive work-flow tool which will significantly increase the effectiveness and efficiency of criminal, civil and administrative investigations and/or inspections. COMtrac is a unique product that reverse engineers from a brief of evidence or administrative decision.</p><p>COMtrac automatically elementises offences applying a practical and intuitive world-first project management approach. COMtrac is for any agency with a regulatory, administrative, fact finding or law enforcement or audit role.</p><p>COMtrac has been developed in Australia. A product of Investigation Management Australia - a company with over 50 years experience in policing, compliance, enforcement and regulation at the Local, State and Commonwealth level.</p>'),(1014,'<ul class=\"plain list\"><li>Simple, quick and easy to set up.</li><li>Entirely web based – no software to install or hardware to buy.</li><li>Fully expandable to cater for future change including bulk changes of staffs and mass updates to staff data.</li><li>Very intuitive; minimal user training required.</li><li>Compatible with PCs and Macs, tablets and other mobile devices.</li><li>Customisable with a company’s own logo, legislation and document requirements.</li><li>Scalable solution for organisations with thousands of users, or just a handful.</li></ul>');
/*!40000 ALTER TABLE `field_left_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_left_image`
--

DROP TABLE IF EXISTS `field_left_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_left_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_left_image`
--

LOCK TABLES `field_left_image` WRITE;
/*!40000 ALTER TABLE `field_left_image` DISABLE KEYS */;
INSERT INTO `field_left_image` VALUES (1014,'screenshot-ipad.png',0,'','2013-12-17 01:49:32','2013-12-17 01:49:32');
/*!40000 ALTER TABLE `field_left_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_left_title`
--

DROP TABLE IF EXISTS `field_left_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_left_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_left_title`
--

LOCK TABLES `field_left_title` WRITE;
/*!40000 ALTER TABLE `field_left_title` DISABLE KEYS */;
INSERT INTO `field_left_title` VALUES (1013,'Best practice inspections, investigations, compliance & enforcement is here.'),(1014,'Software Features');
/*!40000 ALTER TABLE `field_left_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_news_datetime`
--

DROP TABLE IF EXISTS `field_news_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_news_datetime` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_news_datetime`
--

LOCK TABLES `field_news_datetime` WRITE;
/*!40000 ALTER TABLE `field_news_datetime` DISABLE KEYS */;
INSERT INTO `field_news_datetime` VALUES (1042,'2013-12-16 00:00:00'),(1043,'2013-11-08 00:00:00'),(1044,'2013-12-01 00:00:00'),(1045,'2013-01-10 00:00:00'),(1046,'2013-09-09 00:00:00'),(1047,'2013-07-17 00:00:00'),(1048,'2013-11-02 00:00:00'),(1101,'2013-12-23 00:00:00'),(1111,'2013-12-24 00:00:00'),(1113,'2013-12-24 00:00:00'),(1118,'2013-12-27 00:00:00'),(1119,'2013-07-16 00:00:00'),(1125,'1969-12-31 19:00:00'),(1127,'1969-12-31 19:00:00'),(1131,'2014-01-03 00:00:00'),(1132,'2014-01-03 00:00:00'),(1136,'1969-12-31 19:00:00');
/*!40000 ALTER TABLE `field_news_datetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_news_description`
--

DROP TABLE IF EXISTS `field_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_news_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_news_description`
--

LOCK TABLES `field_news_description` WRITE;
/*!40000 ALTER TABLE `field_news_description` DISABLE KEYS */;
INSERT INTO `field_news_description` VALUES (1045,'<p>COMtrac technology leads the way with a sucessful Australian Provisional Patent Application for its innovation in the improvement of the ‘Investigation Art’. Designed to improve the quality and efficiency of “exploratory work” associated with investigations.</p>'),(1046,'<p>COMtrac to be utilized by ACTPLA for investigating complaints about breaches of the Planning and Development Act 2007, Construction Occupations (Licensing) Act 2004 and Building Act 2004.</p>'),(1047,'<p>NSW Trade &amp; Investment (Mine Safety Investigation Unit) take up COMtrac as the investigation and brief management system for investigations into breaches of workplace health and safety legislation.</p><p>The NSW Trade &amp; Investment Investigation Unit was established by the NSW Government to improve mine safety in the state. It investigates the nature, cause and circumstances of major accidents and incidents in the NSW mining and extractives industry. The unit uses the outcomes of investigations to help the regulator and industry learn about incident causes so that mines can take steps to prevent similar occurrences.  Investigators examine fatal accidents, very serious injuries, serious high risk incidents and other matters including gas and dust explosions and inrushes of water.</p><p>The Investigation Unit is an autonomous unit that reports to the Director-General. It conducts investigations into major accidents and incidents in the NSW mining industry for coroner’s reports and legal proceedings.  The Unit aims to contribute to a better understanding and management of the safety hazards and risks in mining operations.  Through the verification of appropriate safety systems, processes and standards Mine Safety strives to be an efficient and effective regulator, encouraging those who exceed minimum standards and holding accountable those who do not.</p><p>The unit prepares investigation reports that are submitted to the department’s Assessment Review Committee. The committee considers legal advice and the public interest, and advises the Director General as to whether legal proceedings ought to follow, or whether other alternative enforcement measures would be preferred.</p>'),(1048,'<p>The Environment &amp; Sustainability Unit (ESU) within NSW Resources and Energy launch COMtrac as their investigation management system (IMS). COMtrac will be implemented to manage investigations into breaches of Mining and Petroleum legislation administered by the ESU.</p><p>The NSW Government is committed to ensuring that all exploration, mining and petroleum operations meet strict contemporary standards for environmental management. The Environmental Sustainability Unit is uniquely placed within NSW Trade &amp; Investment – Division of Resources &amp; Energy (DRE) to advance the standard of environmental management for exploration, petroleum and mining activities in NSW.</p><p>COMtrac is set to improve regulatory performance around key responsibilities of the Environment and Sustainability Unit including;</p><ul><li>Promoting compliance through site inspections, audits (both mandatory and voluntary) and regular reporting;</li><li>Investigating complaints and environmental incidents;</li><li>Taking appropriate enforcement action for non-compliances; and</li><li>Coordinating regulatory activities with other relevant government departments and agencies</li></ul>'),(1111,'<p>hjgjhgjhg</p><p>jkhkjhkjh</p>'),(1113,'<p>Test two blog content area</p>'),(1044,'<p><strong>Interpol - Environmental Crime Division</strong></p><p>In January 2014, Investigation Management Australia travels to France to present COMtrac to the <a href=\"http://www.interpol.int/Crime-areas/Environmental-crime/Environmental-crime\" target=\"_blank\">Environmental Crime</a> division of Interpol.  Environmental crime is a serious and growing international problem that crosses international boundaries. In November 2013 IMA representatives met with the Manager of Interpol\'s Environmental Crime Programme and discussed the benefits of COMtrac\'s cross-jurisdictional investigation management platform within which joint agency investigations could be efficiently and effectively coordinated.  The agenda will be a presentation of COMtrac tools and services and then bilateral meetings with interested crime unit directors. The Environmental Security Sub-directorate of Interpol will be one such bilateral.</p><p><strong>United Kingdom\'s Environment Agency </strong></p><p>The United Kingdom\'s Environment Agency, like many agencies, is faced with the challenge of maintaining capacity and capability within an environment of reducing resources and fiscal changes. In July 2013, IMA commenced discussions with the <a href=\"http://www.environment-agency.gov.uk/\" target=\"_blank\">UK Environment</a> Agency about the potential benefits of COMtrac implementation to not only maintain capacity and capability but to actually increase it.  After months of preparation, on 13th January 2014, IMA travels to London to meet with the Environment Agency\'s Head and Manager of Site Based Regulation, Chief Prosecutor, Head of Regulated Industry, National Enforcement Services Manager and other key stakeholders to present the COMtrac investigation management system.</p><p><strong><strong>United Kingdom\'s </strong>Heath and Safety Executive (HSE)</strong></p><p>The United Kingdom\'s <a href=\"http://www.hse.gov.uk/\" target=\"_blank\">Heath and Safety Executive (HSE)</a> and local authorities share responsibility for regulating health, safety and welfare for those at work and for those affected by work activity, including the public. The HSE wants health and safety to be seen as a cornerstone of a civilised society, and to achieve a record of workplace health and safety that leads the world (they already have one of the best safety records). Like all UK agencies, the HSE are looking to adopt strategies and systems that are in line with the UK\'s Austerity Measures. IMA has been invited to travel to Bootle, London in January 2014 to meet with a number of HSE Managers who will assess the benefits of COMtrac within the HSE environment. </p>'),(1119,'<p>What is investigation management?  Let\'s assume that an \'<em>investigation</em>\' is an environment where exploratory work (as describe in The Case Management Mirage post) is undertaken. Management, by its common interpretation, is ensuring the efficiency, effectiveness and quality of some form of operational or business activity. So therefore \'<em>Investigation Management</em>\' is the craft that produces the \'efficiency, effectiveness and quality of exploratory work\'.</p><p><em>(A) Increasing Investigation efficiency</em></p><p>So how do we increase the efficiency of an investigation. Let\'s assume that we can define an efficient investigation as acceptable ratio of investigation input variables (Resources [R] and Duration [D] ) to the investigation output variables (investigation outcomes [O] or results). Or put simply</p><p>R + D + O = E where E is efficiency of the investigation.</p><p>So to increase the efficiency of an investigation we must adjust one or more of the investigation variables. Assuming that each variable is independent of the other, a decrease in resources used, a decrease in duration of investigation or an increase the investigation outcomes (favorable results) or any combination would theoretically result in an increase of the efficiency of an investigation. Now it does not take a masters in business management to know that adjusting one variable will have a natural \"cause &amp; effect\" on the others. If we \'cause\' investigation resources to be reduced, the likely \'effect\' is that the duration of the investigation will increase if the same investigation outcomes are to be maintained.</p><p>To counteract this effect we must adjust the manner in which the investigations are undertaken and managed. For example to increase efficiency by using less resources, those remaining resources must be strategically applied during the investigation to optimize allocation, implementation and use of the available resources. This \'strategy\' will be an improvement in the \"<em>investigation management methodology</em>\".</p><p><em>(B) Increasing the effectiveness of investigations</em></p><p>The effectiveness of investigations is characterized by the quality and impact of the investigation \'outcomes\' or \'results\'. For example an effective criminal investigation may be where all elements of the offence(s) are proven or negated and a reasonable or relative penalty has been achieved. An effective incident investigation is where all causes and root causes of incidents are identified and suitable, economical and justifiable preventative action (and where appropriate disciplinary action) has been implemented. Administrative investigation where all the alleged misconduct has been proven or negated and justifiable disciplinary action has been taken. Other forms of effectiveness may be where the impact of the investigative outcome acts as a deterrent to others or prevents other undesirable,incidents for reoccurring.</p><p>Examples of Investigations which have failed to achieve or have had limited effectiveness may be referenced as those where the elements of offence have not been proven(criminal), the root cause of incident not identified (incident investigations), misconduct not exposed or suitably dealt with or a variety of other desired outcomes where not achieved. To simplify , the \"objectives\" of the investigation where not achieved. If the desired or acceptable objectives are not achieved, then the investigation is not effective.</p><p>There are undoubtedly investigations where these objectives where never achievable due to factors out of the control or influence of the investigating agency. But for the most part, objectives of investigations are often not achieved as a result of the manner, quantity and quality of the evidence obtained and the substandard resulting outcomes.  The evidence gathering and recording strategy that was applied during investigations is often the  underlying characteristic of ineffective outcomes . Hence here again we see that the potential to improve the effectiveness of an investigation lies within a strategy of improvement to the \"<em>investigation management methodology</em>\".</p><p><em>(C) Increasing the quality of investigations</em></p><p>For this discussion, the reference to quality of the investigation is focused on the quality of the evidence gathered and recorded. This \'quality\' is defined by a number of factors. The lawfulness of the methods use to access and seize the evidence, the integrity and continuity of the evidence from seizure to presentation in proceedings, the design, delivery and importantly the interpretability of evidence based briefs and reports, and the relevance and value of the evidence to the investigation objectives (e.g. Elements of the offence).</p><p>As was previously suggest when analyzing efficiency and effectiveness, the quality is often determined by the manner in which the evidence was collected and handled. The methodology of evidence identification, assessment and handling will have direct impact on the quality of the investigation on its conclusion.</p><p>Therefore to increase the quality of investigations we must ensure that the component of the \"<em>investigation management methodology</em>\" directly attributed to evidence management is also improved.</p><p><strong>Investigation management methodology</strong></p><p>If the common characteristic (or dependency ) of the efficiency, effectiveness and quality of investigations is the \"<em>investigation management methodology</em>\" then clearly this methodology should be the area where innovation or strategies for improvement should be targeted. Here the previous discussion (Blog Post - The Case Management Mirage) of <em>\'transactional work\'</em> versus <em>\'exploratory work\'</em> becomes important.</p><p>Transactional work is better equated with organizational processes and in turn the relevant Case Management System (CMS) in place. Whereas exploratory work is the craft of problem solving and operational activity. Focussing on processes and focussing on problems produces two quite different patterns of thought and action. Process improvement is a \"managerial method\" for improving the agencies processes and is where most CMS are focused. Whereas problem solving is an \"operational method\" for working on the harms or more importantly the characteristics of those harms which impede exploratory work (investigations) from achieving the desired standards. This fact returns us to previous original hypothesis (Blog Post - The Case Management Mirage) as to why many case management systems (process management systems) fail to have a positive influence on the efficiency, effectiveness or quality of investigations. It\'s because the CMS is focussing on the transactional work associated with investigations and does little or anything to support or improve the outcomes of the exploratory work being undertaken during an investigation.</p><p>To truly have an impact on exploratory work undertaken during investigations we must improve the <em>investigation management methodology</em>. Once we find a better investigation management methodology then it needs to be locked into an <em>investigation management system</em> (IMS).  This is where good \'Investigation Management\' technology comes in. Investigation Management Systems (IMS) are <em>management environments for exploratory work </em>specifically designed for the exploratory nature of investigations.</p><p>Investigation management applications or systems offer a collaborative approach that can help you reap the benefits of automation in environments where people, information, and process collide. An IMS needs to improve workflow, improve investigator productivity, and reduce cycle times in your investigations without trying to force the exploratory nature of investigations into a transactional structure (as is often the case in traditional CMS).</p><p><strong>Designing an Investigation Management System</strong></p><p>The design of successful investigation management system must have the three following characteristics<br />1. It must address the common characteristics of the harms which exist within exploratory work associated with poor investigations.<br />2. It must be intuitive and have clear supportive qualities to the investigator to ensure their committment to its use and implementation.<br />3. It must be provide a consistent, central and  strategic investigation management methodology and deter or remove individual silos of investigation management practices.</p><p>The design of an effective Investigation Management System (IMS) should not be based on micro managing every possible risks that could occur in an investigation.  Its about analysisng the causes of those undesirable investigation outcomes (harms), focussing on the harm concentrations, understanding their characteristics and inventing effective solutions.  This design concept will be explored in more detail in an upcoming post title \"Designing an Investigation Management System\". A key concept in this discussion will be the concept of identifying the \"character of harms\", a regulatory craft writtten by Professor Malcom Sparrow. </p>'),(1118,'<p>These are further deatils</p>'),(1043,'<p><strong>The Challenge</strong></p><p>Many of today\'s law enforcement and regulatory agencies face the challenge of maintaining capacity and capability within an environment of reducing resources and fiscal changes. The natural and logical reaction to diminished resources is to find a way to \'do more with less\'. This search often finds that to do more with less requires an increase in the efficiency and effectiveness of operational activity (investigations) but at same time maintaining the quality of investigation outcomes.</p><p>Reacting to treat operational efficiency and effectiveness turns out to be a timely and often misguided,departure from \'business as usual\' for many agencies and at times yields limited results. This is because with the issue of improving efficiency, quality and effectiveness of investigations many agencies make the assumption that investment in a new \"case management system (CMS)\" will be the solution.</p><p>Convinced by the promise of modern technology and the array of task management, data capture, link charting, reporting, time tracking and accountability features on offer, agencies wedge recently acquired new CMS into the operational environment. However, after implementing these new systems (often with resistance from the actual end users) agencies find that their shiny new CMS, has not yielded the promised increased productivity. Although accountability, tracking and reporting of cases has been significantly increased through the CMS, the efficiency and effectiveness of investigations has remained unchanged or in some cases actually deteriorated.</p><p><em>The question is why?</em></p><p>The diagnosis (or perhaps excuse) of this failure will vary from agency to agency and will range from a mismatch of CMS to agency needs, resistance to cultural change, implementation difficulties and a variety of other explanations. But perhaps the true reason, is that the CMS was in fact doing the job it was designed to do, namely managing the case (<em>case management</em>) when to achieve increased productivity, what it should have been doing was managing the investigation (<em>investigation management</em>).</p><p>Consider these issues which are often found to be the cause of poor investigations.</p><ul><li>Lack of experience of investigator</li><li>Little or no strategic direction</li><li>Organizational or individual cultural issues (work ethic )</li><li>Complexity of investigations</li><li>Mismanagement of evidence</li><li>Failure or Lack of leadership or suitable mentoring</li><li>Misuse or inefficient use of resources</li></ul><p>A CMS is unlikely to be able to deal with any of these issues. In fact the introduction of a CMS may actually reduce efficiency even further as investigators now have to commit a great deal of time entering data into the CMS so that the case reporting features are maintained. Investigators frustrated with complex or time consuming data entry requirements will often start to take short cuts on evidence or information management to avoid having to actually use various components of the CMS.  These shortcuts or resistance can often leave to further quality control issues.</p><p>CMS exist in one form or another with agencies. Whether it\'s a simple database designed in-house or an elaborate system purchased from an external provider. Historically the primary purpose of case management systems is to record complaints , track investigation progress, report on outcomes. Some have evolved to allow upload of scanned documents and folders, relational link charting, time tracking and a myriad of other case reporting and accountability features.  But do these features have anything to do with <em>investigation management</em>?</p><p><strong>Case Management v Investigation Management</strong></p><p>Some of the more recent discourse around distinguishing \'<em>case management</em>\' characteristics from actual \'<em>investigation management</em>\' has been framed by contrasting ‘structured’ and ‘unstructured’ work. While the CMS tools have delivered improved cycle times for many simple \'structured\' investigations (e.g. insurance claim investigations, private investigations), automation of unstructured investigations – like those that have a higher standard of proof and depend on costly skilled human resources (i.e criminal, accident, regulatory, corruption investigations)– has remained often elusive.</p><p>Neil Dutton, one of Europe\'s most experienced and high profile IT industry analyst expands on this issue through defining two types of work processes as \'<em>Transactional Work</em>\' v \'<em>Exploratory Work\'</em>. Transactional work is work in which the inputs are well-understood, the outputs are well-understood, and there’s a strong correlation between carrying out a very clear, particular set of actions and consistent transformation of those inputs into those outputs. Transactional work in the context of investigations are areas of complaint recording , task tracking, link analysis, exhibit management, business reporting and other structured activities (as often found in many CMS).</p><p><em>Exploratory work</em> is very different in the way that it feels. Exploratory work is often what lurks underneath verbs like “investigate”, “diagnose”, “analyses\", “co-ordinate”, “solve”, “determine”, “arbitrate” and so on. The inputs to exploratory work may be broadly categorisable, but are probably not completely predictable. The outputs are likely to be well-understood in terms of high-level goals (see the verbs above), but probably but not in terms of tight specifications. And most importantly, the set and sequence of actions needing to be performed, and the people or roles needing to perform them, are very unlikely to be known ahead of time.</p><p>There may be some high-level waypoints or milestones that are common to a particular type of exploratory work (verify complaint, identify offender, prove the breach, secure prosecution) but they provide a very loose, rather than tight, structure. In exploratory work, as the label suggests, the overall experience for both the investigators and other stakeholders is that of a set of possibilities being explored rather than a recipe being followed.</p><p>Exploratory work is the natural and fluid work form in key parts of an investigation that touch its participants. Many CMS have tried to engineer out the variances, eradicate the exceptions and force-fit natural interactions into transactional boxes. In the age of increasing public expectations and as we witness a shift towards truly Digital Enterprises, we can’t afford to ignore the potential upside of <em><strong>supporting exploratory work</strong></em> with specialised tools that make it more effective, more efficient, less error-prone and more improvable <em>without</em> reducing its nature.  </p><p>In summary, agencies must ensure they truly understand the characteristics of the harms, risks or issues they are trying to solve and whether they are based within transactional work or exploratory work.  Failing to understanding these characteristics may lead to the implementation of new processes which improve the <em>transactional work</em> and reporting component of investigations but fail to have any impact on the <em>exploratory work</em> where the true nature of the issues exist.  Agency decision makers should have a clear understanding of the difference between <em>investigation management</em> tools and <em>case management</em> tools if there is a true desire to increase the productivity and quality of investigations.</p>'),(1131,'<p>The IMA team has taken COMtrac to the UK opening our European branch in London. </p><p>\"We see this as a positive move to establishing best practice inspection, audit and investigation methadologies world-wide\", </p>'),(1132,'<p>IMA is delighted to announce the expansion of COMtrac into the European market, officially <a href=\"http://comtrac.com.au/company/contact/\" target=\"_blank\">opening an office in Canary Wharf</a> - one of London\'s major business districts.</p><p>We are pleased to have the opportunity to grow our business from Australian shores, and look forward to delivering outcomes for regulatory and law enforcement agencies across Europe.</p><p><a href=\"/how-it-works/\" target=\"_blank\">COMtrac</a> is an innovative, on line solution to better manage any investigative or regulatory function. COMtrac provides a digital and mobile environment where any regulatory task - be it investigative, inspection or audit, is strategically guided and managed to ensure efficient, effective and legally robust outcomes. </p><p>Best practice inspections, investigations, compliance &amp; enforcement has arrived! </p>');
/*!40000 ALTER TABLE `field_news_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_news_title`
--

DROP TABLE IF EXISTS `field_news_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_news_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_news_title`
--

LOCK TABLES `field_news_title` WRITE;
/*!40000 ALTER TABLE `field_news_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_news_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES (41,'qCdPneHRPR6OAq3mk3Jl3nHrozBnlm.','$2y$11$0U4KhvoHAlVzJ68UIa1ZJu'),(40,'','');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_post_image`
--

DROP TABLE IF EXISTS `field_post_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_post_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_post_image`
--

LOCK TABLES `field_post_image` WRITE;
/*!40000 ALTER TABLE `field_post_image` DISABLE KEYS */;
INSERT INTO `field_post_image` VALUES (1113,'d059ceb1e2ac22caaed33bc2579819da-1.jpg',0,'nice one','2013-12-24 01:56:56','2013-12-24 01:55:35');
/*!40000 ALTER TABLE `field_post_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76),(1075,150);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_right_content`
--

DROP TABLE IF EXISTS `field_right_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_right_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_right_content`
--

LOCK TABLES `field_right_content` WRITE;
/*!40000 ALTER TABLE `field_right_content` DISABLE KEYS */;
INSERT INTO `field_right_content` VALUES (1013,'<ul class=\"circle list\"><li>Generates an element based investigation, inspection or audit plan</li><li>Real time analysis of the evidentiary state of investigations</li><li>Self generating electronic brief of evidence</li><li>Automatically prepares investigator witness statements</li><li>Stores and manages evidence</li><li>Maps investigative activity to lawful authority</li><li>Identifies evidence shortfalls and potential defences</li><li>Maps evidence to offences, elements and proofs</li><li>Contains prosecutors analytical tool</li><li>Generates business intelligence for regulatory reporting</li></ul>'),(1014,'<p class=\"introduction main\">COMtrac was designed and built to be accessible on both desktop computers and also tablet or mobile devices (Windows, iOS &amp; Android).</p><p>This includes the ability to record photographs, video and audio on mobile devices directly into the COMtrac application.</p><p>Specific features of COMtrac can also be included as mobile applications, which are not dependent on Internet connectivity and can be readily synced to primary database from the mobile applications.</p>');
/*!40000 ALTER TABLE `field_right_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_right_image`
--

DROP TABLE IF EXISTS `field_right_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_right_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_right_image`
--

LOCK TABLES `field_right_image` WRITE;
/*!40000 ALTER TABLE `field_right_image` DISABLE KEYS */;
INSERT INTO `field_right_image` VALUES (1014,'screenshot-admin.png',0,'','2013-12-17 01:49:16','2013-12-17 01:49:16');
/*!40000 ALTER TABLE `field_right_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_right_title`
--

DROP TABLE IF EXISTS `field_right_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_right_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_right_title`
--

LOCK TABLES `field_right_title` WRITE;
/*!40000 ALTER TABLE `field_right_title` DISABLE KEYS */;
INSERT INTO `field_right_title` VALUES (1013,'At a Glance'),(1014,'Mobile Application');
/*!40000 ALTER TABLE `field_right_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(41,38,1);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col1_content`
--

DROP TABLE IF EXISTS `field_second_col1_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col1_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col1_content`
--

LOCK TABLES `field_second_col1_content` WRITE;
/*!40000 ALTER TABLE `field_second_col1_content` DISABLE KEYS */;
INSERT INTO `field_second_col1_content` VALUES (1014,'<p>Is a web based Inspection, Audit, Investigation and Brief Management system.</p>');
/*!40000 ALTER TABLE `field_second_col1_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col1_title`
--

DROP TABLE IF EXISTS `field_second_col1_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col1_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col1_title`
--

LOCK TABLES `field_second_col1_title` WRITE;
/*!40000 ALTER TABLE `field_second_col1_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_second_col1_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col2_content`
--

DROP TABLE IF EXISTS `field_second_col2_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col2_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col2_content`
--

LOCK TABLES `field_second_col2_content` WRITE;
/*!40000 ALTER TABLE `field_second_col2_content` DISABLE KEYS */;
INSERT INTO `field_second_col2_content` VALUES (1014,'<p>Built using latest Microsoft web technologies: ASP.net, .Net 4.0, SQL Server 2008.</p>');
/*!40000 ALTER TABLE `field_second_col2_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col2_title`
--

DROP TABLE IF EXISTS `field_second_col2_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col2_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col2_title`
--

LOCK TABLES `field_second_col2_title` WRITE;
/*!40000 ALTER TABLE `field_second_col2_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_second_col2_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col3_content`
--

DROP TABLE IF EXISTS `field_second_col3_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col3_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col3_content`
--

LOCK TABLES `field_second_col3_content` WRITE;
/*!40000 ALTER TABLE `field_second_col3_content` DISABLE KEYS */;
INSERT INTO `field_second_col3_content` VALUES (1014,'<p>Can be used over the Internet as well as an intranet application on the local network. It can be run on the single server or in web farm environment.</p>');
/*!40000 ALTER TABLE `field_second_col3_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col3_title`
--

DROP TABLE IF EXISTS `field_second_col3_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col3_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col3_title`
--

LOCK TABLES `field_second_col3_title` WRITE;
/*!40000 ALTER TABLE `field_second_col3_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_second_col3_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col4_content`
--

DROP TABLE IF EXISTS `field_second_col4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col4_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col4_content`
--

LOCK TABLES `field_second_col4_content` WRITE;
/*!40000 ALTER TABLE `field_second_col4_content` DISABLE KEYS */;
INSERT INTO `field_second_col4_content` VALUES (1014,'<p>Includes a resource area where access to existing agency databases can be integrated with COMtrac.</p>');
/*!40000 ALTER TABLE `field_second_col4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_col4_title`
--

DROP TABLE IF EXISTS `field_second_col4_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_col4_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_col4_title`
--

LOCK TABLES `field_second_col4_title` WRITE;
/*!40000 ALTER TABLE `field_second_col4_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_second_col4_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_content`
--

DROP TABLE IF EXISTS `field_second_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_content`
--

LOCK TABLES `field_second_content` WRITE;
/*!40000 ALTER TABLE `field_second_content` DISABLE KEYS */;
INSERT INTO `field_second_content` VALUES (1025,'<ul class=\"circle list\"><li>To identify the common characteristics of poor investigations and create an environment where they can no longer exist</li><li>To free investigators of the administrative burdens of case management and increase the capacity of agency frontline services</li><li>To create an investigation management tool that front line staff embrace as intuitive, supportive and innovative</li><li>To be a leader in the delivery of inspection and investigation management metholdolgies</li></ul>'),(1130,'<p>COMtrac is a innovative product that will increase the efficiency and effectiveness of your investigations which in turn will result in significant increase in agency productivity.  Some of the befits of COMtrac can be viewed in web based videos on the following links:  COMtrac – The Experience  COMtrac – The evolution of investigation management  (Please note: Some government agencies will not allow users to access web based videos)</p>');
/*!40000 ALTER TABLE `field_second_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_head`
--

DROP TABLE IF EXISTS `field_second_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_head` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_head`
--

LOCK TABLES `field_second_head` WRITE;
/*!40000 ALTER TABLE `field_second_head` DISABLE KEYS */;
INSERT INTO `field_second_head` VALUES (1013,'What is COMtrac?'),(1014,'Integration features'),(1025,'Our Mission'),(1130,'COMtrac: Inspection, Investigation and Brief Management Systems');
/*!40000 ALTER TABLE `field_second_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_left_content`
--

DROP TABLE IF EXISTS `field_second_left_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_left_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_left_content`
--

LOCK TABLES `field_second_left_content` WRITE;
/*!40000 ALTER TABLE `field_second_left_content` DISABLE KEYS */;
INSERT INTO `field_second_left_content` VALUES (1013,'<p>Quite simply, COMtrac re-engineers investigative and regulatory processes, building key documents (Authorised Officer Witness Statement, Exhibit Register etc) and \'outcomes\' (Brief of Evidence, Compliance Report etc) from the commencement of an inspection, audit or investigation.</p><p>COMtrac provides an intuitive and practical inspection, audit, investigation and brief management system conceived out of real investigation and policing experience and through an extensive analysis of investigative best practices. Many case management systems are about reporting the investigations. COMtrac is all about supporting the inspections and investigations.</p><p>COMtrac is the patented product of 3 years of research and development into designing a system that will eliminate or significantly reduce the impediments to increased investigation productivity.  COMtrac does this by providing the tools and environment within which the ‘exploratory work’ of investigations is supported and managed.  COMtrac will save time, effort and resources, while ensuring greater legal certainty, and a more consistent and robust work flow approach.</p>'),(1014,'<p class=\"introduction\">For agencies considering replacing hard copy notebooks, COMtrac can also have integrated into the system an electronic notebook (eNB). The eNB has the following features;</p>');
/*!40000 ALTER TABLE `field_second_left_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_right_content`
--

DROP TABLE IF EXISTS `field_second_right_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_right_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_right_content`
--

LOCK TABLES `field_second_right_content` WRITE;
/*!40000 ALTER TABLE `field_second_right_content` DISABLE KEYS */;
INSERT INTO `field_second_right_content` VALUES (1013,'<p>COMtrac is not a complaints management database. Unlike most complaint and case management databases that focus on \'transactional work\', COMtrac\'s technology is based on supporting and improving the \'exploratory work\' undertaken during investigations.  COMtrac specifically assists law enforcement and regulatory officers ‘manage and assess’ inspections and investigations by providing an environment within which the \'exploratory work\' undertaken during investigations is managed.</p><p>Practical features of COMtrac include; creating inspection, audit and investigation plans, automating the elements of offences, creating contemporaneous running sheets, automating investigators statements, evidence analysis, and exhibit registration.</p><p>COMtrac generates the brief of evidence as the investigation progresses – saving investigators time and administrative efforts. COMtrac also provides a range of functions to assist team leaders and managers to oversee the progress and state of inspections, audits or investigations. COMtrac may also be used to present evidence in legal proceedings through the provision of an electronic brief of evidence.</p>'),(1014,'<ul class=\"circle list\"><li>Activity entries made into the running sheet are automatically recorded into the eNB along with links to any associated exhibits recorded against those activities</li><li>Officers can manually enter notes into the eNB by typing or voice narration</li><li>Officers can create audio files of interviews or other field activities which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can take photographs or videos which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can record all other officers and person present during any activity</li><li>Officers can use the search engine to search for key events of activities</li></ul>');
/*!40000 ALTER TABLE `field_second_right_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_second_subtitle`
--

DROP TABLE IF EXISTS `field_second_subtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_second_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_second_subtitle`
--

LOCK TABLES `field_second_subtitle` WRITE;
/*!40000 ALTER TABLE `field_second_subtitle` DISABLE KEYS */;
INSERT INTO `field_second_subtitle` VALUES (1013,'With an Australian provisional patent application for a unique \'investigation management method and system\' COMtrac is an innovative and intuitive product that will increase the efficiency and effectiveness of your investigation, inspection or audit program.'),(1014,'COMtrac can be hosted on your own agency intranet or where required on our secure dedicated servers, which have the following security & certification\r\n																																																						');
/*!40000 ALTER TABLE `field_second_subtitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_intro`
--

DROP TABLE IF EXISTS `field_services_intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_intro` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_intro`
--

LOCK TABLES `field_services_intro` WRITE;
/*!40000 ALTER TABLE `field_services_intro` DISABLE KEYS */;
INSERT INTO `field_services_intro` VALUES (1017,'COMtrac automates the evidence gathering process so that investigators statements, briefs of evidence, investigation reports and evidence matrices are automatically built as the investigation progresses.'),(1021,'For agencies considering replacing hard copy notebooks, COMtrac can also have integrated into the system an electronic notebook (eNB).  The eNB has the following features;'),(1018,'As with criminal investigations, COMtrac ensures that administrative investigations are planned and carried out with a clear strategic direction. On selecting the relevant breach of the code of conduct, employment agreement or workplace legislation, COMtrac automatically creates an investigation plan so the key objectives (or required points of proof) form the foundation of the administrative investigation. This ensures that the information and evidence gathered, upon which administrative action is taken, is mapped and recorded accurately and effectively.'),(1019,'Investigators then map the information and evidence against each category as the investigation progresses.  As the investigation progresses the incident report is automatically built in the background, which identifies which contributory areas have been examined and the relevant findings.'),(1020,'COMtrac provides a strategic platform under which the regulatory activities associated with inspections are planned, undertaken and reported on.  The key features of COMtrac’s inspection and audit system are:');
/*!40000 ALTER TABLE `field_services_intro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_lastcontent`
--

DROP TABLE IF EXISTS `field_services_lastcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_lastcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_lastcontent`
--

LOCK TABLES `field_services_lastcontent` WRITE;
/*!40000 ALTER TABLE `field_services_lastcontent` DISABLE KEYS */;
INSERT INTO `field_services_lastcontent` VALUES (1021,'A report can be created and exported based on selected parameters requested for production in any proceedings as contemporaneous notes.'),(1020,'Supported by the electronic notebook (ENB) mobile device application, COMtrac will increase the efficiency and effectiveness of all inspections, simple or complex.  In the ever-increasing environment of reduced resources, COMtrac provides an evolutionary environment where the capacity and capability of regulatory agencies can be increased while at the same time reducing the administrative burden on front line inspectors.');
/*!40000 ALTER TABLE `field_services_lastcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_leftcontent`
--

DROP TABLE IF EXISTS `field_services_leftcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_leftcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_leftcontent`
--

LOCK TABLES `field_services_leftcontent` WRITE;
/*!40000 ALTER TABLE `field_services_leftcontent` DISABLE KEYS */;
INSERT INTO `field_services_leftcontent` VALUES (1014,'<ul class=\"circle list\"><li>24x7 manned security office and personnel entrance check-point</li><li>Perimeter vehicular security check-points</li><li>CCTV monitoring and capture of perimeter and internal access</li><li>Proximity card access points to data hall and other secure areas</li><li>Certification to ISO-27001 Information Systems Security Management</li><li>Certification to ASIO T4 Intruder Resistance</li></ul>'),(1017,'<p>The electronic brief of evidence and evidence chronology provides a state of the art delivery and presentation tool for judicial proceedings. In addition to the electronic brief of evidence, COMtrac can also produce a complete indexed PDF version of the brief of evidence for hard copy delivery.</p>'),(1021,'<ul class=\"circle list\"><li>Activity entries made into the running sheet are automatically recorded into the eNB along with links to any associated exhibits recorded against those activities</li><li>Officers can manually enter notes into the eNB by typing or voice narration</li><li>Officers can create audio files of interviews or other field activities which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can take photographs or videos which are automatically uploaded into the eNB with a self generating time and date reference</li></ul>'),(1018,'<p>COMtrac will record and track investigative activity and automate the investigation report.  The evidence analytical tools provide an effective platform upon which administrative decision makers can select the most appropriate and defensible action in response to the nature and seriousness of the breach.</p>'),(1019,'<p>COMtrac will provide an environment where all aspects of incident investigations including gathering evidence, determining causes and identifying corrective actions can be recorded and managed efficiently. Corrective action can be a costly exercise for any agency or company and subsequently the decision to implement new preventative measures (or take administrative action against responsible persons) should be an ‘evidence’ based decision.</p>'),(1020,'<ul class=\"circle list\"><li>Automatically sets conditions to guide the audit/inspection</li><li>Provides advice on the type of evidence and procedures that should be used against each condition subject to the audit/inspection</li><li>Allows for an inspector to record observations, causes of any non-compliance, level of compliance, action taken, compliance behaviour</li><li>Designed to work on field based applications such as iPads, Windows or Android tablets, as well as desktop computers</li></ul>'),(1077,'<p><img class=\"logo-right\" src=\"/site/assets/files/1016/nationally-recognised-training.jpg\" width=\"150\" height=\"120\" alt=\"\" /></p>');
/*!40000 ALTER TABLE `field_services_leftcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_quote`
--

DROP TABLE IF EXISTS `field_services_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_quote` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_quote`
--

LOCK TABLES `field_services_quote` WRITE;
/*!40000 ALTER TABLE `field_services_quote` DISABLE KEYS */;
INSERT INTO `field_services_quote` VALUES (1017,'Simplification of processes is the ultimate form of sophistication.');
/*!40000 ALTER TABLE `field_services_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_quote_author`
--

DROP TABLE IF EXISTS `field_services_quote_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_quote_author` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_quote_author`
--

LOCK TABLES `field_services_quote_author` WRITE;
/*!40000 ALTER TABLE `field_services_quote_author` DISABLE KEYS */;
INSERT INTO `field_services_quote_author` VALUES (1017,'Steve Jobs 2011');
/*!40000 ALTER TABLE `field_services_quote_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_rightcontent`
--

DROP TABLE IF EXISTS `field_services_rightcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_rightcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_rightcontent`
--

LOCK TABLES `field_services_rightcontent` WRITE;
/*!40000 ALTER TABLE `field_services_rightcontent` DISABLE KEYS */;
INSERT INTO `field_services_rightcontent` VALUES (1014,'<p>COMtrac also has a built in security to protect data against unauthorised access through third party programs. COMtrac uses a SQL Server, Symmetric Key, and Column level encryption to protect sensitive data stored in the database. In short, this means that any third party that does not have direct access to the COMtrac database, if uses a third party program to breach the system will only be able to view encrypted and unintelligible data.</p>'),(1017,'<p>Supported by the electronic notebook (eNB) mobile device application, COMtrac will increase the efficiency and effectiveness of all criminal investigations, simple or complex. In the ever-increasing environment of reduced resources, COMtrac provides an evolutionary environment where the capacity and capability of law enforcement and regulatory agencies is increased while at the same time reducing the administrative burden on front line investigators.</p>'),(1021,'<ul class=\"circle list\"><li>Sketches or diagrams can be drawn into notebook entries</li><li>Officers can record all other officers and person present during any activity</li><li>Officers can use the search engine to search for key events of activities</li><li>The eNB can also record the GEO code which identifies the location where the notes and exhibits were recorded which assist in maintaining integrity of officers notes.</li></ul>'),(1018,'<p>COMtrac automates the evidence gathering process so that investigator statements, investigation reports and evidence matrices are automatically built as the investigation progresses. This increases the response time of investigations and allows investigators and managers the opportunity to make an informed decision at any point during the investigation to proceed, take action or even withdraw complaints.</p>'),(1019,'<p>Supported by the electronic notebook (ENB) mobile device application for field based investigative activity, COMtrac will increase the efficiency and effectiveness of all incident investigations, simple or complex and ensure that corrective action is justifiable and defensible.</p>'),(1020,'<ul class=\"circle list\"><li>Automatically produces an electronic non-compliance notice</li><li>Automatically produces an audit/inspection report based on data captured during inspection – which can be emailed in the field</li><li>Allows for the production of business intelligence reports based on any categories relevant to the inspection</li></ul>'),(1077,'<p class=\"introduction\">ICETS courses provide participants with nationally recognised qualifications to meet legislative and organisational competency requirements.</p>');
/*!40000 ALTER TABLE `field_services_rightcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_subtitle`
--

DROP TABLE IF EXISTS `field_services_subtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_subtitle`
--

LOCK TABLES `field_services_subtitle` WRITE;
/*!40000 ALTER TABLE `field_services_subtitle` DISABLE KEYS */;
INSERT INTO `field_services_subtitle` VALUES (1017,'<p>COMtrac creates investigation plans based on the elements (points of proof) of offences to which all investigative and evidence activity is mapped.</p><p>The patented \'investigation art\' provides a real time analysis of the evidentiary strength of the investigation from the case commencement through to court. This allows investigators, managers and legal officers to make strategic, evidence based decisions throughout the life of the investigation.</p>'),(1021,'<p>COMtrac eNB was designed and built to ensure it can be accessed and utilised on both desktop computers and mobile devices (Windows, IOS &amp; Android).</p><p>COMtrac eNB includes the ability to record photographs, video and audio on mobile devices directly into the COMtrac application. All features of COMtrac can also be included as mobile applications, which are not dependent on Internet connectivity and can be readily synced to the primary database from the mobile applications.</p>'),(1018,'<p>Although the standard of proof is lower, administrative investigations still need to be conducted in an environment that promotes a high level of professionalism and procedural fairness at all times.</p>'),(1019,'<p>An incident investigation or audit is often designed to determine whether there was a failure in one or more procedures, equipment, environment, and persons.</p><p>As with any investigation, the key to efficiency and effectiveness is to ensure that a strategic plan is created and followed throughout the life of the investigation.   COMtrac sets the investigation objectives to determine contributory factors that might fall under the categories of:</p><ul class=\"circle list\"><li>Design</li><li>Behaviour</li><li>Environment</li><li>Management System</li></ul>'),(1020,'<p>This is regardless as to whether the objective is to prove compliance or detect non-compliance to statutory instruments such as licenses, permits or other authorities under which a regulated entity might be operating.</p>'),(1077,'<p>ICETS has a reputation amongst Commonwealth and State regulatory agencies as going beyond the normal ‘pre-packaged’ courses and replacing them with interactive, customised and up to date packages delivered by industry professionals.</p><p>ICETS training packages use the Australian Government Investigation Standards (AGIS) and the Investigation Procedure Standards of state based law enforcement agencies as the bench mark for course programs. From this our industry professionals (current government investigators) value add from their expertise to produce a creative, innovative and flexible solution to your training needs.</p>');
/*!40000 ALTER TABLE `field_services_subtitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_services_title`
--

DROP TABLE IF EXISTS `field_services_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_services_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_services_title`
--

LOCK TABLES `field_services_title` WRITE;
/*!40000 ALTER TABLE `field_services_title` DISABLE KEYS */;
INSERT INTO `field_services_title` VALUES (1017,'For law enforcement and regulatory investigations, COMtrac provides a platform, which ensures all investigations are conducted to a consistent methodology.'),(1021,'COMtrac electronic notebook (eNB) is a mobile based application for use by investigators, inspectors or auditors which provides a secure and efficient environment where notes and exhibits (audio, photo, video) can be captured in a contemporaneous manner.'),(1018,'Administrative investigations into misconduct or other breaches of workplace legislation are governed by the same principles of natural justice and procedural fairness as criminal investigations'),(1019,'Incident investigations or audits primary objectives are not always to find fault but also to investigate incidents to determine immediate actions, root causes, corrective actions and communications to prevent a reoccurrence.  '),(1020,'Regulatory inspections or audits, like investigations, are an evidence-based activity.'),(1077,'In June 2012 Investigation Compliance & Enforcement Training Systems (ICETS) partnered with IMA to utilise COMtrac as a training tool for its nationally recognised courses.  ICETS has utilised COMtrac as a tool to run case study investigations during its investigation skills and management training programs.   The effectiveness of COMtrac as a training tool has resulted in ICETS client government agencies implementing COMtrac as their investigation management system after positive feedback was received from agency investigators who undertook ICETS training programs. In 2014 IMA continues to be a proud training partner with ICETS.');
/*!40000 ALTER TABLE `field_services_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_sidebar`
--

DROP TABLE IF EXISTS `field_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_sidebar`
--

LOCK TABLES `field_sidebar` WRITE;
/*!40000 ALTER TABLE `field_sidebar` DISABLE KEYS */;
INSERT INTO `field_sidebar` VALUES (1,'<h3>About ProcessWire</h3><p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p><p><a href=\"http://processwire.com/about/\" target=\"_blank\">About ProcessWire</a><br /><a href=\"http://processwire.com/api/\">Developer API</a><br /><a href=\"http://processwire.com/contact/\">Contact Us</a><br /><a href=\"http://twitter.com/rc_d\">Follow Us on Twitter</a></p>');
/*!40000 ALTER TABLE `field_sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_solution_left2`
--

DROP TABLE IF EXISTS `field_solution_left2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_solution_left2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_solution_left2`
--

LOCK TABLES `field_solution_left2` WRITE;
/*!40000 ALTER TABLE `field_solution_left2` DISABLE KEYS */;
INSERT INTO `field_solution_left2` VALUES (1077,'<h2 class=\"heading\">Advanced Regulatory Training Program (Investigators)</h2><ul class=\"circle list\"><li>Certificate IV in Government - Investigations</li><li>Investigative Skills Workshops</li></ul><p><a class=\"button\" href=\"http://www.icets.com.au/ARTP.html\" target=\"_blank\">Course Details</a></p>');
/*!40000 ALTER TABLE `field_solution_left2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_solution_left3`
--

DROP TABLE IF EXISTS `field_solution_left3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_solution_left3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_solution_left3`
--

LOCK TABLES `field_solution_left3` WRITE;
/*!40000 ALTER TABLE `field_solution_left3` DISABLE KEYS */;
INSERT INTO `field_solution_left3` VALUES (1077,'<h2 class=\"heading\">Advanced Investigation Management Program (Managers)</h2><ul class=\"circle list\"><li>Diploma of Government (Investigations)</li></ul><p><a class=\"button\" href=\"http://www.icets.com.au/course_dip_govtinvestigation.html\" target=\"_blank\">Course Details</a></p>');
/*!40000 ALTER TABLE `field_solution_left3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_solution_right2`
--

DROP TABLE IF EXISTS `field_solution_right2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_solution_right2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_solution_right2`
--

LOCK TABLES `field_solution_right2` WRITE;
/*!40000 ALTER TABLE `field_solution_right2` DISABLE KEYS */;
INSERT INTO `field_solution_right2` VALUES (1077,'<p>The advanced regulatory training program provides inspectors, investigators and other authorised officers with the skills and knowledge to undertake regulatory inspections and investigations. The course program covers understanding and application of regulatory powers, planning and conducting investigations, gathering and managing evidence, interviewing skills and reporting on investigation outcomes. The \'Advanced Regulatory Training program allows course participants to complete accredited and nationally recognized training in a back to back training block or in incremental and more manageable training blocks.</p>');
/*!40000 ALTER TABLE `field_solution_right2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_solution_right3`
--

DROP TABLE IF EXISTS `field_solution_right3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_solution_right3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_solution_right3`
--

LOCK TABLES `field_solution_right3` WRITE;
/*!40000 ALTER TABLE `field_solution_right3` DISABLE KEYS */;
INSERT INTO `field_solution_right3` VALUES (1077,'<p>The advanced investigation management program brings together senior investigators, team leaders and managers from Comonwealth, State and Local Government agencies. Here, course participants learn the fundamental principles and skills for implementing and maintaining sound investigation management strategies. The intended outcomes of the advanced investigation management program is to developed the ability to ensure the desired outcomes of regulatory activity are achieved efficiently and effectively.</p>');
/*!40000 ALTER TABLE `field_solution_right3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_summary`
--

DROP TABLE IF EXISTS `field_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_summary`
--

LOCK TABLES `field_summary` WRITE;
/*!40000 ALTER TABLE `field_summary` DISABLE KEYS */;
INSERT INTO `field_summary` VALUES (1,'COMtrac is an innovative, on line solution to better manage any investigative or regulatory function. COMtrac provides a digital and mobile environment where any regulatory task - be it investigative, inspection or audit, is strategically guided and managed to ensure efficient, effective and legally robust outcomes. \r\n\r\nCOMtrac was designed by law enforcement officers, using internationally recognised best practice regulatory principles.  It is simple to use, easily configured, and cost effective.\r\n\r\nCOMtrac is the future of compliance and enforcement ... Today  ');
/*!40000 ALTER TABLE `field_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_third_content`
--

DROP TABLE IF EXISTS `field_third_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_third_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_third_content`
--

LOCK TABLES `field_third_content` WRITE;
/*!40000 ALTER TABLE `field_third_content` DISABLE KEYS */;
INSERT INTO `field_third_content` VALUES (1025,'<ul class=\"circle list\"><li>COMtrac launched in May 2013 as a unique investigation management system that reduces legal and administrative risks associated with investigations and inspections</li><li>COMtrac’s design was proven to eliminate upwards of 50% of the administrative burden of investigations doubling the capability and capacity of agency front-line services</li><li>COMtrac is recognised and patented as an innovative invention to the ‘art of investigation management’</li><li>COMtrac implemented by Commonwealth and State based law enforcement and regulatory agencies</li></ul>');
/*!40000 ALTER TABLE `field_third_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_third_header`
--

DROP TABLE IF EXISTS `field_third_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_third_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_third_header`
--

LOCK TABLES `field_third_header` WRITE;
/*!40000 ALTER TABLE `field_third_header` DISABLE KEYS */;
INSERT INTO `field_third_header` VALUES (1013,'Key Benefits'),(1014,'Security & Data Features'),(1025,'Our Achievements');
/*!40000 ALTER TABLE `field_third_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES (14,'Edit Template'),(15,'Add Template'),(12,'Templates'),(11,'Templates'),(19,'Field groups'),(20,'Edit Fieldgroup'),(16,'Fields'),(17,'Fields'),(18,'Edit Field'),(22,'Setup'),(3,'Pages'),(6,'Add Page'),(8,'Page List'),(9,'Save Sort'),(10,'Edit Page'),(21,'Modules'),(29,'Users'),(30,'Roles'),(2,'Admin'),(7,'Trash'),(27,'404 Page Not Found'),(302,'Insert Link'),(23,'Login'),(304,'Profile'),(301,'Empty Trash'),(300,'Search'),(303,'Insert Image'),(28,'Access'),(31,'Permissions'),(32,'Edit pages'),(34,'Delete pages'),(35,'Move pages (change parent)'),(36,'View pages'),(50,'Sort child pages'),(51,'Change templates on pages'),(52,'Administer users (role must also have template edit access)'),(53,'User can update profile/password'),(54,'Lock or unlock a page'),(1,'Home'),(1015,'FAQ'),(1000,'Search'),(1014,'Features'),(1013,'Why COMtrac?'),(1017,'Criminal Investigation Systems'),(1016,'Solutions'),(1012,'How it works'),(1018,'Administrative Investigation Systems'),(1019,'Incident Investigation and Audit Systems'),(1020,'Regulatory Inspection and Audit Systems'),(1021,'Electronic Notebook Application'),(1023,'Company'),(1024,'Company Profile'),(1025,'Our Ethos'),(1026,'Blog'),(1027,'Contact'),(1034,'FAQ'),(1030,'Who is Comtrac for'),(1031,'Enquiries'),(1032,'FAQs'),(1035,'Newsletter Subscription'),(1036,'Blog'),(1037,'Mailer'),(1038,'Blog Articles'),(1040,'News'),(1042,'COMtrac now being used as the lead investigation system by the Queensland Police.'),(1043,'The Case Management Mirage'),(1044,'COMtrac technology presentation set for European law enforcement agencies.'),(1045,'Patented Technology'),(1046,'ACT Planning & Land Authority'),(1047,'NSW Mine Safety Investigations'),(1048,'NSW Resources & Energy'),(1049,'Where is the database located?'),(1050,'How is information security maintained?'),(1051,'What level of support is available?'),(1052,'Does it need to be customised to our agency?'),(1053,'Can COMtrac integrate with existing databases?'),(1054,'Are there ongoing maintenance fees?'),(1055,'What are the contract periods?'),(1056,'Can the database have different access and security levels?'),(1057,'How long is implementation time?'),(1058,'Can electronic forms be adjusted?'),(1059,'Does it work on mobile devices?'),(1060,'What type of investigations does it cater for?'),(1061,'Branches'),(1064,'Australia'),(1065,'Sydney'),(1066,'Melbourne'),(1072,'Branches'),(1073,'Enquiries'),(1074,'Subscriptions'),(1075,'Google Analytics'),(1076,'View Google Analytics Page'),(1077,'Investigation Management Training'),(1093,'Blog categories'),(1098,'mike@digital8.com.au'),(1100,'New Category'),(1101,'New article'),(1102,'Mike Test Digital8'),(1103,'mickael@digital8.com.au'),(1104,'Mike FromHome Digital8'),(1105,'Mike FromContact Digital8'),(1106,'Brook Test'),(1107,'Clients'),(1108,'Always Be Great'),(1109,'Publications'),(1110,'rtyerty'),(1111,'jkhjkhjkhjkjh'),(1112,'Technology'),(1113,'Test two post title'),(1114,'cat'),(1115,'Test Test'),(1116,'test@gmail.com'),(1117,'Michael Digital8'),(1118,'Details'),(1119,'Investigation Management Methodology'),(1120,'Mike Digital8 Digital8'),(1121,'Mike Digital8 Digital8'),(1122,'Mike Test Digital8'),(1123,'Admin Actions'),(1124,'Test'),(1125,'test article'),(1126,'skye@bprs.com.au'),(1127,'tetdsx'),(1128,'Brett Irwin ATO'),(1129,'COMtrac: Information'),(1130,'COMtrac: Information Overview'),(1131,'IMA is open for business in Europe.'),(1132,'COMtrac open for business in Europe'),(1133,'Europe'),(1134,'cdoran@icets.com.au'),(1135,'jrrtrade@gmail.com'),(1136,'Information'),(1137,'Skye BPRS'),(1138,'mike@digital8.com.au'),(1139,'mickael@digital8.com.au'),(1140,'Mike Test Digital8');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(1,'home'),(88,'sitemap'),(83,'basic-page'),(80,'search'),(104,'faq'),(103,'blog'),(102,'solutions'),(105,'contact'),(106,'enquiry_form'),(107,'why-comtrac'),(108,'features'),(110,'admin_list'),(111,'faq-model'),(112,'faq_admin'),(113,'custom'),(114,'news-model'),(115,'process_action'),(116,'branch_model'),(117,'our_ethos'),(118,'newsletter_form'),(119,'blog_admin'),(120,'branch_admin'),(121,'enquiry_admin'),(122,'subscription_admin'),(123,'category_model'),(124,'choose_category'),(125,'admin_actions'),(126,'main_page');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES (2,2,1,NULL),(2,1,0,NULL),(3,3,0,NULL),(3,4,2,NULL),(4,5,0,NULL),(5,1,0,NULL),(3,92,1,NULL),(104,1,0,NULL),(1,1,0,''),(80,1,0,NULL),(83,1,0,NULL),(83,44,5,NULL),(83,76,3,NULL),(83,82,4,NULL),(1,78,1,''),(83,78,1,NULL),(83,79,2,NULL),(88,79,1,NULL),(105,125,1,''),(88,1,0,NULL),(1,79,2,''),(1,76,3,''),(1,101,4,''),(103,1,0,NULL),(1,102,5,''),(102,122,5,''),(1,103,6,''),(1,104,7,''),(1,105,8,''),(1,106,9,''),(102,119,2,''),(102,167,6,NULL),(102,169,7,NULL),(106,114,1,''),(106,116,3,''),(106,113,2,''),(106,1,0,''),(107,124,18,''),(107,109,17,''),(107,108,16,''),(107,107,15,''),(107,106,14,''),(107,105,13,''),(107,104,12,''),(107,103,11,''),(107,102,10,''),(107,134,9,''),(107,133,8,''),(107,132,7,''),(107,131,6,''),(107,130,5,''),(107,129,4,''),(107,128,3,''),(107,127,2,''),(107,126,1,''),(107,1,0,''),(108,124,26,''),(108,122,25,'{\"label\":\"Third right content\"}'),(108,121,24,'{\"label\":\"Third left content\"}'),(108,131,23,''),(108,134,22,''),(108,142,21,''),(108,140,20,''),(108,138,19,''),(108,136,18,''),(108,130,17,''),(108,133,16,''),(108,132,15,''),(108,129,14,''),(108,128,13,''),(108,145,12,''),(108,144,11,''),(108,127,10,''),(108,126,9,''),(108,109,8,''),(108,108,7,''),(108,107,6,''),(108,106,5,''),(108,105,4,''),(108,104,3,''),(108,103,2,''),(108,102,1,''),(108,1,0,''),(110,1,0,''),(111,1,0,''),(111,148,1,''),(112,1,0,''),(113,1,0,NULL),(114,1,0,''),(102,121,4,''),(102,120,3,''),(102,1,0,''),(102,118,1,''),(115,1,0,''),(111,149,2,''),(111,156,3,NULL),(117,164,6,''),(124,1,0,''),(116,160,3,''),(105,1,0,''),(116,161,4,''),(117,134,5,''),(117,163,4,''),(117,130,3,''),(117,162,2,''),(117,125,1,''),(117,1,0,''),(117,124,7,NULL),(118,165,1,NULL),(118,1,0,''),(119,1,0,''),(120,1,0,''),(121,1,0,''),(106,115,4,''),(106,117,5,''),(106,166,6,NULL),(122,1,0,''),(102,168,8,NULL),(102,170,9,NULL),(102,154,10,''),(102,155,11,''),(102,123,12,''),(102,124,13,''),(116,159,2,''),(114,152,2,''),(114,151,1,''),(123,1,0,''),(1,107,10,''),(1,108,11,''),(1,109,12,''),(1,110,13,''),(1,111,14,''),(1,112,15,''),(1,172,16,NULL),(1,173,17,NULL),(114,44,3,'{\"label\":\"Article Image\"}'),(114,171,4,NULL),(116,158,1,''),(116,1,0,''),(125,1,0,NULL),(126,1,0,NULL);
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitle','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(82,'FieldtypeTextarea','sidebar',0,'Sidebar','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,styleselect|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(44,'FieldtypeImage','post_image',0,'Post Image','{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":1,\"descriptionRows\":1,\"fileSchema\":2}'),(79,'FieldtypeTextarea','summary',1,'Summary','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3}'),(76,'FieldtypeTextarea','body',0,'Body','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"collapsed\":0,\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\"}'),(78,'FieldtypeText','headline',0,'Headline','{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}'),(100,'FieldtypeTextarea','enquiry_bottom',0,'Enquiry bottom block','{\"description\":\"The enquiry block available in all pages bottom. Link to go the \\\"contact us\\\" page\",\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTinyMCE\",\"collapsed\":2,\"required\":1,\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(101,'FieldtypeCheckbox','display_keyfeatures',0,'Display the Key features block','{\"description\":\"Display or not the Key Features\'s block in the current page\"}'),(102,'FieldtypeText','col1_title',0,'Column 1 Title','{\"description\":\"KeyFeature 1 title display in the current page\",\"size\":0,\"maxlength\":2048,\"clone_field\":1}'),(103,'FieldtypeTextarea','col1_content',0,'Column 1 Content','{\"description\":\"Key Features 1\'s content \",\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(104,'FieldtypeText','col2_title',0,'Column 2 Title','{\"size\":0,\"maxlength\":2048,\"clone_field\":1}'),(105,'FieldtypeTextarea','col2_content',0,'Column 2 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(106,'FieldtypeText','col3_title',0,'Column 3 Title','{\"size\":0,\"maxlength\":2048,\"clone_field\":1}'),(107,'FieldtypeTextarea','col3_content',0,'Column 3 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(108,'FieldtypeText','col4_title',0,'Column 4 Title','{\"size\":0,\"maxlength\":2048,\"clone_field\":1}'),(109,'FieldtypeTextarea','col4_content',0,'Column 4 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(110,'FieldtypeText','home_sectiontitle',0,'Home section title',''),(111,'FieldtypeTextarea','home_sectionintro',0,'Home section introduction','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5}'),(112,'FieldtypeTextarea','home_sectioncontent',0,'Home Section Content','{\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5}'),(113,'FieldtypeText','enquiry_company',0,'Enquiry company','{\"size\":0,\"maxlength\":2048}'),(114,'FieldtypeText','enquiry_name',0,'Enquiry name','{\"size\":0,\"maxlength\":2048}'),(115,'FieldtypeText','enquiry_email',0,'Enquiry email',''),(116,'FieldtypeText','enquiry_phone',0,'Enquiry phone',''),(117,'FieldtypeTextarea','enquiry_content',0,'Enquiry demand',''),(118,'FieldtypeTextarea','services_title',0,'Solutions title','{\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5}'),(119,'FieldtypeTextarea','services_subtitle',0,'Solutions subtitle','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(120,'FieldtypeTextarea','services_intro',0,'Solutions introduction','{\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5}'),(121,'FieldtypeTextarea','services_leftcontent',0,'Solutions left content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(147,'FieldtypeTextarea','ACP_scripts_and_styles',0,'Scripts and styles for admin pages','{\"description\":\"Add the .js and .css URLs in this field textarea, one in each line. can be absolute or relative (relative is assumed from the site root eg: site\\/templates\\/styles\\/my.css)\"}'),(122,'FieldtypeTextarea','services_rightcontent',0,'Solutions right content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(123,'FieldtypeTextarea','services_lastcontent',0,'Solutions last content','{\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5,\"textformatters\":[\"TextformatterEntities\"],\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(124,'FieldtypeText','bottom_linkenquiry',0,'Bottom enquiry link','{\"size\":0,\"maxlength\":2048}'),(125,'FieldtypeText','first_title',0,'First title','{\"size\":0,\"maxlength\":2048}'),(126,'FieldtypeText','left_title',0,'Left title',''),(127,'FieldtypeTextarea','left_content',0,'Left content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(128,'FieldtypeText','right_title',0,'Right title',''),(129,'FieldtypeTextarea','right_content',0,'Right content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(130,'FieldtypeText','second_head',0,'Second head title',''),(131,'FieldtypeTextarea','second_subtitle',0,'second_subtitle','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}'),(132,'FieldtypeTextarea','second_left_content',0,'Second left content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(133,'FieldtypeTextarea','second_right_content',0,'Second right content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(134,'FieldtypeText','third_header',0,'Third header',''),(135,'FieldtypeText','fourth_header',0,'Fourth header','{\"size\":0,\"maxlength\":2048}'),(136,'FieldtypeTextarea','second_col1_content',0,'Second Column 1 Content','{\"description\":\"Column 1\'s content \",\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(137,'FieldtypeText','second_col1_title',0,'Second Column 1 Title','{\"description\":\"Col 1 title display in the current page\",\"size\":0,\"maxlength\":2048}'),(138,'FieldtypeTextarea','second_col2_content',0,'Column 2 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(139,'FieldtypeText','second_col2_title',0,'Column 2 Title','{\"size\":0,\"maxlength\":2048}'),(140,'FieldtypeTextarea','second_col3_content',0,'Column 3 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(141,'FieldtypeText','second_col3_title',0,'Column 3 Title','{\"size\":0,\"maxlength\":2048}'),(142,'FieldtypeTextarea','second_col4_content',0,'Column 4 Content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(143,'FieldtypeText','second_col4_title',0,'Column 4 Title','{\"size\":0,\"maxlength\":2048}'),(144,'FieldtypeImage','right_image',0,'Right Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"fileSchema\":2}'),(145,'FieldtypeImage','left_image',0,'Left image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"fileSchema\":2}'),(146,'FieldtypeImage','features_images',0,'Features images','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":4,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"fileSchema\":2}'),(148,'FieldtypeTextarea','faq_question',0,'FAQ Question',''),(149,'FieldtypeTextarea','faq_answer',0,'FAQ Answer',''),(150,'FieldtypeText','news_title',0,'News title',''),(151,'FieldtypeTextarea','news_description',0,'News article','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(152,'FieldtypeDatetime','news_datetime',0,'News date','{\"dateOutputFormat\":\"l, j F Y\",\"size\":25,\"datepicker\":3,\"_dateInputFormat\":\"Y-m-d\",\"dateInputFormat\":\"Y-m-d\",\"_dateOutputFormat\":\"l, j F Y\",\"defaultToday\":1}'),(154,'FieldtypeText','services_quote',0,'Solutions quote','{\"size\":0,\"maxlength\":2048}'),(155,'FieldtypeText','services_quote_author',0,'Solutions quote author','{\"size\":0,\"maxlength\":2048}'),(156,'FieldtypeTextarea','faq_complementary_answer',0,'FAQ Complementary answer','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(162,'FieldtypeText','first_content',0,'First content',''),(158,'FieldtypeText','branch_number',0,'Branch phone number',''),(159,'FieldtypeText','branch_place',0,'Branch place','{\"size\":0,\"maxlength\":2048}'),(160,'FieldtypeText','branch_address',0,'Branch Address',''),(161,'FieldtypeText','branch_city_state_postcode',0,'Branch City / State / Postcode',''),(163,'FieldtypeTextarea','second_content',0,'Second content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5}'),(164,'FieldtypeTextarea','third_content',0,'Third content','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(165,'FieldtypeText','email_field',0,'Email field',''),(166,'FieldtypeCheckbox','enquiry_answered',0,'Enquiry answered?',''),(167,'FieldtypeTextarea','solution_left2',0,'Solutions Left Content 2','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(168,'FieldtypeTextarea','solution_left3',0,'Solutions Left Content 3','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(169,'FieldtypeTextarea','solution_right2',0,'Solutions Right Content 2','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(170,'FieldtypeTextarea','solution_right3',0,'Solutions Right Content 3','{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen,|,spellchecker\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\",\"thirdparty\":\"spellchecker : \\/site\\/tinymce\\/spellchecker\"}'),(171,'FieldtypeFile','blog_file',0,'Article files','{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":2}'),(172,'FieldtypeText','home_video_link',0,'Home video link',''),(173,'FieldtypeText','home_video_title',0,'Home video title','');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',0,''),(2,'FieldtypeNumber',0,''),(3,'FieldtypeText',0,''),(4,'FieldtypePage',0,''),(30,'InputfieldForm',0,''),(6,'FieldtypeFile',0,''),(7,'ProcessPageEdit',1,''),(10,'ProcessLogin',0,''),(147,'TextformatterPstripper',1,''),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}'),(121,'ProcessPageEditLink',1,''),(14,'ProcessPageSort',0,''),(15,'InputfieldPageListSelect',0,''),(117,'JqueryUI',1,''),(17,'ProcessPageAdd',0,''),(125,'SessionLoginThrottle',3,''),(122,'InputfieldPassword',0,''),(25,'InputfieldAsmSelect',0,''),(116,'JqueryCore',1,''),(27,'FieldtypeModule',0,''),(28,'FieldtypeDatetime',0,''),(29,'FieldtypeEmail',0,''),(108,'InputfieldURL',0,''),(32,'InputfieldSubmit',0,''),(33,'InputfieldWrapper',0,''),(34,'InputfieldText',0,''),(35,'InputfieldTextarea',0,''),(36,'InputfieldSelect',0,''),(37,'InputfieldCheckbox',0,''),(38,'InputfieldCheckboxes',0,''),(39,'InputfieldRadios',0,''),(40,'InputfieldHidden',0,''),(41,'InputfieldName',0,''),(43,'InputfieldSelectMultiple',0,''),(45,'JqueryWireTabs',0,''),(46,'ProcessPage',0,''),(47,'ProcessTemplate',0,''),(48,'ProcessField',0,''),(50,'ProcessModule',0,''),(114,'PagePermissions',3,''),(97,'FieldtypeCheckbox',1,''),(115,'PageRender',3,'{\"clearCache\":1}'),(55,'InputfieldFile',0,''),(56,'InputfieldImage',0,''),(57,'FieldtypeImage',0,''),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}'),(61,'TextformatterEntities',0,''),(145,'TextformatterMarkdownExtra',1,''),(146,'TextformatterSmartypants',1,''),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}'),(67,'MarkupAdminDataTable',0,''),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}'),(76,'ProcessList',0,''),(78,'InputfieldFieldset',0,''),(79,'InputfieldMarkup',0,''),(80,'InputfieldEmail',0,''),(89,'FieldtypeFloat',1,''),(83,'ProcessPageView',0,''),(84,'FieldtypeInteger',0,''),(85,'InputfieldInteger',0,''),(86,'InputfieldPageName',0,''),(87,'ProcessHome',0,''),(90,'InputfieldFloat',0,''),(92,'InputfieldTinyMCE',0,''),(94,'InputfieldDatetime',0,''),(98,'MarkupPagerNav',0,''),(129,'ProcessPageEditImageSelect',1,''),(102,'JqueryFancybox',1,''),(103,'JqueryTableSorter',1,''),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title body\",\"displayField\":\"title path\"}'),(105,'FieldtypeFieldsetOpen',1,''),(106,'FieldtypeFieldsetClose',1,''),(107,'FieldtypeFieldsetTabOpen',1,''),(109,'ProcessPageTrash',1,''),(111,'FieldtypePageTitle',1,''),(112,'InputfieldPageTitle',0,''),(113,'MarkupPageArray',3,''),(131,'InputfieldButton',0,''),(133,'FieldtypePassword',1,''),(134,'ProcessPageType',1,'{\"showFields\":[]}'),(135,'FieldtypeURL',1,''),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}'),(137,'InputfieldPageListSelectMultiple',0,''),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\"]}'),(139,'SystemUpdater',1,'{\"systemVersion\":3}'),(148,'MarkupSimpleNavigation',1,''),(149,'ProcessAdminCustomPages',1,''),(150,'ProcessGoogleAnalytics',1,'{\"accessToken\":\"ya29.1.AADtN_UNc8e_D8fRL9BOiHt_qK82tGeZk3CCdZKpDjiMn3g9v4gV8-PUvovb_2126AA11fg\",\"refreshToken\":\"1\\/0fzO76F6rG9J3S3zXIqJ2iGVDVzlyegLls-dAfrp-bA\",\"tokenExpires\":3600,\"tokenCreated\":1390192445,\"clientId\":\"100045680773-t3te42ioqqcffri6l9soe9s4k0cppnhd.apps.googleusercontent.com\",\"clientSecret\":\"bx3wscHOt50M7cm-4DcTVYMj\",\"accountId\":\"ga:80560512\",\"dateRange\":\"m1\",\"compareToPrevious\":1,\"maxResults\":30,\"cacheTime\":1800,\"chartColor\":\"#DB1174\",\"dateFormat\":\"%d %B %Y\",\"dateFormatInput\":\"Y-m-d\",\"startDate\":\"2013-12-19\",\"startDateCompare\":\"2013-11-19\",\"endDate\":\"2014-01-19\"}'),(151,'MarkupCache',3,'');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1,'home',9,'2014-01-07 00:06:04',41,'0000-00-00 00:00:00',2,0),(2,1,2,'processwire',1035,'2013-12-11 17:01:43',40,'0000-00-00 00:00:00',2,15),(3,2,2,'page',21,'2011-03-29 01:37:06',41,'0000-00-00 00:00:00',2,0),(6,3,2,'add',21,'2011-03-29 01:37:06',41,'0000-00-00 00:00:00',2,0),(7,1,2,'trash',1039,'2011-08-14 02:04:52',41,'2010-02-06 09:29:39',2,17),(8,3,2,'list',21,'2011-03-29 01:37:06',41,'0000-00-00 00:00:00',2,1),(9,3,2,'sort',23,'2011-03-29 01:37:06',41,'0000-00-00 00:00:00',2,2),(10,3,2,'edit',21,'2011-03-29 01:37:06',41,'0000-00-00 00:00:00',2,3),(11,22,2,'template',21,'2011-03-29 01:37:06',41,'2010-01-31 15:04:54',2,0),(16,22,2,'field',21,'2011-03-29 01:37:06',41,'2010-01-31 16:44:07',2,2),(21,2,2,'module',21,'2011-03-29 01:37:06',41,'2010-02-01 14:02:24',2,8),(22,2,2,'setup',21,'2011-03-29 01:37:06',41,'2010-02-08 16:16:59',2,7),(23,2,2,'login',1035,'2011-05-03 03:38:10',41,'2010-02-16 13:59:39',2,11),(27,1,29,'http404',1035,'2011-08-14 02:04:52',41,'2010-06-02 10:53:03',3,16),(28,2,2,'access',13,'2011-05-03 03:38:10',41,'2011-03-18 23:14:20',2,9),(29,28,2,'users',29,'2011-04-04 04:39:08',41,'2011-03-18 23:15:29',2,0),(30,28,2,'roles',29,'2011-04-04 04:38:39',41,'2011-03-18 23:15:45',2,1),(31,28,2,'permissions',29,'2011-04-04 04:53:52',41,'2011-03-18 23:16:00',2,2),(32,31,5,'page-edit',25,'2011-09-05 19:34:24',41,'2011-03-18 23:17:03',2,2),(34,31,5,'page-delete',25,'2011-09-05 19:34:33',41,'2011-03-18 23:17:23',2,3),(35,31,5,'page-move',25,'2011-09-05 19:34:48',41,'2011-03-18 23:17:41',2,4),(36,31,5,'page-view',25,'2011-09-05 19:34:14',41,'2011-03-18 23:17:57',2,0),(37,30,4,'guest',25,'2011-04-04 05:37:19',41,'2011-03-18 23:18:41',2,0),(38,30,4,'superuser',25,'2011-08-16 18:34:39',41,'2011-03-18 23:18:55',2,1),(41,29,3,'admin',1,'2013-12-19 23:56:25',41,'2011-03-18 23:41:26',2,0),(40,29,3,'guest',25,'2011-08-16 18:26:09',41,'2011-03-19 21:31:59',2,1),(50,31,5,'page-sort',25,'2011-09-05 19:34:58',41,'2011-03-26 02:04:50',41,5),(51,31,5,'page-template',25,'2011-09-05 19:35:09',41,'2011-03-26 02:25:31',41,6),(52,31,5,'user-admin',25,'2011-09-05 19:35:42',41,'2011-03-29 04:06:47',41,10),(53,31,5,'profile-edit',1,'2011-08-16 02:32:48',41,'2011-04-25 04:02:22',41,13),(54,31,5,'page-lock',1,'2011-08-14 21:48:12',41,'2011-08-14 21:45:48',41,8),(300,3,2,'search',21,'2011-03-29 01:37:06',41,'2010-08-03 09:23:59',2,5),(301,3,2,'trash',23,'2011-03-29 01:37:06',41,'2010-09-27 09:39:30',2,5),(302,3,2,'link',17,'2011-03-29 01:37:06',41,'2010-09-30 09:03:56',2,6),(303,3,2,'image',17,'2011-03-29 01:37:06',41,'2010-10-12 07:56:48',2,7),(304,2,2,'profile',1025,'2011-05-03 03:38:10',41,'2011-04-25 03:57:18',41,10),(1000,1026,26,'search',1025,'2014-01-20 04:33:24',41,'2010-09-05 09:05:28',2,3),(1018,1016,48,'administrative-investigations',1,'2013-12-28 01:53:34',41,'2013-12-15 17:37:03',41,1),(1017,1016,48,'criminal-investigations',1,'2013-12-19 13:51:15',41,'2013-12-15 17:36:31',41,0),(1014,1012,54,'features',1,'2013-12-31 03:17:51',41,'2013-12-15 17:34:06',41,1),(1015,1012,50,'faq',1,'2013-12-31 03:18:24',41,'2013-12-15 17:34:23',41,2),(1016,1,72,'solutions',1,'2014-01-20 03:12:17',41,'2013-12-15 17:35:20',41,5),(1013,1012,53,'why-comtrac',1,'2014-01-06 01:15:02',41,'2013-12-15 17:33:49',41,0),(1012,1,72,'how-it-works',1,'2014-01-20 03:12:04',41,'2013-12-15 17:32:21',41,4),(1019,1016,48,'incident-investigations',1,'2013-12-31 00:20:49',41,'2013-12-15 17:37:27',41,2),(1020,1016,48,'regulatory-inspection',1,'2013-12-31 00:21:16',41,'2013-12-15 17:37:43',41,3),(1021,1016,48,'electronic-notebook',1,'2013-12-28 01:01:29',41,'2013-12-15 17:38:05',41,4),(1023,1,72,'company',1,'2014-01-20 03:12:32',41,'2013-12-15 17:47:52',41,6),(1024,1023,29,'company-profile',1025,'2013-12-19 14:14:14',41,'2013-12-15 17:48:17',41,0),(1025,1023,63,'our-ethos',1,'2013-12-31 03:31:50',41,'2013-12-15 17:48:45',41,1),(1026,1023,49,'blog',1,'2013-12-15 17:49:05',41,'2013-12-15 17:49:02',41,2),(1027,1023,51,'contact',1,'2013-12-18 16:56:07',41,'2013-12-15 17:49:20',41,3),(1036,2,65,'news-list',1,'2013-12-18 19:18:46',41,'2013-12-16 22:38:09',41,1),(1035,1,29,'newsletter-subscription',1025,'2013-12-18 17:02:04',41,'2013-12-16 22:34:05',41,8),(1030,1032,57,'who-is-comtrac-for',1,'2013-12-16 22:05:20',41,'2013-12-16 21:46:24',41,8),(1031,1,29,'enquiries',1025,'2013-12-18 17:01:25',41,'2013-12-16 21:52:30',41,7),(1032,1,29,'faqs',1025,'2013-12-18 15:50:06',41,'2013-12-16 22:04:44',41,9),(1034,2,58,'faq-list',1,'2013-12-18 14:31:51',41,'2013-12-16 22:27:56',41,2),(1037,1,61,'mailer',1025,'2013-12-17 16:24:34',41,'2013-12-17 16:24:28',41,10),(1038,1093,69,'articles',1025,'2014-01-20 03:29:08',41,'2013-12-17 17:40:40',41,14),(1040,1093,69,'home',1025,'2014-01-20 03:28:51',41,'2013-12-17 20:41:45',41,11),(1043,1038,60,'case-management-mirage',1,'2013-12-28 05:18:48',41,'2013-12-17 22:01:13',41,1),(1042,7,60,'1042_comtrac-now-being-used-as-the-lead-investigation-system-by-the-queensland-police',8193,'2013-12-27 07:58:23',41,'2013-12-17 21:59:57',41,0),(1044,1038,60,'interpol-environment-european-law-enforcement',1,'2013-12-30 21:51:20',41,'2013-12-17 22:01:42',41,2),(1045,1040,60,'patent-technology-investigation',1,'2013-12-28 04:47:13',41,'2013-12-18 14:36:28',41,0),(1046,1040,60,'act-planning-land-authority',1,'2013-12-28 06:59:54',41,'2013-12-18 14:38:04',41,1),(1047,1040,60,'nsw-mine-safety-investigations',1,'2013-12-28 07:11:17',41,'2013-12-18 14:39:01',41,2),(1048,1040,60,'nt-police-commence-trial',1,'2013-12-28 06:48:18',41,'2013-12-18 14:39:40',41,3),(1049,1032,57,'where-is-the-database-located',1,'2013-12-28 01:42:22',41,'2013-12-18 15:45:56',41,1),(1050,1032,57,'how-is-information-security-maintained',1,'2013-12-28 01:43:47',41,'2013-12-18 15:47:07',41,2),(1051,1032,57,'what-level-of-support-is-available',1,'2013-12-18 15:53:14',41,'2013-12-18 15:52:53',41,3),(1052,1032,57,'does-it-need-to-be-customised-to-our-agency',1,'2013-12-18 15:53:36',41,'2013-12-18 15:53:26',41,4),(1053,1032,57,'can-comtrac-integrate-with-existing-databases',1,'2013-12-18 15:54:00',41,'2013-12-18 15:53:49',41,5),(1054,1032,57,'are-there-ongoing-maintenance-fees',1,'2013-12-18 15:54:26',41,'2013-12-18 15:54:16',41,6),(1055,1032,57,'what-are-the-contract-periods',1,'2013-12-18 15:54:48',41,'2013-12-18 15:54:41',41,7),(1056,1032,57,'can-the-database-have-different-access-and-security-levels',1,'2013-12-18 15:55:06',41,'2013-12-18 15:54:58',41,8),(1057,1032,57,'how-long-is-implementation-time',1,'2013-12-18 15:55:34',41,'2013-12-18 15:55:24',41,9),(1058,1032,57,'can-electronic-forms-be-adjusted',1,'2013-12-18 15:55:53',41,'2013-12-18 15:55:43',41,10),(1059,1032,57,'does-it-work-on-mobile-devices',1,'2013-12-18 15:56:17',41,'2013-12-18 15:56:09',41,11),(1060,1032,57,'what-type-of-investigations-does-it-cater-for',1,'2013-12-18 15:56:57',41,'2013-12-18 15:56:39',41,12),(1061,1,29,'branches',1025,'2013-12-18 16:22:41',41,'2013-12-18 16:22:31',41,12),(1064,1061,62,'brisbane',1,'2014-01-04 07:57:33',41,'2013-12-18 16:31:16',41,0),(1065,7,62,'1065_sydney',8193,'2014-01-04 07:55:57',41,'2013-12-18 16:32:10',41,1),(1066,7,62,'1066_melbourne',8193,'2014-01-04 07:56:07',41,'2013-12-18 16:32:32',41,2),(1072,2,66,'branches',1,'2013-12-18 20:08:18',41,'2013-12-18 20:08:18',41,3),(1073,2,67,'enquiries',1,'2013-12-18 20:24:40',41,'2013-12-18 20:24:40',41,4),(1074,2,68,'subscriptions',1,'2013-12-18 20:50:06',41,'2013-12-18 20:50:06',41,5),(1075,2,2,'google-analytics',1,'2013-12-18 21:42:57',41,'2013-12-18 21:42:57',41,6),(1076,31,5,'ga-view',1,'2013-12-18 21:42:57',41,'2013-12-18 21:42:57',41,9),(1077,1016,48,'investigation-management',1,'2013-12-28 02:27:03',41,'2013-12-19 22:42:49',41,6),(1093,1,70,'blog-categories',1025,'2013-12-30 06:31:38',41,'2013-12-22 19:56:13',41,13),(1098,7,64,'1098_mike-digital8.com.au',8193,'2013-12-24 05:52:46',41,'2013-12-24 04:04:38',41,0),(1101,1100,60,'new-article',8193,'2013-12-24 04:22:55',41,'2013-12-24 04:22:36',41,0),(1100,7,69,'1100_new-category',8193,'2013-12-24 04:23:41',41,'2013-12-24 04:22:16',41,2),(1102,7,52,'1102_mike-test-digital8',8193,'2013-12-24 05:52:19',41,'2013-12-24 05:46:19',41,0),(1103,7,64,'1103_mickael-digital8.com.au',8193,'2013-12-24 05:52:39',41,'2013-12-24 05:49:01',41,1),(1104,7,52,'1104_mike-fromhome-digital8',8193,'2013-12-24 05:52:25',41,'2013-12-24 05:49:30',41,1),(1105,7,52,'1105_mike-fromcontact-digital8',8193,'2013-12-24 05:52:31',41,'2013-12-24 05:50:01',41,2),(1106,7,52,'1106_brook-test',8193,'2013-12-24 07:12:29',41,'2013-12-24 05:59:48',40,0),(1107,1093,69,'test-blog',1,'2014-01-20 03:28:23',41,'2013-12-24 06:33:22',41,2),(1108,7,60,'1108_always-be-great',8193,'2013-12-24 06:39:59',41,'2013-12-24 06:35:26',41,0),(1109,7,69,'1109_fgfgfgrg',8193,'2013-12-28 00:09:34',41,'2013-12-24 06:43:29',41,3),(1110,1109,60,'rtyerty',8193,'2013-12-24 06:44:35',41,'2013-12-24 06:44:07',41,0),(1111,7,60,'1111_jkhjkhjkhjkjh',8193,'2013-12-24 07:04:00',41,'2013-12-24 06:47:41',41,1),(1112,1093,69,'test-two',1,'2014-01-20 03:28:40',41,'2013-12-24 06:50:37',41,4),(1113,7,60,'1113_test-two-post-title',8193,'2013-12-24 06:59:05',41,'2013-12-24 06:54:20',41,0),(1114,7,69,'1114_cat',8193,'2013-12-27 22:24:52',41,'2013-12-24 06:59:24',41,5),(1115,1031,52,'test-test',1,'2013-12-24 07:11:30',41,'2013-12-24 07:11:30',41,1),(1116,1035,64,'test-gmail.com',1,'2013-12-24 07:12:03',41,'2013-12-24 07:12:03',41,0),(1117,1031,52,'michael-digital8',1,'2013-12-27 01:48:53',40,'2013-12-27 01:48:53',40,1),(1118,7,60,'1118_details',8193,'2013-12-28 04:24:38',41,'2013-12-28 04:22:22',41,0),(1119,1038,60,'investigation-management-methodology',1,'2013-12-29 12:56:21',41,'2013-12-28 05:39:37',41,2),(1120,7,52,'1120_mike-digital8-digital8',8193,'2013-12-30 06:30:18',41,'2013-12-30 06:29:47',41,2),(1121,1031,52,'mike-digital8-digital8-1',1,'2013-12-30 06:29:48',41,'2013-12-30 06:29:48',41,3),(1122,1031,52,'mike-test-digital8',1,'2013-12-30 06:39:03',41,'2013-12-30 06:39:03',41,3),(1123,1,71,'admin-actions',1025,'2013-12-30 06:59:10',41,'2013-12-30 06:43:42',41,13),(1124,7,69,'1124_test',8193,'2013-12-30 06:59:54',41,'2013-12-30 06:59:33',41,4),(1125,1124,60,'test-article',10241,'2013-12-30 06:59:39',41,'2013-12-30 06:59:39',41,0),(1126,1035,64,'skye-bprs.com.au',1,'2013-12-31 03:32:17',41,'2013-12-31 03:32:17',41,1),(1127,7,60,'1127_tetdsx',10241,'2014-01-02 00:11:13',41,'2014-01-02 00:10:11',41,0),(1128,1031,52,'brett-irwin-ato',1,'2014-01-02 23:51:36',40,'2014-01-02 23:51:36',40,4),(1129,7,29,'1129_comtrac-information',9217,'2014-01-03 04:18:14',41,'2014-01-03 04:11:27',41,14),(1130,1,63,'comtrac-information-overview',2049,'2014-01-03 04:21:50',41,'2014-01-03 04:18:44',41,14),(1131,1040,60,'ima-opens-office-in-europe',2049,'2014-01-03 05:43:04',41,'2014-01-03 05:40:33',41,4),(1132,1038,60,'comtrac-lands-in-europe',1,'2014-01-05 04:19:27',41,'2014-01-04 00:04:56',41,5),(1133,1061,62,'europe',1,'2014-01-04 07:54:57',41,'2014-01-04 07:52:11',41,3),(1134,1035,64,'cdoran-icets.com.au',1,'2014-01-05 02:57:36',40,'2014-01-05 02:57:36',40,2),(1135,1035,64,'jrrtrade-gmail.com',1,'2014-01-06 00:17:51',40,'2014-01-06 00:17:51',40,3),(1136,1112,60,'information',2049,'2014-01-07 07:32:20',41,'2014-01-07 07:32:20',41,0),(1137,1031,52,'skye-bprs',1,'2014-01-07 07:40:54',41,'2014-01-07 07:40:54',41,5),(1138,1035,64,'mike-digital8.com.au',1,'2014-01-13 05:16:38',41,'2014-01-13 05:16:38',41,4),(1139,1035,64,'mickael-digital8.com.au',1,'2014-01-13 05:19:04',41,'2014-01-13 05:19:04',41,5),(1140,1031,52,'mike-test-digital8-1',1,'2014-01-20 03:33:38',41,'2014-01-20 03:33:38',41,6);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES (37,2,'2011-09-05 16:10:09'),(38,2,'2011-09-05 16:10:09'),(32,2,'2011-09-05 16:10:09'),(34,2,'2011-09-05 16:10:09'),(35,2,'2011-09-05 16:10:09'),(36,2,'2011-09-05 16:10:09'),(50,2,'2011-09-05 16:10:09'),(51,2,'2011-09-05 16:10:09'),(52,2,'2011-09-05 16:10:09'),(53,2,'2011-09-05 16:10:09'),(54,2,'2011-09-05 16:10:09'),(1016,1,'2013-12-15 17:35:20'),(1012,1,'2013-12-15 17:32:21'),(1023,1,'2013-12-15 17:47:52'),(1000,1,'2014-01-20 04:33:24'),(1140,1,'2014-01-20 03:33:38'),(1037,1,'2013-12-17 16:24:28'),(1035,1,'2013-12-18 17:02:04'),(1053,1,'2013-12-18 15:53:49'),(1034,2,'2013-12-16 22:28:35'),(1124,2,'2013-12-30 06:59:54'),(1125,2,'2013-12-30 06:59:54'),(1052,1,'2013-12-18 15:53:26'),(1051,1,'2013-12-18 15:52:53'),(1032,1,'2013-12-18 15:49:25'),(1054,1,'2013-12-18 15:54:16'),(1055,1,'2013-12-18 15:54:41'),(1056,1,'2013-12-18 15:54:58'),(1057,1,'2013-12-18 15:55:24'),(1058,1,'2013-12-18 15:55:43'),(1059,1,'2013-12-18 15:56:09'),(1060,1,'2013-12-18 15:56:39'),(1061,1,'2013-12-18 16:22:31'),(1064,1,'2013-12-18 16:31:16'),(1065,2,'2014-01-04 07:55:57'),(1066,2,'2014-01-04 07:56:07'),(1031,1,'2013-12-18 17:01:25'),(1093,1,'2013-12-22 19:56:13'),(1036,2,'2013-12-18 19:18:46'),(1072,2,'2013-12-18 20:08:18'),(1073,2,'2013-12-18 20:24:40'),(1074,2,'2013-12-18 20:50:06'),(1076,2,'2013-12-18 21:42:57'),(1098,2,'2013-12-24 05:52:46'),(1100,2,'2013-12-24 04:23:41'),(1101,2,'2013-12-24 04:23:41'),(1102,2,'2013-12-24 05:52:19'),(1103,2,'2013-12-24 05:52:39'),(1104,2,'2013-12-24 05:52:25'),(1105,2,'2013-12-24 05:52:31'),(1106,2,'2013-12-24 07:12:29'),(1123,1,'2013-12-30 06:43:42'),(1108,2,'2013-12-24 06:39:59'),(1109,2,'2013-12-28 00:09:34'),(1110,2,'2013-12-28 00:09:34'),(1111,2,'2013-12-24 07:04:00'),(1122,1,'2013-12-30 06:39:03'),(1113,2,'2013-12-24 06:59:05'),(1114,2,'2013-12-27 22:24:52'),(1115,1,'2013-12-24 07:11:30'),(1116,1,'2013-12-24 07:12:03'),(1117,1,'2013-12-27 01:48:53'),(1042,2,'2013-12-27 07:58:23'),(1118,2,'2013-12-28 04:24:38'),(1127,2,'2014-01-02 00:11:13'),(1126,1,'2013-12-31 03:32:17'),(1120,2,'2013-12-30 06:30:18'),(1121,1,'2013-12-30 06:29:48'),(1128,1,'2014-01-02 23:51:36'),(1129,2,'2014-01-03 04:18:14'),(1130,1,'2014-01-03 04:18:44'),(1138,1,'2014-01-13 05:16:38'),(1107,1,'2014-01-13 00:04:19'),(1133,1,'2014-01-04 07:52:11'),(1134,1,'2014-01-05 02:57:36'),(1135,1,'2014-01-06 00:17:51'),(1040,1,'2014-01-13 00:04:46'),(1137,1,'2014-01-07 07:40:54'),(1038,1,'2014-01-13 00:03:21'),(1112,1,'2014-01-13 00:04:33'),(1139,1,'2014-01-13 05:19:04');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28),(1012,1),(1016,1),(1023,1),(1026,1),(1026,1023),(1031,1),(1032,1),(1035,1),(1038,1),(1038,1093),(1040,1),(1040,1093),(1061,1),(1100,1),(1100,7),(1109,1),(1109,7),(1112,1),(1112,1093),(1124,1),(1124,7);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"roles\":[37]}'),(29,'basic-page',83,0,0,'{\"slashUrls\":1}'),(26,'search',80,0,0,'{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1}'),(34,'sitemap',88,0,0,'{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1}'),(51,'contact',105,0,0,'{\"slashUrls\":1}'),(50,'faq',104,0,0,'{\"slashUrls\":1}'),(48,'solutions',102,0,0,'{\"slashUrls\":1}'),(49,'blog',103,0,0,'{\"slashUrls\":1}'),(52,'enquiry_form',106,0,0,'{\"slashUrls\":1}'),(53,'why-comtrac',107,0,0,'{\"slashUrls\":1}'),(54,'features',108,0,0,'{\"slashUrls\":1}'),(56,'admin_list',110,0,0,'{\"slashUrls\":1,\"altFilename\":\"admin\"}'),(57,'faq-model',111,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(58,'faq_admin',112,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(59,'custom',113,0,0,'{\"slashUrls\":1}'),(60,'news-model',114,0,0,'{\"slashUrls\":1}'),(61,'process_action',115,0,0,'{\"slashUrls\":1}'),(62,'branch_model',116,0,0,'{\"slashUrls\":1}'),(63,'our_ethos',117,0,0,'{\"slashUrls\":1}'),(64,'newsletter_form',118,0,0,'{\"slashUrls\":1}'),(65,'blog_admin',119,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(66,'branch_admin',120,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(67,'enquiry_admin',121,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(68,'subscription_admin',122,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(69,'category_model',123,0,0,'{\"slashUrls\":1}'),(70,'choose_category',124,0,0,'{\"slashUrls\":1,\"altFilename\":\"custom\"}'),(71,'admin_actions',125,0,0,'{\"slashUrls\":1}'),(72,'main_page',126,0,0,'{\"slashUrls\":1}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-21  7:16:15
