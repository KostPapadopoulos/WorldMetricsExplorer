CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `mid_year_population_5yr_age_sex`;

CREATE TABLE `mid_year_population_5yr_age_sex`(
    c_id INT(100) NOT NULL,
    country_code VARCHAR(20) NOT NULL,
    country_name VARCHAR(20) NOT NULL,
    year_ INT(5) NOT NULL,
    total_flag VARCHAR(5) DEFAULT NULL,
    starting_age INT(5) DEFAULT NULL,
    age_group INT(5) DEFAULT NULL,
    ending_age INT(5) DEFAULT NULL,
    midyear_population INT(10) DEFAULT NULL,
    midyear_population_male INT(10) DEFAULT NULL,
    midyear_population_female INT(10) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
    );