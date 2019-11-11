SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks`
(
    `bid` int(11) NOT NULL auto_increment,
    `height` int(11) ,
    `blockhash`  varchar(500),
    `time` date ,
    `miner`  varchar(500) ,
    `size`  int(11) ,
    PRIMARY KEY (`bid`),
    index `idx_height` (`height`),
    index `idx_blockhash` (`blockhash`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  auto_increment = 1;
