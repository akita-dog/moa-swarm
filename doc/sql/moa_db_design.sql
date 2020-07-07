CREATE TABLE `dms_banner` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片资源',
`CLICK_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点击跳转链接',
`TITLE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信息',
`ORIGIN_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '原图链接',
`BANNER_ORDER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顺序',
`COMPANY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司ID',
`EXPIRE_TIME` datetime NULL DEFAULT NULL COMMENT '过期时间',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'banner信息表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_banner_set` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组名',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`COMPANY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'banner组表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_banner_set_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`SET_ID` bigint NOT NULL COMMENT '组ID',
`BANNER_ID` bigint NOT NULL COMMENT 'bannerID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`SET_ID` ASC, `BANNER_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = 'banner组关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_role_banner_set_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`ROLE_ID` bigint NOT NULL COMMENT '角色ID',
`BANNER_SET_ID` bigint NOT NULL COMMENT 'banner组ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`ROLE_ID` ASC, `BANNER_SET_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '角色banner关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_role_weapp_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`ROLE_ID` bigint NOT NULL COMMENT '角色ID',
`APP_ID` bigint NOT NULL COMMENT '应用ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`ROLE_ID` ASC, `APP_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '角色h5app关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_weapp` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名',
`ICON` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标链接',
`APP_CATEGORY_ID` int NOT NULL COMMENT 'app类型',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`EXTRA` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加',
`VERIFICATION` int NULL DEFAULT 0 COMMENT '二次密码校验',
`COMPANY_ID` bigint NOT NULL COMMENT '公司ID',
`APP_ORDER` int NULL DEFAULT NULL COMMENT '顺序',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '应用表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_weapp_category` (
`ID` int NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名',
`BADGE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '徽章标志',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`COMPANY_ID` bigint NOT NULL COMMENT '公司ID',
`CATEGORY_ORDER` int NULL DEFAULT NULL COMMENT '顺序',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '应用类型表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `dms_weapp_resource` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`APP_ID` bigint NOT NULL COMMENT '应用ID信息',
`URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源链接',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`APP_VERSION` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '应用资源表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_company` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '公司表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_dept` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
`PARENT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父部门',
`COMPANY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '部门表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_login_log` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`USER_ID` bigint NOT NULL COMMENT '用户ID',
`IP` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP',
`PLATFORM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录平台',
`MAC` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物理地址',
`IMEI` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机识别号',
`LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '登录记录表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_permit` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`PREMIT_KEY` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限标识',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '权限表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_role` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`COMPANY_ID` bigint NULL DEFAULT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '角色表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_role_premit_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`ROLE_ID` bigint NOT NULL COMMENT '角色ID',
`PREMIT_ID` bigint NOT NULL COMMENT '权限ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`ROLE_ID` ASC, `PREMIT_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '角色权限关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_user` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`USERNAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
`DISPLAY_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '显示名称',
`GENDER` int NULL DEFAULT 0 COMMENT '性别 0-未知、1-男、2-女',
`E_MAIL` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
`PHONE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
`POSITION` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位',
`SIGNATURE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态签名',
`COMPANY_ID` bigint NOT NULL COMMENT '公司ID',
`DEPT_ID` bigint NOT NULL COMMENT '部门ID',
`TEL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_usrename_company_id` (`USERNAME` ASC, `COMPANY_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_user_account` (
`username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
`password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
PRIMARY KEY (`username`) ,
UNIQUE INDEX `ui_username` (`username` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '账号密码 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `gms_user_role_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`USER_ID` bigint NOT NULL COMMENT '用户ID',
`ROLE_ID` bigint NOT NULL COMMENT '角色ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`USER_ID` ASC, `ROLE_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户角色表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `ims_group` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`NAME` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群组名',
`NOTICE` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告',
`OWNER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群主',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '群组表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `ims_group_user_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`GROUP_ID` bigint NOT NULL COMMENT '群组ID',
`USER_ID` bigint NOT NULL COMMENT '用户ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`GROUP_ID` ASC, `USER_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '群组用户关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `ims_message` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`SENDER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送人',
`RECEIVER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
`GROUP_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组ID',
`IS_GROUP` int NULL DEFAULT NULL COMMENT '是否群组消息',
`CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容/文件名',
`TYPE` int NULL DEFAULT NULL COMMENT '消息类型',
`FILE_TYPE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
`URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件/视频/音频/图片链接',
`THUMBNAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图链接',
`DURATION` int NULL DEFAULT NULL COMMENT '视频/音频时长',
`EXTRA` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '消息表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `ims_user_last_message` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`USERNAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
`PLATFORM` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平台',
`LAST_READ_TIME` datetime NULL DEFAULT NULL COMMENT '最后阅读消息时间',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户最后读取消息记录表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `oms_essay_set_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`SET_ID` bigint NOT NULL COMMENT '组ID',
`ESSAY_ID` bigint NOT NULL COMMENT '文章ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`SET_ID` ASC, `ESSAY_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '文章组关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `oms_official_account` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`DISPLAY_NAME` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述名',
`AVATAR` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
`BG_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图',
`INTRO` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
`COMPANY_ID` bigint NOT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '公众号账户表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `oms_official_essay` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`TITLE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
`SUBTITLE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
`CONTENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`ACCOUNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公众号ID',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '公众号文章表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `oms_official_essay_set` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组名',
`DESCRIPTION` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
`COMPANY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 可用性',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁 乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人 创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间 创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人 更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间 更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '公众号文章组表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `oms_user_offiacct_relation` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`USER_ID` bigint NOT NULL COMMENT '用户ID',
`OFFIACCT_ID` bigint NOT NULL COMMENT '公众号ID',
PRIMARY KEY (`ID`) ,
UNIQUE INDEX `iq_relation` (`USER_ID` ASC, `OFFIACCT_ID` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '应用公众号关系表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `PDMAN_DB_VERSION` (
`DB_VERSION` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`VERSION_DESC` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`CREATED_TIME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `pms_client` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端名',
`PLATFORM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '平台类型 PC/ANDROID/IOS',
`DOWNLOAD_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认下载地址',
`COMPANY_ID` bigint NOT NULL COMMENT '公司ID',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '主页客户端信息表 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;
CREATE TABLE `pms_client_version` (
`ID` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
`CLIENT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端ID',
`VERSION` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版本号',
`UPDATE_LOG` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新日志',
`SHOW_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细演示地址',
`DOWNLOAD_URI` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下载地址',
`IS_AVAILABLE` int NOT NULL DEFAULT 1 COMMENT '可用性 0-禁用，1-启用',
`REVISION` int NULL DEFAULT NULL COMMENT '乐观锁',
`CREATED_BY` bigint NOT NULL COMMENT '创建人',
`CREATED_TIME` datetime NOT NULL COMMENT '创建时间',
`UPDATED_BY` bigint NOT NULL COMMENT '更新人',
`UPDATED_TIME` datetime NOT NULL COMMENT '更新时间',
PRIMARY KEY (`ID`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '客户端版本信息 '
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Dynamic;