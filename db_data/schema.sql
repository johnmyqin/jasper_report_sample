CREATE DATABASE `dota` 
/*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `atk_type` varchar(10) DEFAULT NULL,
  `bio` text,
  `health` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `armor` int(11) DEFAULT NULL,
  `sight_range` varchar(45) DEFAULT NULL,
  `atk_range` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT 'N/A',
  `full_name` varchar(45) DEFAULT 'N/A',
  `description` text,
  `mana` varchar(45) DEFAULT 'N/A',
  `cooldown` varchar(45) DEFAULT 'N/A',
  `ability` varchar(45) DEFAULT 'N/A',
  `affects` varchar(45) DEFAULT 'N/A',
  `damage_type` varchar(45) DEFAULT 'N/A',
  `spell_immunity` varchar(3) DEFAULT 'N/A',
  `damage` varchar(45) DEFAULT 'N/A',
  `range` varchar(45) DEFAULT 'N/A',
  `duration` varchar(45) DEFAULT 'N/A',
  `stun_duration` varchar(45) DEFAULT 'N/A',
  `bonus` varchar(45) DEFAULT 'N/A',
  `scepter_bonus` varchar(45) DEFAULT 'N/A',
  `hero_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
