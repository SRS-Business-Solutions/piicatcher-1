-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: soars
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `attachment`
--

CREATE DATABASE soars;

USE soars;

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_to_file` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_document_verified` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10858 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `attpayment`
--

DROP TABLE IF EXISTS `attpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attpayment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `methodof_payment_name` varchar(255) DEFAULT NULL,
  `remaining_clc` bigint(20) DEFAULT NULL,
  `totalclcs_used_between_date` bigint(20) DEFAULT NULL,
  `totalclcs_used_to_date` bigint(20) DEFAULT NULL,
  `total_valueof_clc` bigint(20) DEFAULT NULL,
  `total_valueof_clc_before_feb2012` bigint(20) DEFAULT NULL,
  `total_valueof_clc_lastyear` float DEFAULT NULL,
  `total_valueof_clc_thisyear` bigint(20) DEFAULT NULL,
  `total_valueof_clcfor2011` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_blvsbtsjpbjdlr6m40d0vl07j` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `attrequestor`
--

DROP TABLE IF EXISTS `attrequestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attrequestor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `att_payment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_j2qpcnuvh2atesm3veu7n949b` (`lestat_id`),
  KEY `FK_hkt5ucml5p8kllcfwle4lidtj` (`att_payment_id`),
  CONSTRAINT `FK_hkt5ucml5p8kllcfwle4lidtj` FOREIGN KEY (`att_payment_id`) REFERENCES `attpayment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bdm_project_manager_duo`
--

DROP TABLE IF EXISTS `bdm_project_manager_duo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdm_project_manager_duo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `bdm_id` bigint(20) DEFAULT NULL,
  `project_manager_id` bigint(20) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4hhik72dl8p0v35aq5l09axpk` (`bdm_id`),
  KEY `FK_cm6i75mo9ogsb2pmsgruc27rf` (`project_manager_id`),
  KEY `FK_8fe4im8qsdlncqdii12d6tgfx` (`finance_manager_id`),
  CONSTRAINT `FK_4hhik72dl8p0v35aq5l09axpk` FOREIGN KEY (`bdm_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_8fe4im8qsdlncqdii12d6tgfx` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_cm6i75mo9ogsb2pmsgruc27rf` FOREIGN KEY (`project_manager_id`) REFERENCES `planner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booked_all_big_data`
--

DROP TABLE IF EXISTS `booked_all_big_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booked_all_big_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `booked_all_id` bigint(20) DEFAULT NULL,
  `booked_sub_category` varchar(255) DEFAULT NULL,
  `booking_amount` float DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `deal_type` varchar(255) DEFAULT NULL,
  `delivery_type` varchar(255) DEFAULT NULL,
  `enrollment_type` varchar(255) DEFAULT NULL,
  `fiscal_month` varchar(255) DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `lob` varchar(255) DEFAULT NULL,
  `sales_theater` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bupercentage_split`
--

DROP TABLE IF EXISTS `bupercentage_split`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bupercentage_split` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `percentage_split` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `company_add1` varchar(255) DEFAULT NULL,
  `company_add2` varchar(255) DEFAULT NULL,
  `company_add3` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT NULL,
  `company_group` varchar(255) DEFAULT NULL,
  `company_state` varchar(255) DEFAULT NULL,
  `company_zip` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `portfolio` varchar(255) DEFAULT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `company_origin` varchar(255) DEFAULT NULL,
  `company_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_58wkux4018e2n7vn9jxdan1mp` (`lestat_id`),
  KEY `FK_6375rhh2tyjm32i7i1r8lb4ew` (`country_id`),
  CONSTRAINT `FK_6375rhh2tyjm32i7i1r8lb4ew` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6531 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_tracking`
--

