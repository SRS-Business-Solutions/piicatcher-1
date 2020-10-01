-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ls_bookings
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
-- Table structure for table `booking`
--

CREATE DATABASE lsbmt;

USE lsbmt;

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_order_id` int(11) NOT NULL,
  `forecast_subscription_id` int(11) DEFAULT '0',
  `sales_order_number` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `productid` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `license_quantity` int(11) DEFAULT NULL,
  `node_count` int(11) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `date_booked` date DEFAULT NULL,
  `license_start` date DEFAULT NULL,
  `license_end` date DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `amount_booked` decimal(10,2) DEFAULT NULL,
  `total_revenue` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_list_price` decimal(10,2) DEFAULT NULL,
  `monthly_accrual` decimal(10,2) NOT NULL,
  `subscription_length` int(11) DEFAULT NULL,
  `subscription_term_desc` varchar(255) DEFAULT NULL,
  `accrual_offset` int(11) DEFAULT NULL,
  `margin_pct` decimal(10,2) DEFAULT NULL,
  `discount_pct` decimal(10,2) DEFAULT NULL,
  `prior_booking_renewal` int(1) DEFAULT '0',
  `booking_adjustment_desc` varchar(255) DEFAULT NULL,
  `build_type` varchar(50) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `sales_order_id` (`sales_order_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6695 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `booking_transaction_join`
--

DROP TABLE IF EXISTS `booking_transaction_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_transaction_join` (
  `booking_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  KEY `fk_booking_join_id_idx` (`booking_id`),
  KEY `fk_transaction_join_id_idx` (`transaction_id`),
  CONSTRAINT `fk_booking_join_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transaction_join_id` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `name` varchar(200) NOT NULL,
  `theater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linked_sales_orders`
--

DROP TABLE IF EXISTS `linked_sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_sales_orders` (
  `sales_order_id` int(11) NOT NULL,
  `linked_sales_order_id` int(11) NOT NULL,
  KEY `sales_order_id` (`sales_order_id`,`linked_sales_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prior_booking_join`
--

DROP TABLE IF EXISTS `prior_booking_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prior_booking_join` (
  `booking_id` int(11) NOT NULL,
  `prior_booking_id` int(11) NOT NULL,
  KEY `booking_id` (`booking_id`,`prior_booking_id`),
  CONSTRAINT `prior_booking_join_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prior_sales_order_join`
--

DROP TABLE IF EXISTS `prior_sales_order_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prior_sales_order_join` (
  `sales_order_id` int(11) NOT NULL,
  `prior_sales_order_id` int(11) NOT NULL,
  KEY `sales_order_id` (`sales_order_id`,`prior_sales_order_id`),
  CONSTRAINT `prior_sales_order_join_ibfk_1` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `alternate_acronyms` varchar(500) DEFAULT NULL COMMENT 'comma delimited list',
  `adjustment_code` varchar(50) DEFAULT NULL,
  `net_revenue_pct` decimal(11,2) NOT NULL DEFAULT '100.00' COMMENT 'Value used to calculate LS revenue from sale price.',
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_order`
--

DROP TABLE IF EXISTS `sales_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_order_number` varchar(255) NOT NULL,
  `bookings_unique_id` varchar(255) NOT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `end_customer_name` varchar(1000) NOT NULL,
  `sold_to_customer_name` varchar(1000) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `theater_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `sales_level_1` varchar(255) DEFAULT NULL,
  `sales_level_2` varchar(255) DEFAULT NULL,
  `sales_level_3` varchar(255) DEFAULT NULL,
  `sales_level_4` varchar(255) DEFAULT NULL,
  `sales_level_5` varchar(255) DEFAULT NULL,
  `sales_level_6` varchar(255) DEFAULT NULL,
  `line_of_business` varchar(255) NOT NULL,
  `end_customer_vm_top` varchar(1000) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `erp_deal_id` varchar(255) NOT NULL,
  `partner_name` varchar(255) NOT NULL,
  `distributor_name` varchar(255) NOT NULL,
  `account_rep` varchar(255) NOT NULL,
  `bdm` varchar(255) NOT NULL,
  `date_booked` date NOT NULL,
  `license_start` date DEFAULT NULL,
  `license_end` date DEFAULT NULL,
  `so_amount_booked` decimal(10,2) NOT NULL,
  `so_total_revenue` decimal(11,2) NOT NULL DEFAULT '0.00',
  `so_total_list_price` decimal(10,2) NOT NULL,
  `booking_method` varchar(255) NOT NULL,
  `end_customer_hq_id` varchar(255) NOT NULL,
  `customer_ccw_email` varchar(255) NOT NULL,
  `customer_slt_email` varchar(255) NOT NULL,
  `e_delivery_email` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `shipping_contact_email` varchar(255) DEFAULT NULL,
  `shipping_contact_name` varchar(255) DEFAULT NULL,
  `one_month_email` tinyint(1) NOT NULL DEFAULT '0',
  `two_month_email` int(1) NOT NULL DEFAULT '0',
  `three_month_email` tinyint(1) NOT NULL DEFAULT '0',
  `notes` varchar(255) NOT NULL,
  `prior_booking_renewal` int(1) NOT NULL DEFAULT '0',
  `createdby` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updated_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`,`country_id`,`theater_id`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'A',
  `createdby` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_booked` date DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `booking_method` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_sub_group` varchar(255) DEFAULT NULL,
  `erp_end_customer_name` varchar(255) DEFAULT NULL,
  `sold_to_erp_customer_name` varchar(255) DEFAULT NULL,
  `erp_sales_order_number` varchar(255) DEFAULT NULL,
  `bookings_unique_id` varchar(255) DEFAULT NULL,
  `contract_number` varchar(255) DEFAULT NULL,
  `bookings_transaction_type` varchar(255) DEFAULT NULL,
  `bookings_adjustments_description` varchar(255) DEFAULT NULL,
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `erp_deal_id` varchar(255) DEFAULT NULL,
  `bundle_product_id_sku` varchar(255) DEFAULT NULL,
  `productid` varchar(255) DEFAULT NULL,
  `end_customer_hq_id` varchar(255) DEFAULT NULL,
  `end_customer_site_target_id` varchar(25) DEFAULT NULL,
  `sales_agent` varchar(255) DEFAULT NULL,
  `e_delivery_email` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_contact_name` varchar(255) DEFAULT NULL,
  `shipping_contact_email` varchar(255) DEFAULT NULL,
  `shipping_contact_name` varchar(255) DEFAULT NULL,
  `product_bookings_quantity` int(11) NOT NULL DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `theater` varchar(255) DEFAULT NULL,
  `sales_level_1` varchar(255) DEFAULT NULL,
  `sales_level_2` varchar(255) DEFAULT NULL,
  `sales_level_3` varchar(255) DEFAULT NULL,
  `sales_level_4` varchar(255) DEFAULT NULL,
  `sales_level_5` varchar(255) DEFAULT NULL,
  `sales_level_6` varchar(255) DEFAULT NULL,
  `end_customer_site_vm_top` varchar(255) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `distributor_name` varchar(255) DEFAULT NULL,
  `product_bookings_base_list` decimal(10,2) DEFAULT NULL,
  `product_bookings_net` decimal(10,2) DEFAULT NULL,
  `unit_sale_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `unit_list_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `so_line_status` varchar(50) NOT NULL,
  `corporate_bookings_flag` varchar(255) DEFAULT '',
  `processed_flag` varchar(255) NOT NULL DEFAULT 'N',
  `cancelled_flag` varchar(1) DEFAULT NULL,
  `build_type` varchar(50) DEFAULT NULL,
  `new_renewal` varchar(50) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22703 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cec_user_id` varchar(150) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `updated_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  `last_login_dt` datetime DEFAULT NULL,
  `last_submit_dt` datetime DEFAULT NULL,
  `status` varchar(2) DEFAULT 'A',
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`last_submit_dt`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_product_email`
--

DROP TABLE IF EXISTS `user_product_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_product_email` (
  `user_id` int(11) NOT NULL,
  `email_product_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`,`email_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
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

-- Dump completed on 2019-09-25 18:28:06
