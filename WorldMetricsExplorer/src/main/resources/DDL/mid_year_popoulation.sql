CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `mid_year_population`;

CREATE TABLE `mid_year_population` (
    c_id INT(100) NOT NULL,
    country_code VARCHAR(50) NOT NULL, -- Antistoixia me ISO
    country_name VARCHAR(50) NOT NULL, -- Antistoixia me display_name
    md_year_ INT(5) NOT NULL,
    md_year_population INT(25) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);