CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `mortality_life_expectancy`;

CREATE TABLE `mortality_life_expectancy`(
    c_id INT(100) NOT NULL,
    country_code VARCHAR(3) NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    year_ INT(5) NOT NULL,
    infant_mortality FLOAT(10) DEFAULT NULL,
    infant_mortality_male FLOAT(10) DEFAULT NULL,
    infant_mortality_female FLOAT(10) DEFAULT NULL,
    life_expectancy FLOAT(10) DEFAULT NULL,
    life_expectancy_male FLOAT(10) DEFAULT NULL,
    life_expectancy_female FLOAT(10) DEFAULT NULL,
    mortality_rate_under5 FLOAT(10) DEFAULT NULL,
    mortality_rate_under5_male FLOAT(10) DEFAULT NULL,
    mortality_rate_under5_female FLOAT(10) DEFAULT NULL,
    mortality_rate_1to4 FLOAT(10) DEFAULT NULL,
    mortality_rate_1to4_male FLOAT(10) DEFAULT NULL,
    mortality_rate_1to4_female FLOAT(10) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);
