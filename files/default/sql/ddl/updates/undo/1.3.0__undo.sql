ALTER TABLE `hopsworks`.`shared_topics` DROP COLUMN `accepted`;
ALTER TABLE `hopsworks`.`python_dep` DROP COLUMN `base_env`;
ALTER TABLE `hopsworks`.`conda_commands` ADD COLUMN `host_id` int(11) NOT NULL;
ALTER TABLE `hopsworks`.`conda_commands` ADD KEY (`host_id`);
ALTER TABLE `hopsworks`.`conda_commands` ADD CONSTRAINT `FK_481_519` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION ;
