-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ls_finance
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `country_lookup`
--

CREATE DATABASE fft;

USE fft;

DROP TABLE IF EXISTS `country_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_lookup` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `name` varchar(200) NOT NULL,
  `theater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `duplicate_sales_order`
--

DROP TABLE IF EXISTS `duplicate_sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duplicate_sales_order` (
  `order_number` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `duplicate_subscriptions`
--

DROP TABLE IF EXISTS `duplicate_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duplicate_subscriptions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL COMMENT 'Lookup ID for product table',
  `order_number` varchar(25) NOT NULL,
  `so_type` varchar(25) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL COMMENT 'Manual entry or lookup from license',
  `alt_sku` varchar(50) DEFAULT NULL,
  `release_version` varchar(25) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL COMMENT 'ID for licence table lookup',
  `license_quantity` int(11) NOT NULL DEFAULT '1',
  `partner_id` int(11) DEFAULT NULL COMMENT 'User input data',
  `partner_name` varchar(100) DEFAULT NULL,
  `contract_number` varchar(25) DEFAULT NULL,
  `contract_number2` varchar(255) DEFAULT NULL,
  `dsa_deal_id` int(50) DEFAULT NULL,
  `portfolio_number` int(50) DEFAULT NULL,
  `quote_number` int(50) DEFAULT NULL,
  `purchase_order_number` bigint(20) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `transaction_number` varchar(25) DEFAULT NULL,
  `distributor_name` varchar(100) DEFAULT NULL,
  `booking_method` varchar(40) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_address` varchar(500) DEFAULT NULL,
  `customer_email` varchar(500) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `shipping_contact_email` varchar(255) DEFAULT NULL,
  `shipping_contact_name` varchar(255) DEFAULT NULL,
  `account_rep` varchar(100) DEFAULT NULL,
  `account_rep_cec_id` varchar(25) DEFAULT NULL,
  `admin_name` varchar(250) DEFAULT NULL,
  `admin_email` varchar(250) DEFAULT NULL,
  `cco_id` varchar(100) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `bdm` varchar(150) DEFAULT NULL,
  `line_of_business` varchar(250) DEFAULT NULL,
  `sector` varchar(250) DEFAULT NULL,
  `end_customer_vm_top` varchar(255) DEFAULT NULL,
  `theater` varchar(100) DEFAULT NULL,
  `theater_id` int(11) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `sales_level_1` varchar(255) DEFAULT NULL,
  `sales_level_2` varchar(255) DEFAULT NULL,
  `sales_level_3` varchar(255) DEFAULT NULL,
  `sales_level_4` varchar(255) DEFAULT NULL,
  `sales_level_5` varchar(255) DEFAULT NULL,
  `sales_level_6` varchar(255) DEFAULT NULL,
  `renewal` int(1) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL COMMENT 'Lookup ID for partner table',
  `status_id` int(11) DEFAULT '1' COMMENT 'See status_lookup',
  `date_booked` date DEFAULT NULL,
  `accrual_start` date NOT NULL,
  `accrual_end` date DEFAULT NULL,
  `subscription_length` int(11) NOT NULL,
  `accrual_offset` int(10) DEFAULT NULL,
  `margin_pct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount_booked` decimal(11,2) NOT NULL,
  `total_revenue` decimal(11,2) NOT NULL,
  `list_price` decimal(11,2) DEFAULT NULL,
  `monthly_accrual` decimal(11,2) NOT NULL,
  `discount_pct` decimal(10,2) NOT NULL,
  `provisioned` smallint(1) DEFAULT NULL,
  `provisioned_date` date DEFAULT NULL,
  `provisioning_notes` varchar(2000) DEFAULT NULL,
  `lock_quantity` varchar(1) DEFAULT NULL,
  `lock_quantity_user` varchar(25) DEFAULT NULL,
  `lock_quantity_reason` varchar(255) DEFAULT NULL,
  `lock_revenue` varchar(1) DEFAULT NULL,
  `lock_revenue_user` varchar(25) DEFAULT NULL,
  `lock_revenue_reason` varchar(255) DEFAULT NULL,
  `verified_data` varchar(1) DEFAULT 'N',
  `booking_id` int(11) DEFAULT NULL,
  `createdby` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updatedby` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entitlement_lookup`
--

DROP TABLE IF EXISTS `entitlement_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entitlement_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '14',
  `fiscal_year` int(11) NOT NULL,
  `release_version` varchar(25) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `annual_revenue` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `financial_data`
