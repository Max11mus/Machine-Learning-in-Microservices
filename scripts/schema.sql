CREATE DATABASE `ml_msa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE ml_msa;

-- ml_msa.courier definition

CREATE TABLE `courier` (
  `courier_id` int NOT NULL AUTO_INCREMENT,
  `courier_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.customer definition

CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_addr_st1` varchar(255) DEFAULT NULL,
  `customer_addr_st2` varchar(255) DEFAULT NULL,
  `customer_addr_city` varchar(100) DEFAULT NULL,
  `customer_addr_state` varchar(100) DEFAULT NULL,
  `customer_addr_zip` varchar(20) DEFAULT NULL,
  `customer_addr_country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.item definition

CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_descr` text,
  `item_catalog_pic` varchar(255) DEFAULT NULL,
  `item_stock_qty` int DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.order_item definition

CREATE TABLE `order_item` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_qty` int DEFAULT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `order_item_FK_1` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.status_code definition

CREATE TABLE `status_code` (
  `status_code` int NOT NULL AUTO_INCREMENT,
  `status_description` varchar(100) DEFAULT NULL,
  `status_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.`order` definition

CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_FK` (`customer_id`),
  CONSTRAINT `order_FK` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.order_status definition

CREATE TABLE `order_status` (
  `order_id` int NOT NULL,
  `order_status_timestamp` timestamp NOT NULL,
  `order_status_code` int DEFAULT NULL,
  PRIMARY KEY (`order_id`,`order_status_timestamp`),
  KEY `order_status_FK` (`order_status_code`),
  CONSTRAINT `order_status_FK` FOREIGN KEY (`order_status_code`) REFERENCES `status_code` (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.shipment_request definition

CREATE TABLE `shipment_request` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `courier_id` int DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `shipment_request_FK` (`courier_id`),
  CONSTRAINT `shipment_request_FK` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`courier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ml_msa.shipment_request_status definition

CREATE TABLE `shipment_request_status` (
  `request_id` int NOT NULL,
  `shipment_status_timestamp` timestamp NOT NULL,
  `shipment_status_code` int DEFAULT NULL,
  PRIMARY KEY (`request_id`,`shipment_status_timestamp`),
  KEY `shipment_request_status_FK` (`shipment_status_code`),
  CONSTRAINT `shipment_request_status_FK` FOREIGN KEY (`shipment_status_code`) REFERENCES `status_code` (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;