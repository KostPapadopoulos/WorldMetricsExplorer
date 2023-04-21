CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
    c_id INT(100) NOT NULL AUTO_INCREMENT,
    display_name VARCHAR(50) NOT NULL,
    ISO VARCHAR(2) DEFAULT NULL,
    ISO3 VARCHAR(3) DEFAULT NULL,
    ISO_code INT(8)  DEFAULT NULL,
    FIPS VARCHAR(5) DEFAULT NULL,
    official_name VARCHAR(50) NOT NULL,
    capital VARCHAR(50) DEFAULT NULL,
    continent VARCHAR(50) NOT NULL,
    currency_code VARCHAR(5) DEFAULT NULL,
    currency_name VARCHAR(5) DEFAULT NULL,
    phone VARCHAR(50) DEFAULT NULL,
    region_code INT(10) DEFAULT NULL,
    region_name VARCHAR(50) DEFAULT NULL,
    sub_region_code  INT(10) DEFAULT NULL,
    intermediate_region_code  INT(10) DEFAULT NULL,
    intermediate_region_name VARCHAR(50) DEFAULT NULL,
    status VARCHAR(50) DEFAULT NULL,
    developed_or_developing VARCHAR(50) DEFAULT NULL,
    SIDS INT(2) DEFAULT 0,
    LLDC VARCHAR(50) DEFAULT NULL,
    LDC VARCHAR(50) DEFAULT NULL,
    area_sqkm INT(10) DEFAULT NULL,
    population INT(50) DEFAULT NULL,
    PRIMARY KEY (country_id)
);