--

DROP TABLE IF EXISTS `financial_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `group_name` varchar(200) NOT NULL,
  `forecast_type` varchar(200) NOT NULL,
  `quarter_name` varchar(10) DEFAULT NULL,
  `data_type` varchar(45) NOT NULL,
  `month1_amount` decimal(11,2) DEFAULT NULL,
  `month2_amount` decimal(11,2) DEFAULT NULL,
  `month3_amount` decimal(11,2) DEFAULT NULL,
  `total_amount` decimal(11,2) DEFAULT NULL,
  `createdby` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updatedby` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_financial_data_product1_idx` (`product_id`),
  CONSTRAINT `fk_financial_data_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fph_so_instance`
--

DROP TABLE IF EXISTS `fph_so_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fph_so_instance` (
  `instance_id` int(11) DEFAULT NULL,
  `fph_id` int(11) DEFAULT NULL,
  `fph_so_number` varchar(50) DEFAULT NULL,
  `sales_order_id` int(11) DEFAULT NULL,
  `so_so_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `import_template`
--

DROP TABLE IF EXISTS `import_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL,
  `fields` varchar(2000) NOT NULL,
  `createdby` varchar(25) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soars_instance_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `instance_status_id` int(11) DEFAULT NULL,
  `is_provisioned` int(11) DEFAULT NULL,
  `provisioned_date` datetime DEFAULT NULL,
  `deleted` int(11) NOT NULL,
  `soars_created_on` datetime DEFAULT NULL,
  `soars_modified_on` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2790 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_learning_credit_instance`
--

