-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 10.80.59.86    Database: thordb
-- ------------------------------------------------------
-- Server version	5.5.60-0ubuntu0.14.04.1

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
-- Table structure for table `fiscal_period_day`
--

CREATE DATABASE leads;

USE leads;

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
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `actual_closure_date` datetime DEFAULT NULL,
  `actual_paid` double DEFAULT NULL,
  `audience_job_role` varchar(255) DEFAULT NULL,
  `belongs_to_type` int(11) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `expected_closure_date` datetime DEFAULT NULL,
  `expected_delivery_date` datetime DEFAULT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `lead_state` int(11) DEFAULT NULL,
  `learning_partner_customer_name` varchar(255) DEFAULT NULL,
  `learning_partner_project_owner_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `notes` longtext,
  `paid_date` datetime DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `quote` double DEFAULT NULL,
  `quote_submitted_date` datetime DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `requestor_role` varchar(255) DEFAULT NULL,
  `risk_notes` longtext,
  `status_notes` longtext,
  `status_notes_last_mod_date` datetime DEFAULT NULL,
  `booking_vehicle_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_segment_id` bigint(20) DEFAULT NULL,
  `primary_lead_project_owner_id` bigint(20) DEFAULT NULL,
  `product_line_id` bigint(20) DEFAULT NULL,
  `qualifier_id` bigint(20) DEFAULT NULL,
  `secondary_lead_project_owner_id` bigint(20) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `technology_id` bigint(20) DEFAULT NULL,
  `vertical_id` bigint(20) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `lc_number` varchar(255) DEFAULT NULL,
  `contract_length` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `forecast_status` varchar(255) DEFAULT NULL,
  `probability` float DEFAULT NULL,
  `gtm_strategy` varchar(255) DEFAULT NULL,
  `prev_so_number` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `prev_booking` double DEFAULT NULL,
  `prev_license_quantity` int(11) DEFAULT NULL,
  `actual_proposed_training` varchar(255) DEFAULT NULL,
  `deliveries_per_booking` int(11) DEFAULT NULL,
  `license_quantity` int(11) DEFAULT NULL,
  `margin` float DEFAULT NULL,
  `supporting_pm` varchar(255) DEFAULT NULL,
  `customer_email` varchar(1000) DEFAULT NULL,
  `soars_instance_id` bigint(20) DEFAULT NULL,
  `account_rep` varchar(255) DEFAULT NULL,
  `discount_pct` double DEFAULT NULL,
  `sales_level1` varchar(255) DEFAULT NULL,
  `sales_level2` varchar(255) DEFAULT NULL,
  `sales_level3` varchar(255) DEFAULT NULL,
  `sales_level4` varchar(255) DEFAULT NULL,
  `sales_level5` varchar(255) DEFAULT NULL,
  `accrual_end_date` datetime DEFAULT NULL,
  `accrual_start_date` datetime DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `adopted_license_count` int(11) DEFAULT NULL,
  `bdm_in_fft` varchar(255) DEFAULT NULL,
  `entitled_license_count` int(11) DEFAULT NULL,
  `sales_level6` varchar(255) DEFAULT NULL,
  `used_license_count` int(11) DEFAULT NULL,
  `special_promotion` varchar(255) DEFAULT NULL,
  `booking_vehicle_expiration` double DEFAULT NULL,
  `learning_advisor_id` bigint(20) DEFAULT NULL,
  `fft_date_booked` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_p072t5ck6t1rg18oa7jrog48c` (`lestat_id`),
  KEY `FK_lao6j0farrg4hu5dltoldkx8f` (`booking_vehicle_id`),
  KEY `FK_5rwkq28uiep3qyg4teh65van4` (`country_id`),
  KEY `FK_q9sjfgl16lj6tm56hua98y6k9` (`customer_id`),
  KEY `FK_2fq5fusowqw3w501rb65shbep` (`customer_segment_id`),
  KEY `FK_lxqyfaxlljqv88lj6dncut922` (`primary_lead_project_owner_id`),
  KEY `FK_g36x8sym3lskmdacjsg4png5x` (`product_line_id`),
  KEY `FK_jnyi4xi4lnqnuvfkc7as8sxp5` (`qualifier_id`),
  KEY `FK_fbwgyw5aj3btn5txak5mhmqtx` (`secondary_lead_project_owner_id`),
  KEY `FK_51vhvlxk2mju8crh18wwwsfo4` (`source_id`),
  KEY `FK_q6evmgo47k1ti8y9pe9egwvdl` (`technology_id`),
  KEY `FK_pbxj77s84g0skeaw6f37x6f8b` (`vertical_id`),
  KEY `FK_fbfpn6sy5s8qmp5iydmqhhcy4` (`learning_advisor_id`),
  CONSTRAINT `FK_2fq5fusowqw3w501rb65shbep` FOREIGN KEY (`customer_segment_id`) REFERENCES `lead_customer_segment` (`id`),
  CONSTRAINT `FK_51vhvlxk2mju8crh18wwwsfo4` FOREIGN KEY (`source_id`) REFERENCES `lead_source` (`id`),
  CONSTRAINT `FK_5rwkq28uiep3qyg4teh65van4` FOREIGN KEY (`country_id`) REFERENCES `lead_country` (`id`),
  CONSTRAINT `FK_fbfpn6sy5s8qmp5iydmqhhcy4` FOREIGN KEY (`learning_advisor_id`) REFERENCES `lead_learning_advisor` (`id`),
  CONSTRAINT `FK_fbwgyw5aj3btn5txak5mhmqtx` FOREIGN KEY (`secondary_lead_project_owner_id`) REFERENCES `lead_project_owner` (`id`),
  CONSTRAINT `FK_g36x8sym3lskmdacjsg4png5x` FOREIGN KEY (`product_line_id`) REFERENCES `lead_product_line` (`id`),
  CONSTRAINT `FK_jnyi4xi4lnqnuvfkc7as8sxp5` FOREIGN KEY (`qualifier_id`) REFERENCES `lead_qualifier` (`id`),
  CONSTRAINT `FK_lao6j0farrg4hu5dltoldkx8f` FOREIGN KEY (`booking_vehicle_id`) REFERENCES `lead_booking_vehicle` (`id`),
  CONSTRAINT `FK_lxqyfaxlljqv88lj6dncut922` FOREIGN KEY (`primary_lead_project_owner_id`) REFERENCES `lead_project_owner` (`id`),
  CONSTRAINT `FK_pbxj77s84g0skeaw6f37x6f8b` FOREIGN KEY (`vertical_id`) REFERENCES `lead_vertical` (`id`),
  CONSTRAINT `FK_q6evmgo47k1ti8y9pe9egwvdl` FOREIGN KEY (`technology_id`) REFERENCES `lead_technology` (`id`),
  CONSTRAINT `FK_q9sjfgl16lj6tm56hua98y6k9` FOREIGN KEY (`customer_id`) REFERENCES `lead_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18982 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_booking_vehicle`
