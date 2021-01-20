-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `src_user` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT 'source user',
  `src_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `tenant_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_use` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `effect` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `c_schema` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_configinfo_datagrouptenant`(`data_id`, `group_id`, `tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 367 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'config_info' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info` VALUES (1, 'application-dev.yml', 'DEFAULT_GROUP', '# 监控服务配置\nmanagement:\n  endpoint:\n    shutdown:\n      #开启端点\n      enabled: true\n    health:\n      show-details: always\n  endpoints:\n    web:\n      exposure:\n        #开启所有接口\n        include: \"*\"\n', '5e4345c7afab2e3df751ddfe7c524643', '2019-11-29 16:31:20', '2021-01-20 03:50:18', NULL, '0:0:0:0:0:0:0:1', '', '', '通用配置', 'null', 'null', 'yaml', 'null');
INSERT INTO `config_info` VALUES (2, 'sentinel-ruoyi-gateway', 'DEFAULT_GROUP', '[\n    {\n        \"resource\": \"spring-cloud-dubbo-provider\",\n        \"count\": 500,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    },\n	{\n        \"resource\": \"spring-cloud-dubbo-consumer\",\n        \"count\": 1000,\n        \"grade\": 1,\n        \"limitApp\": \"default\",\n        \"strategy\": 0,\n        \"controlBehavior\": 0\n    }\n]', '430575b0f3ceaa10f4672d41085db55e', '2020-06-09 12:14:01', '2021-01-18 06:46:27', NULL, '0:0:0:0:0:0:0:1', '', '', '流量监控', 'null', 'null', 'json', 'null');
INSERT INTO `config_info` VALUES (3, 'spring-cloud-gateway', 'DEFAULT_GROUP', 'spring:\r\n  cloud:\r\n    gateway:\r\n      discovery:\r\n        locator:\r\n          lowerCaseServiceId: true\r\n          enabled: true\r\n      routes:\r\n        - id: springCloudDubboConsumer\r\n          uri: lb://spring-cloud-dubbo-consumer\r\n          predicates:\r\n            - Path=/consumer/**\r\n          filters:\r\n            - StripPrefix=1\r\n        - id: springCloudDubboProvider\r\n          uri: lb://spring-cloud-dubbo-provider\r\n          predicates:\r\n            - Path=/provider/**\r\n          filters:\r\n            - StripPrefix=1', '7090541babe37f86b896e0565b31c8bd', '2021-01-20 06:38:44', '2021-01-20 06:38:44', NULL, '0:0:0:0:0:0:0:1', '', '', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (4, 'spring-cloud-admin', 'DEFAULT_GROUP', 'spring:\r\n  security:\r\n    user:\r\n      # 用户名\r\n      name: gehx\r\n      # 账号\r\n      password: 100714', '19f0eb2d9e89f1d24d8f8ddc3595e391', '2021-01-20 06:40:19', '2021-01-20 06:40:19', NULL, '0:0:0:0:0:0:0:1', '', '', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (5, 'spring-cloud-dubbo-consumer', 'DEFAULT_GROUP', '# dubbo配置\ndubbo:\n  scan:\n    # 接口地址\n    base-packages: com.example.nacos\n  protocols:\n    dubbo:\n      # 协议名称\n      name: dubbo\n      # 端口号\n      port: 20884', '1b813847a79db6248306a4a9054c3b18', '2021-01-20 06:46:44', '2021-01-20 07:19:17', NULL, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');
INSERT INTO `config_info` VALUES (6, 'spring-cloud-dubbo-provider', 'DEFAULT_GROUP', '# dubbo配置\ndubbo:\n  scan:\n    # 接口地址\n    base-packages: com.example.nacos\n  protocols:\n    dubbo:\n      # 协议名称\n      name: dubbo\n      # 端口号\n      port: 20882', 'b3cce992817112c526460bb6a4315ba6', '2021-01-20 06:47:29', '2021-01-20 07:19:56', NULL, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');