DROP TABLE IF EXISTS `join_learning_credit_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_learning_credit_instance` (
  `learning_credit_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  KEY `learning_credit_id` (`learning_credit_id`,`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_learning_credit_sales_order`
--

DROP TABLE IF EXISTS `join_learning_credit_sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_learning_credit_sales_order` (
  `learning_credit_id` int(11) NOT NULL,
  `sales_order_id` int(11) NOT NULL,
  KEY `learning_credit_id` (`learning_credit_id`,`sales_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_learning_credit_subscription`
--

DROP TABLE IF EXISTS `join_learning_credit_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_learning_credit_subscription` (
  `learning_credit_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  KEY `learning_credit_id` (`learning_credit_id`,`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_license_sales_order`
--

DROP TABLE IF EXISTS `join_license_sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_license_sales_order` (
  `license_id` int(11) NOT NULL,
  `sales_order_id` int(11) NOT NULL,
  KEY `license_id` (`license_id`,`sales_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_prior_subscription`
--

DROP TABLE IF EXISTS `join_prior_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_prior_subscription` (
  `subscription_id` int(11) NOT NULL,
  `prior_subscription_id` int(11) NOT NULL,
  KEY `subscription_id` (`subscription_id`,`prior_subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_product_owner`
--

DROP TABLE IF EXISTS `join_product_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_product_owner` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `fk_join_product_owner_product_idx` (`product_id`),
  KEY `fk_join_product_owner_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_sales_order_instance`
--

DROP TABLE IF EXISTS `join_sales_order_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_sales_order_instance` (
  `sales_order_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  KEY `sales_order_id` (`sales_order_id`,`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_sales_order_subscription`
--

DROP TABLE IF EXISTS `join_sales_order_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_sales_order_subscription` (
  `sales_order_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  KEY `sales_order_id` (`sales_order_id`,`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `join_subscription_instance`
--

DROP TABLE IF EXISTS `join_subscription_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_subscription_instance` (
  `subscription_id` int(11) NOT NULL,
  `instance_id` int(11) NOT NULL,
  KEY `subscription_id` (`subscription_id`,`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `learning_credit`
--

DROP TABLE IF EXISTS `learning_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learning_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soars_lc_id` int(11) NOT NULL,
  `trans_number` varchar(255) DEFAULT NULL,
  `trans_date` datetime DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `so_number` varchar(255) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `list_price` decimal(10,0) DEFAULT NULL,
  `extended_price` decimal(10,0) DEFAULT NULL,
  `discount_percent` decimal(10,0) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `lc_comments` longtext,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `credits_charged` bigint(20) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `soars_created_on` datetime DEFAULT NULL,
  `soars_modified_on` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17440 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) DEFAULT NULL,
  `license_type` varchar(250) NOT NULL,
  `fiscal_year` varchar(10) NOT NULL,
  `theater_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `license_quantity` int(11) NOT NULL DEFAULT '1',
  `sku` varchar(50) NOT NULL,
  `alt_sku` varchar(50) DEFAULT NULL,
  `list_price` decimal(11,2) NOT NULL,
  `createdby` varchar(25) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updatedby` varchar(25) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `month_lookup`
--

DROP TABLE IF EXISTS `month_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter_name` varchar(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  `month_order` int(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `package_inputs`
--

DROP TABLE IF EXISTS `package_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_inputs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(250) NOT NULL,
  `distribution_percent` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_PACKAGE` (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `acronym` varchar(10) DEFAULT NULL,
  `alternate_acronyms` varchar(500) DEFAULT NULL,
  `adjustment_code` varchar(50) DEFAULT NULL,
  `net_revenue_pct` decimal(11,2) NOT NULL DEFAULT '100.00' COMMENT 'Value used to calculate LS revenue from sale price.',
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `subscription` int(1) DEFAULT '0',
  `mgr_report_include` int(1) DEFAULT '1',
  `product_report_include` int(1) DEFAULT '1',
  `product_subtotal_exclude` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quarter_lookup`
--

DROP TABLE IF EXISTS `quarter_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarter_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter_name` varchar(10) DEFAULT NULL,
  `quarter` int(11) NOT NULL,
  `fiscal_year` int(11) NOT NULL,
  `months` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quarter_name` (`quarter_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soars_so_id` int(11) NOT NULL,
  `fph_id` int(11) DEFAULT NULL,
  `so_number` varchar(255) NOT NULL,
  `list_price` float NOT NULL,
  `discount` float NOT NULL,
  `extended_price` float NOT NULL,
  `lc_coverted` int(11) NOT NULL,
  `lc_percentage` float NOT NULL,
  `lc_submitted` int(11) NOT NULL,
  `soars_lc_id` int(11) NOT NULL,
  `soars_learning_credit_id` int(11) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `gilmore_order_number` varchar(255) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL,
  `soars_created_on` datetime NOT NULL,
  `soars_modified_on` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3712 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status_lookup`
--

DROP TABLE IF EXISTS `status_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `createdby` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT 'Lookup ID for product table',
  `order_number` varchar(25) NOT NULL,
  `so_type` varchar(25) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL COMMENT 'Manual entry or lookup from license',
  `alt_sku` varchar(50) DEFAULT NULL,
  `release_version` varchar(25) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL COMMENT 'ID for licence table lookup',
  `license_quantity` int(11) NOT NULL DEFAULT '1',
  `partner_id` int(11) DEFAULT NULL COMMENT 'User input data',
  `partner_name` varchar(100) DEFAULT NULL,
  `contract_number` varchar(25) DEFAULT NULL,
  `contract_number2` varchar(255) DEFAULT NULL,
  `dsa_deal_id` int(50) DEFAULT NULL,
  `portfolio_number` int(50) DEFAULT NULL,
  `quote_number` int(50) DEFAULT NULL,
  `purchase_order_number` bigint(20) DEFAULT NULL,
  `gilmore_batch_id` bigint(20) DEFAULT NULL,
  `transaction_number` varchar(25) DEFAULT NULL,
  `distributor_name` varchar(100) DEFAULT NULL,
  `booking_method` varchar(40) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_address` varchar(500) DEFAULT NULL,
  `customer_email` varchar(500) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `shipping_contact_email` varchar(255) DEFAULT NULL,
  `shipping_contact_name` varchar(255) DEFAULT NULL,
  `account_rep` varchar(100) DEFAULT NULL,
  `account_rep_cec_id` varchar(25) DEFAULT NULL,
  `admin_name` varchar(250) DEFAULT NULL,
  `admin_email` varchar(250) DEFAULT NULL,
  `cco_id` varchar(100) DEFAULT NULL,
  `lead_id` varchar(255) DEFAULT NULL,
  `bdm` varchar(150) DEFAULT NULL,
  `line_of_business` varchar(250) DEFAULT NULL,
  `sector` varchar(250) DEFAULT NULL,
  `end_customer_vm_top` varchar(255) DEFAULT NULL,
  `theater` varchar(100) DEFAULT NULL,
  `theater_id` int(11) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `sales_level_1` varchar(255) DEFAULT NULL,
  `sales_level_2` varchar(255) DEFAULT NULL,
  `sales_level_3` varchar(255) DEFAULT NULL,
  `sales_level_4` varchar(255) DEFAULT NULL,
  `sales_level_5` varchar(255) DEFAULT NULL,
  `sales_level_6` varchar(255) DEFAULT NULL,
  `renewal` int(1) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL COMMENT 'Lookup ID for partner table',
  `status_id` int(11) DEFAULT '1' COMMENT 'See status_lookup',
  `date_booked` date DEFAULT NULL,
  `accrual_start` date NOT NULL,
  `accrual_end` date DEFAULT NULL,
  `subscription_length` int(11) NOT NULL,
  `accrual_offset` int(10) DEFAULT NULL,
  `margin_pct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount_booked` decimal(11,2) NOT NULL,
  `total_revenue` decimal(11,2) NOT NULL,
  `list_price` decimal(11,2) DEFAULT NULL,
  `monthly_accrual` decimal(11,2) NOT NULL,
  `discount_pct` decimal(10,2) NOT NULL,
  `provisioned` smallint(1) DEFAULT NULL,
  `provisioned_date` date DEFAULT NULL,
  `provisioning_notes` varchar(2000) DEFAULT NULL,
  `lock_quantity` varchar(1) DEFAULT NULL,
  `lock_quantity_user` varchar(25) DEFAULT NULL,
  `lock_quantity_reason` varchar(255) DEFAULT NULL,
  `lock_revenue` varchar(1) DEFAULT NULL,
  `lock_revenue_user` varchar(25) DEFAULT NULL,
  `lock_revenue_reason` varchar(255) DEFAULT NULL,
  `verified_data` varchar(1) DEFAULT 'N',
  `booking_id` int(11) DEFAULT NULL,
  `createdby` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updatedby` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_number_idx` (`order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=30739 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_data`
--

DROP TABLE IF EXISTS `subscription_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `quarter_name` varchar(10) DEFAULT NULL,
  `data_type` varchar(45) NOT NULL,
  `month1_name` varchar(10) NOT NULL,
  `month2_name` varchar(10) NOT NULL,
  `month3_name` varchar(10) NOT NULL,
  `month1_amount` decimal(11,2) DEFAULT NULL,
  `month2_amount` decimal(11,2) DEFAULT NULL,
  `month3_amount` decimal(11,2) DEFAULT NULL,
  `total_amount` decimal(11,2) DEFAULT NULL,
  `createdby` varchar(25) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updatedby` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_financial_data_product1_idx` (`product_id`),
  KEY `fk_SUBSCRIPTION` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258144 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cec_id` varchar(25) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'A',
  `role_id` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cec_user_id` varchar(25) NOT NULL,
  `page` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vulcan_licenses`
--

DROP TABLE IF EXISTS `vulcan_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vulcan_licenses` (
  `subscription_id` int(11) NOT NULL,
  `entitled_license_count` int(11) NOT NULL,
  `adopted_license_count` int(11) NOT NULL,
  `used_license_count` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 18:29:59
