SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`
(
    `knowledge_id` int(11) NOT NULL auto_increment,
    `name`        varchar(500),
    `category_id`        int (11),
    PRIMARY KEY (`knowledge_id`),
    index `idx_category_id`(`category_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  auto_increment = 1;
