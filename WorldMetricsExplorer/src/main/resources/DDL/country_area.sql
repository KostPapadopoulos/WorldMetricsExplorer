CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `country_area`;

CREATE TABLE `country_area` (
    c_id INT(100) NOT NULL,
    country_code VARCHAR(5) NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    country_area INT(15) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);