DROP TABLE IF EXISTS `company_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2563 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `current_theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4oknkr97c32dox216raxueamr` (`lestat_id`),
  KEY `FK_6jeosuifo3ss7h4fhp2uoflen` (`current_theater_id`),
  CONSTRAINT `FK_6jeosuifo3ss7h4fhp2uoflen` FOREIGN KEY (`current_theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countryinfo`
--

DROP TABLE IF EXISTS `countryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countryinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iso_alpha2` char(2) DEFAULT NULL,
  `iso_alpha3` char(3) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `continent` char(2) DEFAULT NULL,
  `geonameid` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iso_alpha2` (`iso_alpha2`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `clicommands` longtext,
  `approve_type` int(11) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `audience` longtext,
  `course_acronym` varchar(255) DEFAULT NULL,
  `course_com_percent` int(11) DEFAULT NULL,
  `coursedsfinal` int(11) DEFAULT NULL,
  `course_equipment_list` longtext,
  `course_partner_flag` bit(1) DEFAULT NULL,
  `course_revision` int(11) DEFAULT NULL,
  `course_scheduleurl` varchar(255) DEFAULT NULL,
  `course_topology_file_name` varchar(255) DEFAULT NULL,
  `course_topology_link` varchar(255) DEFAULT NULL,
  `course_type` int(11) DEFAULT NULL,
  `coursedsedit` int(11) DEFAULT NULL,
  `coursedspub` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customerpo` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `description` longtext,
  `dev_end_date` datetime DEFAULT NULL,
  `dev_start_date` datetime DEFAULT NULL,
  `devdocloc` varchar(255) DEFAULT NULL,
  `developer_notes` longtext,
  `duration` int(11) DEFAULT NULL,
  `gilmore_course_acornym` varchar(255) DEFAULT NULL,
  `is_internal_course` bit(1) DEFAULT NULL,
  `lab_outline` longtext,
  `lestat_id` bigint(20) DEFAULT NULL,
  `materials` longtext,
  `number` varchar(255) DEFAULT NULL,
  `objectives` longtext,
  `outline` longtext,
  `pic_acronym` varchar(255) DEFAULT NULL,
  `pic_audienceam` int(11) DEFAULT NULL,
  `pic_audiencecp` int(11) DEFAULT NULL,
  `pic_audience_cust` int(11) DEFAULT NULL,
  `pic_audiencese` int(11) DEFAULT NULL,
  `pic_delivery_method` varchar(255) DEFAULT NULL,
  `piceol` varchar(255) DEFAULT NULL,
  `piceoldate` varchar(255) DEFAULT NULL,
  `piceoldifference` longtext,
  `piceolreplace` varchar(255) DEFAULT NULL,
  `picfcsdate` varchar(255) DEFAULT NULL,
  `pic_key_words` varchar(255) DEFAULT NULL,
  `picttt` int(11) DEFAULT NULL,
  `pic_technology` varchar(255) DEFAULT NULL,
  `pic_version` varchar(255) DEFAULT NULL,
  `prerequisites_txt` longtext,
  `sme` longtext,
  `special_note` varchar(255) DEFAULT NULL,
  `srp` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `topology_url` varchar(255) DEFAULT NULL,
  `course_domain_id` bigint(20) DEFAULT NULL,
  `course_replaced_id` bigint(20) DEFAULT NULL,
  `course_revised_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_sub_org_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `technology_id` bigint(20) DEFAULT NULL,
  `modality_id` bigint(20) DEFAULT NULL,
  `list_price` varchar(255) DEFAULT NULL,
  `is_kit_delivery` bit(1) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `course_group_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_j9splb2fdwaldqenudkv7d5tq` (`lestat_id`),
  KEY `FK_7s8stt3c8kbc23xywf9ppp3qn` (`course_domain_id`),
  KEY `FK_gtn3rnnrvsqxwrdy18rtsrfmi` (`course_replaced_id`),
  KEY `FK_p71qgs04tx6knsl9txud3s4ld` (`course_revised_id`),
  KEY `FK_a19r9r8xwuyqwviwpdcdygy7c` (`customer_id`),
  KEY `FK_fglnhcyh8348hn9it0pevkwvs` (`customer_sub_org_id`),
  KEY `FK_4j33ao87t2eo6t3dunlh3rrbb` (`partner_id`),
  KEY `FK_d9byu782hrre57xxmaerkgd01` (`technology_id`),
  KEY `FK_dgpiiwjk4phanviyocm6li1e3` (`modality_id`),
  CONSTRAINT `FK_4j33ao87t2eo6t3dunlh3rrbb` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `FK_7s8stt3c8kbc23xywf9ppp3qn` FOREIGN KEY (`course_domain_id`) REFERENCES `course_domain` (`id`),
  CONSTRAINT `FK_a19r9r8xwuyqwviwpdcdygy7c` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_d9byu782hrre57xxmaerkgd01` FOREIGN KEY (`technology_id`) REFERENCES `technology` (`id`),
  CONSTRAINT `FK_dgpiiwjk4phanviyocm6li1e3` FOREIGN KEY (`modality_id`) REFERENCES `course_modality` (`id`),
  CONSTRAINT `FK_fglnhcyh8348hn9it0pevkwvs` FOREIGN KEY (`customer_sub_org_id`) REFERENCES `customer_sub_org` (`id`),
  CONSTRAINT `FK_gtn3rnnrvsqxwrdy18rtsrfmi` FOREIGN KEY (`course_replaced_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_p71qgs04tx6knsl9txud3s4ld` FOREIGN KEY (`course_revised_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2677 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_attachment`
--

DROP TABLE IF EXISTS `course_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k4rke6ur2l65rkpjxn7s0d6fi` (`attachment_id`),
  KEY `FK_m09milcqtf5ps3iimd85ub68w` (`course_id`),
  CONSTRAINT `FK_k4rke6ur2l65rkpjxn7s0d6fi` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK_m09milcqtf5ps3iimd85ub68w` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_domain`
--

DROP TABLE IF EXISTS `course_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `cln_program_code` varchar(255) DEFAULT NULL,
  `course_domain_id` bigint(20) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ehd255ymtp7rw9ts7tqcwbeha` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_instructor`
--

DROP TABLE IF EXISTS `course_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `dev` bit(1) DEFAULT NULL,
  `dev_end_date` datetime DEFAULT NULL,
  `dev_start_date` datetime DEFAULT NULL,
  `dev_work_load` int(11) DEFAULT NULL,
  `inst` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `own` bit(1) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  `training` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_avea6t8oe4ri3oiei88k9bpli` (`lestat_id`),
  KEY `FK_bdfiphtnygbtoggux4ileqk9l` (`course_id`),
  KEY `FK_k02ymqi7madnaxlabf58veu5b` (`instructor_id`),
  CONSTRAINT `FK_bdfiphtnygbtoggux4ileqk9l` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_k02ymqi7madnaxlabf58veu5b` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9426 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_lab_system`
--

DROP TABLE IF EXISTS `course_lab_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lab_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `lab_system_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7n5f5868h7sfdbwxpob8ueflq` (`lestat_id`),
  KEY `FK_8f760mgoc155bg28fuen4e2y9` (`course_id`),
  KEY `FK_1ckid1e99t7xebokbumf69hvw` (`lab_system_id`),
  CONSTRAINT `FK_1ckid1e99t7xebokbumf69hvw` FOREIGN KEY (`lab_system_id`) REFERENCES `lab_system` (`id`),
  CONSTRAINT `FK_8f760mgoc155bg28fuen4e2y9` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1406 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_modality`
--

DROP TABLE IF EXISTS `course_modality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_modality` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_note`
--

DROP TABLE IF EXISTS `course_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `note` longtext,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4ktqf3fhadipvlf9nlvg606m9` (`lestat_id`),
  KEY `FK_2huevlvter0a1muu80ou6sunc` (`course_id`),
  CONSTRAINT `FK_2huevlvter0a1muu80ou6sunc` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_tracking`
--

DROP TABLE IF EXISTS `course_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6855 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `authorized_date` datetime DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `cc_comments` longtext,
  `comments` longtext,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `financial_group` int(11) DEFAULT NULL,
  `inv_submit_date` datetime DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `is_authorized` bit(1) DEFAULT NULL,
  `is_cancelled` bit(1) DEFAULT NULL,
  `is_invoice_submitted` bit(1) DEFAULT NULL,
  `is_invoiced` bit(1) DEFAULT NULL,
  `is_recognized` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `recognized_date` datetime DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `student_first_name` varchar(255) DEFAULT NULL,
  `student_last_name` varchar(255) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `trans_sub` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4cv8t72to19pghqhbdxb13mgx` (`lestat_id`),
  KEY `FK_kwfsravf10q1ebvp610yi18q` (`student_id`),
  KEY `FK_ngnqp47x3fsijmoo04a42w3af` (`theater_id`),
  CONSTRAINT `FK_kwfsravf10q1ebvp610yi18q` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_ngnqp47x3fsijmoo04a42w3af` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `company_type` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o47iyceioby8dp7dqcs82aj3q` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10765 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_sub_org`
--

DROP TABLE IF EXISTS `customer_sub_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_sub_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_su4h3l52wh3v3twyrqt0v65qg` (`lestat_id`),
  KEY `FK_q7p7a9m8wlak5sij7amxh1mit` (`customer_id`),
  CONSTRAINT `FK_q7p7a9m8wlak5sij7amxh1mit` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11476 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_tracking`
--

DROP TABLE IF EXISTS `customer_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `cancellation_policy` longtext,
  `course_labs` longtext,
  `course_materials` longtext,
  `email_subject` varchar(255) DEFAULT NULL,
  `iscll` bit(1) DEFAULT NULL,
  `isdcloud` bit(1) DEFAULT NULL,
  `isepnm` bit(1) DEFAULT NULL,
  `is_hardware` bit(1) DEFAULT NULL,
  `is_web_access` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `student_logistics` longtext,
  `type` int(11) DEFAULT NULL,
  `vilt_info` longtext,
  `modality_id` bigint(20) DEFAULT NULL,
  `is_non_standard` bit(1) DEFAULT NULL,
  `is_not_required` bit(1) DEFAULT NULL,
  `email_type` int(11) DEFAULT NULL,
  `isclllab` bit(1) DEFAULT NULL,
  `building_access` longtext,
  `customer_logistics` longtext,
  `tech_req_for_students` longtext,
  `lab_credentials` longtext,
  `web_ex_details` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_40heb6h0y1xv9ovoookd0oitb` (`lestat_id`),
  KEY `FK_eps6uws644rqesj7knk7xhtiy` (`modality_id`),
  CONSTRAINT `FK_eps6uws644rqesj7knk7xhtiy` FOREIGN KEY (`modality_id`) REFERENCES `instance_modality` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `emsreg_number` varchar(255) DEFAULT NULL,
  `clc_debited_date` datetime DEFAULT NULL,
  `clc_number` int(11) DEFAULT NULL,
  `confirmation_number` varchar(255) DEFAULT NULL,
  `is_pending_mgr_approval` bit(1) DEFAULT NULL,
  `items_approved_status` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `payment_amount` float DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `program_code` int(11) DEFAULT NULL,
  `requestor_name` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `student_status` int(11) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `gilmore_company_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `ts_advantage_id` bigint(20) DEFAULT NULL,
  `partner_email` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `extended_price` varchar(255) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `gilmore_order_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ma9fy7x3gkmevl14u2e3wv5gf` (`lestat_id`),
  KEY `FK_tk3altjt7r4m1wn8ki9vpml2` (`gilmore_batch_id`),
  KEY `FK_ayekr09nbhi9oqa83gye564k6` (`gilmore_company_id`),
  KEY `FK_bcw0kxr9hrb9yv7ce80h4dy3x` (`instance_id`),
  KEY `FK_9ry9krd67u0n06i8us8205na6` (`management_report_id`),
  KEY `FK_ilajvnam1pkuwx95wa5bpekv2` (`payment_id`),
  KEY `FK_a1myr7ywg7popmaq638jgjawa` (`payment_method_id`),
  KEY `FK_81q4xon4lwv13ay3g8fxhj7f` (`student_id`),
  KEY `FK_b9aeiqe51br23a7casd1abbot` (`ts_advantage_id`),
  CONSTRAINT `FK_81q4xon4lwv13ay3g8fxhj7f` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_9ry9krd67u0n06i8us8205na6` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_a1myr7ywg7popmaq638jgjawa` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `FK_ayekr09nbhi9oqa83gye564k6` FOREIGN KEY (`gilmore_company_id`) REFERENCES `gilmore_company` (`id`),
  CONSTRAINT `FK_b9aeiqe51br23a7casd1abbot` FOREIGN KEY (`ts_advantage_id`) REFERENCES `tsadvantage` (`id`),
  CONSTRAINT `FK_bcw0kxr9hrb9yv7ce80h4dy3x` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_ilajvnam1pkuwx95wa5bpekv2` FOREIGN KEY (`payment_id`) REFERENCES `attpayment` (`id`),
  CONSTRAINT `FK_tk3altjt7r4m1wn8ki9vpml2` FOREIGN KEY (`gilmore_batch_id`) REFERENCES `gilmore_batch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108847 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollment_tracking`
--

DROP TABLE IF EXISTS `enrollment_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `enrollment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enrollmentfphitem`
--

DROP TABLE IF EXISTS `enrollmentfphitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollmentfphitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `enrollment_id` bigint(20) DEFAULT NULL,
  `fph_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n54f87cki50sesd3meb85xw1i` (`enrollment_id`),
  KEY `FK_n8po2vcp80uj8uxqq991fump0` (`fph_id`),
  CONSTRAINT `FK_n54f87cki50sesd3meb85xw1i` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `FK_n8po2vcp80uj8uxqq991fump0` FOREIGN KEY (`fph_id`) REFERENCES `fph` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `booked_code` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `department_id` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `finance_id` bigint(20) DEFAULT NULL,
  `forecasted_code` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `po_status` int(11) DEFAULT NULL,
  `po_type` varchar(255) DEFAULT NULL,
  `pr_number` varchar(255) DEFAULT NULL,
  `pr_status` int(11) DEFAULT NULL,
  `preparer` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `revenue_amount` double DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7sknu5jq1bwtistcc88o0eawm` (`company_id`),
  KEY `FK_js3ns00341lpjxu7jnfo0fp3e` (`country_id`),
  KEY `FK_fvtvjxha0ihxqn7an3kodh84s` (`instance_id`),
  CONSTRAINT `FK_7sknu5jq1bwtistcc88o0eawm` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_fvtvjxha0ihxqn7an3kodh84s` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_js3ns00341lpjxu7jnfo0fp3e` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_bi_cogs`
--

DROP TABLE IF EXISTS `fin_bi_cogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bi_cogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_category` varchar(255) DEFAULT NULL,
  `account_description` varchar(255) DEFAULT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  `company_code` bigint(20) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `entered_by` varchar(255) DEFAULT NULL,
  `fiscal_month` varchar(255) DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL,
  `func_net_amount` float DEFAULT NULL,
  `journal_entry_line_description` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `pr_item_description` varchar(255) DEFAULT NULL,
  `pr_number` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `project_number` varchar(255) DEFAULT NULL,
  `sub_account` varchar(255) DEFAULT NULL,
  `usd_net` float DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `eom` varchar(255) DEFAULT NULL,
  `aspt_quote_no` varchar(255) DEFAULT NULL,
  `contract_month` int(11) DEFAULT NULL,
  `contract_no` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `financial_group` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `management_report_status` int(11) DEFAULT NULL,
  `month1months` int(11) DEFAULT NULL,
  `month2months` int(11) DEFAULT NULL,
  `month3months` int(11) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `quarter_adjustments` float DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `transaction_type` int(11) DEFAULT NULL,
  `credit_card_id` bigint(20) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_949yfisqcd2j9vycmuxc4bktg` (`lestat_id`),
  KEY `FK_22tevd6rfwfagyvjqw6k609vl` (`credit_card_id`),
  KEY `FK_qxvav9oarlrlof0a8obl6djx0` (`learning_credit_id`),
  KEY `FK_hw1n45tk2d9ia023bukgb4cg9` (`management_report_id`),
  KEY `FK_8knycw8nmr3sgumq60gbcavkw` (`purchase_order_id`),
  CONSTRAINT `FK_22tevd6rfwfagyvjqw6k609vl` FOREIGN KEY (`credit_card_id`) REFERENCES `credit_card` (`id`),
  CONSTRAINT `FK_8knycw8nmr3sgumq60gbcavkw` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_hw1n45tk2d9ia023bukgb4cg9` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_qxvav9oarlrlof0a8obl6djx0` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fiscal_period_day`
--

DROP TABLE IF EXISTS `fiscal_period_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fiscal_period_day` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `fiscal_period_month_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r6v8x3v4lnyry6l6b1r5e707j` (`fiscal_period_month_id`),
  KEY `IX_soars__fiscal_period_day__date` (`date`),
  CONSTRAINT `FK_r6v8x3v4lnyry6l6b1r5e707j` FOREIGN KEY (`fiscal_period_month_id`) REFERENCES `fiscal_period_month` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3648 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fiscal_period_month`
--

DROP TABLE IF EXISTS `fiscal_period_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fiscal_period_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_month` varchar(255) DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_amount`
--

DROP TABLE IF EXISTS `forecast_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_amount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `accounting_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `subbu` varchar(255) DEFAULT NULL,
  `fiscal_period_month_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_muph6de558af0wiya8ojpkqaw` (`fiscal_period_month_id`),
  CONSTRAINT `FK_muph6de558af0wiya8ojpkqaw` FOREIGN KEY (`fiscal_period_month_id`) REFERENCES `fiscal_period_month` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fph`
--

DROP TABLE IF EXISTS `fph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fph` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `discount_percent` float DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `extfphid` bigint(20) DEFAULT NULL,
  `fph_comments` mediumtext,
  `fph_type` int(11) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_comments` longtext,
  `so_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  `ts_advantage_id` bigint(20) DEFAULT NULL,
  `lc_redeemed` varchar(255) DEFAULT NULL,
  `lc_submitted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pdogdrg1saawfrgvh6yy7ae6k` (`company_id`),
  KEY `FK_4fdn8vd2jwdcfur44bfm02d9e` (`finance_manager_id`),
  KEY `FK_l10ugxapdm13yurkdqp9v4mdb` (`gilmore_batch_id`),
  KEY `FK_4kreq09lk6bkekjykmhkrvhbr` (`learning_credit_id`),
  KEY `FK_fss6kdobwolsbgro3mopd67c0` (`management_report_id`),
  KEY `FK_nlu6ftsu4ufnas8nyp625xssv` (`purchase_order_id`),
  KEY `FK_dqsa8vbrq9e47i7cf7tu5xah8` (`theater_id`),
  KEY `FK_1gvsdiyf1612fs25ni09fn3qr` (`ts_advantage_id`),
  CONSTRAINT `FK_1gvsdiyf1612fs25ni09fn3qr` FOREIGN KEY (`ts_advantage_id`) REFERENCES `tsadvantage` (`id`),
  CONSTRAINT `FK_4fdn8vd2jwdcfur44bfm02d9e` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_4kreq09lk6bkekjykmhkrvhbr` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`),
  CONSTRAINT `FK_dqsa8vbrq9e47i7cf7tu5xah8` FOREIGN KEY (`theater_id`) REFERENCES `sales_theater` (`id`),
  CONSTRAINT `FK_fss6kdobwolsbgro3mopd67c0` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_l10ugxapdm13yurkdqp9v4mdb` FOREIGN KEY (`gilmore_batch_id`) REFERENCES `gilmore_batch` (`id`),
  CONSTRAINT `FK_nlu6ftsu4ufnas8nyp625xssv` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_pdogdrg1saawfrgvh6yy7ae6k` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16646 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fphenrollment_item`
--

DROP TABLE IF EXISTS `fphenrollment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fphenrollment_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `enrollment_id` bigint(20) DEFAULT NULL,
  `fph_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_532hhyibjupvna7jjtj9ejn3h` (`enrollment_id`),
  KEY `FK_5hf4lv0kk85hed2ufo75j3a9b` (`fph_id`),
  CONSTRAINT `FK_532hhyibjupvna7jjtj9ejn3h` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`),
  CONSTRAINT `FK_5hf4lv0kk85hed2ufo75j3a9b` FOREIGN KEY (`fph_id`) REFERENCES `fph` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6018 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fphinstance_item`
--

DROP TABLE IF EXISTS `fphinstance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fphinstance_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `fph_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `lcmt_debit_attempt_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_hbm6spjstucyos2r2fyy40bgo` (`fph_id`),
  KEY `FK_teec3gbwpgfb0anxiw3win4vf` (`instance_id`),
  CONSTRAINT `FK_hbm6spjstucyos2r2fyy40bgo` FOREIGN KEY (`fph_id`) REFERENCES `fph` (`id`),
  CONSTRAINT `FK_teec3gbwpgfb0anxiw3win4vf` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18734 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geoname`