--

DROP TABLE IF EXISTS `lead_booking_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_booking_vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_axa3ip1p901tykkl1hlvys5r5` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_cml_booking_claim_tracker`
--

DROP TABLE IF EXISTS `lead_cml_booking_claim_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_cml_booking_claim_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `bdm_tagged_id` bigint(20) DEFAULT NULL,
  `claimed_on` datetime DEFAULT NULL,
  `cml_booking_id` bigint(20) DEFAULT NULL,
  `existing_lead_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2g4bwmn9xfkud2mqnpb06u8x` (`cml_booking_id`),
  KEY `FK_4i4eg57rsypmogiwnh63mv8h4` (`existing_lead_id`),
  CONSTRAINT `FK_4i4eg57rsypmogiwnh63mv8h4` FOREIGN KEY (`existing_lead_id`) REFERENCES `lead` (`id`),
  CONSTRAINT `FK_2g4bwmn9xfkud2mqnpb06u8x` FOREIGN KEY (`cml_booking_id`) REFERENCES `lead` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_cml_booking_claimed`
--

DROP TABLE IF EXISTS `lead_cml_booking_claimed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_cml_booking_claimed` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `cml_booking_id` bigint(20) DEFAULT NULL,
  `cml_renewal_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7dfq7a0screwf567k2at91kao` (`cml_booking_id`),
  KEY `FK_dlhwp2hgjalq5h7yvoifui73l` (`cml_renewal_id`),
  CONSTRAINT `FK_7dfq7a0screwf567k2at91kao` FOREIGN KEY (`cml_booking_id`) REFERENCES `lead` (`id`),
  CONSTRAINT `FK_dlhwp2hgjalq5h7yvoifui73l` FOREIGN KEY (`cml_renewal_id`) REFERENCES `lead` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_country`
