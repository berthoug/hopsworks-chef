ALTER TABLE `hopsworks`.`shared_topics` ADD COLUMN `accepted` tinyint(1) NOT NULL DEFAULT '0';
SET SQL_SAFE_UPDATES = 0;
UPDATE `hopsworks`.`shared_topics` SET accepted=1;
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE `hopsworks`.`python_dep` ADD COLUMN `base_env` VARCHAR(45) COLLATE latin1_general_cs;
ALTER TABLE `hopsworks`.`conda_commands` DROP FOREIGN KEY `FK_481_519`;
ALTER TABLE `hopsworks`.`conda_commands` DROP COLUMN `host_id`, DROP INDEX `host_id` ;
