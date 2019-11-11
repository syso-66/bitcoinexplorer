SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`
(
    `question_id`  int(11) NOT NULL auto_increment,
    `content`      varchar(500),
    `type`         tinyint,
    `difficulty`   tinyint,
    `create_time`  datetime,
    `create_user`  varchar(255),
    `categor_id`   int(11),
    `knowledge_id` int(11),
    PRIMARY KEY (`question_id`),
    index `idx_type` (`type`),
    index `idx_difficulty` (`difficulty`),
    index `idx_categor_id` (`categor_id`),
    index `idx_knowledge_id` (`knowledge_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 auto_increment=1;
