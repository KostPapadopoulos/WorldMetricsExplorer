CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `income_metrics`;

CREATE TABLE `income_metrics` (
    c_id INT(100) NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    year_ INT(50) NOT NULL,
    income_index FLOAT(15) DEFAULT NULL,
    labor_share_GPD FLOAT(15) DEFAULT NULL,
    gross_fix_cap_formation FLOAT(15) DEFAULT NULL,
    total_GPD FLOAT(15) DEFAULT NULL,
    GPD_per_capita FLOAT(15) DEFAULT NULL,
    GNI_per_capita FLOAT(15) DEFAULT NULL,
    est_GNI_male INT(15) DEFAULT NULL,
    est_GNI_female INT(15) DEFAULT NULL,
    domestic_credits FLOAT(15) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);