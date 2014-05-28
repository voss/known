--
-- Base Known schema
--

--
-- Table structure for table `entities`
--

CREATE TABLE IF NOT EXISTS `entities` (
  `uuid` varchar(128) NOT NULL,
  `_id` varchar(32) NOT NULL,
  `owner` varchar(32) NOT NULL,
  `entity_subtype` varchar (32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contents` blob NOT NULL,
  `search` text NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner` (`owner`,`created`),
  KEY `_id` (`_id`),
  KEY `entity_subtype` (`entity_subtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE IF NOT EXISTS `metadata` (
  `entity` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  KEY `entity` (`entity`,`name`),
  KEY `value` (`value`(255)),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
