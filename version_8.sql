use deployement_status;
-- Dumping structure for table deployement_status.organization
DROP TABLE IF EXISTS `temp_organization`;
CREATE TABLE IF NOT EXISTS `temp_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
