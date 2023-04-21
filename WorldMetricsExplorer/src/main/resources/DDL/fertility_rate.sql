CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `age_specific_fertility_rate`;

CREATE TABLE `age_specific_fertility_rate` (
    c_id INT(100) NOT NULL,
    country_code VARCHAR(50) NOT NULL, -- Antistoixia me ISO
    country_name VARCHAR(50) NOT NULL, -- Antistoixia me display_name
    fr_year_ INT(5) NOT NULL,
    fr_15_19 FLOAT(10) DEFAULT NULL,
    fr_20_24 FLOAT(10) DEFAULT NULL,
    fr_25_29 FLOAT(10) DEFAULT NULL,
    fr_30_34 FLOAT(10) DEFAULT NULL,
    fr_35_39 FLOAT(10) DEFAULT NULL,
    fr_40_44 FLOAT(10) DEFAULT NULL,
    fr_45_49 FLOAT(10) DEFAULT NULL,
    fr_total FLOAT(10) DEFAULT NULL,
    gross_reproduction_rate FLOAT(10) DEFAULT NULL,
    sex_birth_ratio FLOAT(10) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);