--

DROP TABLE IF EXISTS `geoname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geoname` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fclass` char(1) DEFAULT NULL,
  `fcode` varchar(10) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `admin1` varchar(20) DEFAULT NULL,
  `admin2` varchar(80) DEFAULT NULL,
  `admin3` varchar(20) DEFAULT NULL,
  `admin4` varchar(20) DEFAULT NULL,
  `timezone` varchar(40) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `fclass` (`fclass`),
  KEY `fcode` (`fcode`),
  KEY `country` (`country`),
  KEY `admin1` (`admin1`),
  KEY `timezone` (`timezone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gilmore_batch`
--

DROP TABLE IF EXISTS `gilmore_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gilmore_batch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `comments` longtext,
  `enrollment_type` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prepared_by` varchar(255) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `submitted_on` datetime DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `is_credit_memo` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3eitc4m8dcxqovnyiy1kpp012` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1433 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gilmore_batch_tracking`
--

DROP TABLE IF EXISTS `gilmore_batch_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gilmore_batch_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1976 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gilmore_company`
--

DROP TABLE IF EXISTS `gilmore_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gilmore_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `class_discount` float DEFAULT NULL,
  `cln_bundle_identifier` varchar(255) DEFAULT NULL,
  `cln_program_code` varchar(255) DEFAULT NULL,
  `clsp_contract_no` varchar(255) DEFAULT NULL,
  `clsp_name` varchar(255) DEFAULT NULL,
  `clsp_site_id` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `extended_price` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lp_bill_to_address` varchar(255) DEFAULT NULL,
  `lp_bill_to_address_line` varchar(255) DEFAULT NULL,
  `lp_bill_to_city` varchar(255) DEFAULT NULL,
  `lp_bill_to_company` varchar(255) DEFAULT NULL,
  `lp_bill_to_contact_email` varchar(255) DEFAULT NULL,
  `lp_bill_to_contact_phone` varchar(255) DEFAULT NULL,
  `lp_bill_to_country` varchar(255) DEFAULT NULL,
  `lp_bill_to_phone` varchar(255) DEFAULT NULL,
  `lp_bill_to_state` varchar(255) DEFAULT NULL,
  `lp_bill_to_zip` varchar(255) DEFAULT NULL,
  `lp_offering_location_code` varchar(255) DEFAULT NULL,
  `lp_offering_start_date` varchar(255) DEFAULT NULL,
  `lp_ship_to_address` varchar(255) DEFAULT NULL,
  `lp_ship_to_address_line` varchar(255) DEFAULT NULL,
  `lp_ship_to_city` varchar(255) DEFAULT NULL,
  `lp_ship_to_comments` longtext,
  `lp_ship_to_contact_email` varchar(255) DEFAULT NULL,
  `lp_ship_to_contact_name` varchar(255) DEFAULT NULL,
  `lp_ship_to_country` varchar(255) DEFAULT NULL,
  `lp_ship_to_phone` varchar(255) DEFAULT NULL,
  `lp_ship_to_state` varchar(255) DEFAULT NULL,
  `lp_ship_to_zip` varchar(255) DEFAULT NULL,
  `ls_part_number` varchar(255) DEFAULT NULL,
  `ls_part_quantity` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `seat_discount` float DEFAULT NULL,
  `unit_price` varchar(255) DEFAULT NULL,
  `method_of_payment_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cih539xosxagnqx3lol1byr0k` (`lestat_id`),
  KEY `FK_pkk38mtue2ufu88toxepynjnd` (`method_of_payment_id`),
  KEY `FK_mwlclo144qntbpswa45jowdir` (`partner_id`),
  KEY `FK_8ejpae5y39mih40r9xv0377wa` (`theater_id`),
  CONSTRAINT `FK_8ejpae5y39mih40r9xv0377wa` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`),
  CONSTRAINT `FK_mwlclo144qntbpswa45jowdir` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `FK_pkk38mtue2ufu88toxepynjnd` FOREIGN KEY (`method_of_payment_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gilmore_company_tracking`
--

DROP TABLE IF EXISTS `gilmore_company_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gilmore_company_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `gilmore_company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gilmoresku`
--

DROP TABLE IF EXISTS `gilmoresku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gilmoresku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `course_acronym` varchar(255) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `extended_price` float DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r9w35lgtq4ftqayan0anac2gc` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `global_virtual_sales`
--

DROP TABLE IF EXISTS `global_virtual_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_virtual_sales` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `admin_contact_first_name` varchar(255) DEFAULT NULL,
  `admin_contact_last_name` varchar(255) DEFAULT NULL,
  `approver` varchar(255) DEFAULT NULL,
  `cco_id` varchar(255) DEFAULT NULL,
  `cisco_am_cec` varchar(255) DEFAULT NULL,
  `cisco_am_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `desired_end_date` datetime DEFAULT NULL,
  `desired_start_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gvs_contact_name` varchar(255) DEFAULT NULL,
  `is_admin_student` bit(1) DEFAULT NULL,
  `is_voucher_programccna` bit(1) DEFAULT NULL,
  `subcription_type` int(11) DEFAULT NULL,
  `subscripton_length_months` int(11) DEFAULT NULL,
  `approver_email` varchar(255) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4854 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `tpmsid` varchar(255) DEFAULT NULL,
  `tpmsurl` varchar(255) DEFAULT NULL,
  `advertised_price` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `att_clc_debited_date` datetime DEFAULT NULL,
  `att_course_abbrv` varchar(255) DEFAULT NULL,
  `att_delivery_order_no` varchar(255) DEFAULT NULL,
  `att_number_of_clc` int(11) DEFAULT NULL,
  `att_payment_status` int(11) DEFAULT NULL,
  `att_requestor_name` varchar(255) DEFAULT NULL,
  `attsonumber` varchar(255) DEFAULT NULL,
  `belong_to_department` int(11) DEFAULT NULL,
  `cancellation_type` int(11) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `costs_dept_bill_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ems_url` varchar(255) DEFAULT NULL,
  `emsid` varchar(255) DEFAULT NULL,
  `financial_note` longtext,
  `gilmore_confirmation_number` varchar(255) DEFAULT NULL,
  `instance_customer_name` varchar(255) DEFAULT NULL,
  `instance_start_time` varchar(255) DEFAULT NULL,
  `is_att_instance` bit(1) DEFAULT NULL,
  `is_dpc_print_required` varchar(255) DEFAULT NULL,
  `is_in_special_group` bit(1) DEFAULT NULL,
  `is_in_theater` bit(1) DEFAULT NULL,
  `is_kit_rental` bit(1) DEFAULT NULL,
  `is_lab_kits_included` bit(1) DEFAULT NULL,
  `is_lab_rental` bit(1) DEFAULT NULL,
  `is_no_payment` bit(1) DEFAULT NULL,
  `is_special_practice` bit(1) DEFAULT NULL,
  `lab_paid_by_department` int(11) DEFAULT NULL,
  `labras` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `next_instance_id` bigint(20) DEFAULT NULL,
  `note` longtext,
  `po_number` varchar(255) DEFAULT NULL,
  `previous_instance_id` bigint(20) DEFAULT NULL,
  `program_code` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_cancellation_type` int(11) DEFAULT NULL,
  `supplier_po` varchar(255) DEFAULT NULL,
  `supplier_po_open_under` int(11) DEFAULT NULL,
  `supplier_pr` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `acct_mngr_id` bigint(20) DEFAULT NULL,
  `att_payment_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `fin_rec_keep_peer_group_id` bigint(20) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `gilmore_company_id` bigint(20) DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  `lab_system_id` bigint(20) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `sub_org_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `ts_advantage_id` bigint(20) DEFAULT NULL,
  `dpc_shipping_note` longtext,
  `t2payurl` varchar(255) DEFAULT NULL,
  `is_guaranteed_to_run` bit(1) DEFAULT NULL,
  `bdm_id` bigint(20) DEFAULT NULL,
  `custom_end_date` datetime DEFAULT NULL,
  `is_custom_class` bit(1) DEFAULT NULL,
  `modality_id` bigint(20) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `is_learning_partner_class` bit(1) DEFAULT NULL,
  `reason_for_on_hold` longtext,
  `enrollment_projection` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `request_end_date` datetime DEFAULT NULL,
  `request_start_date` datetime DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `la_id` bigint(20) DEFAULT NULL,
  `la_planner_id` bigint(20) DEFAULT NULL,
  `lab_dev_contact_email` varchar(255) DEFAULT NULL,
  `lab_dev_contact_name` varchar(255) DEFAULT NULL,
  `lab_dev_manager_id` bigint(20) DEFAULT NULL,
  `lc_percentage` float DEFAULT NULL,
  `mr_percentage` float DEFAULT NULL,
  `po_percentage` float DEFAULT NULL,
  `tsa_percentage` float DEFAULT NULL,
  `cancellation_email_sent` bit(1) DEFAULT NULL,
  `confirmation_email_sent` bit(1) DEFAULT NULL,
  `roster_sent` bit(1) DEFAULT NULL,
  `gvs_id` bigint(20) DEFAULT NULL,
  `is_provisioned` bit(1) DEFAULT NULL,
  `provisioned_by` bigint(20) DEFAULT NULL,
  `provisioned_date` datetime DEFAULT NULL,
  `global_virtual_sales_id` bigint(20) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `extended_price` varchar(255) DEFAULT NULL,
  `list_price` varchar(255) DEFAULT NULL,
  `iscpll_conversion` bit(1) DEFAULT NULL,
  `lc_redeemed` varchar(255) DEFAULT NULL,
  `lc_submitted` varchar(255) DEFAULT NULL,
  `invoice_done` bit(1) DEFAULT NULL,
  `roster_validated` bit(1) DEFAULT NULL,
  `survey_done` bit(1) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `is_dd_partner_class` bit(1) DEFAULT NULL,
  `is_offered_no_fund` bit(1) DEFAULT NULL,
  `isemspayment` bit(1) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `gilmore_order_number` varchar(255) DEFAULT NULL,
  `am_cec` varchar(255) DEFAULT NULL,
  `am_name` varchar(255) DEFAULT NULL,
  `distributor` varchar(255) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `lab_reservation_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2oekbmg24aj07q7oiqgd3ei4l` (`lestat_id`),
  KEY `FK_imbhuygisksfjud1s9c1cvp03` (`acct_mngr_id`),
  KEY `FK_f9fwdrekcuui4rlyyppv9t3gb` (`att_payment_id`),
  KEY `FK_l0wjr25qxq025dhg1ka61jr0q` (`course_id`),
  KEY `FK_fhd4aneaxgbamhngkbara9ygf` (`customer_id`),
  KEY `FK_g3t7bytn3ajwk15ykgpobqt99` (`fin_rec_keep_peer_group_id`),
  KEY `FK_rhy70mecl818w92akqlixe3ks` (`gilmore_batch_id`),
  KEY `FK_bjsponoh2nec8qjw0jrd37oan` (`gilmore_company_id`),
  KEY `FK_5u3nns95j8qawd7g2xkk92avk` (`instructor_id`),
  KEY `FK_bmpljawk46swqeno9e4xu1xut` (`lab_system_id`),
  KEY `FK_crxja3sjan8l3eyn0g9smkwae` (`learning_credit_id`),
  KEY `FK_kg2pvv4p09yco0cenn4eytrb8` (`location_id`),
  KEY `FK_ouxkl2jv71jttejmx87dc5jxs` (`management_report_id`),
  KEY `FK_5erfktgitegbn7182j9uxkmex` (`partner_id`),
  KEY `FK_46m9aolc7n1p0d3d4gjstciga` (`purchase_order_id`),
  KEY `FK_3sf48yh8gd374291acdokwm0e` (`sub_org_id`),
  KEY `FK_h8n00m834f05eb8l5ufjn1rv7` (`supplier_id`),
  KEY `FK_d2cs2h4m767oyw8yaass6dyfo` (`ts_advantage_id`),
  KEY `FK_ik7n5ek9ere0d8f8fqy74t0bf` (`bdm_id`),
  KEY `FK_5j9fuhwvm1xubep250a2wioxb` (`modality_id`),
  KEY `FK_kkij2n806lg2ey2l7fp92lxre` (`finance_manager_id`),
  KEY `FK_lsxmvf2f5n95rx8lu3rbui6l4` (`la_id`),
  KEY `FK_89a5ff6qwuq9i7cv581ser8ty` (`la_planner_id`),
  KEY `FK_5u632u7sa547kiu4abagrbkh0` (`lab_dev_manager_id`),
  KEY `FK_mpf6d7eqalyrxblokn7t0qlox` (`global_virtual_sales_id`),
  CONSTRAINT `FK_3sf48yh8gd374291acdokwm0e` FOREIGN KEY (`sub_org_id`) REFERENCES `customer_sub_org` (`id`),
  CONSTRAINT `FK_46m9aolc7n1p0d3d4gjstciga` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_5erfktgitegbn7182j9uxkmex` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `FK_5j9fuhwvm1xubep250a2wioxb` FOREIGN KEY (`modality_id`) REFERENCES `instance_modality` (`id`),
  CONSTRAINT `FK_5u3nns95j8qawd7g2xkk92avk` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `FK_5u632u7sa547kiu4abagrbkh0` FOREIGN KEY (`lab_dev_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_89a5ff6qwuq9i7cv581ser8ty` FOREIGN KEY (`la_planner_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_bjsponoh2nec8qjw0jrd37oan` FOREIGN KEY (`gilmore_company_id`) REFERENCES `gilmore_company` (`id`),
  CONSTRAINT `FK_bmpljawk46swqeno9e4xu1xut` FOREIGN KEY (`lab_system_id`) REFERENCES `lab_system` (`id`),
  CONSTRAINT `FK_crxja3sjan8l3eyn0g9smkwae` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`),
  CONSTRAINT `FK_d2cs2h4m767oyw8yaass6dyfo` FOREIGN KEY (`ts_advantage_id`) REFERENCES `tsadvantage` (`id`),
  CONSTRAINT `FK_f9fwdrekcuui4rlyyppv9t3gb` FOREIGN KEY (`att_payment_id`) REFERENCES `attpayment` (`id`),
  CONSTRAINT `FK_fhd4aneaxgbamhngkbara9ygf` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_g3t7bytn3ajwk15ykgpobqt99` FOREIGN KEY (`fin_rec_keep_peer_group_id`) REFERENCES `peer_group` (`id`),
  CONSTRAINT `FK_h8n00m834f05eb8l5ufjn1rv7` FOREIGN KEY (`supplier_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FK_ik7n5ek9ere0d8f8fqy74t0bf` FOREIGN KEY (`bdm_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_imbhuygisksfjud1s9c1cvp03` FOREIGN KEY (`acct_mngr_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_kg2pvv4p09yco0cenn4eytrb8` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `FK_kkij2n806lg2ey2l7fp92lxre` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_l0wjr25qxq025dhg1ka61jr0q` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_lsxmvf2f5n95rx8lu3rbui6l4` FOREIGN KEY (`la_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_mpf6d7eqalyrxblokn7t0qlox` FOREIGN KEY (`global_virtual_sales_id`) REFERENCES `global_virtual_sales` (`id`),
  CONSTRAINT `FK_ouxkl2jv71jttejmx87dc5jxs` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_rhy70mecl818w92akqlixe3ks` FOREIGN KEY (`gilmore_batch_id`) REFERENCES `gilmore_batch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_attachment`
--

DROP TABLE IF EXISTS `instance_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m7vm6ils3jm80f4mi33bh2y39` (`attachment_id`),
  KEY `FK_h931h653xks0n2485eo106vs2` (`instance_id`),
  CONSTRAINT `FK_h931h653xks0n2485eo106vs2` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_m7vm6ils3jm80f4mi33bh2y39` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9744 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_instructor`
--

DROP TABLE IF EXISTS `instance_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `instance_instructor_status` int(11) DEFAULT NULL,
  `instructor_po_number` varchar(255) DEFAULT NULL,
  `instructor_pr_number` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `instance_instructor_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6r02cgsf22k86pv8fovntyv90` (`lestat_id`),
  KEY `FK_m353r4253hevgqdo3lvkl86ju` (`instance_id`),
  KEY `FK_6vbdroxr21e93yxxwkpy82o4i` (`instructor_id`),
  CONSTRAINT `FK_6vbdroxr21e93yxxwkpy82o4i` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `FK_m353r4253hevgqdo3lvkl86ju` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30984 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_modality`
--

DROP TABLE IF EXISTS `instance_modality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_modality` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_modification`
--

DROP TABLE IF EXISTS `instance_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_modification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `course_modif` datetime DEFAULT NULL,
  `dates_modif` datetime DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `location_modif` datetime DEFAULT NULL,
  `start_time_modif` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_sales_order`
--

DROP TABLE IF EXISTS `instance_sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_sales_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL,
  `lcmt_debit_attempt_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tg1iiaradb9p5v4ktu1gvk8ex` (`instance_id`),
  KEY `FK_jc60mj4c1u2mprthg0cp43694` (`sales_order_id`),
  CONSTRAINT `FK_jc60mj4c1u2mprthg0cp43694` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`),
  CONSTRAINT `FK_tg1iiaradb9p5v4ktu1gvk8ex` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3988 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance_tracking`
--

DROP TABLE IF EXISTS `instance_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_instance_tracking__instance_id` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93208 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `badge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_aqcus6t3qrym478w61kon2dgb` (`lestat_id`),
  KEY `FK_duawl3qf3nyq1pq59wopns7ej` (`country_id`),
  KEY `FK_li0xevkryh2sngqrpu6nnsqmg` (`type_id`),
  CONSTRAINT `FK_duawl3qf3nyq1pq59wopns7ej` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_li0xevkryh2sngqrpu6nnsqmg` FOREIGN KEY (`type_id`) REFERENCES `instructor_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=827 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructor_group`
--

DROP TABLE IF EXISTS `instructor_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ccaqtnhhlygfell32qdo04xha` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructor_tracking`
--

DROP TABLE IF EXISTS `instructor_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1950 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructor_type`
--

DROP TABLE IF EXISTS `instructor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_eosihjkb964c138d3riscdmkp` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructorgroup_instructor_lookup`
--

DROP TABLE IF EXISTS `instructorgroup_instructor_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructorgroup_instructor_lookup` (
  `instructor_groups_id` bigint(20) NOT NULL,
  `instructors_id` bigint(20) NOT NULL,
  KEY `FK_gsjpqslng8qgxiao1mk3gpekn` (`instructors_id`),
  KEY `FK_gimgjyjyy1arsrvq957ra6dyc` (`instructor_groups_id`),
  CONSTRAINT `FK_gimgjyjyy1arsrvq957ra6dyc` FOREIGN KEY (`instructor_groups_id`) REFERENCES `instructor_group` (`id`),
  CONSTRAINT `FK_gsjpqslng8qgxiao1mk3gpekn` FOREIGN KEY (`instructors_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_system`
--

DROP TABLE IF EXISTS `lab_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `is_removed` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `is_web_access` tinyint(1) NOT NULL DEFAULT '0',
  `physical_lab_loc` varchar(255) DEFAULT NULL,
  `pod` int(11) DEFAULT NULL,
  `pods` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `support_alias` varchar(255) DEFAULT NULL,
  `iscll` bit(1) DEFAULT NULL,
  `isdcloud` bit(1) DEFAULT NULL,
  `isepnm` bit(1) DEFAULT NULL,
  `is_hardware` bit(1) DEFAULT NULL,
  `is_non_standard` bit(1) DEFAULT NULL,
  `is_not_required` bit(1) DEFAULT NULL,
  `isclllab` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tpxobpvk3cacmpymfxjmgmpe8` (`lestat_id`),
  UNIQUE KEY `UK_i9welp9lesn3g8416ydegy6wr` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_system_tracking`
--

DROP TABLE IF EXISTS `lab_system_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_system_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lab_system_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lcmt_monthly`
--

DROP TABLE IF EXISTS `lcmt_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcmt_monthly` (
  `Sales Theater` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CLP Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Customer Country Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Company Code` double DEFAULT NULL,
  `SO Number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Orginal SO` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Program Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Expiry Date` datetime DEFAULT NULL,
  `Department ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SO Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Transaction Country Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Conversion Date` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Conversion Rate` double DEFAULT NULL,
  `CLP Invoice Date` datetime DEFAULT NULL,
  `Customer Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Sales Agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CLP Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Course Acronym` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Fiscal Year` double DEFAULT NULL,
  `Fiscal Quarter` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Fiscal Month` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Reimbursed Date` datetime DEFAULT NULL,
  `Debit Txn ID` double DEFAULT NULL,
  `Class Start Date` datetime DEFAULT NULL,
  `CLP Invoice #` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Credits Purchased` double DEFAULT NULL,
  `Credits Reimbursed` double DEFAULT NULL,
  `Reimbursed Percentage` double DEFAULT NULL,
  `List Price` double DEFAULT NULL,
  `Purchase Price` double DEFAULT NULL,
  `Revenue Transfer Amount` double DEFAULT NULL,
  `Revenue Transfer Amount_1` double DEFAULT NULL,
  `Revenue` double DEFAULT NULL,
  `Revised Revenue` double DEFAULT NULL,
  `Finance Verification` double DEFAULT NULL,
  `Purchase Per LC` double DEFAULT NULL,
  `Local Revenue` double DEFAULT NULL,
  `COGS` double DEFAULT NULL,
  `Revised COGS` double DEFAULT NULL,
  `Debit` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lcmt_batch` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `lcmt_batch` (`lcmt_batch`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_credit`
--

DROP TABLE IF EXISTS `learning_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_credit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `eom` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `cancelled_status` bigint(20) DEFAULT NULL,
  `charged_status` bigint(20) DEFAULT NULL,
  `claim_hold_status` bigint(20) DEFAULT NULL,
  `claim_ready_status` bigint(20) DEFAULT NULL,
  `claim_submit_status` bigint(20) DEFAULT NULL,
  `comments` longtext,
  `completed_date` datetime DEFAULT NULL,
  `completed_status` bigint(20) DEFAULT NULL,
  `credit_status` bigint(20) DEFAULT NULL,
  `credits_charged` bigint(20) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `discount_percent` float DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `fin_rec_keep_peer_group` bigint(20) DEFAULT NULL,
  `financial_group` int(11) DEFAULT NULL,
  `lc_comments` longtext,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `po_booked_date` datetime DEFAULT NULL,
  `po_booked_status` bigint(20) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `po_submit_date` datetime DEFAULT NULL,
  `po_submit_status` bigint(20) DEFAULT NULL,
  `recognized_date` datetime DEFAULT NULL,
  `recognized_status` bigint(20) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_comments` longtext,
  `so_credits_purchased` float DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `so_rcvd_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `tkl_transaction` bigint(20) DEFAULT NULL,
  `trans_comments` longtext,
  `trans_date` datetime DEFAULT NULL,
  `trans_number` varchar(255) DEFAULT NULL,
  `trans_sub` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `islcs_redeem_cancelled_on_lcmt` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r3x1b7n5bjqfjxnwxk9862w4p` (`lestat_id`),
  KEY `FK_iqcy4myp2rd17po1b9y80uogo` (`company_id`),
  KEY `FK_1m07n41q7vg6j9b6s9ctkx6pp` (`theater_id`),
  KEY `FK_i7nvbqtvxppuk3o8xb10e49s5` (`finance_manager_id`),
  CONSTRAINT `FK_1m07n41q7vg6j9b6s9ctkx6pp` FOREIGN KEY (`theater_id`) REFERENCES `sales_theater` (`id`),
  CONSTRAINT `FK_i7nvbqtvxppuk3o8xb10e49s5` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_iqcy4myp2rd17po1b9y80uogo` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10593 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_credit_generic_item`
--

DROP TABLE IF EXISTS `learning_credit_generic_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_credit_generic_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `course_end_date` datetime DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_start_date` datetime DEFAULT NULL,
  `credits_charged` int(11) DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_credit` float DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ex55t5cg68icaa4k0f5imdlra` (`lestat_id`),
  KEY `FK_kyrp98vg8jj2rhtcdpdc86wry` (`company_id`),
  KEY `FK_lvgr331ottvh3ko5i0y1qhhdj` (`learning_credit_id`),
  CONSTRAINT `FK_kyrp98vg8jj2rhtcdpdc86wry` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_lvgr331ottvh3ko5i0y1qhhdj` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3941 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_credit_instance_item`
--

DROP TABLE IF EXISTS `learning_credit_instance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_credit_instance_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `credits_charged` int(11) DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ipk7ixweoon68o1vkefqgnri5` (`lestat_id`),
  KEY `FK_as4ay67fihhajvn2itrb6891` (`company_id`),
  KEY `FK_fhhx6kdy4aftv29e834hmixgr` (`instance_id`),
  KEY `FK_tgw3qaqbq3h51qimxihsfalx3` (`learning_credit_id`),
  CONSTRAINT `FK_as4ay67fihhajvn2itrb6891` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_fhhx6kdy4aftv29e834hmixgr` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_tgw3qaqbq3h51qimxihsfalx3` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_credit_tracking`
--

DROP TABLE IF EXISTS `learning_credit_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_credit_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21376 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_partner`
--

DROP TABLE IF EXISTS `learning_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `is_removed` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jr21h9p34l4kk3sd8bpvu7gkm` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `access_hours` longtext,
  `access_method` int(11) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_info` longtext,
  `corp_port` int(11) DEFAULT NULL,
  `directions` longtext,
  `easel` int(11) DEFAULT NULL,
  `electricity` longtext,
  `floor` varchar(255) DEFAULT NULL,
  `laptops` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `onsite` varchar(255) DEFAULT NULL,
  `projector` int(11) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `stat_prov` varchar(255) DEFAULT NULL,
  `table_desc` int(11) DEFAULT NULL,
  `white_board` int(11) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `cisco_lobby_ambassador` varchar(255) DEFAULT NULL,
  `cisco_lobby_ambassador_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_235elesi2rg6pqqy0b7d3xlvx` (`lestat_id`),
  KEY `FK_oij09nrgw3jac87nxirlho8cj` (`country_id`),
  CONSTRAINT `FK_oij09nrgw3jac87nxirlho8cj` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_report`
--

DROP TABLE IF EXISTS `management_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `asptquote` varchar(255) DEFAULT NULL,
  `mrstatus` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `approval_method` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `booked_by` varchar(255) DEFAULT NULL,
  `booked_date` datetime DEFAULT NULL,
  `comments` longtext,
  `contract_months` int(11) DEFAULT NULL,
  `contract_no` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `group_type` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `month1months` int(11) DEFAULT NULL,
  `month2months` int(11) DEFAULT NULL,
  `month3months` int(11) DEFAULT NULL,
  `mr_comments` longtext,
  `part_no` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `qtr_adjustments` int(11) DEFAULT NULL,
  `quarterly_revenue` float DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `tkl_transaction` float DEFAULT NULL,
  `trans_sub` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6muo9u412uk2ucd7k5qa5ylul` (`lestat_id`),
  KEY `FK_9idjoxxtntie7qgrxw89mpgux` (`company_id`),
  KEY `FK_lxx291xqbfei6q85ockgadibv` (`theater_id`),
  KEY `FK_haephbedojau1nq2ok8v0idyo` (`finance_manager_id`),
  CONSTRAINT `FK_9idjoxxtntie7qgrxw89mpgux` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_haephbedojau1nq2ok8v0idyo` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_lxx291xqbfei6q85ockgadibv` FOREIGN KEY (`theater_id`) REFERENCES `sales_theater` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=864 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_report_instance_item`
--

DROP TABLE IF EXISTS `management_report_instance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_report_instance_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cy44w82pbcfu9swaw2ky1qgbs` (`lestat_id`),
  KEY `FK_mop0p7l2w5br4nsty15omwope` (`instance_id`),
  KEY `FK_7shxg4c8l7rbnmmfd40rg2iur` (`management_report_id`),
  CONSTRAINT `FK_7shxg4c8l7rbnmmfd40rg2iur` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_mop0p7l2w5br4nsty15omwope` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_report_revenue_archive`
--

DROP TABLE IF EXISTS `management_report_revenue_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_report_revenue_archive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `comments` longtext,
  `customer_name` varchar(255) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `mr_id` bigint(20) DEFAULT NULL,
  `mr_lestat_id` bigint(20) DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `sales_theater` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2747070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `management_report_tracking`
--

DROP TABLE IF EXISTS `management_report_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management_report_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `mr_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manager_report_description`
--

DROP TABLE IF EXISTS `manager_report_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_report_description` (
  `id` bigint(20) NOT NULL,
  `report_field_description` varchar(255) DEFAULT NULL,
  `report_field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`report_field_map_key`),
  CONSTRAINT `FK_fwfng43rf2oj1nhchey4q7osv` FOREIGN KEY (`id`) REFERENCES `project_manager_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manager_report_fields`
--

DROP TABLE IF EXISTS `manager_report_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_report_fields` (
  `id` bigint(20) NOT NULL,
  `report_field` varchar(255) DEFAULT NULL,
  KEY `FK_ken27xarf582k4wq57dxwl828` (`id`),
  CONSTRAINT `FK_ken27xarf582k4wq57dxwl828` FOREIGN KEY (`id`) REFERENCES `project_manager_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modality_course`
--

DROP TABLE IF EXISTS `modality_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modality_course` (
  `course_id` bigint(20) NOT NULL,
  `course_modality_id` bigint(20) NOT NULL,
  KEY `FK_5f3cgo9iy4u3kkhk428v90x1e` (`course_modality_id`),
  KEY `FK_86onfpk7rk4moq10o879strul` (`course_id`),
  CONSTRAINT `FK_5f3cgo9iy4u3kkhk428v90x1e` FOREIGN KEY (`course_modality_id`) REFERENCES `course_modality` (`id`),
  CONSTRAINT `FK_86onfpk7rk4moq10o879strul` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_company_description`
--

DROP TABLE IF EXISTS `modified_company_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_company_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_sarcnh2d82g711e7gyqa8ns9b` FOREIGN KEY (`id`) REFERENCES `company_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_company_fields`
--

DROP TABLE IF EXISTS `modified_company_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_company_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_ijm9oy9wop7cocowy856qrl69` (`id`),
  CONSTRAINT `FK_ijm9oy9wop7cocowy856qrl69` FOREIGN KEY (`id`) REFERENCES `company_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_course_description`
--

DROP TABLE IF EXISTS `modified_course_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_course_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_ex26gf30qrybcnffakpr7ql7q` FOREIGN KEY (`id`) REFERENCES `course_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_course_fields`
--

DROP TABLE IF EXISTS `modified_course_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_course_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_sfe0paa4prf0lgveylqqey3xo` (`id`),
  CONSTRAINT `FK_sfe0paa4prf0lgveylqqey3xo` FOREIGN KEY (`id`) REFERENCES `course_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_customer_description`
--

DROP TABLE IF EXISTS `modified_customer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_customer_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_8pqb6jaca7df0cm1k6kb1riva` FOREIGN KEY (`id`) REFERENCES `customer_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_customer_fields`
--

DROP TABLE IF EXISTS `modified_customer_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_customer_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_iqld1ktyhtgsk796kpq1vvon7` (`id`),
  CONSTRAINT `FK_iqld1ktyhtgsk796kpq1vvon7` FOREIGN KEY (`id`) REFERENCES `customer_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_enrollment_description`
--

DROP TABLE IF EXISTS `modified_enrollment_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_enrollment_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_klfs0f48fs2b49ppinbbyehhs` FOREIGN KEY (`id`) REFERENCES `enrollment_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_enrollment_fields`
--

DROP TABLE IF EXISTS `modified_enrollment_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_enrollment_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_5dg18xliny8fxd0i6o3rjcjcl` (`id`),
  CONSTRAINT `FK_5dg18xliny8fxd0i6o3rjcjcl` FOREIGN KEY (`id`) REFERENCES `enrollment_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_gilmore_batch_description`
--

DROP TABLE IF EXISTS `modified_gilmore_batch_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_gilmore_batch_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_895sxtadu5rlquwggmnvkpvr6` FOREIGN KEY (`id`) REFERENCES `gilmore_batch_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_gilmore_batch_fields`
--

DROP TABLE IF EXISTS `modified_gilmore_batch_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_gilmore_batch_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_cywh80iy1ho3ot329gcorkl7o` (`id`),
  CONSTRAINT `FK_cywh80iy1ho3ot329gcorkl7o` FOREIGN KEY (`id`) REFERENCES `gilmore_batch_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_gilmore_company_description`
--

DROP TABLE IF EXISTS `modified_gilmore_company_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_gilmore_company_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_mrk39s5pjflrb2emlq3bmlabt` FOREIGN KEY (`id`) REFERENCES `gilmore_company_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_gilmore_company_fields`
--

DROP TABLE IF EXISTS `modified_gilmore_company_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_gilmore_company_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_f2yg4ak5rqgougp2qqbh5xnv3` (`id`),
  CONSTRAINT `FK_f2yg4ak5rqgougp2qqbh5xnv3` FOREIGN KEY (`id`) REFERENCES `gilmore_company_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_insatnce_description`
--

DROP TABLE IF EXISTS `modified_insatnce_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_insatnce_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_o62jf4n07yt106lk87n3w9g84` FOREIGN KEY (`id`) REFERENCES `instance_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_insatnce_fields`
--

DROP TABLE IF EXISTS `modified_insatnce_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_insatnce_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_nogavhgii49prjf4xfp3twupj` (`id`),
  CONSTRAINT `FK_nogavhgii49prjf4xfp3twupj` FOREIGN KEY (`id`) REFERENCES `instance_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_instructor_description`
--

DROP TABLE IF EXISTS `modified_instructor_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_instructor_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_4a9katrimnuo0ahllqwwio8qt` FOREIGN KEY (`id`) REFERENCES `instructor_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_instructor_fields`
--

DROP TABLE IF EXISTS `modified_instructor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_instructor_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_6nmbdk4mh25lygtgnodhqxu6k` (`id`),
  CONSTRAINT `FK_6nmbdk4mh25lygtgnodhqxu6k` FOREIGN KEY (`id`) REFERENCES `instructor_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_lab_system_description`
--

DROP TABLE IF EXISTS `modified_lab_system_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_lab_system_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_3svc3dhj1w3bwo7sa73bowt0h` FOREIGN KEY (`id`) REFERENCES `lab_system_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_lab_system_fields`
--

DROP TABLE IF EXISTS `modified_lab_system_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_lab_system_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_457xjhxkjx3tqnb7vgusa2da2` (`id`),
  CONSTRAINT `FK_457xjhxkjx3tqnb7vgusa2da2` FOREIGN KEY (`id`) REFERENCES `lab_system_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_lc_description`
--

DROP TABLE IF EXISTS `modified_lc_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_lc_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_qt4t39gk0js19q4kmt6201oii` FOREIGN KEY (`id`) REFERENCES `learning_credit_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_lc_fields`
--

DROP TABLE IF EXISTS `modified_lc_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_lc_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_okk0e7vtu7i455tqbg247hs1p` (`id`),
  CONSTRAINT `FK_okk0e7vtu7i455tqbg247hs1p` FOREIGN KEY (`id`) REFERENCES `learning_credit_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_mr_description`
--

DROP TABLE IF EXISTS `modified_mr_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_mr_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_d295sw5khabhsg1lttax44ia5` FOREIGN KEY (`id`) REFERENCES `management_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_mr_fields`
--

DROP TABLE IF EXISTS `modified_mr_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_mr_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_ejo3kx4d1fheldgsvf0rc7vow` (`id`),
  CONSTRAINT `FK_ejo3kx4d1fheldgsvf0rc7vow` FOREIGN KEY (`id`) REFERENCES `management_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_partner_description`
--

DROP TABLE IF EXISTS `modified_partner_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_partner_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_6amp8g4rytniax12wqyvreytr` FOREIGN KEY (`id`) REFERENCES `partner_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_partner_fields`
--

DROP TABLE IF EXISTS `modified_partner_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_partner_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_mpuaueamtm6nlxxjxba27rui9` (`id`),
  CONSTRAINT `FK_mpuaueamtm6nlxxjxba27rui9` FOREIGN KEY (`id`) REFERENCES `partner_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_po_description`
--

DROP TABLE IF EXISTS `modified_po_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_po_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_571adxmqvajxqy9bg5tb3qqlg` FOREIGN KEY (`id`) REFERENCES `purchase_order_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_po_fields`
--

DROP TABLE IF EXISTS `modified_po_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_po_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_r97qqvluuun5mnwln3hpafuyv` (`id`),
  CONSTRAINT `FK_r97qqvluuun5mnwln3hpafuyv` FOREIGN KEY (`id`) REFERENCES `purchase_order_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_theater_description`
--

DROP TABLE IF EXISTS `modified_theater_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_theater_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_osqwbncnbulyurgwmicghbhk8` FOREIGN KEY (`id`) REFERENCES `theater_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_theater_fields`
--

DROP TABLE IF EXISTS `modified_theater_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_theater_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_7hmf5763t63hh8sl5mw3le1ad` (`id`),
  CONSTRAINT `FK_7hmf5763t63hh8sl5mw3le1ad` FOREIGN KEY (`id`) REFERENCES `theater_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_tsa_description`
--

DROP TABLE IF EXISTS `modified_tsa_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_tsa_description` (
  `id` bigint(20) NOT NULL,
  `modified_field_description` varchar(255) DEFAULT NULL,
  `field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`field_map_key`),
  CONSTRAINT `FK_pceeby2fdxd29xg0wd3hk3wjj` FOREIGN KEY (`id`) REFERENCES `tsadvantage_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modified_tsa_fields`
--

DROP TABLE IF EXISTS `modified_tsa_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modified_tsa_fields` (
  `id` bigint(20) NOT NULL,
  `modified_field` varchar(255) DEFAULT NULL,
  KEY `FK_drh8hlvcd8plhgo3errp866v1` (`id`),
  CONSTRAINT `FK_drh8hlvcd8plhgo3errp866v1` FOREIGN KEY (`id`) REFERENCES `tsadvantage_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `auto_report` bit(1) DEFAULT NULL,
  `contact_email_id` varchar(255) DEFAULT NULL,
  `course_opt` int(11) DEFAULT NULL,
  `daily_report_title` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `ndmorder_email_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `report_email_id` varchar(255) DEFAULT NULL,
  `reseller_program` bit(1) DEFAULT NULL,
  `support_email_id` varchar(255) DEFAULT NULL,
  `method_of_payment_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pk8xq8ki64nyd3m5vehmejq0e` (`lestat_id`),
  KEY `FK_444po3ht29c317u2wlq6ukyxf` (`method_of_payment_id`),
  KEY `FK_h47iui3g0blddwfknsjur3xlc` (`theater_id`),
  CONSTRAINT `FK_444po3ht29c317u2wlq6ukyxf` FOREIGN KEY (`method_of_payment_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `FK_h47iui3g0blddwfknsjur3xlc` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partner_courses`
--

DROP TABLE IF EXISTS `partner_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_courses` (
  `partner_id` bigint(20) NOT NULL,
  `courses_id` bigint(20) NOT NULL,
  KEY `FK_l3pcmnl0buknh5gjpc4tonth1` (`courses_id`),
  KEY `FK_ijmy7j407d6gx54a3yqgssdas` (`partner_id`),
  CONSTRAINT `FK_ijmy7j407d6gx54a3yqgssdas` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `FK_l3pcmnl0buknh5gjpc4tonth1` FOREIGN KEY (`courses_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partner_theaters`
--

DROP TABLE IF EXISTS `partner_theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_theaters` (
  `partner_id` bigint(20) NOT NULL,
  `theaters_id` bigint(20) NOT NULL,
  KEY `FK_om8iny45qulm30ir107wvh3b5` (`theaters_id`),
  KEY `FK_rroh13cvx3qb3em5mib95f36l` (`partner_id`),
  CONSTRAINT `FK_om8iny45qulm30ir107wvh3b5` FOREIGN KEY (`theaters_id`) REFERENCES `theater` (`id`),
  CONSTRAINT `FK_rroh13cvx3qb3em5mib95f36l` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `partner_tracking`
--

DROP TABLE IF EXISTS `partner_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seat_discount_percentage` float DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2e3lticds2rjln7ueuastfgef` (`lestat_id`),
  KEY `FK_2pqcf455y32fiy28xa2jncajx` (`partner_id`),
  CONSTRAINT `FK_2pqcf455y32fiy28xa2jncajx` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peer_group`
--

DROP TABLE IF EXISTS `peer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qqgt85fmdcax8348038xoodql` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peer_group_courses`
--

DROP TABLE IF EXISTS `peer_group_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_group_courses` (
  `peer_group_id` bigint(20) NOT NULL,
  `courses_id` bigint(20) NOT NULL,
  KEY `FK_9josla3h6900fb7k057gav5hv` (`courses_id`),
  KEY `FK_f5w9tasdt3q96bpwrruaff4di` (`peer_group_id`),
  CONSTRAINT `FK_9josla3h6900fb7k057gav5hv` FOREIGN KEY (`courses_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_f5w9tasdt3q96bpwrruaff4di` FOREIGN KEY (`peer_group_id`) REFERENCES `peer_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plan_amount`
--

DROP TABLE IF EXISTS `plan_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_amount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `accounting_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `subbu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner`
--

DROP TABLE IF EXISTS `planner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `planer_status` int(11) DEFAULT NULL,
  `planner_email` varchar(255) DEFAULT NULL,
  `planner_first_name` varchar(255) DEFAULT NULL,
  `planner_last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ag2w8la3y0viglfjyl6hoiwsf` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner_instances`
--

DROP TABLE IF EXISTS `planner_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_instances` (
  `planner_id` bigint(20) NOT NULL,
  `instances_id` bigint(20) NOT NULL,
  KEY `FK_31e4ed1ty8ec5rfa78d11wb4j` (`instances_id`),
  KEY `FK_qysivbue70feoyfuho93bpnfj` (`planner_id`),
  CONSTRAINT `FK_31e4ed1ty8ec5rfa78d11wb4j` FOREIGN KEY (`instances_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_qysivbue70feoyfuho93bpnfj` FOREIGN KEY (`planner_id`) REFERENCES `planner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner_report_description`
--

DROP TABLE IF EXISTS `planner_report_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_report_description` (
  `id` bigint(20) NOT NULL,
  `report_field_description` varchar(255) DEFAULT NULL,
  `report_field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`report_field_map_key`),
  CONSTRAINT `FK_t1ckcfxo40etgto2wifkmvoxk` FOREIGN KEY (`id`) REFERENCES `planner_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner_report_fields`
--

DROP TABLE IF EXISTS `planner_report_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_report_fields` (
  `id` bigint(20) NOT NULL,
  `report_field` varchar(255) DEFAULT NULL,
  KEY `FK_5vg4qipfr8sp48o5p12l34kj4` (`id`),
  CONSTRAINT `FK_5vg4qipfr8sp48o5p12l34kj4` FOREIGN KEY (`id`) REFERENCES `planner_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner_report_tracking`
--

DROP TABLE IF EXISTS `planner_report_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_report_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1076 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planner_roles`
--

DROP TABLE IF EXISTS `planner_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_roles` (
  `planner_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FK_cthcfndm02fc8vkamvt5gf13s` (`planner_id`),
  CONSTRAINT `FK_cthcfndm02fc8vkamvt5gf13s` FOREIGN KEY (`planner_id`) REFERENCES `planner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project_manager_report_tracking`
--

DROP TABLE IF EXISTS `project_manager_report_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_manager_report_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `asptquote` varchar(255) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `contract_no` varchar(255) DEFAULT NULL,
  `dealid` varchar(255) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `enrollment_type` int(11) DEFAULT NULL,
  `financial_group` int(11) DEFAULT NULL,
  `instance_type` int(11) DEFAULT NULL,
  `invoice_comments` longtext,
  `invoice_date` datetime DEFAULT NULL,
  `invoice_hold` bit(1) DEFAULT NULL,
  `invoice_submit_date` datetime DEFAULT NULL,
  `invoice_submitted` bit(1) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `po_amount` float DEFAULT NULL,
  `po_booked` bit(1) DEFAULT NULL,
  `po_booked_date` datetime DEFAULT NULL,
  `po_cancelled` bit(1) DEFAULT NULL,
  `po_comments` longtext,
  `po_credit` bit(1) DEFAULT NULL,
  `po_invoiced` bit(1) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `po_payment_date` datetime DEFAULT NULL,
  `po_recognized` bit(1) DEFAULT NULL,
  `po_recognized_date` datetime DEFAULT NULL,
  `po_submit_date` datetime DEFAULT NULL,
  `po_submitted` bit(1) DEFAULT NULL,
  `po_type` int(11) DEFAULT NULL,
  `projectid` varchar(255) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_comments` longtext,
  `so_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `tkl_amount` float DEFAULT NULL,
  `tkl_transaction` bit(1) DEFAULT NULL,
  `trans_sub` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `fin_rec_keep_peer_group_id` bigint(20) DEFAULT NULL,
  `po_account_manager_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  `po_project_manager_id` bigint(20) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sylxw04fk0itr7mffkay74qns` (`lestat_id`),
  KEY `FK_l0jp8830qdyelrll7bkd2w846` (`company_id`),
  KEY `FK_pod170dw4b0jiqml5vfii0168` (`fin_rec_keep_peer_group_id`),
  KEY `FK_3l45k4hv5y01447aixvu31pk7` (`po_account_manager_id`),
  KEY `FK_elqi69u2qctcu6rtyqld9cs7e` (`theater_id`),
  KEY `FK_mfwevucniuvqhguxwdhmwe98j` (`po_project_manager_id`),
  KEY `FK_ac7od1b8cirjfsqutnd3hvlet` (`finance_manager_id`),
  CONSTRAINT `FK_3l45k4hv5y01447aixvu31pk7` FOREIGN KEY (`po_account_manager_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_ac7od1b8cirjfsqutnd3hvlet` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK_elqi69u2qctcu6rtyqld9cs7e` FOREIGN KEY (`theater_id`) REFERENCES `sales_theater` (`id`),
  CONSTRAINT `FK_l0jp8830qdyelrll7bkd2w846` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_mfwevucniuvqhguxwdhmwe98j` FOREIGN KEY (`po_project_manager_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_pod170dw4b0jiqml5vfii0168` FOREIGN KEY (`fin_rec_keep_peer_group_id`) REFERENCES `peer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1895 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_order_generic_item`
--

DROP TABLE IF EXISTS `purchase_order_generic_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_generic_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `unit_cost` float DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_38l85ai0oqva88behtndqum3c` (`lestat_id`),
  KEY `FK_qhabqrxnqs7prrxsblanv1an8` (`company_id`),
  KEY `FK_lxkujy5ap56i9mrhb3lo0qyrt` (`purchase_order_id`),
  CONSTRAINT `FK_lxkujy5ap56i9mrhb3lo0qyrt` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_qhabqrxnqs7prrxsblanv1an8` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1064 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_order_instance_item`
--

DROP TABLE IF EXISTS `purchase_order_instance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_instance_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `item_num` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_stcn1q5v7ve8t753cdnvfyxb3` (`lestat_id`),
  KEY `FK_itepa5odige4vkv80jpmftfex` (`company_id`),
  KEY `FK_crv8fydu86h7er0qpp43d1p2u` (`instance_id`),
  KEY `FK_op1lgw5vey1wyvic728maohnq` (`purchase_order_id`),
  CONSTRAINT `FK_crv8fydu86h7er0qpp43d1p2u` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`),
  CONSTRAINT `FK_itepa5odige4vkv80jpmftfex` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_op1lgw5vey1wyvic728maohnq` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_order_tracking`
--

DROP TABLE IF EXISTS `purchase_order_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `po_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenue_all_big_data`
--

DROP TABLE IF EXISTS `revenue_all_big_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenue_all_big_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `channel_type` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `deal_type` varchar(255) DEFAULT NULL,
  `delivery_type` varchar(255) DEFAULT NULL,
  `enrollment_type` varchar(255) DEFAULT NULL,
  `fiscal_month` varchar(255) DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `lob` varchar(255) DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `revenue_all_id` bigint(20) DEFAULT NULL,
  `revenue_sub_category` varchar(255) DEFAULT NULL,
  `sales_theater` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `extended_price` varchar(255) DEFAULT NULL,
  `lc_coverted` varchar(255) DEFAULT NULL,
  `lc_id` varchar(255) DEFAULT NULL,
  `lc_percentage` varchar(255) DEFAULT NULL,
  `lc_submitted` varchar(255) DEFAULT NULL,
  `list_price` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `learning_credit_id` bigint(20) DEFAULT NULL,
  `learning_credit_percentage` float DEFAULT NULL,
  `mr_percentage` float DEFAULT NULL,
  `po_percentage` float DEFAULT NULL,
  `tsa_percentage` float DEFAULT NULL,
  `management_report_id` bigint(20) DEFAULT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `ts_advantage_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_aergtphvs6y91406l9j2fsv24` (`learning_credit_id`),
  KEY `FK_4ayx2lfji9ffm1a03r4g0lr6q` (`management_report_id`),
  KEY `FK_i72ika2an2ul2ilshal6n4dy5` (`purchase_order_id`),
  KEY `FK_fdho2lcn55v1krsuy5nyvai7y` (`ts_advantage_id`),
  KEY `FK_iwriu8rdiou21egnkho5t8wv1` (`gilmore_batch_id`),
  CONSTRAINT `FK_4ayx2lfji9ffm1a03r4g0lr6q` FOREIGN KEY (`management_report_id`) REFERENCES `management_report` (`id`),
  CONSTRAINT `FK_aergtphvs6y91406l9j2fsv24` FOREIGN KEY (`learning_credit_id`) REFERENCES `learning_credit` (`id`),
  CONSTRAINT `FK_fdho2lcn55v1krsuy5nyvai7y` FOREIGN KEY (`ts_advantage_id`) REFERENCES `tsadvantage` (`id`),
  CONSTRAINT `FK_i72ika2an2ul2ilshal6n4dy5` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_iwriu8rdiou21egnkho5t8wv1` FOREIGN KEY (`gilmore_batch_id`) REFERENCES `gilmore_batch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3988 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_order_learning_credit`
--

DROP TABLE IF EXISTS `sales_order_learning_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_order_learning_credit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL,
  `sales_orderlc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l2arb5mqw58g81s4cnrfudx5s` (`sales_order_id`),
  KEY `FK_ri109nds06dobibb2jfu91q2t` (`sales_orderlc_id`),
  CONSTRAINT `FK_l2arb5mqw58g81s4cnrfudx5s` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`),
  CONSTRAINT `FK_ri109nds06dobibb2jfu91q2t` FOREIGN KEY (`sales_orderlc_id`) REFERENCES `sales_orderlc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_orderlc`
--

DROP TABLE IF EXISTS `sales_orderlc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_orderlc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lc_id` int(11) DEFAULT NULL,
  `lc_percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_theater`
--

DROP TABLE IF EXISTS `sales_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_theater` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tb52ro51kh9nssjf1fvg6qniu` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `cisco_org` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `company_type` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `okto_contact` bit(1) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_sub_org_id` bigint(20) DEFAULT NULL,
  `cco_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cs851wp7viesaxror2nppaay2` (`lestat_id`),
  KEY `FK_oym2jvwaln537poqvg10m4ffq` (`country_id`),
  KEY `FK_2bmc38mgcj8n8fm9gl0e6ntdt` (`customer_id`),
  KEY `FK_t4lot5o2nxmugafhn8hgiujvq` (`customer_sub_org_id`),
  KEY `ix_student__email` (`email`),
  CONSTRAINT `FK_2bmc38mgcj8n8fm9gl0e6ntdt` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_oym2jvwaln537poqvg10m4ffq` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_t4lot5o2nxmugafhn8hgiujvq` FOREIGN KEY (`customer_sub_org_id`) REFERENCES `customer_sub_org` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78688 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplier_pr`
--

DROP TABLE IF EXISTS `supplier_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_pr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `belong_to_department` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `financial_note` longtext,
  `lab_paid_by_department` int(11) DEFAULT NULL,
  `supplier_po` varchar(255) DEFAULT NULL,
  `supplier_po_open_under` int(11) DEFAULT NULL,
  `supplier_pr` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `project_manager_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b09yecbru8ngi0q3l98862407` (`course_id`),
  KEY `FK_tkuhpba9n93yr3xhadd34ir50` (`instance_id`),
  KEY `FK_c92ffi9sb8kiicytef86mdrmj` (`project_manager_id`),
  KEY `FK_7477vuuh53r989lhhduqi4ini` (`supplier_id`),
  CONSTRAINT `FK_7477vuuh53r989lhhduqi4ini` FOREIGN KEY (`supplier_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FK_b09yecbru8ngi0q3l98862407` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_c92ffi9sb8kiicytef86mdrmj` FOREIGN KEY (`project_manager_id`) REFERENCES `planner` (`id`),
  CONSTRAINT `FK_tkuhpba9n93yr3xhadd34ir50` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplier_pr_planners`
--

DROP TABLE IF EXISTS `supplier_pr_planners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_pr_planners` (
  `supplier_pr_id` bigint(20) NOT NULL,
  `planners_id` bigint(20) NOT NULL,
  KEY `FK_mt0qyn3dsvck7c1v4x7lom9j7` (`planners_id`),
  KEY `FK_5qp7ico5msu4wsmup7s3byayk` (`supplier_pr_id`),
  CONSTRAINT `FK_5qp7ico5msu4wsmup7s3byayk` FOREIGN KEY (`supplier_pr_id`) REFERENCES `supplier_pr` (`id`),
  CONSTRAINT `FK_mt0qyn3dsvck7c1v4x7lom9j7` FOREIGN KEY (`planners_id`) REFERENCES `planner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `rights` int(11) DEFAULT NULL,
  `special_group` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  `instructor_group_id` bigint(20) DEFAULT NULL,
  `peer_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pbgg97qncjs63xcter25gn8qs` (`lestat_id`),
  UNIQUE KEY `UK_74y7xiqrvp39wycn0ron4xq4h` (`username`),
  KEY `FK_5b8wbk4y9cet2tb69hcr6d5tr` (`instructor_id`),
  KEY `FK_9nd04spu6gooaaua1qlk1eb30` (`instructor_group_id`),
  KEY `FK_c1bmfpuaxl1a7ti9nfyg2x15b` (`peer_group_id`),
  CONSTRAINT `FK_5b8wbk4y9cet2tb69hcr6d5tr` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `FK_9nd04spu6gooaaua1qlk1eb30` FOREIGN KEY (`instructor_group_id`) REFERENCES `instructor_group` (`id`),
  CONSTRAINT `FK_c1bmfpuaxl1a7ti9nfyg2x15b` FOREIGN KEY (`peer_group_id`) REFERENCES `peer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=572 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user_role`
--

DROP TABLE IF EXISTS `system_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user_role_permission`
--

DROP TABLE IF EXISTS `system_user_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user_role_permissions`
--

DROP TABLE IF EXISTS `system_user_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_role_permissions` (
  `system_user_role_id` bigint(20) NOT NULL,
  `permissions_id` bigint(20) NOT NULL,
  KEY `FK_kudnxigh6k98lhvfencfnrvn0` (`permissions_id`),
  KEY `FK_f516ab7e0hpwg2ew97jjdwc0g` (`system_user_role_id`),
  CONSTRAINT `FK_f516ab7e0hpwg2ew97jjdwc0g` FOREIGN KEY (`system_user_role_id`) REFERENCES `system_user_role` (`id`),
  CONSTRAINT `FK_kudnxigh6k98lhvfencfnrvn0` FOREIGN KEY (`permissions_id`) REFERENCES `system_user_role_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user_roles`
--

DROP TABLE IF EXISTS `system_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_roles` (
  `system_user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK_pe7eg5b7b5kpgruwxrc2no0el` (`system_user_id`),
  KEY `FK_n4uy0q9i21g0ahiypb3umkj3c` (`roles_id`),
  CONSTRAINT `FK_n4uy0q9i21g0ahiypb3umkj3c` FOREIGN KEY (`roles_id`) REFERENCES `system_user_role` (`id`),
  CONSTRAINT `FK_pe7eg5b7b5kpgruwxrc2no0el` FOREIGN KEY (`system_user_id`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oww5y1y58wcwdrg5jfb4mxx4j` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theater` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jb0d24lrurdinsrmuq9jyo9m6` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theater_tracking`
--

DROP TABLE IF EXISTS `theater_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theater_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(2) DEFAULT NULL,
  `time_zone_id` varchar(200) DEFAULT NULL,
  `gmt_offset` decimal(3,1) DEFAULT NULL,
  `dst_offset` decimal(3,1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tsadvantage`
--

DROP TABLE IF EXISTS `tsadvantage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsadvantage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `approval_method` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `booked` varchar(255) DEFAULT NULL,
  `booked_by` varchar(255) DEFAULT NULL,
  `booked_date` datetime DEFAULT NULL,
  `comments` longtext,
  `contract_months` int(11) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `deal_type` int(11) DEFAULT NULL,
  `delivery_type` int(11) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `enrollment_type` varchar(255) DEFAULT NULL,
  `erp_deal_id` varchar(255) DEFAULT NULL,
  `group_type` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `lob` int(11) DEFAULT NULL,
  `part_no` varchar(255) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `trans_sub` varchar(255) DEFAULT NULL,
  `tsa_comments` longtext,
  `company_id` bigint(20) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  `metal_type` int(11) DEFAULT NULL,
  `quote_number` varchar(255) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `finance_manager_id` bigint(20) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `portfolio` varchar(255) DEFAULT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c0nrqsbi01ki1fx7edscr0nua` (`lestat_id`),
  KEY `FK_aaqu9d5fsik40kc2vn33g832` (`company_id`),
  KEY `FK_knsxfm8sw448dljrrdufftdpi` (`theater_id`),
  KEY `FK_n7nxsg8gvsxtllq4voumex2bh` (`finance_manager_id`),
  CONSTRAINT `FK_aaqu9d5fsik40kc2vn33g832` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_knsxfm8sw448dljrrdufftdpi` FOREIGN KEY (`theater_id`) REFERENCES `sales_theater` (`id`),
  CONSTRAINT `FK_n7nxsg8gvsxtllq4voumex2bh` FOREIGN KEY (`finance_manager_id`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2496 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tsadvantage_instance_item`
--

DROP TABLE IF EXISTS `tsadvantage_instance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsadvantage_instance_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `instance_id` bigint(20) DEFAULT NULL,
  `ts_advantage_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gi1hyhkkkx4dqi9uhosb2ulsy` (`lestat_id`),
  KEY `FK_p7wjda6hrhc3qbp96176t7ahn` (`instance_id`),
  KEY `FK_bx5903plln8je6l6q326lqx07` (`ts_advantage_id`),
  CONSTRAINT `FK_bx5903plln8je6l6q326lqx07` FOREIGN KEY (`ts_advantage_id`) REFERENCES `tsadvantage` (`id`),
  CONSTRAINT `FK_p7wjda6hrhc3qbp96176t7ahn` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tsadvantage_tracking`
--

DROP TABLE IF EXISTS `tsadvantage_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsadvantage_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `tsa_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `identification_number` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kp3say5x539gnoub5u303wu64` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weeks`
--

DROP TABLE IF EXISTS `weeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weeks` (
  `date` date NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workload_report_description`
--

DROP TABLE IF EXISTS `workload_report_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workload_report_description` (
  `id` bigint(20) NOT NULL,
  `report_field_description` varchar(255) DEFAULT NULL,
  `report_field_map_key` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`report_field_map_key`),
  CONSTRAINT `FK_8qdaoige52w44qmjwuei4f30` FOREIGN KEY (`id`) REFERENCES `workload_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workload_report_fields`
--

DROP TABLE IF EXISTS `workload_report_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workload_report_fields` (
  `id` bigint(20) NOT NULL,
  `report_field` varchar(255) DEFAULT NULL,
  KEY `FK_3fksujgodr40c9r8heuu2dv20` (`id`),
  CONSTRAINT `FK_3fksujgodr40c9r8heuu2dv20` FOREIGN KEY (`id`) REFERENCES `workload_report_tracking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workload_report_tracking`
--

DROP TABLE IF EXISTS `workload_report_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workload_report_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4727 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'edwarddbprod'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_RemoveHTMLTag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_RemoveHTMLTag`(HtmlString text) RETURNS text CHARSET utf8
BEGIN
    DECLARE StartTag, EndTag INT DEFAULT 1;
    LOOP
        SET StartTag = LOCATE("<", HtmlString, StartTag);
        IF (!StartTag) THEN 
RETURN HtmlString; 
END IF;
        SET EndTag = LOCATE(">", HtmlString, StartTag);
        IF (!EndTag) THEN 
SET EndTag = StartTag; 
END IF;
        SET HtmlString = INSERT(HtmlString, StartTag, EndTag - StartTag + 1, "");
    END LOOP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 13:25:32