--

DROP TABLE IF EXISTS `lead_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `theater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jhe9n6ieqv0fm3xle7ompu9hh` (`lestat_id`),
  KEY `FK_dqsn4t60x91bgsb799lss6b5q` (`theater_id`),
  CONSTRAINT `FK_dqsn4t60x91bgsb799lss6b5q` FOREIGN KEY (`theater_id`) REFERENCES `lead_theater` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_current_sku_list`
--

DROP TABLE IF EXISTS `lead_current_sku_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_current_sku_list` (
  `lead_id` bigint(20) NOT NULL,
  `current_sku_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_dqnpwcq48unqnov331stasj4k` (`current_sku_list_id`),
  KEY `FK_5boxm8146x3hss6sal621cueh` (`lead_id`),
  CONSTRAINT `FK_5boxm8146x3hss6sal621cueh` FOREIGN KEY (`lead_id`) REFERENCES `lead` (`id`),
  CONSTRAINT `FK_dqnpwcq48unqnov331stasj4k` FOREIGN KEY (`current_sku_list_id`) REFERENCES `lead_sku_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_customer`
--

DROP TABLE IF EXISTS `lead_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `cisco_contactcec` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `hq_id` bigint(20) DEFAULT NULL,
  `sales_level1` varchar(255) DEFAULT NULL,
  `sales_level2` varchar(255) DEFAULT NULL,
  `sales_level3` varchar(255) DEFAULT NULL,
  `sales_level4` varchar(255) DEFAULT NULL,
  `sales_level5` varchar(255) DEFAULT NULL,
  `gu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qccc2g71jsgag6u6h35fedmd9` (`lestat_id`),
  KEY `FK_dp9kn5q4yp9uex0rphc0e2gqp` (`gu_id`),
  CONSTRAINT `FK_dp9kn5q4yp9uex0rphc0e2gqp` FOREIGN KEY (`gu_id`) REFERENCES `lead_global_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8378 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_customer_curation`
--

DROP TABLE IF EXISTS `lead_customer_curation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_customer_curation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `comments` longtext,
  `curation_status` varchar(255) DEFAULT NULL,
  `customer_to_be_reviewed` bigint(20) DEFAULT NULL,
  `isaduplicate_of_customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rquepuggugedubxfp9bh4eqqu` (`isaduplicate_of_customer_id`),
  CONSTRAINT `FK_rquepuggugedubxfp9bh4eqqu` FOREIGN KEY (`isaduplicate_of_customer_id`) REFERENCES `lead_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_customer_request`
--

DROP TABLE IF EXISTS `lead_customer_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_customer_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `cisco_contactcec` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `hq_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `request_status` varchar(255) DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `sales_level1` varchar(255) DEFAULT NULL,
  `sales_level2` varchar(255) DEFAULT NULL,
  `sales_level3` varchar(255) DEFAULT NULL,
  `sales_level4` varchar(255) DEFAULT NULL,
  `sales_level5` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `customer_tagged_id` bigint(20) DEFAULT NULL,
  `gu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tbmbvg1ldov4kdfi343wi4rin` (`customer_tagged_id`),
  KEY `FK_4154dqon706atoa9qjkk4w90k` (`gu_id`),
  CONSTRAINT `FK_4154dqon706atoa9qjkk4w90k` FOREIGN KEY (`gu_id`) REFERENCES `lead_global_customer` (`id`),
  CONSTRAINT `FK_tbmbvg1ldov4kdfi343wi4rin` FOREIGN KEY (`customer_tagged_id`) REFERENCES `lead_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_customer_segment`
--

DROP TABLE IF EXISTS `lead_customer_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_customer_segment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7wqlvo3n1pf4ypqa4gkmlrpl7` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_fin_tracking_saved_plan`
--

DROP TABLE IF EXISTS `lead_fin_tracking_saved_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_fin_tracking_saved_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `json` longtext,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ei0ng6380odqw6ahtdajityqs` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_forecast_tool_data_sync`
--

DROP TABLE IF EXISTS `lead_forecast_tool_data_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_forecast_tool_data_sync` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_global_customer`
--

DROP TABLE IF EXISTS `lead_global_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_global_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `gu_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3303 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_learning_advisor`
--

DROP TABLE IF EXISTS `lead_learning_advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_learning_advisor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6x4h3sfkpjoy9suh4hoa7jq43` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_learning_partner`
--

DROP TABLE IF EXISTS `lead_learning_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_learning_partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mpyh8uir0j0efjnmr1cgun4wm` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_product_line`
--

DROP TABLE IF EXISTS `lead_product_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_product_line` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lpi5367v8749rj9u940740lu5` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_project_owner`
--

DROP TABLE IF EXISTS `lead_project_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_project_owner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `contact_type` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `notes` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `supporting_pm` varchar(255) DEFAULT NULL,
  `bdm` tinyint(1) NOT NULL DEFAULT '1',
  `virtualbdm` tinyint(1) NOT NULL DEFAULT '0',
  `cisco_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_64enre4oq8smpuvtxyckpq1gy` (`lestat_id`),
  UNIQUE KEY `UK_rrq0ijs65nmnj6qle71ipe2d9` (`cisco_username`)
) ENGINE=InnoDB AUTO_INCREMENT=1048 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_qualifier`
--

DROP TABLE IF EXISTS `lead_qualifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_qualifier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bikx8kspv2ox4y6swv8n6p094` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_sku_data`
--

DROP TABLE IF EXISTS `lead_sku_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_sku_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `prev_license_quantity` int(11) DEFAULT NULL,
  `revenue` double DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `fiscal_month` varchar(255) DEFAULT NULL,
  `fiscal_quarter` varchar(255) DEFAULT NULL,
  `fiscal_week` int(11) DEFAULT NULL,
  `fiscal_year` int(11) DEFAULT NULL,
  `week_num_in_month` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_sku_list`
--

DROP TABLE IF EXISTS `lead_sku_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_sku_list` (
  `lead_id` bigint(20) NOT NULL,
  `sku_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_sd26to4mowy2s7l6s5ol5ibr5` (`sku_list_id`),
  KEY `FK_tqny6f8xt1kygegsicpthcif4` (`lead_id`),
  CONSTRAINT `FK_sd26to4mowy2s7l6s5ol5ibr5` FOREIGN KEY (`sku_list_id`) REFERENCES `lead_sku_data` (`id`),
  CONSTRAINT `FK_tqny6f8xt1kygegsicpthcif4` FOREIGN KEY (`lead_id`) REFERENCES `lead` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_so_number_data`
--

DROP TABLE IF EXISTS `lead_so_number_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_so_number_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `number_of_credits` int(11) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=352894 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_so_number_data_list`
--

DROP TABLE IF EXISTS `lead_so_number_data_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_so_number_data_list` (
  `lead_id` bigint(20) NOT NULL,
  `so_number_data_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_2ospilidi7f40ni9o1oqtm3e1` (`so_number_data_list_id`),
  KEY `FK_t8725rfqnauq4rpbc4bp7xm5o` (`lead_id`),
  CONSTRAINT `FK_2ospilidi7f40ni9o1oqtm3e1` FOREIGN KEY (`so_number_data_list_id`) REFERENCES `lead_so_number_data` (`id`),
  CONSTRAINT `FK_t8725rfqnauq4rpbc4bp7xm5o` FOREIGN KEY (`lead_id`) REFERENCES `lead` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_source`
--

DROP TABLE IF EXISTS `lead_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fxjitt0unw3bgit7ga2iqt7m6` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_system_user`
--

DROP TABLE IF EXISTS `lead_system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_system_user` (
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_93tbd9ur1fyyavmk51tfgfa66` (`lestat_id`),
  UNIQUE KEY `UK_m5niy8tl4n68q5kgrb2mpul4p` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_system_user_roles`
--

DROP TABLE IF EXISTS `lead_system_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_system_user_roles` (
  `lead_system_user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FK_9iiqlv9lhdp7q5jf282aotc7v` (`lead_system_user_id`),
  CONSTRAINT `FK_9iiqlv9lhdp7q5jf282aotc7v` FOREIGN KEY (`lead_system_user_id`) REFERENCES `lead_system_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_technology`
--

DROP TABLE IF EXISTS `lead_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_technology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `belongs_to` int(11) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hgujxxbcan4fwr7gyj711iqhu` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_theater`
--

DROP TABLE IF EXISTS `lead_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_theater` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7k8yucgvij458fv0wxb8qo1cs` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_version`
--

DROP TABLE IF EXISTS `lead_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `actual_closure_date` datetime DEFAULT NULL,
  `actual_paid` double DEFAULT NULL,
  `audience_job_role` varchar(255) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `expected_closure_date` datetime DEFAULT NULL,
  `expected_delivery_date` datetime DEFAULT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `lead_created_by` varchar(255) DEFAULT NULL,
  `lead_created_on` datetime DEFAULT NULL,
  `lead_modified_by` varchar(255) DEFAULT NULL,
  `lead_modified_on` datetime DEFAULT NULL,
  `lead_state` int(11) DEFAULT NULL,
  `learning_partner_customer_name` varchar(255) DEFAULT NULL,
  `learning_partner_project_owner_name` varchar(255) DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `notes` longtext,
  `paid_date` datetime DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `quote` double DEFAULT NULL,
  `quote_submitted_date` datetime DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `requestor` varchar(255) DEFAULT NULL,
  `requestor_role` varchar(255) DEFAULT NULL,
  `risk_notes` longtext,
  `status_notes` longtext,
  `status_notes_last_mod_date` datetime DEFAULT NULL,
  `booking_vehicle_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_segment_id` bigint(20) DEFAULT NULL,
  `lead_id` bigint(20) DEFAULT NULL,
  `primary_lead_project_owner_id` bigint(20) DEFAULT NULL,
  `product_line_id` bigint(20) DEFAULT NULL,
  `qualifier_id` bigint(20) DEFAULT NULL,
  `secondary_lead_project_owner_id` bigint(20) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `technology_id` bigint(20) DEFAULT NULL,
  `vertical_id` bigint(20) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `lc_number` varchar(255) DEFAULT NULL,
  `contract_length` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `forecast_status` varchar(255) DEFAULT NULL,
  `probability` float DEFAULT NULL,
  `gtm_strategy` varchar(255) DEFAULT NULL,
  `prev_so_number` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `prev_booking` double DEFAULT NULL,
  `prev_license_quantity` varchar(255) DEFAULT NULL,
  `actual_proposed_training` varchar(255) DEFAULT NULL,
  `deliveries_per_booking` int(11) DEFAULT NULL,
  `license_quantity` varchar(255) DEFAULT NULL,
  `margin` float DEFAULT NULL,
  `supporting_pm` varchar(255) DEFAULT NULL,
  `customer_email` varchar(1000) DEFAULT NULL,
  `soars_instance_id` bigint(20) DEFAULT NULL,
  `account_rep` varchar(255) DEFAULT NULL,
  `discount_pct` double DEFAULT NULL,
  `sales_level1` varchar(255) DEFAULT NULL,
  `sales_level2` varchar(255) DEFAULT NULL,
  `sales_level3` varchar(255) DEFAULT NULL,
  `sales_level4` varchar(255) DEFAULT NULL,
  `sales_level5` varchar(255) DEFAULT NULL,
  `accrual_end_date` datetime DEFAULT NULL,
  `accrual_start_date` datetime DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `adopted_license_count` int(11) DEFAULT NULL,
  `bdm_in_fft` varchar(255) DEFAULT NULL,
  `entitled_license_count` int(11) DEFAULT NULL,
  `sales_level6` varchar(255) DEFAULT NULL,
  `used_license_count` int(11) DEFAULT NULL,
  `special_promotion` varchar(255) DEFAULT NULL,
  `booking_vehicle_expiration` double DEFAULT NULL,
  `learning_advisor_id` bigint(20) DEFAULT NULL,
  `fft_date_booked` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_covkl9xx420rqyv0w54jm9ljd` (`booking_vehicle_id`),
  KEY `FK_cybjpm1oaim0e3jh64rwvk9h9` (`country_id`),
  KEY `FK_sb7yypdj65ejh4y2pvmmkdh4o` (`customer_id`),
  KEY `FK_eo9lwervufsckn5t2jnfocddp` (`customer_segment_id`),
  KEY `FK_kigrq90264eqvdjaj9u3576st` (`lead_id`),
  KEY `FK_9puupo1kahnoksjljy2hqjlkt` (`primary_lead_project_owner_id`),
  KEY `FK_2t824p6j76y9tqiu4pwcy2yrr` (`product_line_id`),
  KEY `FK_jk7vclhab4y1n32a1wmf605c3` (`qualifier_id`),
  KEY `FK_5m1p8agijsfur6nu9jgxennys` (`secondary_lead_project_owner_id`),
  KEY `FK_2kojox5wayw64c36g9px59is7` (`source_id`),
  KEY `FK_8r17egs99rincwt3eduucoxaa` (`technology_id`),
  KEY `FK_fax5pi0nec59u0ic51bl9xow0` (`vertical_id`),
  KEY `FK_bcwg03rm5xk1hb2fllgkob2gr` (`learning_advisor_id`),
  CONSTRAINT `FK_2kojox5wayw64c36g9px59is7` FOREIGN KEY (`source_id`) REFERENCES `lead_source` (`id`),
  CONSTRAINT `FK_2t824p6j76y9tqiu4pwcy2yrr` FOREIGN KEY (`product_line_id`) REFERENCES `lead_product_line` (`id`),
  CONSTRAINT `FK_5m1p8agijsfur6nu9jgxennys` FOREIGN KEY (`secondary_lead_project_owner_id`) REFERENCES `lead_project_owner` (`id`),
  CONSTRAINT `FK_8r17egs99rincwt3eduucoxaa` FOREIGN KEY (`technology_id`) REFERENCES `lead_technology` (`id`),
  CONSTRAINT `FK_9puupo1kahnoksjljy2hqjlkt` FOREIGN KEY (`primary_lead_project_owner_id`) REFERENCES `lead_project_owner` (`id`),
  CONSTRAINT `FK_bcwg03rm5xk1hb2fllgkob2gr` FOREIGN KEY (`learning_advisor_id`) REFERENCES `lead_learning_advisor` (`id`),
  CONSTRAINT `FK_covkl9xx420rqyv0w54jm9ljd` FOREIGN KEY (`booking_vehicle_id`) REFERENCES `lead_booking_vehicle` (`id`),
  CONSTRAINT `FK_cybjpm1oaim0e3jh64rwvk9h9` FOREIGN KEY (`country_id`) REFERENCES `lead_country` (`id`),
  CONSTRAINT `FK_eo9lwervufsckn5t2jnfocddp` FOREIGN KEY (`customer_segment_id`) REFERENCES `lead_customer_segment` (`id`),
  CONSTRAINT `FK_fax5pi0nec59u0ic51bl9xow0` FOREIGN KEY (`vertical_id`) REFERENCES `lead_vertical` (`id`),
  CONSTRAINT `FK_jk7vclhab4y1n32a1wmf605c3` FOREIGN KEY (`qualifier_id`) REFERENCES `lead_qualifier` (`id`),
  CONSTRAINT `FK_kigrq90264eqvdjaj9u3576st` FOREIGN KEY (`lead_id`) REFERENCES `lead` (`id`),
  CONSTRAINT `FK_sb7yypdj65ejh4y2pvmmkdh4o` FOREIGN KEY (`customer_id`) REFERENCES `lead_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283648 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_version_current_sku_list`
--

DROP TABLE IF EXISTS `lead_version_current_sku_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_version_current_sku_list` (
  `lead_version_id` bigint(20) NOT NULL,
  `current_sku_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_5a1ybbx4en9vvnhf8p998birc` (`current_sku_list_id`),
  KEY `FK_91si0km1ashvfsk0lafl4jgfm` (`lead_version_id`),
  CONSTRAINT `FK_91si0km1ashvfsk0lafl4jgfm` FOREIGN KEY (`lead_version_id`) REFERENCES `lead_version` (`id`),
  CONSTRAINT `FK_5a1ybbx4en9vvnhf8p998birc` FOREIGN KEY (`current_sku_list_id`) REFERENCES `lead_sku_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_version_sku_list`
--

DROP TABLE IF EXISTS `lead_version_sku_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_version_sku_list` (
  `lead_version_id` bigint(20) NOT NULL,
  `sku_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_m3t7h3qflryj5r608q9xhpp6o` (`sku_list_id`),
  KEY `FK_h4kooc7slmoroipltjx091ru1` (`lead_version_id`),
  CONSTRAINT `FK_h4kooc7slmoroipltjx091ru1` FOREIGN KEY (`lead_version_id`) REFERENCES `lead_version` (`id`),
  CONSTRAINT `FK_m3t7h3qflryj5r608q9xhpp6o` FOREIGN KEY (`sku_list_id`) REFERENCES `lead_sku_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_version_so_number_data_list`
--

DROP TABLE IF EXISTS `lead_version_so_number_data_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_version_so_number_data_list` (
  `lead_version_id` bigint(20) NOT NULL,
  `so_number_data_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_kgax6ha4ua1xhnjc4n4ys3q71` (`so_number_data_list_id`),
  KEY `FK_fj8qg7qiug2gofgscqj5qghhm` (`lead_version_id`),
  CONSTRAINT `FK_fj8qg7qiug2gofgscqj5qghhm` FOREIGN KEY (`lead_version_id`) REFERENCES `lead_version` (`id`),
  CONSTRAINT `FK_kgax6ha4ua1xhnjc4n4ys3q71` FOREIGN KEY (`so_number_data_list_id`) REFERENCES `lead_so_number_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_vertical`
--

DROP TABLE IF EXISTS `lead_vertical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_vertical` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `lestat_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ixo0kiq565mcmas9v7vlwqjpk` (`lestat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `performance_analysis_saved_plan`
--

DROP TABLE IF EXISTS `performance_analysis_saved_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance_analysis_saved_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_month` int(11) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `json` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quarter_summary_booking_and_redemption_saved`
--

DROP TABLE IF EXISTS `quarter_summary_booking_and_redemption_saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarter_summary_booking_and_redemption_saved` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `json` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quarter_summary_quarter_amounts_saved`
--

DROP TABLE IF EXISTS `quarter_summary_quarter_amounts_saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarter_summary_quarter_amounts_saved` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `json` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quarter_summarylsplan_saved`
--

DROP TABLE IF EXISTS `quarter_summarylsplan_saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarter_summarylsplan_saved` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `json` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level1`
--

DROP TABLE IF EXISTS `sales_level1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level2`
--

DROP TABLE IF EXISTS `sales_level2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level1_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mwjny3oelkend6f3q5ygrsjty` (`level1_id`),
  CONSTRAINT `FK_mwjny3oelkend6f3q5ygrsjty` FOREIGN KEY (`level1_id`) REFERENCES `sales_level1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level3`
--

DROP TABLE IF EXISTS `sales_level3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level2_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3eb0eegi22rjgen8lshlmp13e` (`level2_id`),
  CONSTRAINT `FK_3eb0eegi22rjgen8lshlmp13e` FOREIGN KEY (`level2_id`) REFERENCES `sales_level2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level4`
--

DROP TABLE IF EXISTS `sales_level4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level4` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level3_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3y15prl1w1b1pwnk9qcrhf4hr` (`level3_id`),
  CONSTRAINT `FK_3y15prl1w1b1pwnk9qcrhf4hr` FOREIGN KEY (`level3_id`) REFERENCES `sales_level3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1451 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level5`
--

DROP TABLE IF EXISTS `sales_level5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level5` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level4_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ps42mk2osfy14x6faaa9w7w91` (`name`),
  KEY `FK_lj02xbqt38kl8txo0ubewnkue` (`level4_id`),
  CONSTRAINT `FK_lj02xbqt38kl8txo0ubewnkue` FOREIGN KEY (`level4_id`) REFERENCES `sales_level4` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_level6`
--

DROP TABLE IF EXISTS `sales_level6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_level6` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level5_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h86n4yby2paowqyjmvfnaw4vw` (`name`),
  KEY `FK_21cpyxlruewcd1qp2nsscm1ne` (`level5_id`),
  CONSTRAINT `FK_21cpyxlruewcd1qp2nsscm1ne` FOREIGN KEY (`level5_id`) REFERENCES `sales_level5` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21896 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `year_to_date_booking_saved_plan`
--

DROP TABLE IF EXISTS `year_to_date_booking_saved_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `year_to_date_booking_saved_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `json` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-26 11:43:35

