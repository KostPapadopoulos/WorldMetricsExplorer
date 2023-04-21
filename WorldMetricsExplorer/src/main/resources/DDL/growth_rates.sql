CREATE DATABASE IF NOT EXISTS `world_metrics_explorer_db` ;

USE `world_metrics_explorer_db`;

DROP TABLE IF EXISTS `birth_death_growth_rates`;

CREATE TABLE `birth_death_growth_rates` (
    c_id INT(100) NOT NULL,
    country_code VARCHAR(50) NOT NULL, -- Antistoixia me ISO
    country_name VARCHAR(50) NOT NULL, -- Antistoixia me display_name
    bd_year_ INT(5) NOT NULL,
    crude_birth_rate FLOAT(10) DEFAULT NULL,
    crude_death_rate FLOAT(10) DEFAULT NULL,
    net_migration FLOAT(10) DEFAULT NULL,
    rate_natural_increase FLOAT(10) DEFAULT NULL,
    growth_rate FLOAT(10) DEFAULT NULL,
    FOREIGN KEY (c_id) REFERENCES countries(c_id)
);