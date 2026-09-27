/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 10/11/2024 16:46:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add book', 7, 'add_book');
INSERT INTO `auth_permission` VALUES (26, 'Can change book', 7, 'change_book');
INSERT INTO `auth_permission` VALUES (27, 'Can delete book', 7, 'delete_book');
INSERT INTO `auth_permission` VALUES (28, 'Can view book', 7, 'view_book');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add tag', 9, 'add_tag');
INSERT INTO `auth_permission` VALUES (34, 'Can change tag', 9, 'change_tag');
INSERT INTO `auth_permission` VALUES (35, 'Can delete tag', 9, 'delete_tag');
INSERT INTO `auth_permission` VALUES (36, 'Can view tag', 9, 'view_tag');
INSERT INTO `auth_permission` VALUES (37, 'Can add user', 10, 'add_user');
INSERT INTO `auth_permission` VALUES (38, 'Can change user', 10, 'change_user');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user', 10, 'delete_user');
INSERT INTO `auth_permission` VALUES (40, 'Can view user', 10, 'view_user');
INSERT INTO `auth_permission` VALUES (41, 'Can add record', 11, 'add_record');
INSERT INTO `auth_permission` VALUES (42, 'Can change record', 11, 'change_record');
INSERT INTO `auth_permission` VALUES (43, 'Can delete record', 11, 'delete_record');
INSERT INTO `auth_permission` VALUES (44, 'Can view record', 11, 'view_record');
INSERT INTO `auth_permission` VALUES (45, 'Can add comment', 12, 'add_comment');
INSERT INTO `auth_permission` VALUES (46, 'Can change comment', 12, 'change_comment');
INSERT INTO `auth_permission` VALUES (47, 'Can delete comment', 12, 'delete_comment');
INSERT INTO `auth_permission` VALUES (48, 'Can view comment', 12, 'view_comment');
INSERT INTO `auth_permission` VALUES (49, 'Can add login log', 13, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (50, 'Can change login log', 13, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (51, 'Can delete login log', 13, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (52, 'Can view login log', 13, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (53, 'Can add role', 14, 'add_role');
INSERT INTO `auth_permission` VALUES (54, 'Can change role', 14, 'change_role');
INSERT INTO `auth_permission` VALUES (55, 'Can delete role', 14, 'delete_role');
INSERT INTO `auth_permission` VALUES (56, 'Can view role', 14, 'view_role');
INSERT INTO `auth_permission` VALUES (57, 'Can add borrow log', 15, 'add_borrowlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change borrow log', 15, 'change_borrowlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete borrow log', 15, 'delete_borrowlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view borrow log', 15, 'view_borrowlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add borrow', 16, 'add_borrow');
INSERT INTO `auth_permission` VALUES (62, 'Can change borrow', 16, 'change_borrow');
INSERT INTO `auth_permission` VALUES (63, 'Can delete borrow', 16, 'delete_borrow');
INSERT INTO `auth_permission` VALUES (64, 'Can view borrow', 16, 'view_borrow');
INSERT INTO `auth_permission` VALUES (65, 'Can add op log', 17, 'add_oplog');
INSERT INTO `auth_permission` VALUES (66, 'Can change op log', 17, 'change_oplog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete op log', 17, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (68, 'Can view op log', 17, 'view_oplog');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add ad', 19, 'add_ad');
INSERT INTO `auth_permission` VALUES (74, 'Can change ad', 19, 'change_ad');
INSERT INTO `auth_permission` VALUES (75, 'Can delete ad', 19, 'delete_ad');
INSERT INTO `auth_permission` VALUES (76, 'Can view ad', 19, 'view_ad');
INSERT INTO `auth_permission` VALUES (77, 'Can add notice', 20, 'add_notice');
INSERT INTO `auth_permission` VALUES (78, 'Can change notice', 20, 'change_notice');
INSERT INTO `auth_permission` VALUES (79, 'Can delete notice', 20, 'delete_notice');
INSERT INTO `auth_permission` VALUES (80, 'Can view notice', 20, 'view_notice');
INSERT INTO `auth_permission` VALUES (81, 'Can add error log', 21, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (82, 'Can change error log', 21, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (83, 'Can delete error log', 21, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (84, 'Can view error log', 21, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (85, 'Can add address', 22, 'add_address');
INSERT INTO `auth_permission` VALUES (86, 'Can change address', 22, 'change_address');
INSERT INTO `auth_permission` VALUES (87, 'Can delete address', 22, 'delete_address');
INSERT INTO `auth_permission` VALUES (88, 'Can view address', 22, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_book_id_4e844b1d_fk_b_book_id`(`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_book
-- ----------------------------
DROP TABLE IF EXISTS `b_book`;
CREATE TABLE `b_book`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `translator` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `press` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `page_count` int(11) NOT NULL,
  `price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `isbn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pub_date` date NULL DEFAULT NULL,
  `online_time` datetime(6) NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `original_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_book_classification_id_97dfec4c_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_book_classification_id_97dfec4c_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book
-- ----------------------------
INSERT INTO `b_book` VALUES (1, '素食者', 'https://img3.doubanio.com/view/subject/s/public/s33956462.jpg', '[韩] 韩江', '胡椒筒', '亚洲首位国际布克文学奖得主获奖作品 我在写作时，经常会思考这些问题：人类的暴力能达到什么程度；如何界定理智和疯狂；我们能在多大程度上理解别人。我希望《素食者》可以回答我的这些问题。我想通过《素食者》刻画一个誓死不愿加入人类群体的女性。 ——韩江在国家布克文学奖颁奖礼上的 致辞 编辑推荐： 1亚洲唯一布克国际 文学奖获奖作品 连续击败两位诺贝尔文学奖得主帕慕克和大江健三郎代表作《我脑袋里的怪东西》、《水死》、“那不勒斯四部曲”终曲《失踪的孩子》等154本全球热门佳作赢得桂冠 同时，这也是布克国际历史上第一次颁奖给单本书（之前都是颁给作者终生成就） 2 享誉全球的现象级杰作，锐利如刀锋，把整个人类社会推上靶场。 荣膺韩国最高文学奖李箱文学奖、全球售出43个国家和地区版权，累计销量突破600万册。《时代周刊》、《华尔街日报》、《经济学人》、《出版人周刊》等... 亚洲首位国际布克文学奖得主获奖作品 我在写作时，经常会思考这些问题：人类的暴力能达到什么程度；如何界定理智和疯狂；我们能在多大程度上理解别人。我希望《素食者》可以回答我的这些问题。我想通过《素食者》刻画一个誓死不愿加入人类群体的女性。 ——韩江在国家布克文学奖颁奖礼上的 致辞 编辑推荐： 1亚洲唯一布克国际 文学奖获奖作品 连续击败两位诺贝尔文学奖得主帕慕克和大江健三郎代表作《我脑袋里的怪东西》、《水死》、“那不勒斯四部曲”终曲《失踪的孩子》等154本全球热门佳作赢得桂冠 同时，这也是布克国际历史上第一次颁奖给单本书（之前都是颁给作者终生成就） 2 享誉全球的现象级杰作，锐利如刀锋，把整个人类社会推上靶场。 荣膺韩国最高文学奖李箱文学奖、全球售出43个国家和地区版权，累计销量突破600万册。《时代周刊》、《华尔街日报》、《经济学人》、《出版人周刊》等60家媒体年度图书。 3 韩国最具国际声誉作家代表作！诺贝尔文学奖热门候选 作为韩国文坛的中坚力量，韩江极有可能成为韩国当代作家斩获诺贝尔文学奖的重要人选。 ——诺贝尔文学奖得主、法国文坛领军人勒克莱齐奥 像《素食者》这样精彩描写性与疯狂的杰作，理应获得巨大的成功。 ——布克文学奖得主、当代英国文坛最具影响力的作家伊恩·麦克尤恩 4与《三体》并列选入十年十佳 2019年美国权威杂志《连线》将《素食者》选入10年来10本最佳类型小说之列，同时入选的还有诺贝尔文学奖得主石黑一雄的《被掩埋的巨人》和刘慈欣的《三体》。 5 女性写作巅峰之作 入选《纽约时报》21世纪15本重塑我们思想和写作的女性写作杰作书单 6 借阅人数超过《82年的金智英》 韩国国立中央图书馆于2017年1月至2021年4月针对全国845个图书馆的借阅数据进行了分析。 结果显示，《解忧杂货店》成为20-29岁人群最爱图书。 继《解忧杂货店》之后，《素食者 》超过话题图书 《82年生的金智英》夺得韩国原创文学借阅第一名，文学总借阅率第二名。 7韩国总统文在寅、BTS防弹少年团团长金南俊、red velvet金艺彬、GOT7朴珍荣、大势演员林秀晶真诚推荐 8改编电影入围圣丹斯电影节评审团大奖-世界电影单元-最佳剧情片 为了逃避来自丈夫、家庭、社会和人群的暴力，她决定变成一棵树 在英惠的丈夫郑先生的眼中，“病”前的英惠，是个再普通不过的女子：不高不矮的个头、不长不短的头发，相貌平平，着装一般，温顺、平淡、文静。正如他所希望的那样，英惠完美地扮演了平凡妻子的角色——料理家务，伺候丈夫，就像千千万万的传统妇女一样。 然而，一场噩梦之后，妻子却突然开始拒绝吃肉，拒绝为家人准备荤菜，甚至到最后，她开始拒绝自己的“人类”身份，把自己当成了一株植物，一株只需要阳光和水，谢绝任何食物和交流的植物。而随着她被动的反叛以越来越极端和可怕的形式表现出来，丑闻、虐待和疏远开始让她螺旋进入她的幻想空间。在精神和身体的完全蜕变中，她现在危险的努力将使英惠——不可能的、狂喜的、悲剧性的——远离她曾经为人所知的自我。 《素食者》以一种抒情却又撕裂的风格，将柔情和恐怖微妙地融为一体。揭示出强烈反抗对女主人公和她身边所有人的冲击。这本凝练、精美而又令人不安的书将长久萦绕于人心，甚至潜入读者的梦中。 ——国际布克文学奖主席博伊德·唐金 作为韩国文坛的中坚力量，韩江极有可能成为韩国当代作家斩获诺贝尔文学奖的重要人选。 ——诺贝尔文学奖得主、法国文坛领军人勒克莱齐奥 像《素食者》这样精彩描写性与疯狂的杰作，理应获得巨大的成功。 ——布克文学奖得主、当代英国文坛最具影响力的作家伊恩·麦克尤恩 这部小说里那种近乎于变态的诱惑，恰恰源自字里行间的画面诗意。它们暴力又情色，彷彿恶梦。读这本书的过程仿佛置身于充满了奇花异草的房间，浓浓的香味会扼住你的喉咙、让你睁大眼睛、震惊不已。 ——荷兰《阿姆斯特丹人杂志》 翻开这本书那你就准备好被切成薄片，被涂上颜色，被拍打，被爱抚，被撕成碎片，被震惊，摇摇欲坠吧！ ——美国小说家阿米莉亚·格雷', '四川文艺出版社', 208, '48', '9787541160868', '2021-09-01', '2024-11-10 16:00:06.600490', '0', 99, '8.1', '精装', 2, 2, '채식주의자', '2024-11-08 22:08:05.776244', 0, 0, 0);
INSERT INTO `b_book` VALUES (2, '食南之徒', 'https://img3.doubanio.com/view/subject/s/public/s34823157.jpg', '马伯庸', '未知', '【内容简介】 ZUI贪吃的大汉使者唐蒙， 来到了ZUI会吃的南越之国。 这里食材丰富，简直就是饕餮之徒的梦想之地。然而，在美食背后，却涌动着南北对峙、族群隔阂、权位争斗、国策兴废……种种波谲云诡，竟比岭南食材的风味更加复杂。 这个懒散的大汉使者，身陷岭南的政争漩涡。他唯一能信赖的伙伴，只有食物；唯一的破局之法，只有追求极致美食的心。 谁都没想到，那一缕微妙滋味，竟关乎大汉与南越国运，乃至于整个中华版图…… 【编辑推荐】 《食南之徒》是马伯庸2024年全新长篇历史小说。贪吃的汉使唐蒙来到饕餮圣地南越，没想到卷入南越宫廷的政争之中，南北对峙、族群隔阂、权位争斗、国策兴废……时局波谲云密，他能信赖的只有美食，能够破局的也只有那颗追求极致美食的心。更没人想到，唐蒙敏感的味觉竟然拓展了大汉对中华版图的认知…… 美食不会骗人，每个人在它面前，都会露出本性。 1.... 【内容简介】 ZUI贪吃的大汉使者唐蒙， 来到了ZUI会吃的南越之国。 这里食材丰富，简直就是饕餮之徒的梦想之地。然而，在美食背后，却涌动着南北对峙、族群隔阂、权位争斗、国策兴废……种种波谲云诡，竟比岭南食材的风味更加复杂。 这个懒散的大汉使者，身陷岭南的政争漩涡。他唯一能信赖的伙伴，只有食物；唯一的破局之法，只有追求极致美食的心。 谁都没想到，那一缕微妙滋味，竟关乎大汉与南越国运，乃至于整个中华版图…… 【编辑推荐】 《食南之徒》是马伯庸2024年全新长篇历史小说。贪吃的汉使唐蒙来到饕餮圣地南越，没想到卷入南越宫廷的政争之中，南北对峙、族群隔阂、权位争斗、国策兴废……时局波谲云密，他能信赖的只有美食，能够破局的也只有那颗追求极致美食的心。更没人想到，唐蒙敏感的味觉竟然拓展了大汉对中华版图的认知…… 美食不会骗人，每个人在它面前，都会露出本性。 1.马伯庸2024年全新长篇历史小说。 2.西汉“吃货”唐蒙出使南越，从“躺平”到“趟平”的故事。 3.一味不知原料的酱料，一枚原生北土的枣核，勾连出中华版图变迁的一段隐秘传奇，西南丝绸之路开拓史竟也由此展开。 4.知名画家施晓颉绘制封面，随书附赠五折六联全彩明信片插图。', '湖南文艺出版社', 269, '56.00', '9787572616099', '2024-04-01', '2024-11-10 16:00:07.894468', '0', 99, '8.3', '平装', 2, 2, '未知', '2024-11-08 22:08:07.463699', 0, 0, 0);
INSERT INTO `b_book` VALUES (3, '长安的荔枝', 'https://img3.doubanio.com/view/subject/s/public/s34327482.jpg', '马伯庸', '未知', '大唐天宝十四年，长安城的小吏李善德突然接到一个任务：要在贵妃诞日之前，从岭南运来新鲜荔枝。荔枝“一日色变，两日香变，三日味变”，而岭南距长安五千余里，山水迢迢，这是个不可能完成的任务，可为了家人，李善德决心放手一搏：“就算失败，我也想知道，自己倒在距离终点多远的地方。” 《长安的荔枝》是马伯庸备受好评的历史小说。 唐朝诗人杜牧的一句“一骑红尘妃子笑，无人知是荔枝来”一千多年来引发了人们的无限遐想，但鲜荔枝的保鲜时限仅有三天，这场跨越五千余里的传奇转运之旅究竟是如何达成的，谁让杨贵妃在长安吃到了来自岭南的鲜荔枝？作者马伯庸就此展开了一场脑洞非常大的想象。 沿袭马伯庸写作一贯以来的时空紧张感，不仅让读者看到了小人物的乱世生存之道，也感受到了事在人为的热血奋斗。随书附赠“荔枝鲜转运舆图”。 ★ 编辑推荐 唐朝诗人杜牧的一句“一骑红尘妃子笑，无人知是荔枝来”... 大唐天宝十四年，长安城的小吏李善德突然接到一个任务：要在贵妃诞日之前，从岭南运来新鲜荔枝。荔枝“一日色变，两日香变，三日味变”，而岭南距长安五千余里，山水迢迢，这是个不可能完成的任务，可为了家人，李善德决心放手一搏：“就算失败，我也想知道，自己倒在距离终点多远的地方。” 《长安的荔枝》是马伯庸备受好评的历史小说。 唐朝诗人杜牧的一句“一骑红尘妃子笑，无人知是荔枝来”一千多年来引发了人们的无限遐想，但鲜荔枝的保鲜时限仅有三天，这场跨越五千余里的传奇转运之旅究竟是如何达成的，谁让杨贵妃在长安吃到了来自岭南的鲜荔枝？作者马伯庸就此展开了一场脑洞非常大的想象。 沿袭马伯庸写作一贯以来的时空紧张感，不仅让读者看到了小人物的乱世生存之道，也感受到了事在人为的热血奋斗。随书附赠“荔枝鲜转运舆图”。 ★ 编辑推荐 唐朝诗人杜牧的一句“一骑红尘妃子笑，无人知是荔枝来”惹得世人艳羡杨贵妃上千年，但其中的荔枝是如何从五千余里外的岭南运送到长安城的，却鲜有史书详细记载，脑洞大开的马伯庸以此为蓝本构建了一个大唐社畜李善德拼尽全力做项目的故事，虽是历史小说，读者却能从中看到自己的生活影子，大城市买房落脚、职场情商博弈、不得已的违规逾矩等，小人物的挣扎是那么相似。一项将鲜荔枝运逾千里之距的艰难差事，以微观人事折射大唐宏观社会。 这部口碑非常好的历史小说只花了11天写就，小说刚一连载就获得了广大读者的好评，被数万人点评为神作，推荐值高达96%。微博、抖音、小红书和今日头条，海量读者自发评论和衍生二创。 本书小开本双封设计，随书附赠“荔枝鲜转运舆图”折页插图一张。 ★ 媒体推荐 马伯庸把他对历史的熟稔与现实关怀结合在一起，使得文笔能直击人的内心。写的是古人，却经常让我们看到自己。这部《长安的荔枝》就是如此。 ——陕西师范大学历史文化学院教授 于赓哲', '湖南文艺出版社', 224, '45.00', '9787572608582', '2022-10-01', '2024-11-10 16:00:09.425313', '0', 99, '8.5', '平装', 0, 2, '未知', '2024-11-08 22:12:54.413729', 0, 0, 0);
INSERT INTO `b_book` VALUES (4, '太白金星有点烦', 'https://img9.doubanio.com/view/subject/s/public/s34544956.jpg', '马伯庸', '未知', '太白金星李长庚最近有点烦。 天庭和西天联合推出了“西天取经”的重大项目，他受命策划九九八十一难，确保唐僧能安全走完流程，平稳取经成佛。老神仙本以为一切尽在掌控中，谁知天大的麻烦才刚刚开始：费用报销、工作汇报、人事安排、各路大仙塞来的条子、各地妖怪暗藏的心思，捋不出的千头万缕，做不完的琐碎繁杂……当大闹天宫的真相重新浮出水面，牵扯出无数因果，李长庚发觉自己成就金仙的道路越加渺茫。 【编辑推荐】 这是每一个成年人应该重读的西游故事。 太白金星李长庚最近有点烦。天庭和西天联合推出了“西天取经”的重大项目，他受命策划九九八十一难，确保项目无虞。老神仙本以为一切尽在掌控中，谁知天大的麻烦才刚刚开始。 项目过程中，如何报销活动费用？如何写工作汇报？如何平衡不同上级的诉求？如何应对突发状况？如何解决人事纠纷？一系列问题在不改变经典著作《西游记》结局的基础上展开了丰... 太白金星李长庚最近有点烦。 天庭和西天联合推出了“西天取经”的重大项目，他受命策划九九八十一难，确保唐僧能安全走完流程，平稳取经成佛。老神仙本以为一切尽在掌控中，谁知天大的麻烦才刚刚开始：费用报销、工作汇报、人事安排、各路大仙塞来的条子、各地妖怪暗藏的心思，捋不出的千头万缕，做不完的琐碎繁杂……当大闹天宫的真相重新浮出水面，牵扯出无数因果，李长庚发觉自己成就金仙的道路越加渺茫。 【编辑推荐】 这是每一个成年人应该重读的西游故事。 太白金星李长庚最近有点烦。天庭和西天联合推出了“西天取经”的重大项目，他受命策划九九八十一难，确保项目无虞。老神仙本以为一切尽在掌控中，谁知天大的麻烦才刚刚开始。 项目过程中，如何报销活动费用？如何写工作汇报？如何平衡不同上级的诉求？如何应对突发状况？如何解决人事纠纷？一系列问题在不改变经典著作《西游记》结局的基础上展开了丰富有趣的职场生态，即便李长庚锦囊无数，也不免常常陷入焦虑。 都说神仙要“超脱因果，太上忘情”，都说不要在职场里动感情，太白金星却说，“很多人间执念我们无法理解，但不代表那些痛苦就不存在。”即使得了“仙”“佛”之号，依旧抛不下一个人字，有人，就有抛不下的牵挂、因果与苦乐得失。 打碎无意义的追逐，才是真的得道。 延续《长安的荔枝》小开本双封设计，随书附10张著名画家施晓颉所绘创意插图。 【媒体推荐】 地下取经队伍降妖除魔百般威武，天上神界仙界各怀心思斗智斗勇。现代视角另类演绎西游故事，就算成仙也得讲究职场智慧。 ——《收获》杂志', '湖南文艺出版社', 276, '45.00', '9787572610912', '2023-06-01', '2024-11-10 16:00:11.480633', '0', 99, '9.0', '平装', 0, 2, '未知', '2024-11-08 22:12:56.152937', 0, 0, 0);
INSERT INTO `b_book` VALUES (5, '怪画谜案', 'https://img1.doubanio.com/view/subject/s/public/s34903230.jpg', '[日] 雨穴', '烨伊', '日本国民级推理小说！《怪屋谜案》后，网红作家雨穴惊喜新作！ 单本爆卖80万册，作品狂销300万册！ 神级伏笔，高能反转，中文简体版专属双重赠品！ · 【编辑推荐】 ★超越东野圭吾、伊坂幸太郎，日本亚马逊悬疑推理榜单前列！《怪屋谜案》后，超人气作家雨穴惊喜新作！ 日本亚马逊4.7星高分好评，评论数超6000；日本豆瓣bookmeter标记数超8000；畅销日本，全国书店大力推荐。 ★单本爆卖80万册，作品狂销300万册；单集视频播放量超500万次，改编漫画持续热销。日本国民级推理小说！轰动日本社会的网红作家！雨穴作品总销量超300万册，《怪屋》超100万，《怪画》超80万。看似平静的家庭之下，暗藏处心积虑的谋杀！ ★神级伏笔！高能反转！安乐椅侦探×图片型推理×沉浸式解谜......中文简体版专属双重赠品！ 冲击性的反转·噩梦般的罪行·夹缝中的人性。隐藏... 日本国民级推理小说！《怪屋谜案》后，网红作家雨穴惊喜新作！ 单本爆卖80万册，作品狂销300万册！ 神级伏笔，高能反转，中文简体版专属双重赠品！ · 【编辑推荐】 ★超越东野圭吾、伊坂幸太郎，日本亚马逊悬疑推理榜单前列！《怪屋谜案》后，超人气作家雨穴惊喜新作！ 日本亚马逊4.7星高分好评，评论数超6000；日本豆瓣bookmeter标记数超8000；畅销日本，全国书店大力推荐。 ★单本爆卖80万册，作品狂销300万册；单集视频播放量超500万次，改编漫画持续热销。日本国民级推理小说！轰动日本社会的网红作家！雨穴作品总销量超300万册，《怪屋》超100万，《怪画》超80万。看似平静的家庭之下，暗藏处心积虑的谋杀！ ★神级伏笔！高能反转！安乐椅侦探×图片型推理×沉浸式解谜......中文简体版专属双重赠品！ 冲击性的反转·噩梦般的罪行·夹缝中的人性。隐藏在这些画中的秘密，你有勇气去揭开吗？随书附赠作者亲绘印签＋PVC线索透卡，一秒入局！ · 博客网站上，名叫REN的男子记录着与妻子YUKI的恩爱日常，怀孕的YUKI不断用画笔描绘出对孩子和未来的美好憧憬。 但奇怪的是，洋溢着幸福的博客在一年半前突然停止了更新...... 上幼儿园的优太为母亲节准备了一幅温馨的画，画面中优太和母亲直美并肩站在他们居住的公寓大楼旁，可诡异的是，只有优太住的房间被蜡笔杂乱地涂灰...... 美术老师三浦在登山时遇害，现场留下一幅似貌似是遗作的山景图，经警方确认，此画确实出自三浦之手，不过，画风却与平常截然不同...... 这些画......不正常！！！那个家......不对劲！！！', '台海出版社', 312, '55.00', '9787516838440', '2024-07-01', '2024-11-10 16:00:12.840850', '0', 99, '7.5', '平装', 0, 2, '変な絵', '2024-11-08 22:12:57.741769', 0, 0, 0);
INSERT INTO `b_book` VALUES (6, '活着', 'https://img9.doubanio.com/view/subject/s/public/s29869926.jpg', '余华', '未知', '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。 《活着(新版)》荣获意大利格林扎纳•卡佛文学奖最高奖项（1998年）、台湾《中国时报》10本好书奖（1994年）、香港“博益”15本好书奖（1994年）、第三届世界华文“冰心文学奖”（2002年），入选香港《亚洲周刊》评选的“20世纪中文小说百年百强”、中国百位批评家和文学编辑评选的“20世纪90年代最有影响的10部作品”。', '作家出版社', 191, '20.00', '9787506365437', '2012-08-01', '2024-11-09 19:36:29.799258', '0', 99, '9.4', '平装', 0, 29, '未知', '2024-11-08 22:12:59.619041', 0, 0, 0);
INSERT INTO `b_book` VALUES (7, '恶女的告白', 'https://img9.doubanio.com/view/subject/s/public/s34917944.jpg', '[日] 叶真中显', '吴曦', '1 日本社会派推理大师叶真中显新作 日本推理作家协会奖、《这本推理小说了不起》大奖、《周刊文春》年度推理小说榜、日本推理文学大奖新人奖、渡边淳一文学奖、吉川英治文学新人奖、书店大奖、大薮春彦奖获得者新作。 2 时隔十年，《绝叫》后，再写“恶女”的复仇与重生 这部作品以“性别歧视”“性暴力”为主题。不客气地说，现在的日本社会是为男性而创造的， 即所谓的“男权社会”。我本身就是男权既得利益者，无法置身事外。我想通过这部作品，重新审视这样的社会。——叶真中显 3 本作、作中作、作中作中作层层反转 不杀了他们，我就会被他们杀死 知晓一切的你，愿意成为我的共犯吗？ “太郎涨大的生殖器上有无数烫痕。之前的饲主用的是火烧，那我就试着把它切了吧。” 七年前文学编辑梨帆收到了一篇叫做《养狗》的投稿，小说充斥着残暴的施虐倾向和对男性的嫌恶。作品被评为“重口味、贬低男性”... 1 日本社会派推理大师叶真中显新作 日本推理作家协会奖、《这本推理小说了不起》大奖、《周刊文春》年度推理小说榜、日本推理文学大奖新人奖、渡边淳一文学奖、吉川英治文学新人奖、书店大奖、大薮春彦奖获得者新作。 2 时隔十年，《绝叫》后，再写“恶女”的复仇与重生 这部作品以“性别歧视”“性暴力”为主题。不客气地说，现在的日本社会是为男性而创造的， 即所谓的“男权社会”。我本身就是男权既得利益者，无法置身事外。我想通过这部作品，重新审视这样的社会。——叶真中显 3 本作、作中作、作中作中作层层反转 不杀了他们，我就会被他们杀死 知晓一切的你，愿意成为我的共犯吗？ “太郎涨大的生殖器上有无数烫痕。之前的饲主用的是火烧，那我就试着把它切了吧。” 七年前文学编辑梨帆收到了一篇叫做《养狗》的投稿，小说充斥着残暴的施虐倾向和对男性的嫌恶。作品被评为“重口味、贬低男性”而没有出版，作者也从此销声匿迹。 七年后，梨帆收到了当年那位神秘作家的第二篇投稿，故事从两位学生时代的老友重逢开始，立场不同的两人在对话产生了分歧，杀意越来越强烈。 “干脆杀了这个女人吧。” 随着剧情的推移梨帆惊奇地在小说主人公身上看到了自己的影子，更可怕的是，这部小说好像还和七年前那篇暴戾的《养狗》有着千丝万缕的联系…… 读者评论精选： 一种始终迷糊重重的感觉，一部虚构的小说，作为作中作，形成了故事的开端。它同时也孕育着一种悍强的力量，读者关心今后故事如何，忍不住往下读。小说包含了性别歧视、性别差异、厌恶男性等内容，完全不是看了开头能想象得到的故事展开。 感觉心神完全被吸引的一次读书体验。 在阅读了书店纷发的文章开头试读后，因为很在意而买了下来。作品中作中作的分量比我想象的要大，和主人公的人生奇妙地同步着，到了最后仿佛被覆盖了一样的存在感，一种梦幻般的、有点混乱的感觉。这种不可思议的感觉，希望其他读者也一定要体验一下。我想没有人的人生是没有后悔和迷茫的，也有过去的选择，让人想责怪是到底谁的错。希望有更多人意识到，即使现在不能完全挽回，自己也能把握住自己人生的缰绳。 过去我读过叶真中显先生写的3部小说，感觉和以前有些不一样，我很惊讶，但我由衷地觉得读了真好。根据读者的年龄和经验，也许会有难以理解的地方，但至少对于“正在度过下午的女性”来说，会有让人欲哭无泪的迫切感。我也是其中之一。对多惠和梨帆的某种共犯般的感情，连带着吞噬了我，将我救了出来。', '中国友谊出版公司', 296, '55.00', '9787505758100', '2024-09-01', '2024-11-09 19:31:02.377520', '0', 99, '8.1', '平装', 1, 2, 'ロング・アフタヌーン', '2024-11-08 22:13:00.997917', 0, 0, 0);
INSERT INTO `b_book` VALUES (8, '边水往事', 'https://img3.doubanio.com/view/subject/s/public/s34843022.jpg', '沈星星', '未知', '我的任务就是开车装货，卸货，和接头人核对数量。 回去后，猜叔见到我的第一眼就笑了： “你还活着啊！” 2009 年，沈星星机缘巧合踏上金边坡的土地，成了一名给毒贩送假货的卡车司机。 整整397 天，他跟毒贩、赌徒、黑社会生活在一起。在这之前，他从没想过现实世界这么糟糕。 在他亲眼目睹好友被极端分子一枪爆头，自己的老大将手下当众割喉等一系列恍如隔世的事件后，沈星星决定连夜逃回国内自首，并协助警方打击掉了长年盘踞深山的贩毒链条。 他把在金边坡经历的人和事，都记录在了书里的故事里。', '天津人民出版社', 256, '59.8', '9787201201689', '2024-05-01', '2024-11-09 19:31:03.936131', '0', 99, '7.1', '平装', 0, 2, '未知', '2024-11-08 22:13:02.515322', 0, 0, 0);
INSERT INTO `b_book` VALUES (9, '一句顶一万句', 'https://img9.doubanio.com/view/subject/s/public/s34289066.jpg', '刘震云', '未知', '《一句顶一万句》是著名作家刘震云的扛鼎之作，也是刘震云迄今为止最成熟最大气的作品，并在2011年获第八届茅盾文学奖。 小说分上下两个部分，前半部“出延津记”写的是过去：卖豆腐老杨的二儿子杨百顺百事不顺，他一生改了三次名：为了寻个营生，被天主教神父老詹纳为教徒，改名杨摩西；给县长种地时因为一个尿壶得罪了县长，提心吊胆中有人说媒，便倒插门嫁给馒头铺的吴香香，改名吴摩西；吴香香给吴摩西扣了顶绿帽子，吴摩西带着吴香香和前夫的女儿巧玲假意去寻与人私奔的妻子，路上又把巧玲丢了，失望之中，要离开故乡，从此用喊丧的罗长礼的名字度过余生；后半部“回延津记”写的是现在：巧玲被卖到陕西，成了曹青娥，嫁给牛家，儿子牛爱国也是假意寻找与人私奔的妻子，又想到自己从前的相好，想起母亲的老家，于是走回延津……一出一走，延宕百年。', '花城出版社', 620, '68.00', '9787536097261', '2022-08-01', '2024-11-09 19:36:47.902025', '0', 99, '9.0', '精装', 0, 29, '未知', '2024-11-08 22:13:04.344850', 0, 0, 0);
INSERT INTO `b_book` VALUES (10, '绝叫', 'https://img3.doubanio.com/view/subject/s/public/s33685372.jpg', '[日] 叶真中显', '林佩瑾', '罗翔老师推荐！“这本书深刻地揭示了日本的社会问题，日本40多年来社会变迁的各种缩影。” 豆瓣「2020年度读书榜单」推理·悬疑类top1！ 怀才者的自怜是天鹅的挽歌， 平庸者的崩坏是野兽的绝叫。 - ★同名日剧位居豆瓣“2019评分最高日本剧集”榜单Top10 ★日本现象级社会派推理小说 ★长达四十年的恶女编年史 ★绝对现实，却超乎想象！ - 【内容简介】 铃木阳子死了，死在独居的公寓里。正确说来，是铃木阳 子几个月前死了。因为发现她时，不但遗体遭到屋内的十一只猫啃食，连猫也全数饿死了。铃木阳子显然是「孤独死」的最佳范例，但这名女子为何落到这步田地？她的亲人、朋友、同事在哪里？她的人生轨迹又是如何？ - 【编辑推荐】 《绝叫》是日本新锐社会派推理作家叶真中显创作的推理小说，讲述了女主人公阳子在平庸懦弱的表象之下，隐密的跌宕、罪恶人生。该书揭露常被人们... 罗翔老师推荐！“这本书深刻地揭示了日本的社会问题，日本40多年来社会变迁的各种缩影。” 豆瓣「2020年度读书榜单」推理·悬疑类top1！ 怀才者的自怜是天鹅的挽歌， 平庸者的崩坏是野兽的绝叫。 - ★同名日剧位居豆瓣“2019评分最高日本剧集”榜单Top10 ★日本现象级社会派推理小说 ★长达四十年的恶女编年史 ★绝对现实，却超乎想象！ - 【内容简介】 铃木阳子死了，死在独居的公寓里。正确说来，是铃木阳 子几个月前死了。因为发现她时，不但遗体遭到屋内的十一只猫啃食，连猫也全数饿死了。铃木阳子显然是「孤独死」的最佳范例，但这名女子为何落到这步田地？她的亲人、朋友、同事在哪里？她的人生轨迹又是如何？ - 【编辑推荐】 《绝叫》是日本新锐社会派推理作家叶真中显创作的推理小说，讲述了女主人公阳子在平庸懦弱的表象之下，隐密的跌宕、罪恶人生。该书揭露常被人们忽视的社会问题，深刻而引人深思，刻画人物思想的变化细腻而一针见血，以阳子的离奇经历，连缀了日本四十年来社会变迁的各种缩影，是日本近年来具有代表性的优秀推理小说。 该书在日本一经出版就引起极大反响，入围第68回日本推理作家协会奖、第36回吉川英治文学新人奖、第27回“这本推理小说了不起”大奖 、第12回书店大奖、第11回启文堂大奖、周刊文春年度推理小说榜。 后《绝叫》繁体版问世，使国内推理小说爱好者得以一探究竟。《绝叫》繁体版在豆瓣获得8.6的高评分，是少有的在有简体中文版之前就广受好评的外国小说。 2019年，根据《绝叫》改编的同名日剧播出，又获得了豆瓣逾万人点评、8.4分的好成绩，并入围豆瓣“2019评分最高日本剧集”榜单Top10。 2020年7月，《绝叫》简体中文版正式上市，以飨读者。', '北京联合出版公司', 440, '58.00', '9787559641182', '2020-07-01', '2024-11-09 19:31:06.906122', '0', 99, '8.9', '平装', 0, 2, '絕叫', '2024-11-08 22:13:06.352687', 0, 0, 0);
INSERT INTO `b_book` VALUES (11, '西游八十一案', 'https://img3.doubanio.com/view/subject/s/public/s34916892.jpg', '陈渐', '未知', '☆重磅地位：中国文化悬疑小说的殿堂级作品载誉收官！叙事、人物、结构、悬念设计、文化元素、主题思想等，堪称文化悬疑小说的写作典范。 ☆荣誉满载：2022年连续登上日本“这本推理了不起”“周刊文春推理小说Best10”两大全球权威推理榜单！代表中国小说首次入围“日本推理作家协会奖！ ☆全版权呈现：系列作品的中文繁体版、日文版、泰文版、越南文版相继出版；《西游八十一案：西域列王纪》由爱奇艺+万达影业联手改编为影视剧《四方馆》，檀健次主演。 ☆新颖设定：九九八十一难，实为八十一案！将吴承恩笔下的神魔世界，重新还原到历史现场！十万八千里漫漫取经路，成为一个接一个的罪案现场！ ☆全新演绎《西游记》：妖魔鬼怪一一现出人形，名著《西游记》焕发新奇光彩！每个人、每尊神、每头魔、每只怪，全部原型登场！文学名著和真实历史交相辉映，古典叙事和现代探案融会贯通！从“降妖除魔”... ☆重磅地位：中国文化悬疑小说的殿堂级作品载誉收官！叙事、人物、结构、悬念设计、文化元素、主题思想等，堪称文化悬疑小说的写作典范。 ☆荣誉满载：2022年连续登上日本“这本推理了不起”“周刊文春推理小说Best10”两大全球权威推理榜单！代表中国小说首次入围“日本推理作家协会奖！ ☆全版权呈现：系列作品的中文繁体版、日文版、泰文版、越南文版相继出版；《西游八十一案：西域列王纪》由爱奇艺+万达影业联手改编为影视剧《四方馆》，檀健次主演。 ☆新颖设定：九九八十一难，实为八十一案！将吴承恩笔下的神魔世界，重新还原到历史现场！十万八千里漫漫取经路，成为一个接一个的罪案现场！ ☆全新演绎《西游记》：妖魔鬼怪一一现出人形，名著《西游记》焕发新奇光彩！每个人、每尊神、每头魔、每只怪，全部原型登场！文学名著和真实历史交相辉映，古典叙事和现代探案融会贯通！从“降妖除魔”取经，到“惩恶缉凶”探案。 ☆名家推荐：导演陆川、表演艺术家陈佩斯、爱奇艺首席内容官王晓晖、作家马伯庸、央视主持人任鲁豫、作家雷米、爱奇艺众拾工作室总经理王旭东、日本推理作家三津田信三……隆重推荐。 内容简介： 《西游记》中唐僧师徒经历的九九八十一难，实为八十一案，这些案环环相扣，连绵不绝，穷尽人世间罪案的种类，案案直指人性深处的贪婪，自私，恶。 大唐贞观十九年（公元645年），西行取经的玄奘回到长安，本以为这是八十一难的终点，不想，整个长安城，表面风平浪静，实则暗流涌动，杀机四伏。这座在《西游记》原著中，连八大金刚都不敢涉足的都城，到底隐藏着怎样的绝命天局？ 这是一代帝王临死前的最后搏杀，也是大唐帝国第三位君主登基前的喋血彩排，更是女皇刚刚迈入历史殿堂的那既轻又惊的一步！ 七日、七谶、七悬案，一根绳索套上煌煌大唐的脖颈——大唐能否摆脱这次死亡翻滚？玄奘和他的弟子将怎样以大唐为道场，破局证道，揭秘九九八十一案的最后真相? 翻开中国文化悬疑小说的殿堂级作品《西游八十一案》，和作者陈渐共赴这场由外向内的文化之旅——西游究竟是西天的路还是心中的路？灵山究竟是远方的山、山上的佛，还是内心的自洽与图满？', '重庆出版社', 464, '59.80', '9787229187040', '2024-08-01', '2024-11-09 19:31:08.554495', '0', 99, '8.4', '平装', 0, 2, '未知', '2024-11-08 22:13:07.916176', 0, 0, 0);
INSERT INTO `b_book` VALUES (12, '明亮的夜晚', 'https://img3.doubanio.com/view/subject/s/public/s34577743.jpg', '[韩]崔恩荣', '叶蕾', '我有一个愿望，想写一写妈妈或祖母，很久以前生活在这片土地上的女性的故事。 一部女性版的《活着》，四代女性的友谊、抗争、泪水与欢笑 韩国最大网络书店22万读者票选“2021年度之书” 第29届大山文学奖获奖作，天才作家崔恩荣首部长篇小说！ 女人们不再是仅供同情、怜悯的角色，也不再是装饰男人壮丽生活的配角。 她们是自己，生如草芥，彼此搀扶，尽全身之力对抗荒诞的时代。 ------------------- 和丈夫离婚后，三十一岁的我独自来到海边小城熙岭，却在那里邂逅多年未见的祖母。尴尬和沉默之后，孤独的心一点点靠近，我和祖母成为相互倾吐心声的朋友。在祖母家老屋的旧相册里，我发现一位和我长相非常相似的女子，依偎在少女时代的祖母身旁。 一个个鲜活的面孔逐渐从一张张黑白相片中，从一封封感人至深的书信中，从久远的回忆里，穿过女人生如飘萍、命如草芥的时代，走到我面... 我有一个愿望，想写一写妈妈或祖母，很久以前生活在这片土地上的女性的故事。 一部女性版的《活着》，四代女性的友谊、抗争、泪水与欢笑 韩国最大网络书店22万读者票选“2021年度之书” 第29届大山文学奖获奖作，天才作家崔恩荣首部长篇小说！ 女人们不再是仅供同情、怜悯的角色，也不再是装饰男人壮丽生活的配角。 她们是自己，生如草芥，彼此搀扶，尽全身之力对抗荒诞的时代。 ------------------- 和丈夫离婚后，三十一岁的我独自来到海边小城熙岭，却在那里邂逅多年未见的祖母。尴尬和沉默之后，孤独的心一点点靠近，我和祖母成为相互倾吐心声的朋友。在祖母家老屋的旧相册里，我发现一位和我长相非常相似的女子，依偎在少女时代的祖母身旁。 一个个鲜活的面孔逐渐从一张张黑白相片中，从一封封感人至深的书信中，从久远的回忆里，穿过女人生如飘萍、命如草芥的时代，走到我面前。 经过曾祖母、祖母和母亲，来到我身边的故事， 她们的人生在我的眼前重现。 现在的我能够触及她们吗? 正如过去无数的我组成了现在的我， 现在的我也能见到过去的无数个我吗？', '台海出版社', 296, '52', '9787516835265', '2023-08-01', '2024-11-09 19:31:10.347496', '0', 99, '9.0', '平装', 0, 2, '밝은 밤', '2024-11-08 22:13:09.544505', 0, 0, 0);
INSERT INTO `b_book` VALUES (13, '额尔古纳河右岸', 'https://img1.doubanio.com/view/subject/s/public/s34734949.jpg', '迟子建', '未知', '《额尔古纳河右岸》是一部描写鄂温克人生存现状及百年沧桑的长篇小说，展示了弱小民族在严酷的自然环境和现代文明的挤压下的顽强生命力和不屈不挠的民族精神，以及丰富多彩的民族性格和风情。本书获得第七届茅盾文学奖。', '人民文学出版社', 266, '32.00', '9787020139590', '2019-06-01', '2024-11-09 19:36:46.257933', '0', 99, '9.0', '平装', 0, 29, '未知', '2024-11-08 22:13:11.516692', 0, 0, 0);
INSERT INTO `b_book` VALUES (14, '克莱因壶', 'https://img3.doubanio.com/view/subject/s/public/s33317677.jpg', '[日] 冈岛二人', '张舟', '什么时候你开始怀疑这个世界是假的？ . 日本虚拟现实VR题材开山杰作， 超前《盗梦空间》20年！ 传奇推理作家组合冈岛二人预言之书，以超强的技术预见力，30年前就已完美构想出虚拟现实游戏体验装置！ . 这是一部拥有“噩梦特质”的小说，是一次鲜有的、堪比3D观影、脑洞大开的、深陷其中难以自拔的独特体验。——资深推理人天蝎小猪 . . 上杉彰彦从未如此兴奋——他写的故事被伊普西隆研发公司买下，即将制作成颠覆时代的全新游戏《克莱因2》（Klein 2），并受邀与少女梨纱一同担任游戏测试员。 上杉彻底陷入了由K2造就的完美虚拟世界，为它的逼真、超前赞叹不已。然而随着测试过程的深入，伊普西隆公司行事神秘得令他生疑，游戏中更不断听到有人警告他：“快逃！” 与此同时，一个自称是梨纱好友的女孩找到上杉，她说梨纱已失踪多日，音信全无。然而在寻人的过程中，两人都开始怀疑... 什么时候你开始怀疑这个世界是假的？ . 日本虚拟现实VR题材开山杰作， 超前《盗梦空间》20年！ 传奇推理作家组合冈岛二人预言之书，以超强的技术预见力，30年前就已完美构想出虚拟现实游戏体验装置！ . 这是一部拥有“噩梦特质”的小说，是一次鲜有的、堪比3D观影、脑洞大开的、深陷其中难以自拔的独特体验。——资深推理人天蝎小猪 . . 上杉彰彦从未如此兴奋——他写的故事被伊普西隆研发公司买下，即将制作成颠覆时代的全新游戏《克莱因2》（Klein 2），并受邀与少女梨纱一同担任游戏测试员。 上杉彻底陷入了由K2造就的完美虚拟世界，为它的逼真、超前赞叹不已。然而随着测试过程的深入，伊普西隆公司行事神秘得令他生疑，游戏中更不断听到有人警告他：“快逃！” 与此同时，一个自称是梨纱好友的女孩找到上杉，她说梨纱已失踪多日，音信全无。然而在寻人的过程中，两人都开始怀疑对方在撒谎，因为他们的记忆完全对不上……', '化学工业出版社', 299, '48.00', '9787122346032', '2019-09-01', '2024-11-09 19:31:13.512931', '0', 99, '8.9', '精装', 0, 2, 'クラインの壷', '2024-11-08 22:13:13.327078', 0, 0, 0);
INSERT INTO `b_book` VALUES (15, '悉达多', 'https://img1.doubanio.com/view/subject/s/public/s29396368.jpg', '[德] 赫尔曼·黑塞', '姜乙', '《悉达多》并非是佛陀的故事，它讲述了一个人的一生，千万寻常人亦会经历的一生。 意气风发的少年郎，常认为自己是被命运选中的人。抛下过去，随了跌跌撞撞的步伐，找寻心中的声音，追逐名利，经历友情，品尝爱情。不同的是，悉达多一生追求的是生命的圆融统一，看似宏大，确是每个人无法回 避的问题。 黑塞的语言是充满诗性的，正如本书副题“一首印度的诗”，因不得而知的原因，此副题在前人所出版本中都被回避了。为了尽可能表现黑塞的诗意，我们选择从德文直译，尽管我们的译文不能完全实现这种诗意，但其诗的本性与精神显而易见。 本书地位在前人的版本中已被反复强调——亨利·米勒的最爱；影响了包括电台司令在内的许多名人雅士；在六十年代美国掀起过阅读黑塞的热潮，大学生们人手一册等等。 但如书中成为摆渡人的悉达多所述，智慧无法分享，它可以被发现，被体验。 所以倘若你碰巧遇到了这本小书，请细... 《悉达多》并非是佛陀的故事，它讲述了一个人的一生，千万寻常人亦会经历的一生。 意气风发的少年郎，常认为自己是被命运选中的人。抛下过去，随了跌跌撞撞的步伐，找寻心中的声音，追逐名利，经历友情，品尝爱情。不同的是，悉达多一生追求的是生命的圆融统一，看似宏大，确是每个人无法回 避的问题。 黑塞的语言是充满诗性的，正如本书副题“一首印度的诗”，因不得而知的原因，此副题在前人所出版本中都被回避了。为了尽可能表现黑塞的诗意，我们选择从德文直译，尽管我们的译文不能完全实现这种诗意，但其诗的本性与精神显而易见。 本书地位在前人的版本中已被反复强调——亨利·米勒的最爱；影响了包括电台司令在内的许多名人雅士；在六十年代美国掀起过阅读黑塞的热潮，大学生们人手一册等等。 但如书中成为摆渡人的悉达多所述，智慧无法分享，它可以被发现，被体验。 所以倘若你碰巧遇到了这本小书，请细细品味其中的文字。 愿你在读了悉达多的故事后，也能有所感悟，并开始体验属于自己的人生。', '天津人民出版社', 144, '32.00', '9787201112695', '2017-01-01', '2024-11-09 19:36:21.999700', '0', 99, '9.2', '精装', 0, 29, 'Siddhartha', '2024-11-08 22:13:15.025483', 0, 0, 0);
INSERT INTO `b_book` VALUES (16, '上升的一切必将汇合', 'https://img3.doubanio.com/view/subject/s/public/s34921093.jpg', '[美] 弗兰纳里·奥康纳', '仲召明', '在奥康纳生命的最后十年，她以笔为炬，写就这部短篇小说集《上升的一切必将汇合》，照亮美国南方那些怪诞却真实的角落。 种族、信仰、道德、人性……奥康纳用她独有的黑色幽默和强烈讽刺，以美国南方这片充满矛盾的土地为舞台，创造出一个个古怪、偏执、自私或虚伪的人物，导演了一幕幕荒诞离奇的戏码。最终，所有的故事在强烈的情感冲击中戛然而止，落下帷幕。', '北京联合出版公司', 472, '59.00', '9787559676573', '2024-08-01', '2024-11-09 19:36:23.719635', '0', 99, '8.5', '平装', 0, 29, 'Everything That Rises Must Converge', '2024-11-08 22:13:16.543806', 0, 0, 0);
INSERT INTO `b_book` VALUES (17, '小城与不确定性的墙', 'https://img9.doubanio.com/view/subject/s/public/s34975756.jpg', '[日]村上春树', '施小炜', '【内容简介】 暌违六年，村上春树全新长篇小说。 致  每一个身处不确定世界的你。 ———————————————————————— 十七岁时我第一次明白： 人生中重大的事情，大都发生在我们不曾预料的时刻。 比如，你的不告而别。 你留给我的只有谜一样的话语和那段戛然而止的爱恋。 你说，你只是一个影子，真实的你在一座小城之中； 城外是一道有生命的墙，它坚不可摧又变幻莫测。 我只知道，我一定要抵达那座高墙环围的小城。 我要再一次见到你。 哪怕城中等待我的尽是不确定。 ———————————————————————— 【编辑推荐】 🔸 脱胎于40年来从未单独出版的“幻影之作”，耗时3年心血力作。 🔹 71岁村上春树提笔重写17岁不确定的爱恋。 🔸 村上春树45年写作生涯突破自我之作。 🔹 著名译者施小炜倾情翻译，还原村上唯美文学世界。 🔸 文末附作者后记，讲... 【内容简介】 暌违六年，村上春树全新长篇小说。 致  每一个身处不确定世界的你。 ———————————————————————— 十七岁时我第一次明白： 人生中重大的事情，大都发生在我们不曾预料的时刻。 比如，你的不告而别。 你留给我的只有谜一样的话语和那段戛然而止的爱恋。 你说，你只是一个影子，真实的你在一座小城之中； 城外是一道有生命的墙，它坚不可摧又变幻莫测。 我只知道，我一定要抵达那座高墙环围的小城。 我要再一次见到你。 哪怕城中等待我的尽是不确定。 ———————————————————————— 【编辑推荐】 🔸 脱胎于40年来从未单独出版的“幻影之作”，耗时3年心血力作。 🔹 71岁村上春树提笔重写17岁不确定的爱恋。 🔸 村上春树45年写作生涯突破自我之作。 🔹 著名译者施小炜倾情翻译，还原村上唯美文学世界。 🔸 文末附作者后记，讲述成书渊源。 🔹 日文版上市一周紧急加印。接连霸榜日本八大榜单！ 🔸 韩文版网上书城读者评分9.5 , 荣登Best Sale榜单榜首！ 🔹 当不确定性的高墙将世界一分为二，你会选择哪一边？ 🔸 丢失影子的恋人×寡言的黄色潜水艇少年×身着奇装异服的图书馆长 🔹 村上春树，挑战魔幻现实主义新高峰。 🔸 既然命运充满不确定性，不如现在就去做想做的事、见想见的人。 当世界逐渐变得充满不确定性时，人们自然而然地想要逃入一个小小的世界之中，正如这部作品中描述的一样，一座与外界隔绝、被高墙包围的奇妙小城。——村上春树 —————————————————————————— 【媒体推荐】 ◆我认为村上春树深受世界各地许多人的喜爱的重要原因，在于他的故事在某种程度上超越了文化界限。他的故事讲述了人性的核心——孤独和疏远的内核远超文化含义。 ——吉特·玛丽安·汉森（纽卡斯尔大学日本研究讲师） ◆ 村上春树时隔六年的长篇小说《小城与不确定性的墙》是一部充满向心力的作品。 整个故事传达了作者真正想写的东西的力量，从头到尾都充满张力。 可以算作村上春树的代表作之一。 ——重里徹也（文学评论家、圣德大学教授） ◆村上春树对这部作品《小城与不确定性的墙》倾注的热情让我深为感动。 ——泷野雄作（书评家） ◆可以肯定地说，村上春树是独一无二的作家。 ——《文学评论》 ◆没有其他作家能像村上春树一样，能将传统、奇幻和深邃哲思等多种元素融合在一起，编织成如此奇异而迷人的盛宴。 ——《金融时报》 ◆村上春树是一位讲故事的高手，他知道如何让我们深深为其着迷。 ——《星期日泰晤士报》 ◆村上用别具一格的梦幻逻辑编织出一段惊心动魄的旅程，爱书人们一定会乐在其中，享受嵌藏于这段不安之旅中的各种惊喜。 ——《观察者》 ◆村上春树创造了属于21世纪的小说。 ——《纽约时报》 ◆弗朗茨·卡夫卡以来，村上春树比任何一位作家都更加敏锐地捕捉到我们现实世界中真正奇异诡谲之处。村上春树是一位真正的大师。——《旧金山记事报》', '江苏凤凰文艺出版社', 512, '89.90', '9787559489357', '2024-10-01', '2024-11-09 19:36:39.116295', '0', 99, '8.2', '精装', 0, 29, '街とその不確かな壁', '2024-11-08 22:13:18.125800', 0, 0, 0);
INSERT INTO `b_book` VALUES (18, '波兰人', 'https://img1.doubanio.com/view/subject/s/public/s34893600.jpg', '(南非) J.M.库切', '李鹏程', '◎诺奖得主J.M. 库切最新小说《波兰人》中文世界首次出版 ◎一部21世纪罗曼蒂克消亡实录，一部库切版《爱欲之死》 ◎性在泛滥，爱在消亡。在这个时代，爱比性更急迫地需要被解放。 【内容简介】 《波兰人》是库切近半个世纪漫长创作生涯以来的小说新作，以简朴隽永的笔调，精准捕捉爱欲消弭的时代症候。年老的波兰人在巴塞罗那邂逅了女人，她惊讶于这个时代竟然还存在神圣爱情的信徒。他像是来自过去的幽灵，是一个逝去时代的遗痕。他爱上了她，她只觉得他可怜。 【编辑推荐】 ★诺奖得主J.M. 库切最新力作中文世界首次出版。 库切是当代世界文坛重要作家之一，首位两度摘得英语文学桂冠布克奖的作家，2003年诺贝尔文学奖得主。《波兰人》作为库切的小说新作，备受全球读者的期待。 ★一部21世纪罗曼蒂克消亡实录，一部库切版《爱欲之死》。 《波兰人》用文学的方式，聚焦人类最当下的爱欲... ◎诺奖得主J.M. 库切最新小说《波兰人》中文世界首次出版 ◎一部21世纪罗曼蒂克消亡实录，一部库切版《爱欲之死》 ◎性在泛滥，爱在消亡。在这个时代，爱比性更急迫地需要被解放。 【内容简介】 《波兰人》是库切近半个世纪漫长创作生涯以来的小说新作，以简朴隽永的笔调，精准捕捉爱欲消弭的时代症候。年老的波兰人在巴塞罗那邂逅了女人，她惊讶于这个时代竟然还存在神圣爱情的信徒。他像是来自过去的幽灵，是一个逝去时代的遗痕。他爱上了她，她只觉得他可怜。 【编辑推荐】 ★诺奖得主J.M. 库切最新力作中文世界首次出版。 库切是当代世界文坛重要作家之一，首位两度摘得英语文学桂冠布克奖的作家，2003年诺贝尔文学奖得主。《波兰人》作为库切的小说新作，备受全球读者的期待。 ★一部21世纪罗曼蒂克消亡实录，一部库切版《爱欲之死》。 《波兰人》用文学的方式，聚焦人类最当下的爱欲困境，精准捕捉爱欲消弭的时代症候：性在泛滥，爱在消亡。在这个时代，爱比性更急迫地需要被解放。 ★全球顶尖文学媒体争相报道，好评如潮。 《波兰人》一经出版，便引发《纽约时报》《出版人周刊》《卫报》《洛杉矶时报》《伦敦书评》等全球顶尖文学媒体的报道和讨论。 ★资深外国文学译者李鹏程倾心之作。 李鹏程，1983年出生于山西阳泉，2007年毕业于中国人民大学，译有保罗·奥斯特《4321》、王鸥行《大地上我们转瞬即逝的绚烂》等作品。 ★特邀作家、翻译家、上海译文出版社副总编辑黄昱宁撰写精彩长文导读《垂死的浪漫》。 从世界经典文学中的爱欲叙事出发，勾勒二十一世纪的爱欲困境。 ★知名设计师艾藤整体操刀装帧设计，内外封使用激光浮雕起鼓工艺。 32开125*185mm小开本，通勤出游，轻巧便携。内文采用80g顺纹胶版纸，翻阅柔软，手感舒适。 【媒体评价】 过了某个年纪，每一次触及床榻的爱欲尝试，都是在直面人生的赤裸与恐惧。——《纽约时报》 爱意味着什么？库切想让我们思考这个问题。而记忆——当我们知道它不会持续时，它能提供什么慰藉？……在这个动人的故事中，库切提醒我们面对一些我们不愿记得的事情：一切都会消逝。——《洛杉矶时报》 《波兰人》文字简朴但始终深刻。库切描绘人类境况各种变化的能力仍然是大师级的。——《出版人周刊》 《波兰人》表明，83岁的库切才华并无丝毫减退。——《卫报》 《波兰人》句句清晰，字字优美，完全可以靠在壁炉边从头到尾一口气读完。——《伦敦书评》', '浙江人民出版社', 184, '56.00', '9787213113901', '2024-08-01', '2024-11-09 19:36:37.499522', '0', 99, '8.3', '平装', 1, 29, 'The Pole', '2024-11-08 22:13:19.553228', 0, -1, -1);
INSERT INTO `b_book` VALUES (19, '燕食记', 'https://img1.doubanio.com/view/subject/s/public/s34273798.jpg', '葛亮', '未知', '----------------------------------------------- 名家推荐 人间味是食知味，人间事终究是调鼎鼐、烹小鲜。《燕食记》里，时间流逝、人世翻新、众人熙来攘往，如梦华录、如上河图，这盛大人间中，舌上之味、耳边之声，最易消散，最难留住，也最具根性，最堪安居。——李敬泽 《燕食记》从岭南饮食风物着眼，写出大湾区世纪沧桑，较《北鸢》多了人间烟火气息，结构经营更为沉稳绵密。其间涉及多重掌故，在在可见作家的考证与想象功夫。出虚入实，叹为观止。——王德威 在葛亮笔下，岭南是深刻的，且多了一重历史维度，内寄深情；读他的新作《燕食记》，借饮食勾勒出百年粤港史，因真实又增一层深刻，令我这个香港人觉得熟悉亲切、又新鲜。 ——许鞍华 《燕食记》的好看与动人，在于以纯熟文字，如此贴切地勾勒出中国南方的袤袤历史版图。葛亮对食物的理解，... ----------------------------------------------- 名家推荐 人间味是食知味，人间事终究是调鼎鼐、烹小鲜。《燕食记》里，时间流逝、人世翻新、众人熙来攘往，如梦华录、如上河图，这盛大人间中，舌上之味、耳边之声，最易消散，最难留住，也最具根性，最堪安居。——李敬泽 《燕食记》从岭南饮食风物着眼，写出大湾区世纪沧桑，较《北鸢》多了人间烟火气息，结构经营更为沉稳绵密。其间涉及多重掌故，在在可见作家的考证与想象功夫。出虚入实，叹为观止。——王德威 在葛亮笔下，岭南是深刻的，且多了一重历史维度，内寄深情；读他的新作《燕食记》，借饮食勾勒出百年粤港史，因真实又增一层深刻，令我这个香港人觉得熟悉亲切、又新鲜。 ——许鞍华 《燕食记》的好看与动人，在于以纯熟文字，如此贴切地勾勒出中国南方的袤袤历史版图。葛亮对食物的理解，更超越了我的想象。字里行间，如文火慢煮。落笔包容温暖，又深沉有力。时代在鼎鼐中更迭，既是日常盛宴，也是冷暖人间。——陈晓卿 ---------------------------------------------- 内容简介 岭南百年老字号同钦楼盛传将在年底结业。一帮老伙计力挽狂澜，盘下店面。同钦楼已退休的主厨荣贻生师傅，道出个中缘由……小说沿饮食文化的发展脉络，以师徒二人的传奇身世及薪火存续，见证辛亥革命以来，粤港经历的时代风云兴变。笔触深入近代岭南的聚散流徙，从商贾政客、革命志士、钟鼎之族、行会巨头等传奇人物到市井民生，生动描摹出中国近百年社会变迁、世态人情的雄浑画卷。', '人民文学出版社', 536, '78', '9787020172382', '2022-08-01', '2024-11-09 19:31:52.371856', '0', 99, '8.6', '精装', 1, 2, '未知', '2024-11-08 22:13:21.256505', 0, 1, 1);
INSERT INTO `b_book` VALUES (20, '蓦然回首', 'https://img9.doubanio.com/view/subject/s/public/s34283794.jpg', '[日本] 藤本树', '吴曦', '天才漫画家藤本树（《电锯人》《炎拳》作者） 用薄薄一本，带来温柔一击。 ◎首刷限量赠品：透卡1张 ◎常规赠品：四格书签2张、明信片1张 ------------------------------------------------ ★内容介绍 一个是对自身才能十分自信的藤野，一个是“家里蹲选手”京本，两个少女相识了，她们决定联手画漫画。岁月流逝，有喜有悲，但她们仍在彼此身后，或许回头就又能重逢……', '新星出版社', 144, '30.00', '9787513348362', '2022-08-01', '2024-11-09 19:32:01.690783', '0', 99, '8.7', '平装', 0, 44, 'ルックバック', '2024-11-08 22:49:30.633839', 0, 0, 0);
INSERT INTO `b_book` VALUES (21, '回忆爱玛侬', 'https://img1.doubanio.com/view/subject/s/public/s34925368.jpg', '[日] 梶尾真治 著', '烨伊', '本作品是日本知名科幻小说作家梶尾真治与漫画家鹤田谦二携手创作的日本漫画作品，受众为25岁以上的成年大众读者。 故事讲述在一次失意的旅行中，“我”在船上邂逅了一位自称“爱玛依”的女性。我们以科幻话题为契机聊了整夜。聊到兴起时，爱玛侬告诉“我”，她拥有地球三十亿年的记忆。那 份记忆从地球上第一次出现生命时起，一直在她的血脉中流传至今…… 故事内容以充满独特构思的科幻设定为根基，实则深刻探讨了记忆对人生而言的重要性，具有很深的文学性与哲学思考空间。 编辑推荐 适读人群 ：20岁以上大众读者 日本星云奖5度获奖小说家×日本星云奖4度获奖漫画家 经典名作无删减完整复活 厚质棉纸还原封面初始文件色彩 内封双面印刷，与外封衔接组成2套变换图案 随书收录两位作者创作手记 还原深厚科幻浪漫文学色彩 32开还原原版全部12页内文彩插 无删减保留漫画大师鹤田谦二细腻笔触 ... 本作品是日本知名科幻小说作家梶尾真治与漫画家鹤田谦二携手创作的日本漫画作品，受众为25岁以上的成年大众读者。 故事讲述在一次失意的旅行中，“我”在船上邂逅了一位自称“爱玛依”的女性。我们以科幻话题为契机聊了整夜。聊到兴起时，爱玛侬告诉“我”，她拥有地球三十亿年的记忆。那 份记忆从地球上第一次出现生命时起，一直在她的血脉中流传至今…… 故事内容以充满独特构思的科幻设定为根基，实则深刻探讨了记忆对人生而言的重要性，具有很深的文学性与哲学思考空间。 编辑推荐 适读人群 ：20岁以上大众读者 日本星云奖5度获奖小说家×日本星云奖4度获奖漫画家 经典名作无删减完整复活 厚质棉纸还原封面初始文件色彩 内封双面印刷，与外封衔接组成2套变换图案 随书收录两位作者创作手记 还原深厚科幻浪漫文学色彩 32开还原原版全部12页内文彩插 无删减保留漫画大师鹤田谦二细腻笔触 首刷限定：“爱玛侬的旅行”PVC透卡 随书附赠：①“爱玛侬的星空”银面反光星空卡 ②爱玛侬烫印签名名片 内容简介 不论是在一起几小时，还是几十年，对她来说都只是一瞬间。 一九六七年，双子座计划告一段落，阿波罗登月计划尚在筹备，阿波罗一号飞船发生了宇宙探索史上第一起死亡事故，人类离月亮还很遥远的那一年。 还是个学生的我，遇到了爱玛侬。', '中信出版社', 0, '42.8', '9787521766752', '2024-08-01', '2024-11-08 23:44:36.738162', '0', 99, '8', '平装', 0, 42, 'おもいでエマノン', '2024-11-08 22:49:32.176335', 0, 0, 0);
INSERT INTO `b_book` VALUES (22, '镖人：卷十二', 'https://img3.doubanio.com/view/subject/s/public/s34935122.jpg', '许先哲', '未知', '编辑推荐： ◆轰动日本的中国漫画《镖人》第12册！ ◆脱口秀大师李诞、实力演员万茜、知名作家马伯庸、知名动画导演田晓鹏鼎力推荐！ ◆3次登上日本央视NHK电视台新闻报道节目，被日本媒体盛赞为“太阳系级别的中国动漫精品”！ ◆日本漫画大师高桥留美子（代表作《犬夜叉》）、藤泽亨（代表作《麻辣教师GTO》），双叶社（代表作《蜡笔小新》）前主编栗原一二，小学馆（代表作《名侦探柯南》）前主编御木基宏，知名动画导演新房昭之（代表作《魔法少女小圆》），纷纷激赏不已！ ◆分镜惊艳，打戏酣畅淋漓：本书以黑白水墨风格重新塑造硬派武侠漫画，大场景分镜张力十足，令人震撼，小分镜细节拉满，观感极佳。打戏内容流畅，让人肾上腺素飙升热血沸腾。 ◆扎根历史，考据严谨：在艺术风格上非常注重细节和真实性，所有的大事件有其史料支撑。也从不放过一丝细节上的考究，从兵器的设计到人物服饰的参考... 编辑推荐： ◆轰动日本的中国漫画《镖人》第12册！ ◆脱口秀大师李诞、实力演员万茜、知名作家马伯庸、知名动画导演田晓鹏鼎力推荐！ ◆3次登上日本央视NHK电视台新闻报道节目，被日本媒体盛赞为“太阳系级别的中国动漫精品”！ ◆日本漫画大师高桥留美子（代表作《犬夜叉》）、藤泽亨（代表作《麻辣教师GTO》），双叶社（代表作《蜡笔小新》）前主编栗原一二，小学馆（代表作《名侦探柯南》）前主编御木基宏，知名动画导演新房昭之（代表作《魔法少女小圆》），纷纷激赏不已！ ◆分镜惊艳，打戏酣畅淋漓：本书以黑白水墨风格重新塑造硬派武侠漫画，大场景分镜张力十足，令人震撼，小分镜细节拉满，观感极佳。打戏内容流畅，让人肾上腺素飙升热血沸腾。 ◆扎根历史，考据严谨：在艺术风格上非常注重细节和真实性，所有的大事件有其史料支撑。也从不放过一丝细节上的考究，从兵器的设计到人物服饰的参考，从角色的说话习惯到各类石碑石刻，都体现了作者对历史文化的深入研究。 ◆同名动画腾讯热播：同名动画荣获中国动漫金龙奖最佳系列动画银奖。同名电影由“天下第一武指”袁和平亲自导演，知名演员吴京参演，同期筹备中。 ◆信念越强，力量越强！ 内容简介： 大业三年（公元607年），隋王朝在隋炀帝杨广的残暴统治下民不聊生。 建康城外，刀马和谛听所属的十三骁骑无往不利，入城生擒了陈后主这个亡国之君。待到班师回朝，一片太平祥和之下暗流涌动，昔日并肩作战的刀马和谛听经历了何事，导致两人的理想背道而驰，直至闹到如今这般不死不休的地步…… 媒体评论： ◆太阳系级别的中国动漫精品！——日本NHK综合频道「これでわかった！世界のいま」 ◆酣畅淋漓的泼墨写意，豪放苍劲的传奇故事。——马伯庸（知名作家，代表作《长安十二时辰》） ◆一直很想看到一个霸气的古代东方故事，不能造作，要扎根在历史中，生长出粗糙真实的颗粒感；不能矫情，要寄情于江湖间，延展出跌宕起伏的大格局。感谢《镖人》实现了这一切。——田晓鹏（知名动画导演，代表作《大圣归来》） ◆仿佛看了一场电影，让人不禁倒吸一口冷气。许先生的天才可见一斑。——栗原一二（日本知名漫画编辑，《蜡笔小新》前主编） ◆魅力非凡的角色，风驰电掣的剧情，趣味横生无可挑剔。——高桥留美子（日本知名漫画家，代表作《犬夜叉》） ◆气势磅礴的描写让人不忍释卷，一读到底。——藤泽亨（日本知名漫画家，代表作《麻辣教师GTO》） ◆我喜欢这犀利的画面！我喜欢这动人的故事！我喜欢这剧画的风格！好想读到后续的内容啊！——新房昭之（日本知名动画导演，代表作《魔法少女小圆》）', '北京联合出版公司', 0, '59.90', '9787559677563', '2024-08-01', '2024-11-08 23:44:37.918390', '0', 99, '8', '平装', 0, 42, '未知', '2024-11-08 22:49:33.582810', 0, 0, 0);
INSERT INTO `b_book` VALUES (23, '再见绘梨', 'https://img9.doubanio.com/view/subject/s/public/s34367076.jpg', '[日] 藤本树', '吴曦', '📷只要能记起，就不怕会忘记。 以电影收藏回忆，以虚构化解伤痛的青春物语。 在悲伤时，来一抹奇幻色彩吧！ ——▶▶▶▶▶‖◀◀◀◀◀—— 📱“请你拍到我死的那一刻为止……” 受病重的母亲请求，优太开始拍摄关于她的电影。 可随着母亲的去世与电影的失败， 优太也失去了人生的希望。 在偶遇的神秘少女绘梨的帮助下， 优太终于重拾了对电影的热情， 却不知绘梨其实怀抱着一个秘密…… 💿现实与虚构交织，情感在至深处炸裂。 将真相丢入回收站，把爱意留在电影中。 ——▶▶▶▶▶‖◀◀◀◀◀—— ✉如果回忆注定有残缺， 我希望留下你最美的样子。', '中信出版社', 208, '35.00', '9787521748239', '2023-01-01', '2024-11-08 23:44:39.553088', '0', 98, '8', '平装', 3, 42, 'さよなら絵梨', '2024-11-08 22:53:02.256496', 0, 1, 1);
INSERT INTO `b_book` VALUES (24, '恐龙疗法1：做自己就好', 'https://img3.doubanio.com/view/subject/s/public/s34926547.jpg', '[英国]詹姆斯·斯图尔特 著', '简里里', '🦖编辑推荐 一群小恐龙，试图解决一些“大问题”！ 不想长大……当个幼稚鬼也挺好。 遇到困难……逃避可耻但有用。 想太多……不如先睡个小觉。 没热情……发疯一下提提神。 易疲倦……偶尔躺平有何不可？ 最重要的是， 做自己喜欢的事， 和自己喜欢的一切在一起！ 🦖 “恐龙疗法”系列是席卷全球的超级畅销书 超人气治愈恐龙漫画，百万粉丝催更！ 读者擦泪热评—— “感觉像被狠狠拥抱” “我想这只恐龙可能就是我” “我收到过的樶好的礼物” 便携称手的精装小开本，180度丝滑平摊 全彩印制，细节呈现 🦖 “这是一本很可爱的书，像个小被窝。希望你也喜欢。” ——心理学家，“简单心理”创始人兼CEO 简里里 🦖内容介绍 “恐龙疗法”是一套治愈系绘本读物，通过小恐龙的对话关注与心理健康问题的斗争，在英国上市后立刻登顶畅销榜榜首，随后风靡全球！ 《恐龙疗法1:做自己就好》从... 🦖编辑推荐 一群小恐龙，试图解决一些“大问题”！ 不想长大……当个幼稚鬼也挺好。 遇到困难……逃避可耻但有用。 想太多……不如先睡个小觉。 没热情……发疯一下提提神。 易疲倦……偶尔躺平有何不可？ 最重要的是， 做自己喜欢的事， 和自己喜欢的一切在一起！ 🦖 “恐龙疗法”系列是席卷全球的超级畅销书 超人气治愈恐龙漫画，百万粉丝催更！ 读者擦泪热评—— “感觉像被狠狠拥抱” “我想这只恐龙可能就是我” “我收到过的樶好的礼物” 便携称手的精装小开本，180度丝滑平摊 全彩印制，细节呈现 🦖 “这是一本很可爱的书，像个小被窝。希望你也喜欢。” ——心理学家，“简单心理”创始人兼CEO 简里里 🦖内容介绍 “恐龙疗法”是一套治愈系绘本读物，通过小恐龙的对话关注与心理健康问题的斗争，在英国上市后立刻登顶畅销榜榜首，随后风靡全球！ 《恐龙疗法1:做自己就好》从成长、抑郁、快乐、人际关系、压力、过度思考与焦虑、成功与失败等多个维度，剖析现代生活中可能遇到的心理困境。生活有时令人迷茫、挫败，但有小恐龙陪你一同面对，偶尔逃避、偶尔发疯，睡个小觉做回自己！ 每年都有更多的人面临心理健康问题。作者希望以坦率和开放的方式谈论孤独、抑郁、焦虑等现代人的心理问题，帮助我们建立与他人的正向关系，学会松弛地享受当下、享受生活，寻找生活的积极意义。', '译林出版社', 138, '49.00', '9787575302241', '2024-08-01', '2024-11-09 19:34:09.843418', '0', 99, '8.2', '精装', 0, 41, 'Dinosaur Therapy', '2024-11-08 22:53:03.640157', 0, 0, 0);
INSERT INTO `b_book` VALUES (25, '养狗 然后……养猫', 'https://img1.doubanio.com/view/subject/s/public/s34899669.jpg', '[日] 谷口治郎', '[日] 吉井忍', '● 日本小学馆漫画奖评审特别奖 养宠物其实很辛苦，毋宁说“和宠物生活在一起”才比较合适。与猫、狗朝夕同处的日子，从初会、成长、繁育到不可避免的离别......相伴的光阴与喜悲，尽镌于此。', '新星出版社', 154, '36.00', '9787513341516', '2024-06-01', '2024-11-08 23:44:42.205987', '0', 99, '9', '平装', 0, 42, '犬を飼う そして…猫を飼う', '2024-11-08 22:53:05.138810', 0, 0, 0);
INSERT INTO `b_book` VALUES (26, '父之历', 'https://img3.doubanio.com/view/subject/s/public/s34899663.jpg', '[日] 谷口治郎', '[日] 吉井忍', '● 法国安古兰国际漫画节全法基督教会漫画评审团奖 ● 西班牙巴塞罗那国际漫展读者票选最佳漫画 每当回想起故乡，总是勾起那一幕情景——初春的午后，年幼的阳一在父亲经营的理发店地板上坐着玩耍，暖和而舒适。父亲的葬礼让离乡十多年的阳一重回故里。守灵夜，吊唁亲友闲谈间意外揭开了父亲的另一面……', '新星出版社', 280, '56.00', '9787513341509', '2024-06-01', '2024-11-08 23:44:43.659411', '0', 99, '9', '平装', 0, 42, '父の暦', '2024-11-08 22:53:06.914812', 0, 0, 0);
INSERT INTO `b_book` VALUES (27, '九井谅子涂鸦集：白日梦时间', 'https://img9.doubanio.com/view/subject/s/public/s34893846.jpg', '(日)九井谅子 编绘', '刘晨', '欢迎来到漫画家九井谅子的白日梦世界！在这里，你能看到各类“脑洞大开”的奇幻插画、漫画。若你是《迷宫饭》的粉丝，那么更能欣赏到各位角色在本篇之外的新奇幻想小故事！', '新星出版社', 0, '89.00', '9787513356756', '2024-07-01', '2024-11-08 23:44:44.900552', '0', 99, '9', '平装', 0, 42, '未知', '2024-11-08 22:53:08.509391', 0, 0, 0);
INSERT INTO `b_book` VALUES (28, '遥远的小镇', 'https://img9.doubanio.com/view/subject/s/public/s34899664.jpg', '[日] 谷口治郎', '[日] 吉井忍', '● 日本文化厅媒体艺术祭漫画部门优秀奖 ● 法国安古兰国际漫画节最佳剧本奖 ● 意大利卢卡国际漫画节最佳长篇漫画奖 ● 德国国际漫画节最佳漫画奖、年度最佳漫画 ● 西班牙巴塞罗那国际漫展最佳外国作品奖 少时经历父亲弃家失踪，如今自己的家庭生活竟也止如死水。一次回乡扫墓，我于恍惚间穿越至14岁的少年时代，以半百心智重新经历中学生活。这次我誓要厘清真相，挽回家庭，而那一天，就快要到了……', '新星出版社', 416, '76.00', '9787513341493', '2024-06-01', '2024-11-08 23:44:46.207453', '0', 99, '8', '平装', 0, 42, '遥かな町へ', '2024-11-08 22:53:10.619937', 0, 0, 0);
INSERT INTO `b_book` VALUES (29, '玫瑰的名字', 'https://img9.doubanio.com/view/subject/s/public/s34926815.jpg', '[意] 翁贝托·埃科', '陈英', '古典推理神作 「当代达•芬奇」翁贝托•埃科轰动世界代表作 意大利漫画家米洛•马纳拉绚丽视觉呈现 再现中世纪知识与权力的迷宫 《玫瑰的名字》是翁贝托•埃科的代表作，被誉为“密码型推理小说”的始祖，在推理文学大国日本甚至被选为“这本推理小说了不起”大奖创设20年以来总评榜第 一名。故事发生在中世纪的一座修道院，修士威廉与弟子阿德索来到修道院，为皇帝与教皇的调解做准备。二人刚一到达，修道院就发生了命案。精于推理的威廉受院长委托着手调查，但命案并没有停止，每天都有一个人死于非命…… 《玫瑰的名字》图像小说将分两册出版，由意大利著名漫画家米洛·马纳拉操刀，通过绮丽的画风和对小说场景的忠实再现，为在《玫瑰的名字》门外徘徊的读者打造了一条捷径。它极大满足了熟悉《玫瑰的名字》的读者对于故事背景和各种或现实或梦幻的场景的想象，也将帮助没能读完小说的读者轻松地享受这部杰... 古典推理神作 「当代达•芬奇」翁贝托•埃科轰动世界代表作 意大利漫画家米洛•马纳拉绚丽视觉呈现 再现中世纪知识与权力的迷宫 《玫瑰的名字》是翁贝托•埃科的代表作，被誉为“密码型推理小说”的始祖，在推理文学大国日本甚至被选为“这本推理小说了不起”大奖创设20年以来总评榜第 一名。故事发生在中世纪的一座修道院，修士威廉与弟子阿德索来到修道院，为皇帝与教皇的调解做准备。二人刚一到达，修道院就发生了命案。精于推理的威廉受院长委托着手调查，但命案并没有停止，每天都有一个人死于非命…… 《玫瑰的名字》图像小说将分两册出版，由意大利著名漫画家米洛·马纳拉操刀，通过绮丽的画风和对小说场景的忠实再现，为在《玫瑰的名字》门外徘徊的读者打造了一条捷径。它极大满足了熟悉《玫瑰的名字》的读者对于故事背景和各种或现实或梦幻的场景的想象，也将帮助没能读完小说的读者轻松地享受这部杰作。 【编辑推荐】： 1.符号学大师 × 漫画大师：一次完美的视觉诠释 《玫瑰的名字》由意大利漫画大师米洛•马纳拉操刀，首次改编为图像小说，忠实地保留了原著的精髓，将埃科的小说世界以“第九艺术”的鲜明视觉元素呈现，赋予了这部作品全新的张力！ 2，连环谋杀案 × 中世纪文化：再现知识与权力的迷宫 埃科的《玫瑰的名字》通过一起连环谋杀案串联起了中世纪哲学与文化，原著的高深莫测令众多读者浅尝辄止。马纳拉的这次改编，用简练的文字与生动的配图为读者揭开了这部通往中世纪文化殿堂的巨作：宗教与历史，知识与权力，阴谋与背叛，都在这部细腻入微的图像小说中得以淋漓尽致地展现！ 3，三种绘画风格 × 不同剧情线，一个我们从未见过的中世纪 米洛•马纳拉的画笔犀利入微，在图像小说中运用了三种不同的绘画风格——画家最擅长的自然绘画风格，中世纪晚期和文艺复兴时期的插图风格，以及中世纪手抄本装饰画荒诞奇趣的风格，巧妙地呈现出原著的多条剧情线。三种风格的交织，让我们看到一个不同于惯常想象的中世纪：那不是一个黑暗和阴沉的时代，而是由近乎狂热的想象力主宰！ 4，中文版首次推出，由“那不勒斯四部曲”译者陈英女士倾情翻译。', '上海译文出版社', 72, '88.00', '9787532796434', '2024-08-20', '2024-11-08 23:45:17.671914', '0', 99, '8', '精装', 0, 42, 'Il nome della Rosa', '2024-11-08 22:53:12.698214', 0, 0, 0);
INSERT INTO `b_book` VALUES (30, '迷宮飯(01)', 'https://img9.doubanio.com/view/subject/s/public/s28309786.jpg', '九井諒子', '望', '在迷宮中冒險肚子餓了又沒帶糧食怎麼辦？ 很簡單，只要把魔物拿來料理就好了！ 萊歐斯一行人終於進到迷宮深處，卻遭到巨龍襲擊，失去了金錢與糧食。 決心再次挑戰的他們若不解決糧食問題，半路便會餓死。 此時，萊歐斯提出「吃魔物」的想法。 不止史萊姆、寶箱怪，甚至連龍都打算吃下肚!? 於是，一行人便展開了一邊冒險一邊料理魔物的……美食探險!? 冒險家們是否能平安抵達終點，還是半路就會吃壞肚子呢？ 九井諒子首次長篇連載，「冒險×美食」的新奇幻風格，在此開幕！ 本書特色： 1.人氣新銳漫畫家久井諒子「冒險×美食」新奇幻長篇故事！ 2.日本銷量已突破60萬本！ 3.AMAZON近300名讀者滿分五顆星高評價，長時間占據銷售第一名寶座！ 4.首刷附贈青文獨家特製貼紙!! 5.第２集預定年底出版，九井諒子老師的其他作品也將於近日出版，敬請期待！', '迷宮飯', 192, 'NT$130', '9788016014976', '2015-10-16', '2024-11-08 23:45:19.728075', '0', 99, '9', '平装', 0, 42, 'ダンジョン飯', '2024-11-08 22:53:14.402737', 0, 0, 0);
INSERT INTO `b_book` VALUES (31, '游鸭', 'https://img9.doubanio.com/view/subject/s/public/s34902125.jpg', '[加]凯特·比顿', '李雅欣', '“我们只知道，若想拥有更美好的未来，我们必须背井离乡。” 仿若懵懂游鸭的凯特离开家乡小镇，于油砂矿井男女比例五十比一的严酷生活中，找寻属于她的真实。身为女性的错位感与身处异乡的孤独使凯特无所适从，而她遭受的一切更促使她不断进行思考，这里发生的一切是出于人们的本性吗？这里存在的温暖与心碎是相悖的吗？ 本书是具有回忆录性质的非虚构图像小说，讲述作者大学毕业后为了偿还学生贷款，背井离乡前往遥远的石油工业重镇打工生活的经历。起初，来到这里的人们都把此地看作发家致富的风水宝地。然而产业无情的更迭困住了所有来到这里的人。就像他们所开采出的石油困住一批又一批野鸭。', '中信出版集团', 436, '118', '9787521764369', '2024-07-01', '2024-11-08 23:45:21.434409', '0', 99, '8', '精装', 0, 42, 'Ducks: Two Years in the Oil Sands', '2024-11-08 22:53:16.078701', 0, 0, 0);
INSERT INTO `b_book` VALUES (32, '恐龙疗法2：我思故我在', 'https://img3.doubanio.com/view/subject/s/public/s34925762.jpg', '[英] 詹姆斯·斯图尔特 著', '简里里', '🦖编辑推荐 你可能想不到，在这个世界上，最懂你的，或许是恐龙 失眠、焦虑、自我否定、不想工作、浑身无力…… 看看恐龙的生存哲学： “摆烂”有理，“躺平”无罪；崩溃是人生常态；你无需跳出舒适区，因为人生没有舒适区； 生活太难了，但总有些可爱又美好的东西会出现在我们身边——比如小狗，比如朋友！ 一针见血直指生活真相，又温暖窝心，来自地球前霸主的生存箴言。 🦖恐龙疗法，风靡全球，超治愈、超人气，百万粉丝催更！ 读者含泪热评—— “感觉像被狠狠拥抱” “我想这只恐龙可能就是我” “我收到过的最好的礼物” 🦖便携称手的精装小开本，180度丝滑平摊，全彩印制，细节呈现 🦖“这是一本很可爱的书，像个小被窝。希望你也喜欢。” ——心理学家，“简单心理”创始人兼CEO 简里里 🦖内容简介 “恐龙疗法”是一套治愈系绘本读物，通过小恐龙的对话关注与心理健康问题的斗争，在英... 🦖编辑推荐 你可能想不到，在这个世界上，最懂你的，或许是恐龙 失眠、焦虑、自我否定、不想工作、浑身无力…… 看看恐龙的生存哲学： “摆烂”有理，“躺平”无罪；崩溃是人生常态；你无需跳出舒适区，因为人生没有舒适区； 生活太难了，但总有些可爱又美好的东西会出现在我们身边——比如小狗，比如朋友！ 一针见血直指生活真相，又温暖窝心，来自地球前霸主的生存箴言。 🦖恐龙疗法，风靡全球，超治愈、超人气，百万粉丝催更！ 读者含泪热评—— “感觉像被狠狠拥抱” “我想这只恐龙可能就是我” “我收到过的最好的礼物” 🦖便携称手的精装小开本，180度丝滑平摊，全彩印制，细节呈现 🦖“这是一本很可爱的书，像个小被窝。希望你也喜欢。” ——心理学家，“简单心理”创始人兼CEO 简里里 🦖内容简介 “恐龙疗法”是一套治愈系绘本读物，通过小恐龙的对话关注与心理健康问题的斗争，在英国上市后立刻登顶畅销榜榜首，随后风靡全球！ 《恐龙疗法2：我思故我在》主要围绕着认识自我与生活展开，通过简单的恐龙对话，演绎现代生活中我们会遇到的种种精神、生活困境。作者希望我们能将开发的心态视为生活原则，烦躁和沮丧，也是生活的一部分。 但是小恐龙告诉我们，如果做不到也没关系，毕竟那么容易做到就不是原则啦~', '译林出版社', 138, '49.00', '9787575302258', '2024-08-01', '2024-11-08 23:45:22.918997', '0', 99, '8', '精装', 0, 42, 'Dinosaur Philosophy', '2024-11-08 22:53:17.618743', 0, 0, 0);
INSERT INTO `b_book` VALUES (33, '迷宫', 'https://img9.doubanio.com/view/subject/s/public/s34930145.jpg', '[法] 本·阿尔冈', '黄金狗', '起床！干活！搞奶酪！日复一日！一只受困的老鼠开始思考： 活着就得搞奶酪？一切都没有意义怎么办？他人即地狱是啥意思？ 在漫画中历险，轻松读懂萨特和存在主义 “不存在正确的路或错误的路。只有你选择的路。” 鼠生艰难，拥抱本真，“社畜”也能打开自由之门 ———————————————————— 刘擎、陈廖宇、鸟鸟、余明锋、史秀雄 《图书馆杂志》《出版人周刊》《漫画期刊》—— 共同推荐 入围2021年艾斯纳奖最佳漫画 ———————————————————— 一只小老鼠被抛到迷宫中，它每日醒来，要做的就是追逐奶酪。追逐奶酪就是它的目的与意义所在。有一天，它醒过来开始思考，为什么必须追逐奶酪？除了追逐奶酪，它还有什么别的选择？它开始追问什么是生，什么是死，追问他人的意义、生命的意义……最终，它以一个非常存在主义的方式走出了迷宫：它画了一道门，为自己创造了一个迷... 起床！干活！搞奶酪！日复一日！一只受困的老鼠开始思考： 活着就得搞奶酪？一切都没有意义怎么办？他人即地狱是啥意思？ 在漫画中历险，轻松读懂萨特和存在主义 “不存在正确的路或错误的路。只有你选择的路。” 鼠生艰难，拥抱本真，“社畜”也能打开自由之门 ———————————————————— 刘擎、陈廖宇、鸟鸟、余明锋、史秀雄 《图书馆杂志》《出版人周刊》《漫画期刊》—— 共同推荐 入围2021年艾斯纳奖最佳漫画 ———————————————————— 一只小老鼠被抛到迷宫中，它每日醒来，要做的就是追逐奶酪。追逐奶酪就是它的目的与意义所在。有一天，它醒过来开始思考，为什么必须追逐奶酪？除了追逐奶酪，它还有什么别的选择？它开始追问什么是生，什么是死，追问他人的意义、生命的意义……最终，它以一个非常存在主义的方式走出了迷宫：它画了一道门，为自己创造了一个迷宫出口。 本书以一只喜欢奶酪的老鼠在迷宫里的视角，通俗地阐释了萨特的重要思想，尤其是《存在与虚无》中的重要思想，比如何为“存在决定本质”，“意识是对对象的意识（意向性）”，何为自由、责任、与他人的关系，何为人生的意义等话题。 ———————————————————— 本·阿尔冈的这本《迷宫》是一条引人入胜的进入萨特那复杂、深刻又具有高度相关性的思想的捷径，可以帮助不同年龄段的读者学习存在主义知识，并激发他们阅读更多相关著作，甚至可能去探索广博的《存在与虚无》本身。那些准备踏上这富有挑战性的精神之旅的人，将从阿尔冈精妙的、令人难忘的呈现萨特思想精髓的图画和文字中受益良多。 ——加里·考克斯（哲学家，伯明翰大学研究员） 这的确是个不错的想法，萨特本人也会满心欢喜地认同。……幸好有阿尔冈，我们现在有了一部以图像的方式传达存在主义的作品，且实现得非常好。毫无疑问，读者会开始反思自己在世界上的存在方式以及他们的追逐行为，无论他们专注的是奶酪还是别的客体。也希望他们将质疑那些自欺的追求，拥抱本真性以及绝对自由和责任。至少，我们可以开始提问。 ——克里斯蒂娜·戴格尔（布鲁克大学哲学教授） 这本书用特别轻松诙谐的方式呈现了萨特和存在主义，在会心一笑之余，我也频频停下来思考。存在主义哲学在我个人的精神生活以及心理咨询工作里，都扮演着非常重要的角色，因为它足够坦诚，对个体的智慧也充满信心。存在主义最喜欢讨论选择、自由、责任和意义等议题，而在这些议题普遍成为问题的社会里，这本书无疑可以让更多人在内心构建起一些泛着微光的灯塔，让我们的心灵多一些力量。 ——史秀雄（心理咨询师，播客“史蒂夫说”主播）', '上海人民出版社', 176, '79.00', '9787208187481', '2024-08-31', '2024-11-08 23:45:24.406953', '0', 99, '8', '精装', 0, 42, 'The Labyrinth: An Existential Odyssey with Jean-Paul Sartre', '2024-11-08 22:53:19.394726', 0, 0, 0);
INSERT INTO `b_book` VALUES (34, '半小时漫画中国地理4：丝绸之路篇', 'https://img2.doubanio.com/view/subject/s/public/s34951281.jpg', '陈磊·半小时漫画团队', '未知', '陈磊（混子哥）领衔的半小时漫画团队通过诙谐的语言和手绘漫画的形式，轻轻松松地就把中国三十四个省级行政区的地理知识讲得清清楚楚、明明白白。如果我们把全中国看成一个“班级”，那这事儿就好理解了！ 新疆是充满融合美的同学：肩负中外交流重任，储藏油气支援工业发展。 甘肃是班里的百变nǚ神：坐拥多样地貌时装，守护丝路艺术辉煌。 陕西是历史课代表：怀抱深厚历史文化，在根据地谱写发展新篇章。 宁夏是班里的养sheng达人：山河孕育塞上江南，战胜贫瘠建设家园。 山西是班里的热血少年：大山大河滋养肥沃盆地，奉献煤炭温暖全国。 翻开本书，在笑出腹肌的同时轻松通晓地理知识！', '浙江科学技术出版社', 328, '49.90', '9787573912749', '2024-08-15', '2024-11-08 23:45:25.902086', '0', 99, '8', '平装', 0, 42, '未知', '2024-11-08 22:53:21.042704', 0, 0, 0);
INSERT INTO `b_book` VALUES (35, '藤本树短篇集 17-21', 'https://img9.doubanio.com/view/subject/s/public/s34758936.jpg', '[日] 藤本树', '吴曦', '17-21岁，幻想是让人高烧不退的青春病！ 锐意、自由、野性，畅销2600万册的鬼才漫画家藤本树的起点与初心！收录： 🐔藤本树投稿漫画大奖的出道作 温情系战斗漫画——《庭院里曾有两只鸡。》 🔫本书中藤本树个人蕞爱 用真情与笃信创造出的奇迹物语——《佐佐木同学接住了子弹》 🛸漫画奖获奖短篇 以迸发的恋情碾压一切的科幻恋爱喜剧——《恋爱是盲目的》 🗡️高烧39度所创热忱之作 一击必杀VS.绝对不死的爱情战争——《刺客鹿久》 ﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏ 特别收录藤本树个人文字创作后记+单行本出版纪念文章，讲述创作初期心路历程。', '中信出版社', 168, '35', '9787521761238', '2023-12-01', '2024-11-08 23:45:27.633910', '0', 99, '8', '平装', 0, 42, '藤本タツキ短編集 17－21', '2024-11-08 22:53:22.665706', 0, 0, 0);
INSERT INTO `b_book` VALUES (36, '尚未缴械就是美好生活', 'https://img9.doubanio.com/view/subject/s/public/s34936966.jpg', '［加］赛斯', '王秀莉', '丧式治愈，献给当代“社会适应不良人士”的美好生活指南 斩获安古兰奖、伊格纳兹奖，入选《漫画杂志》20世纪百佳图像小说，风靡世界多国！ 【内容简介】 “社会适应不良”说的就是我这种人。 当我想滑冰—— 我等啊等啊，一直到凌晨两点左右才出门。我得确保周围没人。 当我去博物馆—— 我总是直奔恐龙厅。那里非常安静，真是个奇妙的地方。 我的猫鲍里斯听过最多的念叨—— “鲍鲍……真是只大肥猫。” “没有你我该怎么办呀？” …… 我自己也想不到，有一天我会主动写信给《纽约客》，询问一位陌生漫画家下落。 【编辑推荐】 ★加拿大著名图像小说家赛斯重磅作品，斩获数项国际大奖，风靡世界多国 ✧收揽第26届安古兰国际漫画节最佳作品奖、首届伊格纳兹奖杰出图像小说奖，图像小说界重磅作品！ ✧已被译为8种语言，中文世界首次引进 ✧入选《漫画杂志》20世纪百佳图像小说/《GQ》20... 丧式治愈，献给当代“社会适应不良人士”的美好生活指南 斩获安古兰奖、伊格纳兹奖，入选《漫画杂志》20世纪百佳图像小说，风靡世界多国！ 【内容简介】 “社会适应不良”说的就是我这种人。 当我想滑冰—— 我等啊等啊，一直到凌晨两点左右才出门。我得确保周围没人。 当我去博物馆—— 我总是直奔恐龙厅。那里非常安静，真是个奇妙的地方。 我的猫鲍里斯听过最多的念叨—— “鲍鲍……真是只大肥猫。” “没有你我该怎么办呀？” …… 我自己也想不到，有一天我会主动写信给《纽约客》，询问一位陌生漫画家下落。 【编辑推荐】 ★加拿大著名图像小说家赛斯重磅作品，斩获数项国际大奖，风靡世界多国 ✧收揽第26届安古兰国际漫画节最佳作品奖、首届伊格纳兹奖杰出图像小说奖，图像小说界重磅作品！ ✧已被译为8种语言，中文世界首次引进 ✧入选《漫画杂志》20世纪百佳图像小说/《GQ》20部经典图像小说/《先驱报》50部杰出图像小说/《卫报》2015年十大编辑推荐图像小说/《泰晤士报》2012年六大编辑推荐图像小说，各大媒体倾力推荐！ ✧伊格纳兹奖、艾斯纳奖、安古兰奖、哈维奖等多项大奖得主赛斯图像小说首作，引领北美自传体图像小说风潮！ ※在阿特·斯比格曼的《鼠族》之后，《尚未缴械就是美好生活》是我思考图像小说形式上的更多可能性，并为之努力的主要灵感来源。——克里斯·韦尔 | 哈维奖、艾斯纳奖获得者，《老屋记》作者 ※赛斯是有史以来最伟大的漫画家之一。——雷蒙德·布里格斯 | 安徒生奖得主，《伦敦一家人》作者 ★当代“社会适应不良人士”，还没学会做大人 “I人”“淡人”只是表象，其实我是“社会适应不良”。 混乱的世界，失控的生活；缺点多多，不愿改变的我……“我讨厌人，也讨厌我自己。”全面再现对成人世界手足无措的时刻，直击当代年轻人的情绪黑洞！ ✧“一觉醒来，发现自己又搞砸一件事，这种感觉很糟糕。” “没有任何问题大到或复杂到逃不开。” ★丧式治愈，另类的美好生活指南 ✧选择对自己最重要的事吧！没有谁的人生不合时宜，只是我们太早放弃。 ✧“他说，些微痛苦对灵魂有好处。你可以把这理解成一个不开心的回答——但如果你看到他说这话时脸上的微笑，就不会这么想了。他是个幸福的家伙，对自己平静接受的生活很知足。” ★《纽约客》式经典漫画风格，极致的视觉美学表达 从容不迫的简单线条，富有质地的阴影处理，标志性的青黑双色涂色，复古的街道与建筑……辨识度超高！ ※赛斯独特的复古艺术风格与故事完美契合。画风干净利落，与他寻找的那个幽默漫画家非常相似，也与他试图在一个混乱世界寻找秩序的斗争相一致。正是赛斯“不合时宜”的个性和他对现代生活种种“乐趣”的拒绝，才使得阅读这本书是如此有趣。——《影音俱乐部》 ★随书附赠精美金句贴纸，幽默拉满，保你会心一笑！', '四川美术出版社', 192, '79.00', '9787574009431', '2024-08-01', '2024-11-08 23:45:29.257296', '0', 99, '8', '平装', 0, 42, 'It’s a Good Life, If You Don’t Weaken: A Picture Novella', '2024-11-08 22:53:24.204217', 0, 0, 0);
INSERT INTO `b_book` VALUES (37, '置身事内', 'https://img3.doubanio.com/view/subject/s/public/s33956867.jpg', '兰小欢', '未知', '“在成功的经济体中，经济政策一定是务实的，不是意识形态化的。是具体的，不是抽象的。” 直面真问题、深究真逻辑的复旦大学经济学“毕业课” ☆ 连接抽象经济学理论与中国发展实际 在市场机制不完善的情况下，如何实现可行的动员与资源调配，推动经济增长？ 在确保增长的过程中，如 何获得更多资源和时间去建设和完善市场经济？ ☆ 结合学界前沿研究与一线调研经历 扼要论述+延伸阅读指引，满足弹性认知需求 生动解说光伏、面板等行业案例，清晰复盘宽窄巷子、华夏幸福等建设经验 ☆ 微观机制+宏观现象 双重维度串联中国经济生活中中知识与现象的碎片 理解地方政府经济治理的决策与行动逻辑 解读城市化、房价、贫富差距、债务、国内外贸易生态等现象背后各种要素的联动 ☆ 从热闹的政经新闻中看出门道，从枯燥的政府文件中觉察到机会。 “了解政府认为应该怎么办，比了解‘我’认为应该怎么办，... “在成功的经济体中，经济政策一定是务实的，不是意识形态化的。是具体的，不是抽象的。” 直面真问题、深究真逻辑的复旦大学经济学“毕业课” ☆ 连接抽象经济学理论与中国发展实际 在市场机制不完善的情况下，如何实现可行的动员与资源调配，推动经济增长？ 在确保增长的过程中，如 何获得更多资源和时间去建设和完善市场经济？ ☆ 结合学界前沿研究与一线调研经历 扼要论述+延伸阅读指引，满足弹性认知需求 生动解说光伏、面板等行业案例，清晰复盘宽窄巷子、华夏幸福等建设经验 ☆ 微观机制+宏观现象 双重维度串联中国经济生活中中知识与现象的碎片 理解地方政府经济治理的决策与行动逻辑 解读城市化、房价、贫富差距、债务、国内外贸易生态等现象背后各种要素的联动 ☆ 从热闹的政经新闻中看出门道，从枯燥的政府文件中觉察到机会。 “了解政府认为应该怎么办，比了解‘我’认为应该怎么办，重要得多。” ------------------------------------------------------------------------------------------------------ 本书是是兰小欢多年教学、调研与研究内容的凝练，将经济学原理与中国经济发展的实践有机融合，以地方政府投融资为主线，深入浅出地论述了中国经济的发展，笔触简练客观，并广泛采纳了各领域学者的最新研究成果。全书分上下两篇。上篇解释微观机制，包括地方政府的基本事务、收支、土地融资和开发、投资和债务等；下篇解释这些微观行为与宏观现象的联系，包括城市化和工业化、房价、地区差异、债务风险、国内经济结构失衡、国际贸易冲突等。最后一章提炼和总结全书内容。 通过对中国政治经济体系的论述，作者简明地刻画了地方政府进行经济治理的基本方式，并指出，中国政府通过深度介入工业化和城市化的进程，在发展经济的同时逐步推动了市场机制的建立和完善，以一种有别于所谓发达国家经验的方式实现了经济奇迹。基于对改革历程与社会矛盾的回顾与分析，作者也在书中对当前推进的市场化改革与政府转型进行了解读，帮助读者增进对中国发展现实的把握。', '上海人民出版社', 340, '65.00', '9787208171336', '2021-08-01', '2024-11-09 19:36:55.262530', '0', 99, '9.1', '平装', 0, 6, '未知', '2024-11-09 00:17:11.307706', 0, 0, 0);
INSERT INTO `b_book` VALUES (38, '技术封建主义', 'https://img9.doubanio.com/view/subject/s/public/s34902285.jpg', '[法] 塞德里克·迪朗', '陈荣钢', '本书深入探讨了数字技术在当今社会中的角色以及它如何重塑权力结构、经济关系和社会动态，具体剖析了资本主义和数字技术之间有何关系、利润动机和数字流动性如何相互作用、资本主义的系统逻辑是否正在发生变化等系列问题。作者通过丰富的案例研究，揭示了技术巨头如何利用其市场地位和数据优势，形成一种类似封建领主与农奴之间的关系。书中不仅分析了这种关系的形成机制，还探讨了其对社会公正、民主和个人自由可能带来的负面影响。', '中国人民大学出版社', 256, '69.00', '9787300328508', '2024-07-01', '2024-11-09 19:33:07.832611', '0', 99, '7.9', '平装', 0, 43, 'Techno-féodalisme', '2024-11-09 00:17:12.752796', 0, 0, 0);
INSERT INTO `b_book` VALUES (39, '经济学原理(第8版)', 'https://img2.doubanio.com/view/subject/s/public/s33698881.jpg', '[美] 格里高里·曼昆', '梁小民', '曼昆的《经济学原理》是国内外市场上广受欢迎的经济学经典教材之一。与同类书相比，本书的特点在于，更多地强调经济学原理的应用和思维方式的培养，而不是经济学模型。书中包含了大量贴近生活的案例研究和政策讨论。第8版更新了全书中的数据、习题及案例，并新增了“专家看法”等专栏。此外，第8版还配套了英文版的MindTap在线学习平台，内容包括互动电子书、视频导读、视频讲解、学习指南、在线测试题、拓展阅读等丰富的学习资源。本书为曼昆《经济学原理（第8版）》的微观经济学分册，适合经济学专业本科生的宏观经济学课程以及对经济学感兴趣的普通读者使用。', '北京大学出版社', 544, '109.00', '9787301312971', '2020-05-01', '2024-11-09 19:33:09.920422', '0', 99, '9.5', '平装', 0, 43, 'Principles of Economics (8/e)', '2024-11-09 00:17:14.105609', 0, 0, 0);
INSERT INTO `b_book` VALUES (40, '美国资本主义时代', 'https://img9.doubanio.com/view/subject/s/public/s34953606.jpg', '[美] 乔纳森·利维', '鲁伊', '◎  作品看点/编辑推荐 ★   美国史力作，兰小欢、陶然、万维钢等一致推荐，首印随书附赠纸质和电子互动思维导图 《棉花帝国》作者斯文·贝克特盛赞本书是“杰出的单卷本美国资本主义史”。复旦兰小欢教授认为本书有助于理解当前中国和世界的政经问题。 ★   了解美国经济，才能了解资本主义，才能明了现代世界经济的形成 美国是资本主义经济的集大成者，一部美国经济史，凝集了现代世界经济发展的核心故事。 ★   全景展示美国经济近四百年的变迁，把握各个阶段的重要发展 商业时代：商业自利、劳动分工、市场范围的扩大、自由帝国、民主政治 资本时代：工业化、民粹主义、收入政治、阶级冲突、大萧条 控制时代：罗斯福新政、军工复合体、消费主义、工业资本危机 混乱时代：放松管制、经济全球化、地产业的兴衰、资产升值资本主义 ★   充满细节的经济史，捕捉美国人生活的方方面面，展示社... ◎  作品看点/编辑推荐 ★   美国史力作，兰小欢、陶然、万维钢等一致推荐，首印随书附赠纸质和电子互动思维导图 《棉花帝国》作者斯文·贝克特盛赞本书是“杰出的单卷本美国资本主义史”。复旦兰小欢教授认为本书有助于理解当前中国和世界的政经问题。 ★   了解美国经济，才能了解资本主义，才能明了现代世界经济的形成 美国是资本主义经济的集大成者，一部美国经济史，凝集了现代世界经济发展的核心故事。 ★   全景展示美国经济近四百年的变迁，把握各个阶段的重要发展 商业时代：商业自利、劳动分工、市场范围的扩大、自由帝国、民主政治 资本时代：工业化、民粹主义、收入政治、阶级冲突、大萧条 控制时代：罗斯福新政、军工复合体、消费主义、工业资本危机 混乱时代：放松管制、经济全球化、地产业的兴衰、资产升值资本主义 ★   充满细节的经济史，捕捉美国人生活的方方面面，展示社会、文化和经济的互动 假如一个人被扔到美国历史上的任何一个时空，他想要赚到钱、生活得好，想要理解当下和预测未来，这本“百科宝典”一定要带。 ★   美国成为经济强国之路，是中国经济发展的重要参照 中国经济在数十年间经历了发达国家数百年的发展，走自己的路，也在文明互鉴中汲取着养分。 ★   《华盛顿邮报》等国际一流媒体热情推荐 ◎  评论推荐 学习发展经济学最有效的方式，是学习发达国家的经济发展史。而今天流行的发展经济学理论，和经济发展的真实历史常常不一致。所以我们更要了解真实发生的历史。美国大搞基建的年代，如何撬动土地杠杆去融资？美国如何利用战争和贸易保护搞产业政策，从无到有培育“比较优势”？美国政策又如何在“财产收入”和“劳动收入”之间不断平衡？本书都有详细解释。对我们理解当下中国和世界的政治经济问题，或有启发。本书是2021年我读过的最喜欢的英文新书。 ——兰小欢，复旦大学经济学院教授、《置身事内》作者 这是一部全景式的美国资本主义编年史，作者以占据资本主义“C位”的“流动性”为主线，富有洞见地解析了美国300多年来经济发展与变迁的密码。资本主义的每一次大繁荣，都离不开信心提供“情绪燃料”，也离不开信贷提供“经济燃料”；每一次大衰退，往往都是信心和信贷坍塌的时刻。危机时刻，胆识兼具的政治家才有可能把经济从“流动性陷阱”里捞出来，当然也得搭配一些历史的好运气。 ——陶然，香港中文大学（深圳）校长讲座教授、《人地之间》作者 这本书是一个宝藏。全书900多页，从17世纪一直讲到今天。我读了大概能有一个月，摘抄的笔记和写下的评论有9万多字。我后来常常想到什么问题就回到书中查找，每次都有收获。如果有机会穿越回过去，我希望带上这本书——因为这书里有在各个历史时期赚钱的秘诀。“资本主义”的制度似乎是简单的，无非就是自由市场、政府保护产权、资本家纵横驰骋，但是具体的操作、人们的观念一直都在演化。……当然这本书的主题不是教你怎样赚钱，而是反思资本主义到底是怎么回事。 ——万维钢，科学作家、得到《精英日课》主理人 不了解美国的经济史，就不可能了解美国。本书出自美国研究资本主义历史杰出的历史学家之手，它栩栩如生地讲述了美国资本主义发展历程这个重要且始终引人入胜的故事，带领读者在种植园、工厂、公司会议室和政府办公室之间迅速穿行。如果想更好地认识和理解我们现在的处境，不妨想想我们是如何走到今天这一步的。本书是杰出的单卷本美国资本主义史。 ——斯文•贝克特，哈佛大学教授、《棉花帝国》作者 这是一部非常敏锐、全面和有趣的美国资本主义历史，它直击美国一个重大谬误的核心：市场总是可以与社会、政治和历史相分离。 ——理查德•怀特，斯坦福大学美国史荣休教授、曾任美国历史学家协会主席 真是令人惊叹的成就，本书是了解美国历史和当今经济发展不可或缺的指南。 ——《基督教科学箴言报》 ◎  内容简介 在本书中，乔纳森•利维把始于17世纪英国殖民者定居北美，延续至21世纪大衰退的美国资本主义发展划分为商业、资本、控制和混乱四个时代，全景展示了美国经济的演变历程。 在商业时代，经济产出与增长主要依赖奴役劳动，且受制于自然环境，投资自然流向了土地与奴隶。南北战争后，奴隶资本在政治上被摧毁，见证了工业资本主义出现的资本时代到来。在资本时代，大规模工业投资史无前例地提高了生产力，但投机性的繁荣与萧条信贷周期也反复出现，经济剧烈波动最终引发大萧条。为应对危局，政府积极出手干预，试图消除资本主义的不稳定性，更在二战期间借投资军工复合体终结了大萧条。但是，冷战、反对国家监管和经济危机也是这个时代的主题。1980年后，随着政府监管放松，混乱时代开启，资本告别实体结构，变得更加金融化、无形化和杠杆化。缺乏监管的金融业急速扩张，但不平等也显著加剧，大崩盘与占领华尔街运动接踵而至。新冠病毒大流行之后，美国的资本主义又一次处在了十字路口。 除了人口趋势、贸易模式、增长率、能源体系、投资偏好和生产力指标，作者也关注托马斯•杰斐逊对英国人的鄙视，梭罗对商业的道德批判以及赫尔曼•梅尔维尔的回应，劳工暴力运动，白人至上主义的积习难改，20世纪的购物中心，第二波女性主义者对婚姻的批判，众多股票市场投机行为的随心所欲，里根对市场的乐观主义，奥巴马对银行家的爱恨交加。', '北京日报出版社', 1186, '189.00', '9787547748350', '2024-09-30', '2024-11-09 19:33:14.238037', '0', 99, '9.6', '精装', 0, 43, 'Ages of American Capitalism:A History of the United States', '2024-11-09 00:17:15.024054', 0, 0, 0);
INSERT INTO `b_book` VALUES (41, '国家为什么会失败', 'https://img1.doubanio.com/view/subject/s/public/s28070939.jpg', '[美] 德隆·阿西莫格鲁', '李增刚', '《国家为什么会失败》回答了困扰专家们几个世纪的问题：为什么有的国家富、有的国家穷；国家为什么按照富裕不富裕、健康不健康、食物充足不充足来划分？是文化、天气、地理特征还是不知道正确政策？ 简单说，什么都不是。没有任何一个因素是确定的或注定的。德隆·阿西莫格鲁和詹姆士·罗宾逊令人信服地表明，人为的政治和经济制度对经济成功（或经济不成功）至关重要。在15年原创性研究的基础上，作者整理了罗马帝国、玛雅城市国家、中世纪威尼斯、苏联、拉美、英格兰、欧洲、美国和非洲的大量历史证据，建立了一个跟当今社会下列重大问题高度相关的新政治经济学理论，包括： 中国会以如此快的速度持续增长吗？能够超越西方吗？美国的最好时光过去了吗？我们正在从限制精英人物扩张权力的良性循环走向使少数人致富和扩张权力的恶性循环吗？什么是帮助数十亿贫困人口走向繁荣的最有效方式呢？是来自西方富裕国家更... 《国家为什么会失败》回答了困扰专家们几个世纪的问题：为什么有的国家富、有的国家穷；国家为什么按照富裕不富裕、健康不健康、食物充足不充足来划分？是文化、天气、地理特征还是不知道正确政策？ 简单说，什么都不是。没有任何一个因素是确定的或注定的。德隆·阿西莫格鲁和詹姆士·罗宾逊令人信服地表明，人为的政治和经济制度对经济成功（或经济不成功）至关重要。在15年原创性研究的基础上，作者整理了罗马帝国、玛雅城市国家、中世纪威尼斯、苏联、拉美、英格兰、欧洲、美国和非洲的大量历史证据，建立了一个跟当今社会下列重大问题高度相关的新政治经济学理论，包括： 中国会以如此快的速度持续增长吗？能够超越西方吗？美国的最好时光过去了吗？我们正在从限制精英人物扩张权力的良性循环走向使少数人致富和扩张权力的恶性循环吗？什么是帮助数十亿贫困人口走向繁荣的最有效方式呢？是来自西方富裕国家更多的慈善援助？还是学习阿西莫格鲁和罗宾逊的创造性观点得出的关于包容性政治制度和包容性经济制度相互作用的经验教训？', '湖南科学技术出版社', 424, 'CNY 75.00', '9787535780348', '2015-06-01', '2024-11-09 19:33:15.931510', '0', 99, '7.3', '平装', 0, 43, 'Why Nations Fail: The Origins of Power, Prosperity, and Poverty', '2024-11-09 00:17:16.030902', 0, 0, 0);
INSERT INTO `b_book` VALUES (42, '被追赶的经济体', 'https://img3.doubanio.com/view/subject/s/public/s34718163.jpg', '[美] 辜朝明', '徐忠', '经济学家辜朝明在本书中深入探讨了传统经济解决方案在应对大衰退和疫情后经济与社会问题方面的失败。他从资产负债表衰退和全球资本竞争的初始概念入手，解释了大衰退为何持续如此之久，以及为何过去行之有效的良好政策如今却不再奏效。 读者会发现，尽管发达经济体很早就从经济发展的黄金时代进入了被追赶的时代，但这些经济体的政策辩论还在沿用黄金时代的假设。这些假设虽已落伍，但仍是高校经济学课程内容。此种不匹配导致对货币政策的过度依赖和对财政政策的重视不足，从而扭曲了经济，加剧了不平等。 辜朝明曾广泛参与包括美国在内的多个经济体关于经济、银行和贸易相关政策的辩论，书中通过这些真实的例子，阐明了发达经济体在被追赶时代的正确政策组合与黄金时代的政策组合截然不同。书中还解释了央行在对抗通胀方面所面临的挑战，由于10年来发达经济体过度依赖货币政策，世界经济面临前所未有的流动性泛滥... 经济学家辜朝明在本书中深入探讨了传统经济解决方案在应对大衰退和疫情后经济与社会问题方面的失败。他从资产负债表衰退和全球资本竞争的初始概念入手，解释了大衰退为何持续如此之久，以及为何过去行之有效的良好政策如今却不再奏效。 读者会发现，尽管发达经济体很早就从经济发展的黄金时代进入了被追赶的时代，但这些经济体的政策辩论还在沿用黄金时代的假设。这些假设虽已落伍，但仍是高校经济学课程内容。此种不匹配导致对货币政策的过度依赖和对财政政策的重视不足，从而扭曲了经济，加剧了不平等。 辜朝明曾广泛参与包括美国在内的多个经济体关于经济、银行和贸易相关政策的辩论，书中通过这些真实的例子，阐明了发达经济体在被追赶时代的正确政策组合与黄金时代的政策组合截然不同。书中还解释了央行在对抗通胀方面所面临的挑战，由于10年来发达经济体过度依赖货币政策，世界经济面临前所未有的流动性泛滥。 本书不是简单地假设增长趋势的存在，而是直面经济增长问题，以阐明增长驱动因素和衰退驱动因素之间的对称性。书中还指出，自由贸易与资本自由流动之间存在根本的脱节，这一问题必须加以解决，才能使全球化收益最大化，且代价最小化。 本书以简洁的语言和强烈的紧迫感写就，任何关心全球经济、金融稳定和地缘问题的读者都会找到共鸣。', '中信出版集团', 479, '98.00', '9787521760156', '2023-08-01', '2024-11-09 19:33:18.044310', '0', 99, '8.7', '平装', 0, 43, 'Pursued Economy: Understanding and Overcoming the Challenging New Realities for Advanced Economies', '2024-11-09 00:17:17.330727', 0, 0, 0);
INSERT INTO `b_book` VALUES (43, '利他主义的生意', 'https://img1.doubanio.com/view/subject/s/public/s34942800.jpg', '[加]克日什托夫·普莱克(Krzysztof Pelc)', '吴艺蓉', '本书分析了经济学中的理性人并非在所有市场都获益的原因，解释了为何在某些市场中，人们长期希望回避市场原则，而随着时代的发展，利他主义者反而更受市场的青睐。 经济学中的理性人获利空间开始缩小 市场越来越喜欢“非理性”的利他主义者 真正无私者获利的时代已经到来 本书解释了理性人的利己主义行为存在的悖论，并证明无私是有回报的，但只有那些看起来真正无私的人才能获得回报，这使利己主义陷入困境。本书具体从副产品社会、利己主义伪装、休闲与经济、个体顿悟等方面进行了详细展开。本书对经济学研究者、政策制定者、对人文经济读物感兴趣的读者有一定的指导作用，能为读者提供全新的视角看待理性人和利他主义者在市场中的状态。 揭示理性人正在陷入困境，无私者开始被市场偏爱的趋势。 讲解如何做个聪明的利他主义者，抓住市场中的更多机会。 《金融时报》首席经济评论员推荐本书。 真正无私的人越... 本书分析了经济学中的理性人并非在所有市场都获益的原因，解释了为何在某些市场中，人们长期希望回避市场原则，而随着时代的发展，利他主义者反而更受市场的青睐。 经济学中的理性人获利空间开始缩小 市场越来越喜欢“非理性”的利他主义者 真正无私者获利的时代已经到来 本书解释了理性人的利己主义行为存在的悖论，并证明无私是有回报的，但只有那些看起来真正无私的人才能获得回报，这使利己主义陷入困境。本书具体从副产品社会、利己主义伪装、休闲与经济、个体顿悟等方面进行了详细展开。本书对经济学研究者、政策制定者、对人文经济读物感兴趣的读者有一定的指导作用，能为读者提供全新的视角看待理性人和利他主义者在市场中的状态。 揭示理性人正在陷入困境，无私者开始被市场偏爱的趋势。 讲解如何做个聪明的利他主义者，抓住市场中的更多机会。 《金融时报》首席经济评论员推荐本书。 真正无私的人越来越被市场偏爱 作者简介： [加]克日什托夫·普莱克 加拿大蒙特利尔麦吉尔大学政治学教授，定期为美国和加拿大的杂志和报纸供稿。他是2019年CBC短篇小说奖得主。2021年，他获得了英国《金融时报》论文奖。', '中国科学技术出版社', 408, '69.00', '9787523608517', '2024-10-01', '2024-11-09 19:33:20.300869', '0', 99, '8.8', '精装', 0, 43, '未知', '2024-11-09 00:17:19.374489', 0, 0, 0);
INSERT INTO `b_book` VALUES (44, '经济学的思维方式', 'https://img3.doubanio.com/view/subject/s/public/s34414412.jpg', '[美] 保罗·海恩', '鲁冬旭', '下顿饭吃什么？每个月存多少钱？该考研还是找工作？你的每一次消费决定，每一个人生选择，都离不开经济学的思维方式。 本书是一本出版50年、迄今已更新13版仍长销不衰的经济学通识经典。全书共分16个章节，从对广义的人类活动的观察开始，重新描述社会协作的重要性，讲述了经济学的思维方式通过怎样的机制促进社会协作、实现社会效益最大化。它将需求、稀缺、比较优势、成本与选择等经济学的概念引入生活，让日常例子充满了经济学的智慧。 本书改变了传统经济学课程以概念、术语、公式为主的讲述方式，而是将“经济学”作为一种思维方式，侧重于培养普通人在社会大分工中养成理性、优化的思维方式，使读者发现，经济学不是殿堂学问，而是一套可实实在在应用于生活的朴素原理。每个人日常的大多数问题，都可用经济学的思维方式来解释和解决。它是一副思维工具，一个框架，一部坚固、优美、科学、稳定的脚手架，... 下顿饭吃什么？每个月存多少钱？该考研还是找工作？你的每一次消费决定，每一个人生选择，都离不开经济学的思维方式。 本书是一本出版50年、迄今已更新13版仍长销不衰的经济学通识经典。全书共分16个章节，从对广义的人类活动的观察开始，重新描述社会协作的重要性，讲述了经济学的思维方式通过怎样的机制促进社会协作、实现社会效益最大化。它将需求、稀缺、比较优势、成本与选择等经济学的概念引入生活，让日常例子充满了经济学的智慧。 本书改变了传统经济学课程以概念、术语、公式为主的讲述方式，而是将“经济学”作为一种思维方式，侧重于培养普通人在社会大分工中养成理性、优化的思维方式，使读者发现，经济学不是殿堂学问，而是一套可实实在在应用于生活的朴素原理。每个人日常的大多数问题，都可用经济学的思维方式来解释和解决。它是一副思维工具，一个框架，一部坚固、优美、科学、稳定的脚手架，用来帮助我们建立起更好的价值观，于社会和个人福祉的增长都大有裨益。 自初版以来，本书便是经济学通识教育的经典之选。它所传达的思维方式，当然也有助于每个人过上更好的生活。', '浙江文艺出版社', 508, '98.00', '9787533970567', '2023-05-30', '2024-11-09 19:33:22.371423', '0', 99, '8.9', '平装', 0, 43, 'The Economic Way of Thinking', '2024-11-09 00:17:20.504323', 0, 0, 0);
INSERT INTO `b_book` VALUES (45, '价格理论', 'https://img2.doubanio.com/view/subject/s/public/s34957161.jpg', '[美] 大卫·D.弗里德曼', '左子杭', '现代生活是由高度组织化的经济活动构成的。成百上千万个企业、几十亿个体的活动——如此纷繁复杂的体系何以有条不紊地展开？价格的协调是关键。价格理论是现代经济分析的核心。本书从消费、生产、企业、经济效率等方面系统阐释价格如何协调经济活动。但它并非常规意义上的教材：作者大卫·D. 弗里德曼别出心裁地引入大量非常规应用——战争、爱情、婚姻、盗窃、供暖；同时，本书摒弃数学分析，改用丰富的图表及风趣的语言论证，旨在透过传授经济学的思维方式，训练你的经济直觉，让你掌握理解及预测人类行为的强大方法。 ———————————— 1.一套高效易懂的微观经济学核心理论，带你学透经济学的思维方式：本书旨在训练读者的经济学直觉，强调学会像经济学家那样思考，透过翔实的理论基础为读者打牢根基，从而更好理解现实世界中的人类行为。 2.天马行空的丰富案例，打破常规教材的分析局限：如何用... 现代生活是由高度组织化的经济活动构成的。成百上千万个企业、几十亿个体的活动——如此纷繁复杂的体系何以有条不紊地展开？价格的协调是关键。价格理论是现代经济分析的核心。本书从消费、生产、企业、经济效率等方面系统阐释价格如何协调经济活动。但它并非常规意义上的教材：作者大卫·D. 弗里德曼别出心裁地引入大量非常规应用——战争、爱情、婚姻、盗窃、供暖；同时，本书摒弃数学分析，改用丰富的图表及风趣的语言论证，旨在透过传授经济学的思维方式，训练你的经济直觉，让你掌握理解及预测人类行为的强大方法。 ———————————— 1.一套高效易懂的微观经济学核心理论，带你学透经济学的思维方式：本书旨在训练读者的经济学直觉，强调学会像经济学家那样思考，透过翔实的理论基础为读者打牢根基，从而更好理解现实世界中的人类行为。 2.天马行空的丰富案例，打破常规教材的分析局限：如何用经济学思维击退盗贼？什么是星际航行的经济学？如何用经济学视角看待一夫一妻制？让本书带你跳出经济范畴，打破经济应用的思维定式。 3.几乎零数学的分析过程，不懂微积分也能学懂经济学：本书几乎不含数学公式，主要采用几何和文字的论证方式；语言风趣、图例丰富，大大降低阅读门槛。 4.读者可自行切换知识难易程度：本书整体知识难度较低，但某些章节增设选读内容及延伸阅读材料，青铜王者可自选段位！每章末更配有课后习题，让你随时检验知识掌握程度。 5.内文采用同封面暖色调的双色印刷，传递更有温度的经济学！', '广西师范大学出版社', 638, '139.00 ', '9787559871060', '2024-09-01', '2024-11-09 19:33:23.982820', '0', 99, '9.2', '平装', 0, 43, 'Price Theory', '2024-11-09 00:17:21.784678', 0, 0, 0);
INSERT INTO `b_book` VALUES (46, '繁荣与停滞', 'https://img9.doubanio.com/view/subject/s/public/s34936056.jpg', '伊藤隆敏', '郭金兴', '本书深入、细致、全面地介绍了日本经济从二战后至21世纪第二个十年的发展与转型历程，特别是通过高速增长实现起飞和赶超，应对经济崛起之后的贸易冲突、增速下降和人口老龄化，泡沫经济的产生、破灭与“失去的20年”，以及之后的经济结构调整与转型，这有助于了解日本从贫困走向富裕的整个发展历程，并从中汲取经验和教训。 严谨的学术训练和丰富的政策经验，使本书两位作者对日本经济的历史经验、主要特征、运行机制、面临的挑战与政策应对有着深刻的认识。本书是对日本经济发展历程全景式的描述和解释，适合对日本经济感兴趣的普通读者和专业人士阅读。', '中信出版社', 652, '158.00', '9787521741667', '2022-09-01', '2024-11-09 19:33:27.094647', '0', 99, '8.5', '精装', 0, 43, 'The Japanese Economy', '2024-11-09 00:17:24.998926', 0, 0, 0);
INSERT INTO `b_book` VALUES (47, '金融经济学二十五讲', 'https://img9.doubanio.com/view/subject/s/public/s29841814.jpg', '徐高', '未知', '《金融经济学二十五讲》是作者在北京大学数年讲授金融学课程所结出的果实。本书主要内容由均衡资产定价、无套利资产定价以及金融摩擦三部分组成，涉及现代金融经济学的所有重要方面。本书以本科生能接受的数学程度，平易近人地介绍了现代金融学理论的核心内容，并尤其注重透视理论背后的金融学思想，揭示了现代金融理论体系中澎湃的生命律动。 本书的最大特点是运用了适用于本科生程度的数学工具，既不太过简单，也不太过专业，填补了市场同类教材的空白。本书既可作为本科生程度读者的金融学入门教材，也对研究生或MBA程度的读者有参考意义。', '中国人民大学出版社', 400, '52', '9787300258232', '2018-07-01', '2024-11-09 19:33:28.429871', '0', 99, '9.6', '平装', 0, 43, '未知', '2024-11-09 00:17:26.637790', 0, 0, 0);
INSERT INTO `b_book` VALUES (48, '后资本主义生活', 'https://img1.doubanio.com/view/subject/s/public/s34923529.jpg', '[美] 乔治·吉尔德', '蒋豪', '在这个信息时代，财富的本质在于知识的积累，而经济的增长源自学习和创新的过程。本书以信息论为基础，提出了一种全新的经济学理论，揭示了未来经济的发展方向，强调企业家和创新对经济的作用，带来了关于创新、意外和丰富的新视角。 本书是美国知名未来学家、经济学家乔治·吉尔德的思想集大成之作，围绕“财富就是知识，增长就是学习，货币就是时间，信息就是意外”四个基本理念来展开。本书视角独特，其核心观点是，后资本主义生活的经济将以时间为基础，以人类创造力和创新为核心，以更加可持续和公平的方式实现财富的创造和分配。', '浙江人民出版社', 292, '68.00', '9787213115288', '2024-09-01', '2024-11-09 19:33:30.031554', '0', 99, '7.4', '平装', 0, 43, 'Life after Capitalism: The Meaning of Wealth, the Future of the Economy, and the Time Theory of Money', '2024-11-09 00:21:59.722529', 0, 0, 0);
INSERT INTO `b_book` VALUES (49, '重组与突破', 'https://img1.doubanio.com/view/subject/s/public/s34910018.jpg', '黄奇帆', '未知', '在50余载的工作历程中，重庆市原市长黄奇帆参与、主导了一系列重组，从中他深刻领悟到重组的真谛与妙趣：其真谛在于资源优化配置、体制机制创新，其妙趣在于“随心所欲不逾矩”“柳暗花明又一村”。 本书辑录了黄奇帆在重庆工作期间遇到难题时以“重组求突破”的思维与实践，以期与读者分享重组的感悟。全书共分两个部分： 第一部分专讲企业的重组与管理，包括城市建设投融资平台类企业、资本运营投资类企业、金融企业、国有工商企业集团和民营企业五大类企业。每一类企业的重组内容都涉及该类企业当时困难的严重性和重组的紧迫性及必要性，以及为解决该企业问题而进行的重组方案的脉络与原则、对策措施、成效与结果。 第二部分专讲行业的重组与管理，包括城市房地产业、工业产业、内陆加工贸易的转型、教育、金融、财政六大行业的重组与管理。每一类行业的重组内容都涉及当时行业的状况、内在的困难、百姓的呼声... 在50余载的工作历程中，重庆市原市长黄奇帆参与、主导了一系列重组，从中他深刻领悟到重组的真谛与妙趣：其真谛在于资源优化配置、体制机制创新，其妙趣在于“随心所欲不逾矩”“柳暗花明又一村”。 本书辑录了黄奇帆在重庆工作期间遇到难题时以“重组求突破”的思维与实践，以期与读者分享重组的感悟。全书共分两个部分： 第一部分专讲企业的重组与管理，包括城市建设投融资平台类企业、资本运营投资类企业、金融企业、国有工商企业集团和民营企业五大类企业。每一类企业的重组内容都涉及该类企业当时困难的严重性和重组的紧迫性及必要性，以及为解决该企业问题而进行的重组方案的脉络与原则、对策措施、成效与结果。 第二部分专讲行业的重组与管理，包括城市房地产业、工业产业、内陆加工贸易的转型、教育、金融、财政六大行业的重组与管理。每一类行业的重组内容都涉及当时行业的状况、内在的困难、百姓的呼声、国家的政策要求，每一种行业重组都涉及从供给侧对各类要素资源进行优化重组，从而在结构性平衡中实现超常规的发展。', '中信出版集团', 494, '88.00', '9787521764055', '2024-04-01', '2024-11-09 19:33:31.619722', '0', 99, '8.9', '平装', 0, 43, '未知', '2024-11-09 00:22:00.795471', 0, 0, 0);
INSERT INTO `b_book` VALUES (50, '性别经济学', 'https://img1.doubanio.com/view/subject/s/public/s34943060.jpg', '刘倩', '未知', '本书从经济学的角度，运用劳动经济学和人口学理论，深入浅出地探讨了教育、职场、爱情、生育等重要话题，将已有的社会实践变成可以传递的知识。刘倩博士多年来从事性别经济学的研究，本书是她对相关研究、积累和感悟做的一次系统性总结，希望帮助读者做最重要经济学参考，多一份理性，少一分迷惑。与传统宏观、金融、产业经济学等不同，本书更偏重女性通常会关注的议题。女性在成长过程中会遇到很多压力和挑战，特别是教育、职场、恋爱、婚姻、育儿和离婚几大方面。在重大人生抉择面前，如何做长期睿智的决定？例如大学毕业先工作还是继续读研？经济下行期毕业应该直接工作还是选择婚姻家庭？如何从性别视角关注提高我国的生育率？等等。', '中信出版社', 0, '68', '9787521764451', '2024-03-01', '2024-11-09 19:33:33.102922', '0', 99, '6.6', '平装', 2, 43, '未知', '2024-11-09 00:22:01.773794', 0, 0, 0);
INSERT INTO `b_book` VALUES (51, '小岛经济学', 'https://img9.doubanio.com/view/subject/s/public/s29585484.jpg', '彼得·希夫', '胡晓姣', '你一定非常想知道：通货膨胀到底是怎么来的？ 为什么中国要购买那么多的美国国债？ 扭转恶化的经济状况是该花钱，还是存钱？ 为什么有些国家很富有，而另外一些国家却很穷？ 席卷全球的经济危机又是怎么发生的？ 如何对经济领域的各种现象进行专业而又生动的分析，是一项艰巨的任务。如何让从9岁到90岁的读者都能通过一本书洞悉日常生活现象背后的经济规律，更是一项几乎不可能完成的任务。《小岛经济学》就是这样一本书，它通过插图、幽默的措辞以及讲故事的平实手法，将经济学从高不可攀的架子上取下来，放回到厨房的餐桌上。它本就该属于那个地方。 这个关于鱼、渔网、存钱、借钱的故事揭示了经济是如何运行的，映射出当今经济体制与政策暗藏的漏洞。希夫兄弟以机智幽默的手法阐释了经济增长的根源，贸易、储蓄及风险三者的重要性，滞胀的根源，利率的影响，政府的刺激机制、消费信贷的破坏性本质等问题。... 你一定非常想知道：通货膨胀到底是怎么来的？ 为什么中国要购买那么多的美国国债？ 扭转恶化的经济状况是该花钱，还是存钱？ 为什么有些国家很富有，而另外一些国家却很穷？ 席卷全球的经济危机又是怎么发生的？ 如何对经济领域的各种现象进行专业而又生动的分析，是一项艰巨的任务。如何让从9岁到90岁的读者都能通过一本书洞悉日常生活现象背后的经济规律，更是一项几乎不可能完成的任务。《小岛经济学》就是这样一本书，它通过插图、幽默的措辞以及讲故事的平实手法，将经济学从高不可攀的架子上取下来，放回到厨房的餐桌上。它本就该属于那个地方。 这个关于鱼、渔网、存钱、借钱的故事揭示了经济是如何运行的，映射出当今经济体制与政策暗藏的漏洞。希夫兄弟以机智幽默的手法阐释了经济增长的根源，贸易、储蓄及风险三者的重要性，滞胀的根源，利率的影响，政府的刺激机制、消费信贷的破坏性本质等问题。这些问题经常被讨论，却常常被误解。对于那些想走出误区，理解经济学基本理论与常识的读者，这本书会带来惊喜。', '中信出版社', 300, '48', '9787508672960', '2017-03-01', '2024-11-09 19:33:36.391712', '0', 99, '8.0', '平装', 0, 43, 'How an Economy Grows and Why It Crashes', '2024-11-09 00:22:04.254060', 0, 0, 0);
INSERT INTO `b_book` VALUES (52, '微观经济学的力量', 'https://img1.doubanio.com/view/subject/s/public/s34711640.jpg', '[日] 神取道宏', '陈雅静、刘鑫、李慧玲、林鑫', '神取道宏教授在东京大学讲授微观经济学，每一堂课都人山人海，每次授课都能收获学生的阵阵掌声。其微观经济学讲义内容在《经济研讨》连载时，导致杂志被抢购一空、多次断货。为此，神取道宏教授出版了这本《微观经济学的力量》，内容与写法都令人耳目一新。 本书用丰富的真实案例和贴近生活的细节，帮助读者理解经济学在现实世界中起作用的机制，让读者认识到日常小事和国际大事的背后，都是经济学规律在起作用。通读本书，读者将能完整地理解经济学的知识体系。 神取道宏教授秉持“所有知识点都从头讲起”的理念，用通俗有趣的语言和尽量少的数学计算，帮助读者理清微观经济学的底层逻辑。本书内容不仅包括微观经济学必备的与“市场机制”相关的知识，还着重增加了博弈论和信息经济学内容，并把经济学与管理学、政治学、社会学融会贯通，从而讲清经济学思维在世界运作中的切实作用。', '浙江大学出版社', 548, '98.00', '9787308244619', '2024-01-01', '2024-11-09 19:33:38.239497', '0', 99, '9.6', '平装', 0, 43, 'ミクロ経済学の力', '2024-11-09 00:22:05.520394', 0, 0, 0);
INSERT INTO `b_book` VALUES (53, '宝可梦视觉艺术史', 'https://img3.doubanio.com/view/subject/s/public/s34799747.jpg', '英国未来出版社 / 编著', '崔天祥', '欢迎来到宝可梦的世界！宝可梦系列已经有25年的历史了，最初是日本漫画家田尻智为孩子们创作的漫画。伴随着当年的Game Boy游戏机而创作的游戏，宝可梦系列一炮而红。从那时起，宝可梦开始风靡全球。宝可梦系列在25年中不断地保持内容的更新，并推出了包括游戏、动漫、漫画及其衍生品的庞大娱乐帝国，吸引着全世界不同年龄段的人群。在中国，几乎很难找到一个不认识皮卡丘的年轻人。本书是为了庆祝宝可梦系列25周年而编著的。书中回顾了25年来所有的宝可梦故事，从第一代到现今的第八代，书中详尽描述了每个故事的创作背景、探索宝可梦系列背后的故事。无论你是宝可梦的新手还是专家，当跟随本书一起踏上石英高原的时候，你一定会爱上这段神奇的旅程。', '人民邮电出版社', 232, '78', '9787115617446', '2023-07-01', '2024-11-09 19:32:00.083359', '0', 99, '6.8', '平装', 0, 44, '未知', '2024-11-09 00:41:03.948369', 0, 0, 0);
INSERT INTO `b_book` VALUES (54, '黑猫侦探 1：阴影之间', 'https://img1.doubanio.com/view/subject/s/public/s28059508.jpg', '[西]胡安·卡纳莱斯（Juan Díaz Canales） 文', '赵心舒', '这是1950年的纽约： 爵士乐、烟草和浮华的世界 这是智勇双全的私家侦探： 他爱猫，他有九条命； 他不爱喝牛奶，他烟不离手； 他没有抑郁症，他有幽默感： ……谁说猫科动物只会卖萌？ 《黑猫侦探》（Blacksad）凭借其冷硬派侦探小说风格的叙事、黑色电影风格的旁白及场景氛围、手工上色的水彩画风格、以动物喻人堪比《动物农庄》的犀利，被誉为新生代欧漫中的最经典之作。 身为一位忧郁中不乏幽默、风衣不离身的私家侦探主角，黑猫墨萨德游走于20世纪50年代的美国都市。在他眼前，是迷宫般的城市、血腥的案件、狡诈的对手和不可破解的疑团；而他的身后，是高层腐败、种族歧视、麦卡锡主义的时代幽灵……随着案情的峰回路转，惊人的真相也逐渐浮出水面，拷问着所有人的灵魂。', '北京联合出版公司', 56, '68.00', '9787550250413', '2015-06-01', '2024-11-09 19:32:04.101413', '0', 99, '8.4', '精装', 1, 44, 'Blacksad : Quelque part entre les ombres', '2024-11-09 00:41:08.769220', 0, 0, -1);
INSERT INTO `b_book` VALUES (55, '漫长岁月，没有一天是适合上班的2', 'https://img1.doubanio.com/view/subject/s/public/s34924798.jpg', '动物办公室', '未知', '★百万粉丝翘首以待，超治愈漫画作者动物办公室新作来袭，抖音、小红书博主强烈推荐！ ★再现上班族的真实状态，随手一翻，治愈一切不可爱。 ★如果最近有点累，就休息一下吧！一口气读完，带你逃离工作的重压！ ★随书附赠超可爱贴纸：祝大家接下来都是好消息！ ★100篇生动有趣的“打工”日常，全彩印刷，可爱爆棚！ ★便携小开本，裸背锁线装订，可180度平摊阅读，温暖加倍。 你有多久没有好好享受玩乐时光，有多久没有约上朋友好好聚聚，有多久没有出去散散心了？ 本书延续了第一册温暖治愈的画风，继续向大家讲述这些可爱小动物的日常。它们不想上班，期待周末，工作日早上会抓紧在下一个闹钟响之前再睡一觉。它们也享受生活，彼此陪伴，互相治愈。漫长岁月，没有一天是适合上班的，但每一天都值得好好过。', '湖南文艺出版社', 164, '49.8', '9787572619298', '2024-07-01', '2024-11-09 19:32:05.572157', '0', 99, '9.1', '裸脊锁线', 0, 44, '未知', '2024-11-09 00:41:11.131081', 0, 0, 0);
INSERT INTO `b_book` VALUES (56, '谁能拒绝一只快乐小狗呢', 'https://img9.doubanio.com/view/subject/s/public/s34304356.jpg', '书单狗', '未知', '未知', '江苏凤凰文艺出版社', 208, '59.9', '9787559469120', '2022-09-01', '2024-11-09 19:32:07.715105', '0', 99, '6.9', '平装', 0, 44, '未知', '2024-11-09 00:41:13.359505', 0, 0, 0);
INSERT INTO `b_book` VALUES (57, '这题超纲了1', 'https://img1.doubanio.com/view/subject/s/public/s33987008.jpg', '木瓜黄', '未知', '如果上天再给我一次机会，我一定会离这堵墙远一点。 谁能想到，一道惊雷， 让针锋相对的校霸许盛和学神邵湛的关系， 发生了翻天覆地的变化！ 灵魂互换不可怕，人设崩了才可怕！ OK，那就从同桌做起！ 什么？学神爱游戏？校霸在学习？ 对不起，这题超纲了！ 临江六中高二（7）班，等你来解。', '长江文艺出版社', 240, '42.00 ', '9787570222490', '2021-08-01', '2024-11-09 19:32:08.959901', '0', 99, '8.5', '平装', 1, 44, '未知', '2024-11-09 00:41:15.220743', 0, 0, 0);
INSERT INTO `b_book` VALUES (58, '灯神   未偿之愿', 'https://img9.doubanio.com/view/subject/s/public/s34838006.jpg', '深海巨狗', '未知', '本书是作者个人原创漫画故事，分为上、中、下三卷，讲述了凡人少年瑞德意外在山润中得到了神灯，于是与神灯精灵缔结下了三个愿望的契约，其中一个是他想成为大英雄，精灵实现了他的愿望。 内容摘要他如愿以偿后，却发现一切都是虚假的，他不得不依靠自己的努力再次打拼。精灵也化身为人类，与他共同经历了其中的种种悲欢离合，瑞德在这样的成长历练中渐渐懂得梦想是要靠自己的努力去拼搏 的道理，而精灵则感受到了人间的勇敢和爱。画面基本架构采用经典黑白漫画的形式，人物刻画有一定的深度，故事感人，深受读者的好评。', '浙江摄影出版社', 0, '188', '9787551448055', '2024-01-01', '2024-11-09 19:32:12.348949', '0', 99, '9.5', '未知', 0, 44, '未知', '2024-11-09 00:41:18.863410', 0, 0, 0);
INSERT INTO `b_book` VALUES (59, '葬送的芙莉蓮 01', 'https://img2.doubanio.com/view/subject/s/public/s33895401.jpg', '山田鐘人', '里歐貝萊', '身為精靈族的芙莉蓮與同伴欣梅爾、艾冉、海塔花了10年打倒了魔王凱旋回到王都，眾人接受了國王接見與表揚。正值每隔50年出現一次的半世紀流星雨，芙莉蓮還天真地說下次要帶大家去一個很棒的地方欣賞流星。然而50年對於身為精靈的她根本不算什麼，然而下次見面時欣梅爾已經成了老頭子，還自嘲這是最後一次跟大家相聚。後來欣梅爾的離世讓芙莉蓮開始思考時間與生命的意義…。 身為精靈的主角‧芙莉蓮對於時間的概念有別於常人，透過老友的相繼離世讓她反省過去的自己，開始試著去關心身邊的人事物。藉由她的冒險之旅來探討生命的意義。', '葬送的芙莉蓮', 192, 'NT$100', '9789572666029', '2021-05-13', '2024-11-09 19:32:14.614169', '0', 99, '9.2', '平装', 0, 44, '葬送のフリーレン', '2024-11-09 00:41:21.291799', 0, 0, 0);
INSERT INTO `b_book` VALUES (60, '给年轻读者的日本亚文化论', 'https://img2.doubanio.com/view/subject/s/public/s34606121.jpg', '[日] 宇野常宽', '刘凯', '作为一名大学老师，本书作者以本科课程讲义的形式将亚文化的发展史呈现给读者，内容覆盖面广，内在逻辑清晰，通俗易懂，生动有趣。从二次元动漫的成长讲到三次元偶像的成长，同时还探讨了亚文化在未来可能的发展方向。书中谈及了很多与宅文化相关的热门话题，在带领读者回顾热血青春的同时，也探索了亚文化发展背后的深意。', '漓江出版社', 288, '58.00', '9787540794347', '2023-07-01', '2024-11-09 19:32:16.460590', '0', 99, '7.5', '精装', 1, 44, '若い読者のためのサブカルチャー論講義録', '2024-11-09 00:41:23.592955', 0, 0, -1);
INSERT INTO `b_book` VALUES (61, '青春燃烧', 'https://img3.doubanio.com/view/subject/s/public/s34044357.jpg', '徐靖', '未知', '宫崎骏、高畑勋、押井守、富野由悠季、大友克洋、安彦良和、川口开治……他们注定是日本动漫产业历史上影响最为深远、最为举足轻重的一代人，他们大多在20世纪六七十年代度过青春期，而那个时代，正是日本战后左翼社会运动最激烈的时代。日美安保条约掀起了长达十多年的社会运动风潮，正是这场日本历史上空前绝后的社会运动，洗礼了整整一代日本年轻人，其中的很多人投身日本动漫产业，共同打造出日本战后对世界影响最深远的文化产业，铸就了战后日本动漫的黄金时代。 本书从动漫人和动漫作品的角度出发，探寻黄金一代动漫人的青春岁月，追寻左翼社会运动与日本动漫亚文化的关联与脉络。', '漓江出版社', 280, '58.00', '9787540791483', '2021-11-01', '2024-11-09 19:32:18.382227', '0', 99, '7.3', '平装', 1, 44, '未知', '2024-11-09 00:41:25.503924', 0, 0, 0);
INSERT INTO `b_book` VALUES (62, '机器猫哆啦A梦（共45册）', 'https://img3.doubanio.com/view/subject/s/public/s2555673.jpg', '[日本] 藤子·F. 不二雄', '碧日', '故事从一个小学4年级学生大雄开始。大雄并不是个非常优秀的学生，像不少小孩子一样，他在学校里成绩平平，也没有其他的什么长处。有一天，大雄打开自己的课桌，一只猫型机器人突然从抽屉里跳了出来，而这就是哆啦A梦。它是由大雄的后代从22世纪里给送来的，目的是帮助大雄解决许多他暂时无法解决的问题，并且尽可能地满足大雄的愿望。整个故事围绕着大雄和哆啦A梦这两个主角展开。 哆拉A梦的故事将孩子们带进了一个奇妙的、极富幻想力的世界，也正因此，哆拉A梦能够作为一个长青的形像，伴随了几代少年儿童的成长。', '吉林美术出版社', 0, '180.00', '9787538613117', '2002-09-01', '2024-11-09 19:32:29.392449', '0', 99, '9.7', '平装', 1, 44, '未知', '2024-11-09 00:41:36.184555', 0, 0, 0);
INSERT INTO `b_book` VALUES (63, '超长篇机器猫哆啦A梦1', 'https://img3.doubanio.com/view/subject/s/public/s6152757.jpg', '藤子﹒F﹒不二雄', '王永全', '本书是日本著名卡通《机器猫》中的一本。全书内容生动有趣，卡通形象活泼，极富想象力。让我们和大雄、叮当一起开始又一次的历险吧！', '吉林美术出版社', 192, '5.95', '9787538604962', '1999-01-01', '2024-11-09 19:33:01.210264', '0', 99, '9.2', '平装(无盘)', 3, 44, '大长编ドラえもん のび太の恐竜', '2024-11-09 00:41:38.930344', 0, 0, 0);
INSERT INTO `b_book` VALUES (64, '弗洛伊德与为什么鸭', 'https://img9.doubanio.com/view/subject/s/public/s34726984.jpg', '徐慢慢心理话', '未知', '————编辑推荐 ★ 如果你时常自我怀疑，那么本书就是为你而写 ★ 知名心理学家武志红监制，用简单的心理学道理，化解期待和现实之间的冲突 ★ 《抱住棒棒的自己》作者“徐慢慢心理话”新作，收录50篇心理学治愈漫画，新增丰富有趣的心理学知识阐释 ★ 专业！涵盖自我认同、人际关系、情绪管理、心理创伤等热门话题，凝聚多位心理咨询师、学者多年的专业经验 ★ 解压！50个心理学方法，专治拧巴、纠结、自我怀疑、自我攻击等各种给自己添堵的疑难杂症 ★ 轻松！用简单化解复杂，零基础心理解压书；画面干净简单，画风温暖治愈；故事感十足，充满感染力 ————内容简介 50个心理学治愈漫画，解开你放不下的心结。 “他们是不是对我不高兴了？”“我是不是太小题大做了？”“没有人喜欢我吧？” 那些被一次次咽下去的情绪，会变成心结，无形中带来伤害。 “原来我可以不用那么好。”“我的感... ————编辑推荐 ★ 如果你时常自我怀疑，那么本书就是为你而写 ★ 知名心理学家武志红监制，用简单的心理学道理，化解期待和现实之间的冲突 ★ 《抱住棒棒的自己》作者“徐慢慢心理话”新作，收录50篇心理学治愈漫画，新增丰富有趣的心理学知识阐释 ★ 专业！涵盖自我认同、人际关系、情绪管理、心理创伤等热门话题，凝聚多位心理咨询师、学者多年的专业经验 ★ 解压！50个心理学方法，专治拧巴、纠结、自我怀疑、自我攻击等各种给自己添堵的疑难杂症 ★ 轻松！用简单化解复杂，零基础心理解压书；画面干净简单，画风温暖治愈；故事感十足，充满感染力 ————内容简介 50个心理学治愈漫画，解开你放不下的心结。 “他们是不是对我不高兴了？”“我是不是太小题大做了？”“没有人喜欢我吧？” 那些被一次次咽下去的情绪，会变成心结，无形中带来伤害。 “原来我可以不用那么好。”“我的感受很重要。”“我喜欢我自己。” 这些简单的心理学道理，陪伴你接纳人生中的遗憾、焦虑甚至恐惧。 本书的漫画轻快短小，呈现了一猫一鸭眼里的人类世界，用孩子般的纯粹治愈大人世界的疲惫。 小鸭用孩子的视角解读大人的烦恼：一边拖延一边产生负罪感，嘴上说没关系但还是很在意他人的评价，期待与现实总有反差……小猫用心理学知识化解了这些烦恼，引导小鸭走出负面情绪，重建自信，更加勇敢而快乐地生活。 你可以在它们温暖的对话中，不知不觉地消化和吸收心理学道理，就像猫教会了鸭一样，教会自己放下烦恼，爱上自己。 愿你被这个世界温柔以待，更愿你被自己温柔以待。', '浙江文艺出版社', 248, '59.80', '9787533973186', '2023-08-01', '2024-11-09 19:33:02.925810', '0', 99, '7.9', '平装', 5, 44, '未知', '2024-11-09 00:41:41.110480', 0, 0, 0);
INSERT INTO `b_book` VALUES (65, '逃走的人', 'https://img1.doubanio.com/view/subject/s/public/s34914288.jpg', '李颖迪', '未知', '在难以喘息的当代生活，人们在策划一场逃离 从“唯一正常”的生活逃走，从原生家庭、社会关系、狗屁工作中逃走，我们将通往何处？ · 一场将自己作为试验品的生活实验 ——“不想要的就不要了！” 买一间两三万元的房子，囤积食物、养猫 不上班，不社交，不恋爱，维持最低欲望的生活，脱离轨道，与人隔绝 · 追踪三年，从赛博角落到废弃都市，走入陌生人紧闭的家门 资深记者李颖迪探索我们这一代疲倦但仍拥有微小勇气的心灵 · 许知远、杨潇、袁长庚、杜强联合推荐 “对倦怠时代一次身体力行的求解，一次重要的疗愈。”——杨潇 作家，著有《重走》 · 鹤岗，东北边陲之城，因极低的房价而频繁出现在新闻媒体头条。 在鹤岗神话的背后，是一座座同样资源枯竭、经济衰退、被世人遗忘的城镇，河南鹤壁、安徽淮南、河北燕郊，以及一个个具体的、迷茫的、涌向那里的年轻人。这是一群逃离者的故事，也关乎一... 在难以喘息的当代生活，人们在策划一场逃离 从“唯一正常”的生活逃走，从原生家庭、社会关系、狗屁工作中逃走，我们将通往何处？ · 一场将自己作为试验品的生活实验 ——“不想要的就不要了！” 买一间两三万元的房子，囤积食物、养猫 不上班，不社交，不恋爱，维持最低欲望的生活，脱离轨道，与人隔绝 · 追踪三年，从赛博角落到废弃都市，走入陌生人紧闭的家门 资深记者李颖迪探索我们这一代疲倦但仍拥有微小勇气的心灵 · 许知远、杨潇、袁长庚、杜强联合推荐 “对倦怠时代一次身体力行的求解，一次重要的疗愈。”——杨潇 作家，著有《重走》 · 鹤岗，东北边陲之城，因极低的房价而频繁出现在新闻媒体头条。 在鹤岗神话的背后，是一座座同样资源枯竭、经济衰退、被世人遗忘的城镇，河南鹤壁、安徽淮南、河北燕郊，以及一个个具体的、迷茫的、涌向那里的年轻人。这是一群逃离者的故事，也关乎一种新型的生活方式。 买一间两三万元的房子，囤积食物、养猫，不上班，不社交，不恋爱，靠积蓄维持最低欲望的生活，与人隔绝。从互联网的隐秘角落，到大雪覆盖的边缘小城，作者李颖迪为我们展现了人们如何策划和实践自己的逃离。 她记录了逃离者的来处——富士康工人、保安、平台客服，这些工作给人的压缩感与漂泊感，还有冷漠疏离的家庭，无法寻得的爱意；也与他们共度脱轨后的人生——在鹤岗，面对漫长的黑夜，窝在温暖的旧房子里，讨论生的意义，以及，孤独的死。 这是一次漫长的旅途，闯进被雪封闭的城市，走入陌生人紧闭的家门，也试图探索我们这一代疲倦但仍拥有微小勇气的心灵：说到底，如何才能得到自由呢？自由又将带我们通向何方？ · 这本书拓展了我的视野，原来一群年轻人是以这样的方式应对时代。逃逸或是一种怯懦，也可能是一种勇气，一些时候，我们需要脱轨来辨认自身。李颖迪的观察与行文皆细腻、敏锐，若能再对时代语境有更深入的呈现，就更为完美。——许知远 作家，单向空间创始人 对倦怠时代一次身体力行的求解，可能也是一次重要的疗愈。——杨潇 作家，著有《重走》 《逃走的人》象征着新一代纪实作者的某种态度。他人的世界不再只是抵达“文明”、“公正”或“理想”的文字中介，写作不再因其不可置疑的道德优越性而板起脸来教训人。相反，他人是作者散落于人间的无数镜像，写作是破除“他-我”二元、恢复生活自身情感粘连状态的寻常功课。颖迪的文字和她笔下的人物一样，有一种让人心动的朴拙和踟蹰。“逃”，有的时候是故作决绝的牵绊，是看似毁弃的重建。在这场时代造就的游戏当中，规则、路径、方法、主张，无一明确，常常是还未声张就已经气馁。一切都尚未完成，甚至连写作本身都带有失败的气息。别慌，我确信这个文本的意义在于未来，在于告诉后来者曾经的“今天”如何成为造就“明天”的“昨天”。——袁长庚 教师、人类学学者 我在想，如果我来写这本书会怎么写，也没有具体的想法。我一直觉得，人生就像在一个光滑的玻璃上向下滑行，直到堕入虚无，而让我们免于这种坠落感的，无非是在滑行时奋力抓住点什么，财富、家庭、成就，你知道没有什么意义，唯一的意义只是减缓下坠时的恐慌之情——甚至在设法抓住它们的时候，你也知道毫无意义，有意义的只是抓住本身。这实在是生而为人最幻灭的地方。读李颖迪的故事，我的这种想法变得非常具体。——杜强 媒体人、非虚构作家', '文汇出版社', 240, '59', '9787549642649', '2024-08-01', '2024-11-09 19:33:40.873559', '0', 99, '8.2', '精装', 0, 41, '未知', '2024-11-09 19:23:11.547363', 0, 0, 0);
INSERT INTO `b_book` VALUES (66, '东京八平米', 'https://img1.doubanio.com/view/subject/s/public/s34361490.jpg', '[日]吉井忍', '未知', '身居八平米，坐拥全世界 《东京八平米》是日籍华语作家吉井忍的全新散文集。八平米在日本被称为“四畳半”，即只有四个半榻榻米大小的房间，租金便宜。 因为八平米房间没有厨房和冰箱，也没有洗澡间和洗衣机，她兴致勃勃地写起如何饮食起居，以及亲历的日本庶民生活日常。居住空间逼仄，她 把生活延伸到城市的街头和公共空间，写东京的洗衣店、钱汤、咖啡馆、24小时漫咖店、独立电影院、小餐厅等等，同时写下她遇见的东京平民的故事，这些人物是“看不见的、真正的东京人”，他们的故事为我们铺陈日本的世情百态，亦照见自身。 孤独的城市里，人如何找到属于自己的地方和存在意义？吉井忍的“八平米”经济学让人看到一种充满新鲜活力的生活的可能：省下昂贵房租，物质诉求简单，在都市中享受丰富的精神文化生活。城市也可以是一个流动的家，一个人也可以快乐自足。 * 【特别推荐】 * 孤独的城市里，人如何... 身居八平米，坐拥全世界 《东京八平米》是日籍华语作家吉井忍的全新散文集。八平米在日本被称为“四畳半”，即只有四个半榻榻米大小的房间，租金便宜。 因为八平米房间没有厨房和冰箱，也没有洗澡间和洗衣机，她兴致勃勃地写起如何饮食起居，以及亲历的日本庶民生活日常。居住空间逼仄，她 把生活延伸到城市的街头和公共空间，写东京的洗衣店、钱汤、咖啡馆、24小时漫咖店、独立电影院、小餐厅等等，同时写下她遇见的东京平民的故事，这些人物是“看不见的、真正的东京人”，他们的故事为我们铺陈日本的世情百态，亦照见自身。 孤独的城市里，人如何找到属于自己的地方和存在意义？吉井忍的“八平米”经济学让人看到一种充满新鲜活力的生活的可能：省下昂贵房租，物质诉求简单，在都市中享受丰富的精神文化生活。城市也可以是一个流动的家，一个人也可以快乐自足。 * 【特别推荐】 * 孤独的城市里，人如何找到属于自己的地方和存在意义？吉井忍的“八平米”经济学让人看到一种充满新鲜活力的生活的可能：省下昂贵房租，物质诉求简单，在都市中享受丰富的精神文化生活，用自己的方式找到舒适感和归属感。城市也可以是一个流动的家，一个人也可以快乐自足。 东京曾经是“全球物价最贵城市”排名前列的常客，但这只不过是学到东京一些皮毛的外国记者们的偏见。东京其实是个适合居住的地方呢，我在心中长年抱有这样的不平，这也成为了我过去写了不少文章、做了好几本与东京相关的书的基本动力。 东京、京都、上海、北京……不管是在什么城市，吉井很擅长找出价格合理的房子。有时候她的居所只够睡觉，但在房子的外面，无论什么时候都有便捷的城市设施。你心爱的餐厅可以当作自家的餐室，喫茶店成为你的客厅，书店和图书馆是书房，健身房则是带有三温暖的浴室。 把城市当作自己的房间的延伸，并将其运用自如。吉井非常明白这个“城市生存技巧”的秘诀。这就像动物可以本能地找到最舒适的地方筑巢，也又像它们时机一到，干脆离巢飞走。 ——都筑响一（独立编辑、摄影师） * 【编辑推荐】 * ★	身居八平米，坐拥全世界。吉井忍“八平米”经济学，展现都市生活的另一种可能。日籍华语作家吉井忍的全新散文集，献给将要创建新生活的人。——离开日本二十年后，吉井忍回到东京，租住东京中心地带的八平米房间，重建在地的生活。八平米是生活的原点，东京整个城市则是生活的延长线。物质与精神的断舍离，带来经济空间和身心自由。吉井忍的“八平米”经济学，为每一个身心俱疲的现代人提供生活的另一种可能：珍惜此时此刻，用自己的方式，找到你所需要的舒适感和归属感，赋予明天继续生活的活力。 ★	没有厨房、冰箱、洗澡间、洗衣机，如何在八平米房间自在过活？都市新型“蜗居”生活，东京深度探索指南。城市也可以是一个流动的家，一个人也可以快乐自足。——因为八平米房间空间局促，日常生活延伸到东京的街头和公共空间：洗衣店、钱汤、漫咖、小餐厅、咖啡馆，此外还有每周的独立电影院巡礼、听落语、学三味线、看展览等。便捷舒适的公共空间、生机勃勃的多元文化、热情活力的市井生活，你的“小”不成问题，因为外面的世界足够大。 ★	每个人都有自己的“八平米”。深入城市细部拜访“附近”，讲述东京平民故事，看见真正的普通人。孤独的城市里，人如何找到属于自己的地方和存在意义？——人来人往的都市中，偶尔的相遇带来宝石一般的回忆：被称为“活字典”的金星堂咖啡馆主人大泽先生、快九十岁的犀利幽默的Mako咖啡老铺女主人、热情善良勤劳的荞麦面店女店主……朴实真诚的东京人，流动隽永的东京风景，呈现生活的本真面貌。“我相信，每个人都有自己的八平米，以及对其的定义，它不指实际面积，而是指心中的某一块地方。也许八平米在别人眼里是畸形状态，但它能够让你活在自己的世界里。它也许是某个地方或某个人，在那里你不用伪装，可以好好地面对自我，尽可能地去享受当下。” ★	著名书装设计师陆智昌操刀设计，清新典雅，质感舒适，巧妙呼应“四畳半”的布局。——著名摄影师都筑响一和作家吉井忍摄影，百余幅彩色图片呈现“八平米”和东京这座城市流动的风景。全书使用雅致书纸印刷，触感柔软，轻盈便携，适于在日常与旅途中阅读。', '上海三联书店', 328, '79.00', '9787542678652', '2023-01-01', '2024-11-09 19:33:42.558562', '0', 99, '8.4', '平装', 0, 41, '未知', '2024-11-09 19:23:13.471629', 0, 0, 0);
INSERT INTO `b_book` VALUES (67, '身后无遗物', 'https://img3.doubanio.com/view/subject/s/public/s34887722.jpg', '[日] 伊藤比吕美', '蕾克', '“我五十多岁时度过了快乐的更年期，现在六十多，感觉人生在褪色。老去这件事，实在太寂寞了。” 这本书是作者进入60岁后人生大小事的记录，她以日记般平易近人的笔调，淡然地叙述经历的生离死别与衰老。 母亲住院四年离去，在为母亲整理遗物时感慨“给父母送终和青春期一样，是人生必经的过程”，发现母亲只拥有一点东西，于是作者也希望可以如母亲般身后不留一物地死去。 丈夫如疾风暴雨般衰老，从住进急诊室，到病逝，作者一边照顾丈夫，一边处理各种杂事，还要一边写作一边照顾小狗；书中还记录了丈夫去世后，她所感受到的老去的无边寂寞，以及独自生活的不便，更有活得自我的自由。 作者没有因为老去而放弃自己，而是努力培养自己的兴趣爱好，如跳尊巴、养狗、做饭、写作，让自己的生活充实有趣。 “人终有一死，没办法。但我舍不得。若身后不留一物地死去，实在很豁达，很利落。”作者一个人面对衰老、死... “我五十多岁时度过了快乐的更年期，现在六十多，感觉人生在褪色。老去这件事，实在太寂寞了。” 这本书是作者进入60岁后人生大小事的记录，她以日记般平易近人的笔调，淡然地叙述经历的生离死别与衰老。 母亲住院四年离去，在为母亲整理遗物时感慨“给父母送终和青春期一样，是人生必经的过程”，发现母亲只拥有一点东西，于是作者也希望可以如母亲般身后不留一物地死去。 丈夫如疾风暴雨般衰老，从住进急诊室，到病逝，作者一边照顾丈夫，一边处理各种杂事，还要一边写作一边照顾小狗；书中还记录了丈夫去世后，她所感受到的老去的无边寂寞，以及独自生活的不便，更有活得自我的自由。 作者没有因为老去而放弃自己，而是努力培养自己的兴趣爱好，如跳尊巴、养狗、做饭、写作，让自己的生活充实有趣。 “人终有一死，没办法。但我舍不得。若身后不留一物地死去，实在很豁达，很利落。”作者一个人面对衰老、死亡、告别，一步步走进孤独，但她从未忘记自己是谁，她不再惧怕寂寞，活出了属于自己的灿烂人生。 ------ 1.《闭经记》作者伊藤比吕美，一个人对抗孤独与衰老的生活战歌。 这本书是作者进入60岁后人生大小事的记录，她以日记般平易近人的笔调，记录一个人面对的死亡与告别，对抗着孤独与衰老。 2.“人终有一死，没办法。但我舍不得。若身后不留一物地死去，实在很豁达，很利落。” 3.我们会衰老，会寂寞，会孤独，但那其实也不是那么可怕的事情，你依然可以拥有平凡幸福的生活。 父母不在，女儿们离开，丈夫去世，作者一个人面对衰老、死亡、告别，一步步走进孤独，但她从未忘记自己是谁，她不再惧怕寂寞，活出了属于自己的灿烂人生。 4.日子有难过之时，自然也会有开心的时候。 面对衰老，面临女儿长大离家、丈夫离去、宠物离世等接连不断的告别与孤独时，她也曾空虚惆怅。但她并未因此一蹶不振，开始迎接生活新的改变。 她外出旅行，和朋友们见面，并受邀回到日本去早稻田大学讲课，心情也逐渐变好。 5.豁达坦然的生活观、生死观，淡然地叙述经历的生离死别与衰老。 人生是一个不断褪色的过程，每个人都会衰老，而在这条走向衰老的漫长的路上，我们不得不面对死亡、孤独等等课题，就跟在成长的过程中，必须面临升学是一样的道理。', '湖南文艺出版社', 280, '49.80', '9787572617294', '2024-06-01', '2024-11-09 19:33:45.599713', '0', 99, '8.1', '平装', 0, 41, 'たそがれてゆく子さん', '2024-11-09 19:23:46.668410', 0, 0, 0);
INSERT INTO `b_book` VALUES (68, '伴你老去的勇气', 'https://img3.doubanio.com/view/subject/s/public/s34834117.jpg', '[日] 岸见一郎', '敬雁飞', '陪伴老去的父母，更需要“被讨厌的勇气”！ 老龄化时代，写给照护者的治愈之书。 独生子女、养老困境、父母难相处、阿尔茨海默病……成年人不忍面对的话题。 经典之作《被讨厌的勇气》作者岸见一郎照护晚年父亲的动情实录。 ◆ 内容简介 ◆ 当父亲的记忆逐渐消逝，岸见一郎的世界也随之改变。这位忙碌的心理学家，曾因工作和家庭责任，忽略了与独居父亲的联系。然而，随着父亲被诊断出患有阿尔茨海默病，岸见一郎的生活重心发生了转变。 在陪伴父亲的日子里，岸见一郎深刻体会到了照护工作的艰辛。面对无法回避的现实，他选择了积极的态度，用爱、智慧和创意，将照顾父亲这件充满挑战的任务变得轻松愉快。 这是作者照护身患阿尔茨海默病父亲的实录，也是他自我疗愈的一部动情之书。 ◆ 编辑推荐 ◆ ◎  “自我启发之父”岸见一郎以亲身经历写成的“养老版《被讨厌的勇气》”。所谓的靠近父母，其实是在... 陪伴老去的父母，更需要“被讨厌的勇气”！ 老龄化时代，写给照护者的治愈之书。 独生子女、养老困境、父母难相处、阿尔茨海默病……成年人不忍面对的话题。 经典之作《被讨厌的勇气》作者岸见一郎照护晚年父亲的动情实录。 ◆ 内容简介 ◆ 当父亲的记忆逐渐消逝，岸见一郎的世界也随之改变。这位忙碌的心理学家，曾因工作和家庭责任，忽略了与独居父亲的联系。然而，随着父亲被诊断出患有阿尔茨海默病，岸见一郎的生活重心发生了转变。 在陪伴父亲的日子里，岸见一郎深刻体会到了照护工作的艰辛。面对无法回避的现实，他选择了积极的态度，用爱、智慧和创意，将照顾父亲这件充满挑战的任务变得轻松愉快。 这是作者照护身患阿尔茨海默病父亲的实录，也是他自我疗愈的一部动情之书。 ◆ 编辑推荐 ◆ ◎  “自我启发之父”岸见一郎以亲身经历写成的“养老版《被讨厌的勇气》”。所谓的靠近父母，其实是在消除负罪感，偿还感，重建自己。写给老龄化时代，成年人必读的生命读本。 ◎  要老人还是要工作，中年独生子女的痛。在老龄化不断加深的背景下，老年阿尔茨海默病频发，空巢老人浮现心理危机，成年人如何应对？如何改善与父母的关系，接纳他们老去的事实？什么是认知症，都分为哪些类型？我们能为年迈患病的父母做些什么？老人性格不好，不讲理，我该怎么应对？除了个人，社会和养老照护机构应该承担哪些责任？ ◎  用阿德勒心理学克服子女养老的心理难题。岸见一郎从阿德勒心理学出发，六个维度思考，科学认识阿尔茨海默病，减轻照护者负担，重新构建家庭关系，通过自身、父母、社会的三方力量，寻求幸福晚年。 ◎  养老不是还父母债，也不需自我绑架。养老的质量取决于亲子关系，子女需要正视父母老去的事实，积极调整心态，阿尔茨海默病需要早发现、早干预。从老人的角度理解老人，找出与老年人的相处之道。 ◎  《请你迷失在我身旁》重译精编版，文本更动人、流畅，还原作者的真实情绪。 ◎  北京健康教育协会常务理事杨军做序推荐；国家康复辅具研究中心标准与理论研究部主任 罗椅民诚意推荐。 ◆ 专家推荐 ◆ 岸见一郎先生以医者和作者的视角，将自己照护父亲的心路历程以及照护心得写成了这本书。他诠释和解答了我们能为陪伴我们长大的父母做些什么、如何改善与父母的关系、如何做好心理准备来陪伴渐渐老去的父母、接纳父母的变化、理解父母的言行并恰当地应对、避免与父母陷入不必要的冲突等已经遇到过的或将要遇到的种种困惑。 ——杨军 北京健康教育协会常务理事、北京高血压防治协会副秘书长 ◆ 作者简介 ◆ [日]岸见一郎 心理学家、哲学家，1956 年生于京都。 曾在京都大学研究生院文学究系攻读博士学位，专攻西洋哲学史。1989 年起致力于研究希腊哲学和阿德勒心理学。译著有阿尔弗雷德·阿德勒的《个人心理学讲义》和《人为什么会患神经病》，著有《被讨厌的勇气》《幸福的勇气》《阿德勒心理学入门》等多部心理学长销力作。', '人民邮电出版社', 208, '59.80', '9787115640482', '2024-07-01', '2024-11-09 19:33:47.155089', '0', 99, '7.8', '平装', 0, 41, '未知', '2024-11-09 19:23:48.150166', 0, 0, 0);
INSERT INTO `b_book` VALUES (69, '饮食的迷思', 'https://img1.doubanio.com/view/subject/s/public/s34930348.jpg', '蒂姆·斯佩克特', '李超群', '五年后新修订 数据、文献、项目进展等方面增订上千处。中文版亦提升了翻译，增附术语译名表。 打破迷思，看清饮食的真面貌 计算卡路里没有用；靠运动很难长久减肥；无糖饮料也不健康；贸然吃维生素补充剂可能有害…… “学霸”作者借上万名同卵双胞胎数据和数十年研究，为读者解析代谢的奥秘和全部营养成分，匡正俗见，令你对饮食全面知其所以然。 剖析常见都市流行饮食法 你还将看到：生酮、阿特金斯、原始人饮食等方案都有什么不可取之处；为什么地中海饮食比较健康；为什么应持有多样化、不执迷于单一成分的饮食理念…… 现身说法，拒绝“减肥道德绑架” 作者被肥胖者要拆窗破墙才能出门就医的处境刺激，全情投入研究；为此他不但不放过自己，也拉儿子和同事一起做试验，吃/不吃特定食物，检测便样，汇报感受，更促成了已汇集200万人样本的“众筹”菌群检测项目。多年研究令他有底气指出：发胖不是因为... 五年后新修订 数据、文献、项目进展等方面增订上千处。中文版亦提升了翻译，增附术语译名表。 打破迷思，看清饮食的真面貌 计算卡路里没有用；靠运动很难长久减肥；无糖饮料也不健康；贸然吃维生素补充剂可能有害…… “学霸”作者借上万名同卵双胞胎数据和数十年研究，为读者解析代谢的奥秘和全部营养成分，匡正俗见，令你对饮食全面知其所以然。 剖析常见都市流行饮食法 你还将看到：生酮、阿特金斯、原始人饮食等方案都有什么不可取之处；为什么地中海饮食比较健康；为什么应持有多样化、不执迷于单一成分的饮食理念…… 现身说法，拒绝“减肥道德绑架” 作者被肥胖者要拆窗破墙才能出门就医的处境刺激，全情投入研究；为此他不但不放过自己，也拉儿子和同事一起做试验，吃/不吃特定食物，检测便样，汇报感受，更促成了已汇集200万人样本的“众筹”菌群检测项目。多年研究令他有底气指出：发胖不是因为你意志力薄弱，而更可能是基因、菌群结构、家庭饮食、用药、食品添加剂等多种因素的后果。 教给你应对纷繁信息的意识和方法 作者展示了横断面研究、小样本观察、对照组研究、长期跟踪、荟萃分析等方法下的结论，评价各自的信度，令你面对一贯纷繁芜杂的健康类内容时有章可循。 当今都市流行各种所谓“健康”饮食法：生酮、阿特金斯、原始人饮食……各种营养成分也都受到过“健康”的追捧或“不健康”的指责：植物油的不饱和脂肪酸健康/植物油伤脑、动物脂肪不易高温变性/动物脂肪增加心血管疾病风险、糖分给大脑快速供能/糖分扰乱分泌、红肉提供丰富的维生素B12/红肉诱发癌症……关心健康的你，到底何去何从？ 学霸作者在独有的海量数据加持之下，耕耘数十年，结成本书，旨在： — 剖析脂肪、蛋白质、糖分、维生素等每种营养素乃至咖啡因、酒精、添加剂等饮食成分，匡正关于各种成分的“迷思”以及“单一成分迷思”，也帮读者了解为什么人与人之间口味、易胖程度差别巨大，益生元的好处在哪里，吃什么、怎么吃可能更健康； — 帮助读者了解如何判断人体科学各种研究手段和成果的可靠性——如横断面研究信度弱于对照组研究等，力求“授人以渔”；并让读者意识到，每个人的身体情况都不相同，要努力找到适合自己的饮食法及健康生活方式，不被海量的信息轰炸、营销推广牵着鼻子走。 — 强调肠道菌群对人体的关键作用，并介绍如何通过饮食改善而非伤害它们，带领读者进入新兴的“微生物组学”世界。', '上海三联书店', 444, '69.00', '9787542685902', '2024-08-01', '2024-11-09 19:33:48.924782', '0', 99, '8.9', '平装', 0, 41, 'The Diet Myth: The Real Science Behind What We Eat', '2024-11-09 19:23:49.915776', 0, 0, 0);
INSERT INTO `b_book` VALUES (70, '重启吧！我的健康人生', 'https://img3.doubanio.com/view/subject/s/public/s34867452.jpg', '[英]兰根·查特吉 博士(Dr Rangan Chatterjee)', '王琳', '本书普及前沿医学领域“生活方式医学”观念，提出“健康的生活方式是一剂良药”的观点 从改变不健康的习惯开始 从小事做起，从最容易的事做起 将好的生活方式培养成终身习惯 统计数据表明，现代人类身心健康疾病中，45%与不良生活方式有关！ 在《重启吧!我的健康人生》中，查特吉博士基于可靠科学证据，以及20多年行医的大量真实病例研究，认为良好的健康99%来自医学治疗以外的领域，而正确的生活方式能扭转我们的健康问题，甚至能使2型糖尿病、肥胖症或抑郁症等慢性疾病慢慢消失。 查特吉博士建议，日常生活围绕以下4个关键领域展开：休息、饮食、运动和睡眠。他分别为每个领域列出 5个计划，帮助我们通过一些微小的、可实现的改变，塑造并保持良好的健康状态，避免疾病侵扰。 •关闭手机通知功能，就能缓解一定的焦虑与压力； •每天只在12小时以内进食，一日三餐也可降血糖和减肥； •比起... 本书普及前沿医学领域“生活方式医学”观念，提出“健康的生活方式是一剂良药”的观点 从改变不健康的习惯开始 从小事做起，从最容易的事做起 将好的生活方式培养成终身习惯 统计数据表明，现代人类身心健康疾病中，45%与不良生活方式有关！ 在《重启吧!我的健康人生》中，查特吉博士基于可靠科学证据，以及20多年行医的大量真实病例研究，认为良好的健康99%来自医学治疗以外的领域，而正确的生活方式能扭转我们的健康问题，甚至能使2型糖尿病、肥胖症或抑郁症等慢性疾病慢慢消失。 查特吉博士建议，日常生活围绕以下4个关键领域展开：休息、饮食、运动和睡眠。他分别为每个领域列出 5个计划，帮助我们通过一些微小的、可实现的改变，塑造并保持良好的健康状态，避免疾病侵扰。 •关闭手机通知功能，就能缓解一定的焦虑与压力； •每天只在12小时以内进食，一日三餐也可降血糖和减肥； •比起低强度锻炼 1 小时，高强度锻炼10分钟更易提升身体机能； •早晨多晒太阳，睡前看手机戴琥珀色眼镜，就会更容易入睡。 这些“小贴士”，也许能让你注意到自己不曾留意但每天都在进行的事情，也一定会让你从生活中的细微处，更好地照顾自己的身体。 本书图片由为翡翠画廊工作的专业独立摄影师拍摄，大量体现生活方式美学的高清大图，全彩印刷，质感拉满 提供个性化生活方式调整图表，每个提案附打卡页面帮助行动 专业评论： 查特吉确保我们在阅读了《重启吧！我的健康人生》后，身心都将处于良好的健康状态。——马修·沃克（Matthew Walker） 畅销书《我们为什么要睡觉？》（Why We Sleep）作者 本书是一部指导现代人科学生活的实用指南和健康福音，文字通俗易懂，内容老少皆宜，越早践行，越早获益。 作者兰根·查特吉博士认为，高质量的健康生活方式，要从休息、饮食、运动、睡眠，这些看似再平常无奇不过，恰恰又被许多人熟视无睹甚至漠视的四大要素入手，从改变旧有陋习开始，从小事做起，从最容易的事做起，比如强迫休息、规律睡眠、节制饮食、力所能及的运动。重要的是坚持，愿大家将好的生活方式培养成终身习惯。——刘宇，世界马拉松六大满贯六星完赛者，《因梦致远：我的“玄奘之路”》作者 查特吉医生从独特的角度出发，引领我们进入一个新的治疗模式。他的治疗模式以个性化的生活方式为前提。它性价比高，有弹性，意在根治疾病而不只是解决表面问题。当今世界上没有哪个医生能比查特吉更让我信心十足。——凯利·布罗根（Kelly Brogan）  《纽约时报》畅销书作家，ABIHM 医学博士 查特吉医生用前沿科学、临床经验，带领患者走向更健康的未来。他想通过简单的、综合的 4 项生活方式支柱提案，让每个人都能拥有活力与健康，而不是通过复杂的工程或昂贵的医疗产品来获得健康。查特吉医生的未来医学从你的家和厨房入手，让你走上健康生活的捷径。——达拉斯·哈特维格（Dallas Hartwig），Whole30 饮食法提出者，《纽约时报》畅销书《Whole30 饮食法》（The Whole30）作者 查特吉博士是一位开拓者，他正在改变医生和患者对健康的看法。查特吉博士对科学有很深的了解，更重要的是，他热衷于给他的病人和读者提供一种将科学应用到生活中去的方法。在《重启吧！我的健康人生》中，他将解释为什么我们不能孤立地关注健康中的任何一部分，并表明当我们关注幸福的各个方面时，我们将会生活得很好。最难得的是，它读起来很轻松 ! 这将是一本深刻而又令人安心的书。——马克·海曼（Mark Hyman）  执业全科医生，功能医学领域国际领导者，出演肥胖主题纪录片《甜蜜的负担》（Fed Up） 生活中的持续压力有很多。本书将帮助你在这个混乱、繁忙的世界中保持冷静和理智。——阿米莉亚·费尔（Amelia Freer） 美国营养学家，《烹饪·滋养·发光》（Cook. Nourish. Glow）作者 很多人通过远离加工食品，吃各种各样的食物来增加肠道菌群，身体就会好起来。有些人则不然。这是因为睡眠、压力和锻炼都对我们的健康有很大的影响，我们也需要关注这些方面。查特吉博士解释了我们如何以及为什么需要像关注我们盘子中的食物一样关注我们生活的这些领域，并提供了许多简单的小窍门来改善我们每天的生活，这是一件令人欣喜的事情。我们不再需要办健身房会员卡了 !——珍妮特·海德（Jeannette Hyde）   《肠道改造》（The Gut Makeover）作者，补充疗法和自然健康疗法理事会会员（CNHC），英国营养和生活方式医学协会会员（mBANT） 兰根·查特吉博士从他的行医经验与心得出发，建构了以“休息”“饮食”“运动”“睡眠”四大要素为核心的互联互通均衡健康理念，并从生活的诸多方面生活给到了读者很多更科学、更具体的建议。在我看来，《重启吧！我的健康人生》是一名作家对某一种健康生活方式的普及、一名医学工作者对英国医学教科书的挑战、一名医生对疾病治疗方案的优化思考，还是一本能够看到一名英国人对中国哲学、医学以及健康与养生文化的创新实践的书。——王盖盖，大外交青年智库（GDYT）创始人兼理事长、湾山友俱乐部（WSY Club）创始人、荔林读书会（GD Club）创始人 “欧洲全科医生之星”兰根·查特吉博士代表作；27个版本畅销全球，70多国800万粉丝共同践行的自律行动方案；20个身体焕新微窍门，让我们塑造并保持良好的健康状态，避免疾病侵扰！ 自然养成健康习惯的生活方式书 4大日常生活领域健康细节剖析（4方面的小图展示） 高清大图全彩印刷 大量精美摄影作品提升视觉体验 风景图冥想跟随带你沉浸式减压 5分钟办公室即兴运动图解，快速唤醒身体活力 食物彩虹图表、每日健康打卡 惊喜和彩蛋满满 作者简介： 兰根·查特吉（Rangan Chatterjee） ·医学博士、著名全科医生 ·国际功能领域医学领导者 ·英国销量第一的健康类作家 查特吉博士被认为是英国最有影响力的医生之一，他希望在未来几年改变医学的实践方式。他的播客“感觉更好，生活更精彩”（Feel Better, Live More）是欧洲收听率最高的健康播客，下载量超 2 亿；TED演讲《如何让疾病消失》（How to Make Diseases Disappear）被观看超过500万次。 在70多个国家播出的BBC节目《寄宿医生》(Doctor in the House)中，查特吉博士走访病患，从生活细节中找到大家生病的根本原因，提出容易理解的生活方式建议并督促他们执行，结果成效显著。 在英国，查特吉博士引领着人们对医疗保健和医学的理解：每月在《顶级健康》(Top Sante)杂志发表一篇关于生活方式医学的专栏文章，也经常在世界各地的活动和会议上就这一主题发表演讲。近年来他与英国皇家全科医师学院共同创建了生活方式医学课程（lifestyle medicine course），已指导近千名医生和医疗保健专业人员。 苏珊·贝尔（Susan Bell） 独立摄影师 巴黎AUP和帕森斯大学移动影像和摄影专业。20多年摄影经验，主要拍摄人物、食物和生活方式美学。为NEFF、翡翠画廊等制作影片，曾获\"粉红女郎美食摄影奖\"（Pink Lady Food Photography Awards）。', '中国科学技术出版社', 288, '79.80', '9787523605486', '2024-07-01', '2024-11-09 19:33:50.487570', '0', 99, '7.3', '平装', 0, 41, 'The Four Pillar Plan', '2024-11-09 19:23:51.571412', 0, 0, 0);
INSERT INTO `b_book` VALUES (71, '我在北京送快递', 'https://img1.doubanio.com/view/subject/s/public/s34522268.jpg', '胡安焉', '未知', '进入社会工作至今的二十年间，胡安焉走南闯北，辗转于广东、广西、云南、上海、北京等地，做过快递员、夜班拣货工人、便利店店员、保安、自行车店销售、服装店导购、加油站加油工……他将日常的点滴和工作的甘苦化作真诚的自述，记录了一个平凡人在生活中的辛劳、私心、温情、正气。 在物流公司夜间拣货的一年，给他留下了深刻的生理印记：“这份工作还会令人脾气变坏，因为长期熬夜以及过度劳累，人的情绪控制力会明显下降……我已经感到脑子不好使了，主要是反应变得迟钝，记忆力开始衰退。”在北京送快递的两年，他“把自己看作一个时薪30元的送货机器，达不到额定产出值就恼羞成怒、气急败坏”…… 但他最终认识到，怀着怨恨的人生是不值得过的。这些在事后追忆中写成的工作经历，渗透着他看待生活和世界的态度与反思，旨在表达个人在有限的选择和局促的现实中，对生活意义的直面和肯定：生活中许多平凡隽永的... 进入社会工作至今的二十年间，胡安焉走南闯北，辗转于广东、广西、云南、上海、北京等地，做过快递员、夜班拣货工人、便利店店员、保安、自行车店销售、服装店导购、加油站加油工……他将日常的点滴和工作的甘苦化作真诚的自述，记录了一个平凡人在生活中的辛劳、私心、温情、正气。 在物流公司夜间拣货的一年，给他留下了深刻的生理印记：“这份工作还会令人脾气变坏，因为长期熬夜以及过度劳累，人的情绪控制力会明显下降……我已经感到脑子不好使了，主要是反应变得迟钝，记忆力开始衰退。”在北京送快递的两年，他“把自己看作一个时薪30元的送货机器，达不到额定产出值就恼羞成怒、气急败坏”…… 但他最终认识到，怀着怨恨的人生是不值得过的。这些在事后追忆中写成的工作经历，渗透着他看待生活和世界的态度与反思，旨在表达个人在有限的选择和局促的现实中，对生活意义的直面和肯定：生活中许多平凡隽永的时刻，要比现实困扰的方方面面对人生更具有决定意义。 ———————— ✨豆瓣2023年度图书NO.1、豆瓣2023年度作者 ✨三联行读图书奖2023年度作品 ✨单向街书店文学奖2023年度作品 工作是生存的手段，不是人生的目的 一个“底层”打工人的二十年，快递员不为人知的内心世界 《我在北京送快递》应该加入市民生活必读书，让更多人了解社会运转背后各行各业的力量。 ——《人民日报》', '湖南文艺出版社', 296, '56.00', '9787572609268', '2023-03-01', '2024-11-09 19:33:51.962019', '0', 99, '8.1', '平装', 0, 41, '未知', '2024-11-09 19:23:53.248512', 0, 0, 0);
INSERT INTO `b_book` VALUES (72, '秋园', 'https://img1.doubanio.com/view/subject/s/public/s33640730.jpg', '杨本芬', '未知', '听八旬奶奶讲述她和妈妈的故事。 1914年，世上有了“秋园”这个人。1918年，汉语有了“她”这个字。秋园，她来过，挣扎过，绝望过，幸福过。今天，她80岁的女儿，把普普通通的她，讲给世界听。 “我写了一位普通中国女性一生的故事，写了我们一家人如何像水中的浮木般挣扎求生，写了中南腹地那些乡间人物的生生死死。我知道自己写出的故事如同一滴水，最终将汇入人类历史的长河。”', '北京联合出版公司', 280, '38.00', '9787559640666', '2020-06-01', '2024-11-09 19:33:53.792891', '0', 99, '9.0', '平装', 0, 41, '未知', '2024-11-09 19:23:54.988294', 0, 0, 0);
INSERT INTO `b_book` VALUES (73, '控糖革命', 'https://img2.doubanio.com/view/subject/s/public/s34791181.jpg', '[法]杰西·安佐斯佩（Jessie Inchauspé）', '张艳娟', '对于现代人来说，忙着减肥、忙着美肤、忙着健身，但同时失眠、焦虑、痤疮、糖尿病等亚健康问题又如影随形。法国“葡萄糖女神”、生物化学家杰西·安佐斯佩告诉你，这些亚健康问题往往都是由我们体内的血糖水平变化引起的，只是我们不自知而已。若置之不理，皮肤问题、情绪问题往往就会接踵而至，情况严重的话，更会引发2型糖尿病、多囊卵巢综合征等身体问题。 杰西·安佐斯佩在《控糖革命》一书中，提出了三个关键性的、颠覆常识的观点： 1.不是只有糖尿病人才需要关心血糖，80%的现代人都有血糖方面的问题； 2.我们不只要控制血糖，更重要的是要控制血糖峰值的变化； 3.比节食更有效的控糖方法是改变吃的顺序。 全书分为三大部分——为什么要控糖、出现葡萄糖峰值有哪些危害、轻松控糖的10个小窍门，通过8个章节，系统阐释了如何在不节食、不放弃我们喜爱的食物的情况下，用10个简单而令人惊讶的... 对于现代人来说，忙着减肥、忙着美肤、忙着健身，但同时失眠、焦虑、痤疮、糖尿病等亚健康问题又如影随形。法国“葡萄糖女神”、生物化学家杰西·安佐斯佩告诉你，这些亚健康问题往往都是由我们体内的血糖水平变化引起的，只是我们不自知而已。若置之不理，皮肤问题、情绪问题往往就会接踵而至，情况严重的话，更会引发2型糖尿病、多囊卵巢综合征等身体问题。 杰西·安佐斯佩在《控糖革命》一书中，提出了三个关键性的、颠覆常识的观点： 1.不是只有糖尿病人才需要关心血糖，80%的现代人都有血糖方面的问题； 2.我们不只要控制血糖，更重要的是要控制血糖峰值的变化； 3.比节食更有效的控糖方法是改变吃的顺序。 全书分为三大部分——为什么要控糖、出现葡萄糖峰值有哪些危害、轻松控糖的10个小窍门，通过8个章节，系统阐释了如何在不节食、不放弃我们喜爱的食物的情况下，用10个简单而令人惊讶的方法平衡我们的血糖水平，提升和改善我们的健康状况，包括睡眠、情绪、健康、皮肤、体重，甚至减缓衰老。', '浙江科学技术出版社', 232, '79.9', '9787573908896', '2024-01-01', '2024-11-09 19:33:55.718955', '0', 99, '7.9', '平装', 0, 41, 'Glucose Revolution', '2024-11-09 19:23:57.023856', 0, 0, 0);
INSERT INTO `b_book` VALUES (74, '猫鱼', 'https://img9.doubanio.com/view/subject/s/public/s34867425.jpg', '陈冲', '未知', '★备受期待的华语重磅新书，电影人陈冲非虚构长篇作品 ——从上海童年的老房子到旧金山的家；从少女时代“小花”剧组到《末代皇帝》《太阳照常升起》的银幕背后；从祖辈的往事到父母、哥哥三代知识分子的精神历程……《猫鱼》是当代不可多得的回忆录，是知识人的心灵史，电影艺术家的传记，也是一部当代女性的成长之书、勇气之书。 ★金宇澄、罗新、姜文、许知远诚意推荐 ——“《猫鱼》是高水准的自传体散文集，既是个体生命史，又是时代大记录，一字一句，真气充盈。”（罗新） “陈冲建立的纸上王国，细腻、自由、直率，她的人与事，尤其几代知识分子的历史，填补了文学上海的叙事空白。”（金宇澄） “《猫鱼》是陈冲珍贵的个人记忆，写得鲜活、深邃。她毫不畏惧地邀请你踏入其中，经历她的人生……这种勇气，不是谁都有。”（姜文） ★人的生命就像猫鱼，始终卑微、弱小，却坚韧地活着。在日常之中，期待奇... ★备受期待的华语重磅新书，电影人陈冲非虚构长篇作品 ——从上海童年的老房子到旧金山的家；从少女时代“小花”剧组到《末代皇帝》《太阳照常升起》的银幕背后；从祖辈的往事到父母、哥哥三代知识分子的精神历程……《猫鱼》是当代不可多得的回忆录，是知识人的心灵史，电影艺术家的传记，也是一部当代女性的成长之书、勇气之书。 ★金宇澄、罗新、姜文、许知远诚意推荐 ——“《猫鱼》是高水准的自传体散文集，既是个体生命史，又是时代大记录，一字一句，真气充盈。”（罗新） “陈冲建立的纸上王国，细腻、自由、直率，她的人与事，尤其几代知识分子的历史，填补了文学上海的叙事空白。”（金宇澄） “《猫鱼》是陈冲珍贵的个人记忆，写得鲜活、深邃。她毫不畏惧地邀请你踏入其中，经历她的人生……这种勇气，不是谁都有。”（姜文） ★人的生命就像猫鱼，始终卑微、弱小，却坚韧地活着。在日常之中，期待奇迹发生 ——“‘猫鱼’是当年的上海话，菜场出售一种实该漏网的小鱼，用以喂猫，沪语发音‘毛鱼’。随着以后猫粮的出现，它在人们的记忆中消失了……”上海之冬，一只“猫鱼”死而复生，成了我和哥哥童年唯一的奇迹。“猫鱼”是生命里转瞬即逝的灵感，是人的本性里被遗忘或隐藏的真相，是日常生活中体验的每一个奇迹。 ★《收获》文学榜长篇非虚构获奖作品 ——“为读者展现了一个文学意义上独特又深沉的陈冲，她以克制内敛的笔法向着家族历史征进，踏进如烟的家族往事又不沉溺其中，通过众多日常的生活细节完成了对家人形象的刻写和赋形，从而与历史生活达成了深沉又动人的联系，作品呈现出的沉郁悲悯让人为之动容。” 《猫鱼》是电影人陈冲的长篇非虚构作品。祖辈与母亲的故事、平江路老房子的岁月，“小花”摄制组大篷车的日子，独自踏上异国留学之旅，每一部电影不为人知的幕后，生命中的爱与痛楚、挣扎，经由作者的回望，跃然纸上。写家族故事，是独特的上海叙事、中国知识分子的心灵史；从《小花》到《末代皇帝》《意》《太阳照常升起》等等的银幕前后，是电影艺术家的传记；从上海童年到异国打拼，一段段人生旅程，是女性兼具激情与柔情的私语。', '上海三联书店', 632, '168', '9787542682840', '2024-06-01', '2024-11-09 19:36:25.138704', '0', 99, '9.0', '裸脊锁线平装', 0, 29, '未知', '2024-11-09 19:23:58.366000', 0, 0, 0);
INSERT INTO `b_book` VALUES (75, '大宋繁华', 'https://img3.doubanio.com/view/subject/s/public/s34896892.jpg', '谌旭彬', '未知', '关于宋史，近年的潮流是聚焦于其物质与文化的兴盛。写作者与阅读者摒弃传统的“弱宋”印象，重新被《东京梦华录》里的宝马香车、雕梁画栋、集四海之奇珍、会寰区之异味吸引，重新肯定“华夏民族之文化，历数千载之演进，造极于赵宋之世”。繁华，成了两宋的新标签。 然而，历史上真实的宋朝与当前大众想象的“造极之宋”存在着巨大的差距。 本书从双向视角出发，解读两宋三百年间留下的各类史料，重新梳理秦制在所谓宽松时代的汲取机制，探索这时期处于压力之下底层群体的反汲取生存策略，呈现了一个除了繁华的社会表象之外，更加符合历史逻辑的宋朝另一面。 本书分三个部分，第一部分剖析宋朝社会财富总量增加的原因；第二部分讲述不同时期的宋朝政府汲取的方式，以及百姓如何辗转腾挪求生存；第三部分则是解释了两宋增加的财富没能转化成再生产资本的原因。 谌旭彬的写作打破了当前大多数宋史著作自上而下的正统... 关于宋史，近年的潮流是聚焦于其物质与文化的兴盛。写作者与阅读者摒弃传统的“弱宋”印象，重新被《东京梦华录》里的宝马香车、雕梁画栋、集四海之奇珍、会寰区之异味吸引，重新肯定“华夏民族之文化，历数千载之演进，造极于赵宋之世”。繁华，成了两宋的新标签。 然而，历史上真实的宋朝与当前大众想象的“造极之宋”存在着巨大的差距。 本书从双向视角出发，解读两宋三百年间留下的各类史料，重新梳理秦制在所谓宽松时代的汲取机制，探索这时期处于压力之下底层群体的反汲取生存策略，呈现了一个除了繁华的社会表象之外，更加符合历史逻辑的宋朝另一面。 本书分三个部分，第一部分剖析宋朝社会财富总量增加的原因；第二部分讲述不同时期的宋朝政府汲取的方式，以及百姓如何辗转腾挪求生存；第三部分则是解释了两宋增加的财富没能转化成再生产资本的原因。 谌旭彬的写作打破了当前大多数宋史著作自上而下的正统史观，聚焦无法在历史中出声的底层群体，呈现他们真实而又残酷的生存状态，揭露了两宋“以九千万贫弱者，供养一千万食税群体”的“繁华”本质，颠覆了其所谓古典中国黄金时代的形象，对全面理解两宋的王朝体制富有启迪意义。', '浙江人民出版社', 360, '88.00', '9787213115202', '2024-08-01', '2024-11-09 19:35:43.710094', '0', 99, '8.4', '精装', 0, 39, '未知', '2024-11-09 19:24:01.503415', 0, 0, 0);
INSERT INTO `b_book` VALUES (76, '草民', 'https://img2.doubanio.com/view/subject/s/public/s34876331.jpg', '蔡崇达', '未知', '· 草的生命不是为了让他人欣赏，草如其自身一样生生不息地活着 草随风俯仰，同时紧紧抓住土壤；草必须成片，必须在底部连接 我们都在被风刮倒，同时也是与风舞蹈 我们都在被潮水淹没，同时也在水里顺其自然 我们每个人都如草一般同自己的命运撕咬着，挣扎着，或者，生长着 · 《草民 》与此前的《皮囊》《命运》构成“故乡三部曲”，讲述关于“家乡”，关于“来处”——东石镇的故事：有面对家庭责任的重压和身体的衰老，疲惫地奔跑着试图扛起自己的中年男人；有为了拯救自己的子孙，八十多岁依然决定结伴，向世界讨要说法的老人们；有在丈夫离世后，执拗地想为自己痴呆的儿子相亲以便诞下后代，继续完成丈夫愿望而和上天对赌的女人；也有面对时代巨浪疲惫挣扎、内心破碎却在意外到来的台风里，获得陪伴并拥有力量再次继续生活下去的青年…… · 作者直言自己想写的是海边斑驳的草地 ，而不是修剪整齐的草... · 草的生命不是为了让他人欣赏，草如其自身一样生生不息地活着 草随风俯仰，同时紧紧抓住土壤；草必须成片，必须在底部连接 我们都在被风刮倒，同时也是与风舞蹈 我们都在被潮水淹没，同时也在水里顺其自然 我们每个人都如草一般同自己的命运撕咬着，挣扎着，或者，生长着 · 《草民 》与此前的《皮囊》《命运》构成“故乡三部曲”，讲述关于“家乡”，关于“来处”——东石镇的故事：有面对家庭责任的重压和身体的衰老，疲惫地奔跑着试图扛起自己的中年男人；有为了拯救自己的子孙，八十多岁依然决定结伴，向世界讨要说法的老人们；有在丈夫离世后，执拗地想为自己痴呆的儿子相亲以便诞下后代，继续完成丈夫愿望而和上天对赌的女人；也有面对时代巨浪疲惫挣扎、内心破碎却在意外到来的台风里，获得陪伴并拥有力量再次继续生活下去的青年…… · 作者直言自己想写的是海边斑驳的草地 ，而不是修剪整齐的草坪。这种旺盛野生的蛮力，正是如今这个低欲望时代所稀缺的。虽是短篇合集，但写法很特别，上一篇的人物，突然以神奇巧妙的方式出现在下一篇中，试图通过这些故事，去看到、去理解我们为什么生生不息、我们凭什么生生不息。', '广州出版社', 321, '59.8', '9787546237381', '2024-06-01', '2024-11-09 19:34:03.604287', '0', 99, '8.2', '精装', 0, 41, '未知', '2024-11-09 19:24:03.145142', 0, 0, 0);
INSERT INTO `b_book` VALUES (77, '外面是夏天', 'https://img3.doubanio.com/view/subject/s/public/s34320482.jpg', '[韩]金爱烂', '徐丽红', '“韩国八零后天才女作家”金爱烂 第四十八届东仁文学奖获奖作品 人民文学奖长篇小说奖得主 笛安 作序《烈日下的午后孤独》 “有能力将‘当下’的生活‘文学化’的作家其实并不多，而金爱烂的作品，表明了她不仅有这个能力，而且已经有了非常成熟的风格与美学特征。这七个孤独的故事，愿你们读后，觉得亲切。” 《外面是夏天》是金爱烂的第四部短篇小说集，共收入七篇作品。故事中的主人公大多在经历“失去”，失去孩子，失去父亲，失去能用母语与之交流的人……金爱烂似乎有意将这种种失去之痛揉碎，均匀地分布在字里行间，让痛感不时击中读者的心。在本书中，作者依旧保持着都市生活观察员和记录员的角色，叙述平实，贴近生活。', '人民文学出版社', 232, '45.00', '9787020171910', '2022-10-15', '2024-11-09 19:34:05.364282', '0', 99, '8.7', '平装', 0, 41, '바깥은 여름', '2024-11-09 19:24:05.069535', 0, 0, 0);
INSERT INTO `b_book` VALUES (78, '格里格外', 'https://img9.doubanio.com/view/subject/s/public/s34758995.jpg', '天然', '未知', '畅销佳作、豆瓣高分《生活蒙太奇》续集，知名插画师天然蓄力三年的2024全新奇妙漫画绘本。格子里有精彩纷呈的故事，格子外有无限遐想的未来，一次心灵和视觉的愉悦之旅。 小探险家在岔路口犹豫，截然相反的路要怎样选择？海浪永不停息地打在沙滩上，慢慢地抹平了一切痕迹；秋风迎面袭来，带来整个漫长的夏天都不曾嗅到的凉爽气息……格子里有精彩纷呈的故事，格子外有无限遐想的未来。 天然说：“画纸像取景框，在万千事物中，我把自己所关注的内容呈现给读者。而当我再在这张画纸上画一个方格呢？一张纸就被分出了两个空间：格里和格外。两个空间来来往往，被我组合出了这一百二十六篇生活细节。” 这本书延续了她精美的画风，在她的“取景框”里，展示了独一无二的生活之美和细节之美。作为生活的观察家，她将自己丰富的想象与生活体验一并融了绘画创作，通过画笔让记忆定格纸间，让想象突破束缚。丰富的艺术... 畅销佳作、豆瓣高分《生活蒙太奇》续集，知名插画师天然蓄力三年的2024全新奇妙漫画绘本。格子里有精彩纷呈的故事，格子外有无限遐想的未来，一次心灵和视觉的愉悦之旅。 小探险家在岔路口犹豫，截然相反的路要怎样选择？海浪永不停息地打在沙滩上，慢慢地抹平了一切痕迹；秋风迎面袭来，带来整个漫长的夏天都不曾嗅到的凉爽气息……格子里有精彩纷呈的故事，格子外有无限遐想的未来。 天然说：“画纸像取景框，在万千事物中，我把自己所关注的内容呈现给读者。而当我再在这张画纸上画一个方格呢？一张纸就被分出了两个空间：格里和格外。两个空间来来往往，被我组合出了这一百二十六篇生活细节。” 这本书延续了她精美的画风，在她的“取景框”里，展示了独一无二的生活之美和细节之美。作为生活的观察家，她将自己丰富的想象与生活体验一并融了绘画创作，通过画笔让记忆定格纸间，让想象突破束缚。丰富的艺术创意，趣味的生活场景，精巧的色彩搭配，让这本书成为读者爱不释手的审美读本，也给读者带来了别具一格的视觉体验和戏剧感受。 【编辑推荐】 故事和未来的无限遐想：全书126篇无声生活漫画，天然用她独特的“取景框”展示独一无二的生活之美和细节之美。在格子里呈现精彩纷呈的故事，在格子外给你无限遐想的未来。 畅销佳作、豆瓣高分《生活蒙太奇》续集：《格里格外》是畅销漫画绘本作家、天才插画师天然继《生活蒙太奇》之后蓄力三年，在2024年推出的全新奇妙漫画绘本。 天然说：“画纸像取景框，在万千事物中，我把自己所关注的内容呈现给读者。而当我再在这张画纸上画一个方格呢？一张纸就被分出了两个空间：格里和格外。两个空间来来往往，被我组合出了这126篇生活细节。” 精致装帧，享受美好阅读生活：16开全彩设计，裸背锁线装帧，随书附赠昼与夜长卷海报及四季明信片一套四张。不仅是一部绘画艺术的精品，更是一次心灵和视觉的愉悦之旅。', '湖南文艺出版社', 256, '118.00', '9787572612671', '2024-02-01', '2024-11-09 19:34:07.120863', '0', 99, '9.1', '平装', 0, 41, '未知', '2024-11-09 19:24:36.750986', 0, 0, 0);
INSERT INTO `b_book` VALUES (79, '生活在低处', 'https://img3.doubanio.com/view/subject/s/public/s34911662.jpg', '胡安焉', '未知', '《我在北京送快递》作者胡安焉 回溯童年和原生家庭，完整梳理写作历程 讲述一个人如何在不断的抉择和逃离中，重塑精神家园 低处的生活，开出鲜亮的花朵 * * * * * * “和绝大多数人一样，我只是一个普通人，至少在四十岁之前，做过的都是再普通不过的工作，经济收入还拖了人均收入的后腿；从来没有人用‘优秀’来形容过我，也没有人真正关心我的内心世界。” 继《我在北京送快递》之后，胡安焉把视角转向工作以外的日常生活和内心世界。他讲述童年和原生家庭对自己性格形成的影响，讲述一个普通人如何在生命中途，选择以笔代口，从境遇、观念、心性、文本等多个层面，细致、生动、具体地梳理一路走来的坎坷颠簸。随之逐渐落成的，是一处丰富、自足、平和的精神家园。 回过头看，支撑他在生活低落处继续前行，并一步步走上写作之路的，正是“生活的另外部分”，是那些“为普通的事物感到惊讶的时刻”... 《我在北京送快递》作者胡安焉 回溯童年和原生家庭，完整梳理写作历程 讲述一个人如何在不断的抉择和逃离中，重塑精神家园 低处的生活，开出鲜亮的花朵 * * * * * * “和绝大多数人一样，我只是一个普通人，至少在四十岁之前，做过的都是再普通不过的工作，经济收入还拖了人均收入的后腿；从来没有人用‘优秀’来形容过我，也没有人真正关心我的内心世界。” 继《我在北京送快递》之后，胡安焉把视角转向工作以外的日常生活和内心世界。他讲述童年和原生家庭对自己性格形成的影响，讲述一个普通人如何在生命中途，选择以笔代口，从境遇、观念、心性、文本等多个层面，细致、生动、具体地梳理一路走来的坎坷颠簸。随之逐渐落成的，是一处丰富、自足、平和的精神家园。 回过头看，支撑他在生活低落处继续前行，并一步步走上写作之路的，正是“生活的另外部分”，是那些“为普通的事物感到惊讶的时刻”。', '湖南文艺出版社', 280, '56.00', '9787572619830', '2024-08-01', '2024-11-09 19:36:31.271656', '0', 99, '8.0', '平装', 0, 29, '未知', '2024-11-09 19:24:38.069479', 0, 0, 0);
INSERT INTO `b_book` VALUES (80, '克拉克森的农场 2', 'https://img1.doubanio.com/view/subject/s/public/s34802729.jpg', '[英] 杰里米·克拉克森', '吴超', '豆瓣10万+人打出9.6高分，B站700万+人点击的农场真人秀 逗笑无数读者的现代“陶渊明”，治愈都市心灵的英式“种田文” 百万富翁跨界务农，干啥啥不行，烧钱第一名 纪录片没有拍进去的农场趣事，“大猩猩”在书里告诉你~ 【内容简介】 知名主持人、“毒舌”专栏作家、农业门 外汉，决定在花甲之年亲自经营6070亩的农场。结果辛苦 一年，最后只赚了144英镑。这是克拉克森的第二年。他的“好主意”依旧源源不断，农场上又多了新的作物、动物和“商业宏图”。 然而，谁能想到装载运粮拖车比开武装直升机还难？牛比赛车更危险？把旧产羔棚改造成餐馆还不如获得核电站的规划许可简单？…… 尽管被折腾得焦头烂额、怨气冲天，还常常被农场工人卡莱布和农场经纪人查理嫌弃，但克拉克森还是觉得：“这是世界上最棒的工作。” 【评价及推荐】 相当精彩，一本能让人笑出声的书。——《每日电讯报》... 豆瓣10万+人打出9.6高分，B站700万+人点击的农场真人秀 逗笑无数读者的现代“陶渊明”，治愈都市心灵的英式“种田文” 百万富翁跨界务农，干啥啥不行，烧钱第一名 纪录片没有拍进去的农场趣事，“大猩猩”在书里告诉你~ 【内容简介】 知名主持人、“毒舌”专栏作家、农业门 外汉，决定在花甲之年亲自经营6070亩的农场。结果辛苦 一年，最后只赚了144英镑。这是克拉克森的第二年。他的“好主意”依旧源源不断，农场上又多了新的作物、动物和“商业宏图”。 然而，谁能想到装载运粮拖车比开武装直升机还难？牛比赛车更危险？把旧产羔棚改造成餐馆还不如获得核电站的规划许可简单？…… 尽管被折腾得焦头烂额、怨气冲天，还常常被农场工人卡莱布和农场经纪人查理嫌弃，但克拉克森还是觉得：“这是世界上最棒的工作。” 【评价及推荐】 相当精彩，一本能让人笑出声的书。——《每日电讯报》 如果你想笑，就看这本书……它会帮我们撑到《克拉克森的农场》新一季的播出。——《观察家报》 克拉克森展现了那些终年劳作、为国民提供粮食的人的热情、幽默和个性……并让英国公众了解到农民面临的许多问题。——英国全国农民联盟 值得一个全英国农业冠军奖。——《农民周刊》 克拉克森的书总是能让人开心起来，这本也不例外。——亚马逊读者 【内容亮点】 ⭐豆瓣10万+人打出9.6高分，B站700万+人点击的“电子榨菜”。 《克拉克森的农场》系列纪录片两季都在豆瓣斩获9.6的高分，横扫B站，成为无数人的“电子榨菜”。克拉克森被粉丝们昵称为“大猩猩”。书中的他更加幽默风趣、大胆辛辣，也揭露了镜头之外他个人生活的更多细节，“大猩猩”的粉丝们绝不能错过！ ⭐逗笑无数读者的现代“陶渊明”，治愈都市心灵的英式“种田文”。 一个脾气爆、没耐心、不懂农业的植物杀手，执意跨界经营569个足球场那样大的农场，结果油菜被跳甲吃了，大麦被杂草毁了，自制辣椒酱赔本了，想开个餐馆也被否决了……鸡飞狗跳的一年下来，也许克拉克森做得最成功的事情就是让无数读者爆笑不止。 ⭐戳破都市人的田园梦，展现真实的农民生活。 克拉克森对农场生活一年的记录，让人大笑，也让人深思。他以亲身经验打碎田园风情滤镜，诚实展现农业的辛苦、农民的艰难：肆虐的害虫、涨价的化肥、取消的补贴、疯长的杂草、添堵的官僚主义……“我领悟最为深刻的，是务农的辛苦令人难以置信，且收入并不怎么高。” ⭐30幅插图+随书附赠“大猩猩”书签 全书尽数收录企鹅原版插图30幅，传神地记录下“大猩猩”的倒霉时刻：被牛踢倒在地嗷嗷直叫，被辣椒辣得满头大汗……随书附赠一张模切书签，定格“大猩猩”三分委屈三分生气四分不知所措的小表情。', '译林出版社', 236, '48.00', '9787575300148', '2024-04-01', '2024-11-09 19:34:11.461193', '0', 99, '7.9', '平装', 0, 41, 'Diddly Squat: \'Til The Cows Come Home', '2024-11-09 19:24:42.275908', 0, 0, 0);
INSERT INTO `b_book` VALUES (81, '县中', 'https://img1.doubanio.com/view/subject/s/public/s34898309.jpg', '杨华', '未知', '编辑推荐： ☆ 整体视野+田野调查+野蛮思考+直白写作 ☆ 《县乡中国》作者杨华教授再献县乡研究力作 ☆ 在一线直面县域教育危局，从学理剖析县中衰落症结 ☆ 为教育均衡发展提供良策，从源头缓解全民教育焦虑 ☆ 呵护万千县乡孩子们“走出去”的梦想 《县中：中国县域教育田野透视》是一部关于县域教育的田野调查力作。作者依托从调研中获得的一线案例，以整体视野展现了当下中国县域教育的现状：从宏观层面的县域教育治理的制度与政策、县域教育体系的构成与运行，到微观层面的家校关系与学校管理、教师流动与学生成长等。作者重点从学理上深入剖析了县中衰弱的根本原因，并结合实践经验提出了县中振兴的独到方案，回应了县域教育为谁发展、如何发展这一重要问题。 本书语言平实、贴近读者，案例典型、发人深省，分析到位、切中要害。教育公平、高考制度、“双减”政策、校园霸凌、青少年抑郁等牵动亿... 编辑推荐： ☆ 整体视野+田野调查+野蛮思考+直白写作 ☆ 《县乡中国》作者杨华教授再献县乡研究力作 ☆ 在一线直面县域教育危局，从学理剖析县中衰落症结 ☆ 为教育均衡发展提供良策，从源头缓解全民教育焦虑 ☆ 呵护万千县乡孩子们“走出去”的梦想 《县中：中国县域教育田野透视》是一部关于县域教育的田野调查力作。作者依托从调研中获得的一线案例，以整体视野展现了当下中国县域教育的现状：从宏观层面的县域教育治理的制度与政策、县域教育体系的构成与运行，到微观层面的家校关系与学校管理、教师流动与学生成长等。作者重点从学理上深入剖析了县中衰弱的根本原因，并结合实践经验提出了县中振兴的独到方案，回应了县域教育为谁发展、如何发展这一重要问题。 本书语言平实、贴近读者，案例典型、发人深省，分析到位、切中要害。教育公平、高考制度、“双减”政策、校园霸凌、青少年抑郁等牵动亿万人心的焦点话题，书中均有涉及并予以深度讨论，其中不乏充满勇气的见解和分析。作者对县乡孩子命运的牵挂让人动容，对教育均衡化发展的思考令人赞佩。', '当代中国出版社', 472, '70.00', '9787515413396', '2024-07-01', '2024-11-09 19:34:14.395025', '0', 99, '7.3', '平装', 0, 40, '未知', '2024-11-09 19:25:30.055442', 0, 0, 0);
INSERT INTO `b_book` VALUES (82, '学会关心', 'https://img9.doubanio.com/view/subject/s/public/s34929146.jpg', '[美] 内尔·诺丁斯', '于天龙', '《学会关心：教育的另一种模式》是美国著名教育哲学家内尔·诺丁斯在关心伦理与教育方面的一本经典著作。原书初版于1992年，作者对人们长期以来信奉的教育理念提出了反思，主张关心应成为教育的基础和核心。进入21世纪，在美国的教育环境下，对关心的强调更加边缘化，诺丁斯再次认真审视现实，于2005年推出《学会关心》第二版。 诺丁斯主张对传统学校教育进行彻底改革，学校必须充分重视学生发展的多样性，建立一个充满关心而不是竞争的环境，对学生的各种兴趣和才能予以开发和培养。围绕这一主旨，书中详尽阐述了学校的主要目的是教育学生学会关心——关心自己，关心身边最亲近的人，关心与自己有各种关系的人，关心与自己没有关系的人，关心动物、植物和自然环境，关心人类制造出来的物品，以及关心知识和学问。 诺丁斯强调，“要向学生传递这样一个信息：学校教育不是通往上流社会的阶梯，而是通向智慧... 《学会关心：教育的另一种模式》是美国著名教育哲学家内尔·诺丁斯在关心伦理与教育方面的一本经典著作。原书初版于1992年，作者对人们长期以来信奉的教育理念提出了反思，主张关心应成为教育的基础和核心。进入21世纪，在美国的教育环境下，对关心的强调更加边缘化，诺丁斯再次认真审视现实，于2005年推出《学会关心》第二版。 诺丁斯主张对传统学校教育进行彻底改革，学校必须充分重视学生发展的多样性，建立一个充满关心而不是竞争的环境，对学生的各种兴趣和才能予以开发和培养。围绕这一主旨，书中详尽阐述了学校的主要目的是教育学生学会关心——关心自己，关心身边最亲近的人，关心与自己有各种关系的人，关心与自己没有关系的人，关心动物、植物和自然环境，关心人类制造出来的物品，以及关心知识和学问。 诺丁斯强调，“要向学生传递这样一个信息：学校教育不是通往上流社会的阶梯，而是通向智慧的道路。成功不能用金钱和权力来衡量，成功更意味着建立爱的关系，增长个人才干，享受自己所从事的职业，以及与其他生命和地球维系一种有意义的连接”。', '上海教育出版社', 332, '58.00', '9787572026836', '2024-08-01', '2024-11-09 19:34:16.062128', '0', 99, '9.3', '平装', 0, 40, '未知', '2024-11-09 19:25:31.940384', 0, 0, 0);
INSERT INTO `b_book` VALUES (83, '留学的孩子', 'https://img9.doubanio.com/view/subject/s/public/s34950386.jpg', '马颖毅', '展宁', '本书作为一部聚焦新一代赴美中国留学生的教育社会学著作，有效填补了国内外学者在留学研究领域的空白。作者采用问卷调查、深度访谈和实地考察相结合的社会学研究方法，以详实的数据和扎实的第一手材料呈现了新一代中国留学生群体的多样性。本书在国外出版时，得到了多位美国学者的好评，中文 版的推出，不仅为国内教育学界提供了丰富的有关留学生的素材，使其对留学生群体的多样性、中美两国教育体系的优势和不足有更直观、更深刻的认知，同时也有助于国内公众摆脱“中国留学生都很有钱”或“赴美留学是最好的选择”的刻板印象，从而以一种更为理性和客观的视角看待留学生群体以及他们的雄心和忧虑。 -- 改革开放以来的社会转型在中国各大城市掀起了一股“留美热”，这一浪潮至今仍未消退，美国仍然是中国学生首选的留学目的地。然而，与公费出国的上一代留学生不同，新一代中国留学生不再是极少数的文化和学术精... 本书作为一部聚焦新一代赴美中国留学生的教育社会学著作，有效填补了国内外学者在留学研究领域的空白。作者采用问卷调查、深度访谈和实地考察相结合的社会学研究方法，以详实的数据和扎实的第一手材料呈现了新一代中国留学生群体的多样性。本书在国外出版时，得到了多位美国学者的好评，中文 版的推出，不仅为国内教育学界提供了丰富的有关留学生的素材，使其对留学生群体的多样性、中美两国教育体系的优势和不足有更直观、更深刻的认知，同时也有助于国内公众摆脱“中国留学生都很有钱”或“赴美留学是最好的选择”的刻板印象，从而以一种更为理性和客观的视角看待留学生群体以及他们的雄心和忧虑。 -- 改革开放以来的社会转型在中国各大城市掀起了一股“留美热”，这一浪潮至今仍未消退，美国仍然是中国学生首选的留学目的地。然而，与公费出国的上一代留学生不同，新一代中国留学生不再是极少数的文化和学术精英，他们来自经济条件较好的中产阶级家庭，能够自掏腰包去美国读本科，既怀揣着通过国际化教育在全球舞台大展宏图的野心，却也因中美两国在教育体制、文化观念和社会规范上的差异而深感焦虑。 为了深入探究中国留学生“雄心勃勃且忧心忡忡”的原因，马颖毅教授历时7年，深入美国50多所高校和中国的9所高中，通过507名留学生的调研样本和108位亲历者的讲述，以详实的数据和真实的材料勾勒出新一代留美中国本科生群体的多元面貌，呈现了他们的家庭背景、教育轨迹、留美时的收获和困惑以及毕业后的打算，还原了90后、00后一代成长的体验与困惑。', '生活·读书·新知三联书店', 357, '68.00', '9787108079145', '2024-09-01', '2024-11-09 19:34:17.447347', '0', 99, '8.0', '精装', 0, 40, 'Ambitious and Anxious: How Chinese College Students Succeed and Struggle in American Higher Education', '2024-11-09 19:25:33.456164', 0, 0, 0);
INSERT INTO `b_book` VALUES (84, '教育新语', 'https://img9.doubanio.com/view/subject/s/public/s34911324.jpg', '[美]萨尔曼·可汗', '万海鹏', '本书是一部深入探讨人工智能如何变革教育，帮助家长和老师刷新教育思维和教育方法的重磅著作。 作为全球最大的非营利教育机构可汗学院的创始人，萨尔曼可汗通过自己试用GPT-4等最先进的人工智能大模型的独特经验，不仅回答了家长和教育工作者关心的“在人工智能时代应该教什么”和“如何有效学习”这两个核心问题，还提供了大量具体的案例，展示了人工智能在家庭教育和课堂内外的实际应用。 从个性化学习到智能辅导，从课程设计到评估方式，本书全面剖析了人工智能技术在教育中的潜力与挑战。阅读本书，你将了解到： - 人工智能如何为学生提供个性化的学习体验，激发无限潜能 - 人工智能工具如何帮助教师优化教学方法，提高教学效果 - 家长如何利用人工智能资源，支持孩子的全面发展 - 未来教育的发展趋势和创新模式 无论你是关心孩子教育的家长，还是致力于教育改革的工作者，本书都将为你提供宝... 本书是一部深入探讨人工智能如何变革教育，帮助家长和老师刷新教育思维和教育方法的重磅著作。 作为全球最大的非营利教育机构可汗学院的创始人，萨尔曼可汗通过自己试用GPT-4等最先进的人工智能大模型的独特经验，不仅回答了家长和教育工作者关心的“在人工智能时代应该教什么”和“如何有效学习”这两个核心问题，还提供了大量具体的案例，展示了人工智能在家庭教育和课堂内外的实际应用。 从个性化学习到智能辅导，从课程设计到评估方式，本书全面剖析了人工智能技术在教育中的潜力与挑战。阅读本书，你将了解到： - 人工智能如何为学生提供个性化的学习体验，激发无限潜能 - 人工智能工具如何帮助教师优化教学方法，提高教学效果 - 家长如何利用人工智能资源，支持孩子的全面发展 - 未来教育的发展趋势和创新模式 无论你是关心孩子教育的家长，还是致力于教育改革的工作者，本书都将为你提供宝贵的见解和启示。让我们一起勇敢拥抱人工智能，培育面向未来的竞争力。', '中信出版集团', 260, '69.00', '9787521765502', '2024-07-01', '2024-11-09 19:34:19.199797', '0', 99, '6.8', '平装', 0, 40, 'Brave New Words: How AI Will Revolutionize Education', '2024-11-09 19:25:35.651484', 0, 0, 0);
INSERT INTO `b_book` VALUES (85, '县中的孩子', 'https://img2.doubanio.com/view/subject/s/public/s34571241.jpg', '林小英', '未知', '中国50%以上的学生在全国2000多个县接受教育，县中应该采用精英教育，还是普惠式教育的模式? 解决县域教育难题，应加大对口扶贫还是强化自我造血功能? 县中的孩子是只争朝夕、拼命学习模式的牺牲品吗? 县中能走出优质生源与师资流失的困局重新振兴吗? 教育不该是适者生存的模 式，经济越落后的地方教育越应该给人以希望。 —————————— 本书描述了中国东、中、西部不同县域内乏力或奋进的学校、种瓜或得豆的课堂、踏实或游移的教师、在幻想或现实中长大的学生、对孩子教育过度操心或无能为力的家长、在正事和杂事中疲于奔命的校长、紧密交织的政校关系、国家教化权力和市场选择驱动之间的城乡关系……作者用纪录片式的分镜头细 致呈现了县域教育的生态，深度剖析了中国“以县为主”基础教育管理体制所面临困境的根源及其后果，详解县域教育何以在今天这个时代成为一个问题式的存在。 ——... 中国50%以上的学生在全国2000多个县接受教育，县中应该采用精英教育，还是普惠式教育的模式? 解决县域教育难题，应加大对口扶贫还是强化自我造血功能? 县中的孩子是只争朝夕、拼命学习模式的牺牲品吗? 县中能走出优质生源与师资流失的困局重新振兴吗? 教育不该是适者生存的模 式，经济越落后的地方教育越应该给人以希望。 —————————— 本书描述了中国东、中、西部不同县域内乏力或奋进的学校、种瓜或得豆的课堂、踏实或游移的教师、在幻想或现实中长大的学生、对孩子教育过度操心或无能为力的家长、在正事和杂事中疲于奔命的校长、紧密交织的政校关系、国家教化权力和市场选择驱动之间的城乡关系……作者用纪录片式的分镜头细 致呈现了县域教育的生态，深度剖析了中国“以县为主”基础教育管理体制所面临困境的根源及其后果，详解县域教育何以在今天这个时代成为一个问题式的存在。 —————————— 【评论】 《县中的孩子》将对教育选拔制度的透视及时地回落到人的身上，使我们看到统一高考制度和潜藏之下城乡分治、乡村分级的学校制度，正在联合形成一种精巧的制度，客观上造成了社会差距的代际传递。林小英博士强调了教育评价机制改革，探求县域教育改革的解决之道，使得县域学校从整体教育改革中的“他者”转移到应有的主体地位，从而回答了“县中的孩子”同样也是“我们的孩子”的终极问题。——杨东平 北京理工大学教育研究院教授，21世纪教育研究院名誉院长 林小英致力于探索“县域教育”，这是关乎中国半数以上孩子的成长却未被足够重视的问题。她以细致缜密的考察与敏锐深入的思考，揭示了县中的教育生态及其复杂脉络。这是一部严谨、冷静又饱含深情的人类学研究杰作。——刘擎 华东师范大学教授 阅读林小英老师关于县域教育的论说，感到震撼，也十分感动。她以普通读者也能读懂的文字，描绘了县域教育的复杂生态，分析了县域教育的诸多议题，为理解县域教育提供了新颖独特的认识视角。——贺雪峰 武汉大学社会学院院长、教授，武汉大学中国乡村治理研究中心主任 县域聚集着中国一多半的未来国民，学校塑造着未来中国的性情与品格。林小英在对当下县域教育具体的解析中，关切深远:“县中的孩子”积蓄着越来越多的能量和愿望，这些愿望与能量该在哪里找到释放和实现的途径？——如果他们成功，将是伟大的建设；如果他们失败，将是巨大的破坏。“助少壮求位育，促民族达成年。”潘光旦先生1932年写下的这句话，今天既迫切，又别有意涵。——刘云杉 北京大学教育学院副院长、教授', '上海人民出版社', 452, '88.00', '9787208182714', '2023-07-01', '2024-11-09 19:34:20.899297', '0', 99, '7.8', '平装', 0, 40, '未知', '2024-11-09 19:25:37.416704', 0, 0, 0);
INSERT INTO `b_book` VALUES (86, '看见孩子', 'https://img1.doubanio.com/view/subject/s/public/s34724649.jpg', '贝姬·肯尼迪', '美同', '1、从外网火到国内。一本现象级新书、多榜单畅销书，2022年《纽约时报》畅销书No.1，长踞美亚家教类图书榜/首。被小红书上的许多原版阅读妈妈推荐为“2023年超期待”“值得翻烂的育儿书”。理念上也得到国内教育大咖（詹大年、黄静洁、刘称莲、李小萌、朱芳宜等）的一致推荐！ 2、用一种赋权、宽容和有效的育儿方法，掀起一场颠覆性的育儿革命。书中通过10大育儿准则、40+案例分享，帮助家长解决19个教养难题。这本书将帮助现在的家长增进亲子关系、改善亲子沟通、化解亲子冲突、甚至改变整个家庭的运作方式。 3、给父母和孩子无差别的支持，缓解当下的育儿焦虑。不仅是一本培养情绪健康、有心理韧性的孩子的实用指南，也是一本给在育儿重压下挣扎的父母的安慰之书。 这是一本可以奠定美好亲子关系基础、改变家庭运作方式的全新教养力作。无论你是想让蹒跚学步的孩子平静下来，还是让十几岁... 1、从外网火到国内。一本现象级新书、多榜单畅销书，2022年《纽约时报》畅销书No.1，长踞美亚家教类图书榜/首。被小红书上的许多原版阅读妈妈推荐为“2023年超期待”“值得翻烂的育儿书”。理念上也得到国内教育大咖（詹大年、黄静洁、刘称莲、李小萌、朱芳宜等）的一致推荐！ 2、用一种赋权、宽容和有效的育儿方法，掀起一场颠覆性的育儿革命。书中通过10大育儿准则、40+案例分享，帮助家长解决19个教养难题。这本书将帮助现在的家长增进亲子关系、改善亲子沟通、化解亲子冲突、甚至改变整个家庭的运作方式。 3、给父母和孩子无差别的支持，缓解当下的育儿焦虑。不仅是一本培养情绪健康、有心理韧性的孩子的实用指南，也是一本给在育儿重压下挣扎的父母的安慰之书。 这是一本可以奠定美好亲子关系基础、改变家庭运作方式的全新教养力作。无论你是想让蹒跚学步的孩子平静下来，还是让十几岁的孩子敞开心扉，孩子各个年龄段让你头疼的养育问题书里都有答案。推荐给新手妈妈、二胎妈妈，还有每一位间歇性育儿崩溃的家长。 又是被孩子搞砸的一天，如果你正在经受育儿焦虑，在育儿的重压下挣扎，如果你曾经无数次想要停止向孩子发火，重拾养育的信心，成为更有力量的父母，那么你都应该看看这本书。本书的核心理念是看见孩子的内在美好，看见我们自己的好，只要理解了孩子的内心需求，改善的就不仅仅是孩子的行为，还有整个家庭的运转和彼此的感情。书中不仅分享了贝姬博士的10个育儿准则，还通过40多个案例，教会家长应对一系列的教养难题，包括：孩子乱发脾气、二胎矛盾、撒谎、缺乏自信、畏难、害羞等等。', '中信出版社', 378, '59.00', '9787521755459', '2023-06-01', '2024-11-09 19:34:23.705455', '0', 99, '9.3', '平装', 0, 40, 'Good Inside: A Guide to Becoming the Parent You Want to Be', '2024-11-09 19:26:10.208022', 0, 0, 0);
INSERT INTO `b_book` VALUES (87, '园丁与木匠', 'https://img9.doubanio.com/view/subject/s/public/s33456726.jpg', '[美] 艾莉森•高普尼克(Alison Gopnik)', '刘家杰', '●你以为孩子总爱胡乱地打闹？其实孩子在学习社交互动； 你以为孩子在安静地玩玩具？其实孩子是在探索世界奥秘； 你以为孩子因为无聊才问为什么?其实孩子是在寻找答案； …… 孩子在玩的时候，究竟在学什么？他们又究竟是怎么学的？孩子能从父母身上学到什么？ ●在《园丁与木匠》中，国际儿童学习研究泰斗艾莉森•高普尼克带你看懂孩子行为背后的学习规律，用大量经典而富有创造性的实验，向你描述了孩子在看的时候，在听的时候，在玩的时候，在做的时候，都是怎么学习的，以及在幼儿期、学龄期、青春期不同阶段的学习特性。 ●高普尼克以其毕生的研究深刻地揭示出，每一个孩子都是天生的学习高手，如果你想做有远见的父母，那千万不要让孩子过早进入成人学习模式，更不要用成人的思考模式给孩子设限。 ●本书带你走出传统“让孩子成才”的教养误区，告诉你养孩子不是套用公式，具体的教养方法根本不重要，重... ●你以为孩子总爱胡乱地打闹？其实孩子在学习社交互动； 你以为孩子在安静地玩玩具？其实孩子是在探索世界奥秘； 你以为孩子因为无聊才问为什么?其实孩子是在寻找答案； …… 孩子在玩的时候，究竟在学什么？他们又究竟是怎么学的？孩子能从父母身上学到什么？ ●在《园丁与木匠》中，国际儿童学习研究泰斗艾莉森•高普尼克带你看懂孩子行为背后的学习规律，用大量经典而富有创造性的实验，向你描述了孩子在看的时候，在听的时候，在玩的时候，在做的时候，都是怎么学习的，以及在幼儿期、学龄期、青春期不同阶段的学习特性。 ●高普尼克以其毕生的研究深刻地揭示出，每一个孩子都是天生的学习高手，如果你想做有远见的父母，那千万不要让孩子过早进入成人学习模式，更不要用成人的思考模式给孩子设限。 ●本书带你走出传统“让孩子成才”的教养误区，告诉你养孩子不是套用公式，具体的教养方法根本不重要，重要的是，你是一个什么样的人，以及你与孩子的关系怎么样。高手父母与普通父母的根本分野，在于你是园丁，还是木匠。真正的高手父母，都懂得为孩子搭建成长生态。《园丁与木匠》直击当代父母焦虑的核心根源，给你教养思维的全新升级。 ●一本让万维钢、罗振宇、苗炜等思想界大V争相解读的育儿书。 ●国际儿童学习研究泰斗级专家艾莉森•高普尼克“天生学习家系列”集大成之作，看杰出科学家站在母亲和祖母的视角上，给你一场温情的科学盛宴。 ●汇集30年实证研究，以无人匹敌的突破性发现，带你走出传统教养误区。彻底摆脱焦虑，给你符合孩子学习与发展规律的科学育儿观。 ●引爆教育界，众多国内外知名媒体、头部教育媒体、育儿大V联袂推荐。 ●外文版豆瓣评分8.3，中文版万众瞩目，重磅来袭。 ●荣获美国认知发展学会\"年度最佳图书\"奖，《金融时报》年度选书。 ●清华大学积极心理学研究中心副主任赵昱鲲倾情翻译。 ●湛庐文化出品。', '浙江人民出版社', 267, '69.90', '9787213093302', '2019-07-25', '2024-11-09 19:34:25.883095', '0', 99, '8.0', '平装', 0, 40, 'The Gardener and the Carpenter', '2024-11-09 19:26:12.570723', 0, 0, 0);
INSERT INTO `b_book` VALUES (88, '为了你好', 'https://img3.doubanio.com/view/subject/s/public/s34882553.jpg', '[瑞士] 爱丽丝·米勒', '余凤霞', '■ “骂你是让你长记性，这是为了你好！”“不打不成器，这是为了你好！” ■ 如果折磨你的人，恰恰是“为了你好”的人…… “原生家庭”研究先驱、“创伤叙事”开创者、国际心理学大师爱丽丝·米勒畅销代表作 看见以爱为名的伤害 ■ 拥抱自己内心的小孩 —————— 爱丽丝 ·米 勒是享誉国际的心理学大师，她对童年创伤、原生家庭、有毒教育等主题的研究，对后世心理学的发展产生了深远的影响。《为了你好》是她继《天才儿童的悲剧》《身体不说谎》《夏娃的觉醒》之后又一部经典力作。在本书中，她通过研究希特勒、吸毒者和少年杀人犯等经典案例，探讨了有毒的家庭教育对人造成的长期影响，这种影响不仅局限于个体，还有可能导致重大的群体性暴力。 米勒呼吁社会应正视“有毒教育”的深远危害，反思以爱为名的暴力，尊重孩子的真实感受，才能阻断悲剧的社会传播，从而建设富有同理心的教育新范式。 —... ■ “骂你是让你长记性，这是为了你好！”“不打不成器，这是为了你好！” ■ 如果折磨你的人，恰恰是“为了你好”的人…… “原生家庭”研究先驱、“创伤叙事”开创者、国际心理学大师爱丽丝·米勒畅销代表作 看见以爱为名的伤害 ■ 拥抱自己内心的小孩 —————— 爱丽丝 ·米 勒是享誉国际的心理学大师，她对童年创伤、原生家庭、有毒教育等主题的研究，对后世心理学的发展产生了深远的影响。《为了你好》是她继《天才儿童的悲剧》《身体不说谎》《夏娃的觉醒》之后又一部经典力作。在本书中，她通过研究希特勒、吸毒者和少年杀人犯等经典案例，探讨了有毒的家庭教育对人造成的长期影响，这种影响不仅局限于个体，还有可能导致重大的群体性暴力。 米勒呼吁社会应正视“有毒教育”的深远危害，反思以爱为名的暴力，尊重孩子的真实感受，才能阻断悲剧的社会传播，从而建设富有同理心的教育新范式。 —————— 【编辑推荐】 ■ 说是“为了你好”，那到底是为了谁好？ ■ 轰动一时的案例，有毒家庭教育隐匿暴力的根源。 ◎ 希特勒：母亲无力保护他免受父亲的虐待，种下仇恨 ◎ 吸毒少女：通过摧毁自我，重复早年受到的惩罚 ◎ 少年杀人犯：将对父母的恨掉转矛头指向他人 □ 个体的沉沦，群体性的暴行，新闻里屡见不鲜的极端案例，也是家长、老师们竭力化解的难题。 ■ 激辩“为了你好”的教养话术，与“有毒教育”一战！一场为了不痛彻心扉而痛定思痛的心灵思辨。 ◎ “原生家庭”研究先驱、“创伤叙事”开创者爱丽丝·米勒写就风行四十年，不断再版的儿童心理学经典。你选择：用一生治愈童年创伤，还是及早改变教育思维？ ◎ 打骂、体罚、羞辱、贬低、操控……父母怎样对孩子，孩子就会怎样对别人。 ◎ 现在你知道了，你周围的人，用曾受过的伤，再来伤害你。 ■ 治愈孩子，也治愈自己，你亟需一份行动指南！ ◎ 不再回避童年所受的伤，成年人可以面对真相。 ◎ 接纳孩子个性，释放孩子感受，尊重孩子权利。 ◎ 父母内在的小孩也要被关怀。 □更新家庭教育互动模式，这将是你一生的故事。 ■让灼热的目光穿透历史，用理性的思考温暖现实，你的航船停泊在爱丽丝·米勒的港湾：你要相信，哪怕辜负了某些期望，父母的爱也不会消失。 【媒体与名人推荐】 爱丽丝·米勒改变了人们的思维方式。 ——奥利弗·詹姆斯（《原生家庭生存指南》《天生非此》） 这本书令人信服地证明了“为了孩子好”而采取的种种措施，往往会摧毁孩子正在发展中的自我。 ——《出版人周刊》', '北京联合出版公司', 344, '62.00', '9787559675828', '2024-07-01', '2024-11-09 19:34:27.286995', '0', 99, '8.3', '平装', 0, 40, 'Am Anfang war Erziehung', '2024-11-09 19:26:14.573572', 0, 0, 0);
INSERT INTO `b_book` VALUES (89, '儿童怎样学习数学', 'https://img9.doubanio.com/view/subject/s/public/s34393994.jpg', '[英] 帕梅拉·利贝克', '大陆（陆宇斐）', '殿堂级数学教育著作，2~11岁孩子父母和老师的操作指南，海量游戏化数学活动，激发孩子数学兴趣。 ◎ 编辑推荐 ☆ 国际学术地位崇高，在教育界尤其是数学界备受推崇 本书不仅是作者数十年数学教学经验的总结，也是她的数学教育理念在家庭中的应用、验证与成果。在国内外的众多学术刊物、学习平台上，都可以看到许多教师和学者在学习、探讨、引用和分享本书，它称得上一本殿堂级数学教育著作。 ☆ 理念独到，注重方法，揭示儿童学习数学的规律 作者立足于孩子，独创“体验—语言—图画—符号”四个学习步骤，强调遵循孩子的认知发展特点和学习能力。此外，作者还精心设计大量有趣的、贴近生活的数学游戏活动，能很好地激发孩子的数学学习兴趣，帮助父母和老师引导孩子爱数学，学好数学。 ☆ 专为2~11岁孩子的父母与老师设计，实用性极强 本书内容涵盖从学前到小学阶段的基本数学知识点，且与小学学科... 殿堂级数学教育著作，2~11岁孩子父母和老师的操作指南，海量游戏化数学活动，激发孩子数学兴趣。 ◎ 编辑推荐 ☆ 国际学术地位崇高，在教育界尤其是数学界备受推崇 本书不仅是作者数十年数学教学经验的总结，也是她的数学教育理念在家庭中的应用、验证与成果。在国内外的众多学术刊物、学习平台上，都可以看到许多教师和学者在学习、探讨、引用和分享本书，它称得上一本殿堂级数学教育著作。 ☆ 理念独到，注重方法，揭示儿童学习数学的规律 作者立足于孩子，独创“体验—语言—图画—符号”四个学习步骤，强调遵循孩子的认知发展特点和学习能力。此外，作者还精心设计大量有趣的、贴近生活的数学游戏活动，能很好地激发孩子的数学学习兴趣，帮助父母和老师引导孩子爱数学，学好数学。 ☆ 专为2~11岁孩子的父母与老师设计，实用性极强 本书内容涵盖从学前到小学阶段的基本数学知识点，且与小学学科内容高度契合，能有效帮助孩子幼小衔接，打好学科基础。书中还包含大量关于儿童认知发展和学习的权威理论知识，能帮助父母和老师了解儿童认知发展的特点。 此外，本书还含有海量教学案例和教学指导，包括如何利用易得的生活用品制作教具、可直接复制的教学方法，以及经过大量教学实践后总结的2~10岁孩子面临的数学问题，是父母进行家庭数学辅导的实用指南，也是学前、小学老师的专业教案参考。 ◎ 内容简介 本书面向学前到小学阶段孩子的父母和教师，旨在向其提供数学教学指导。它讲述了孩子们是如何发展数学思维的，并将其总结为“体验—语言—图画—符号”四个学习步骤。作者指出，孩子们形成每一个数学概念，都要经历这四个步骤。 本书的内容涵盖从学前到小学阶段孩子们所学习的基本数学知识，包括数字、数的运算、测量、形状、图形、分数、计算器在数学上的应用等，还涉及关于儿童认知和学习的权威理论，并分析了“为什么有的孩子学不好数学”这样令人烦恼的问题。在每个章节最后，作者还提供了实用的教学建议，包括详细的活动器材清单、容易操作的教学方法，以及 2~11 岁孩子可能面临的各类数学问题。 ◎ 媒体推荐 作者写了一本逻辑清晰、通俗易懂的好书，并提出了一些非常棒的想法，值得庆贺！她还是一位来自数学家族的优秀成员！ ——《英国图书新闻》 ◎ 名人推荐 当我知道帕梅拉老师动了写此书的念头，我便由衷地期待它的问世——它真的值得一读！ ——玛格丽特·布朗（伦敦国王学院数学教育荣誉教授、教育学院前院长，数学协会前主席） 帕梅拉是“一位真正出色的同事，她的热情、渊博的数学知识和对孩子们如何学习数学的理解，极大地影响了所有接触过她的人”。 ——戴维·米勒（基尔大学数学教授）', '浙江科学技术出版社', 340, '60.00', '9787573902733', '2023-01-01', '2024-11-09 19:34:28.735479', '0', 99, '8.8', '平装', 0, 40, '未知', '2024-11-09 19:26:16.391800', 0, 0, 0);
INSERT INTO `b_book` VALUES (90, '窗边的小豆豆', 'https://img2.doubanio.com/view/subject/s/public/s1067911.jpg', '[日] 黑柳彻子 著', '赵玉皎', '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个大家都能接受的孩子，并奠定了她一生的基础。这本书不仅带给世界几千万读者无数的笑声和感动，而且为现代教育的发展注入了新的活力。', '南海出版公司', 288, '20.00', '9787544222976', '2003-01-01', '2024-11-09 19:34:30.283888', '0', 99, '8.8', '平装', 0, 40, '窓ぎわのトットちゃん', '2024-11-09 19:26:19.253798', 0, 0, 0);
INSERT INTO `b_book` VALUES (91, '敢为天下先', 'https://img1.doubanio.com/view/subject/s/public/s34944359.jpg', '钱致榕 著', '未知', '与其把学生训练成三等的英国绅士，不如培养成一流的中国人。 ——钱致榕 如何高效率创办一所一流大学？ 这里不光有升腾跌宕的创业故事、机敏高效的管理智慧， 还有家国情怀、一腔热血、为未来育人的理念， 以及，各种生动的人。 ————————— 历史学家许倬云作序， 王贻芳院士、饶毅校长、于志刚校长、陈平教授力荐。 我和港科大的缘分，是因为致榕的建议，想约我加盟，阴错阳差，未能成行。然而，却因为致榕的关系，港科大自创校以来的诸项筹划和发展，我都有相当程度的了解：没有致榕在领导班子中，也就不会有港科大的今天。本书中，他将自己的经验公之于世，畀得学界内外的同仁及读者，了解创业之艰难。致榕以当事人的身份，娓娓道来，令人更有亲切的感觉。 ——许倬云，历史学家 钱致榕教授、他的姐姐钱宁和他的长公子钱其斌，对我来说，都产生了不小的间接影响。本书以他回顾港科大的创建过程为... 与其把学生训练成三等的英国绅士，不如培养成一流的中国人。 ——钱致榕 如何高效率创办一所一流大学？ 这里不光有升腾跌宕的创业故事、机敏高效的管理智慧， 还有家国情怀、一腔热血、为未来育人的理念， 以及，各种生动的人。 ————————— 历史学家许倬云作序， 王贻芳院士、饶毅校长、于志刚校长、陈平教授力荐。 我和港科大的缘分，是因为致榕的建议，想约我加盟，阴错阳差，未能成行。然而，却因为致榕的关系，港科大自创校以来的诸项筹划和发展，我都有相当程度的了解：没有致榕在领导班子中，也就不会有港科大的今天。本书中，他将自己的经验公之于世，畀得学界内外的同仁及读者，了解创业之艰难。致榕以当事人的身份，娓娓道来，令人更有亲切的感觉。 ——许倬云，历史学家 钱致榕教授、他的姐姐钱宁和他的长公子钱其斌，对我来说，都产生了不小的间接影响。本书以他回顾港科大的创建过程为主，穿插他的学业和背景。他的直接工作影响了很多人。回顾我对钱致榕教授及其家人的了解，更感到，人不用统计直接影响，而不可计量的间接影响，可能更有趣、甚至更有效、更有意义。 ——饶毅，生物学家，首都医科大学校长 本书对大学的规划建设和日常运营极具启发性、指导性，值得大学同仁特别是以建设世界一流大学为目标的中国大学管理与服务者细细品味，必然大有帮助。 ——于志刚，中国海洋大学前校长 用全世界的人才，三年时间成功创办新型的研究型大学，即使在西方国家也是奇迹。钱先生对教育理念和实践的观察与思考，超越了蔡元培的“兼容并包”，更接近卢梭《爱弥尔》的教育理念。我向中国的官员、学者、父母和青年热情推荐《敢为天下先》这本史无前例的教育创业史。 ——陈平，笔名眉山剑客，复旦大学中国研究院研究员 钱致榕先生将港科大的建设历史娓娓道来，将自己的办学思路、理念、管理经验及操作方法详为介绍，既是珍贵的历史书，也是人生的参考书。在各地建设新型大学方兴未艾、高速发展的今天，近距离研读港科大的建校历史与发展经验，是非常必要的。 ——王贻芳，实验高能物理学家，中国科学院高能物理研究所所长 【内容简介】 香港科技大学三年建成，且如今位列世界大学排名前五十强之列，堪称教育史上的奇迹。作者回顾三十年前受邀从美国返港、作为学术副校长主导参与建成香港科技大学的亲身经历，既以鲜活生动的故事重现了港科大三年成功建成的奇迹，结构清晰地再现了一个一流大学从无到有的软硬件搭建过程，展现了诸多不可思议的创业细节和机敏高效的管理经验，同时充满温度地描摹出一代学人、教育家极富个性的瞬间和家国情怀。作者还记录下和海内外几十家大学校长的沟通和交流，总结自己多地多年的教育实践和思考，探讨了建成一座理想的大学需要什么理念和条件等诸多问题，对当下“争一流”的大学教育和大学建设，具有借鉴和思考的深远意义。', '生活·读书·新知三联书店', 384, '69.00', '9787108042972', '2024-08-01', '2024-11-09 19:34:31.543172', '0', 99, '9.5', '精装', 0, 40, '未知', '2024-11-09 19:26:20.551888', 0, 0, 0);
INSERT INTO `b_book` VALUES (92, '我在上东区做家教', 'https://img3.doubanio.com/view/subject/s/public/s34719382.jpg', '[美]布莱斯·格罗斯伯格', '熊文苑', '曼哈顿上东区的私立学校，是资产排名位于前 1% 的富豪们的角斗场。 这里的精英父母利用高超的手腕精心运作，为孩子争取常春藤联盟为数不多的宝贵席位，上演了一出出光鲜而残酷的育儿战争。 作为哈佛大学毕业生，布莱斯·格罗斯伯格迅速成为备受纽约上流阶层青睐的金牌家教。她的秘密武器不仅是专业知识，更重要的是她了解这些“盖茨比”的焦虑所在：在新镀金时代，财富非但没能让他们自在，反而助长了他们对阶层下滑的恐惧。 “天下父母有一个共同点，那就是希望孩子有更好的前途，但又不知道到底该怎么做。” 格罗斯伯格穿梭于曼哈顿的私立学校与豪华公寓之间，她做好准备应对精英阶层急迫的育儿诉求，却意外地窥探到孩子们不堪重负的、郁郁寡欢的精神世界。', '中信出版集团', 272, '58.00', '9787521761481', '2023-12-01', '2024-11-09 19:34:33.253578', '0', 99, '6.8', '平装', 0, 40, 'I Left My Homework in the Hamptons: What I Learned Teaching the Children of the One Percent', '2024-11-09 19:26:22.360455', 0, 0, 0);
INSERT INTO `b_book` VALUES (93, '屏幕时代，重塑孩子的自控力', 'https://img9.doubanio.com/view/subject/s/public/s34841206.jpg', '[加]希米·康', '张晶', '你可能已经注意到了一些警示信号，你9岁的儿子玩电子游戏越多，就越容易分心和烦躁。你十几岁的女儿不断在社交媒体上将自己的生活与他人作比较，然后感到无比沮丧。我们是否应该限制孩子们的屏幕时间？ 本书作者希米·康是一位加拿大儿童精神科医生，她运用最前沿的神经科学知识，解释了无处不在的电子产品和网络如何影响着青少年的大脑和行为习惯。在此基础上，她为父母提供了解决具体问题的有效方法，无论是对抗科技成瘾、焦虑、网络欺凌，还是孤独感。 本书还给出了一个完整的6周6步骤计划，帮助孩子乃至整个家庭养成健康的科技产品使用习惯，让孩子们在面对科技产品时可以做出明智的选择，最大限度地享受科技带来的好处。 不偏激，不矫枉过正，辩证地看待信息时代的利弊是我们要传递给孩子的态度。按照本书中列出的解决方案去实践，你的孩子将学会以健康积极的方式去使用电子产品，这将有助于他们学会应对未... 你可能已经注意到了一些警示信号，你9岁的儿子玩电子游戏越多，就越容易分心和烦躁。你十几岁的女儿不断在社交媒体上将自己的生活与他人作比较，然后感到无比沮丧。我们是否应该限制孩子们的屏幕时间？ 本书作者希米·康是一位加拿大儿童精神科医生，她运用最前沿的神经科学知识，解释了无处不在的电子产品和网络如何影响着青少年的大脑和行为习惯。在此基础上，她为父母提供了解决具体问题的有效方法，无论是对抗科技成瘾、焦虑、网络欺凌，还是孤独感。 本书还给出了一个完整的6周6步骤计划，帮助孩子乃至整个家庭养成健康的科技产品使用习惯，让孩子们在面对科技产品时可以做出明智的选择，最大限度地享受科技带来的好处。 不偏激，不矫枉过正，辩证地看待信息时代的利弊是我们要传递给孩子的态度。按照本书中列出的解决方案去实践，你的孩子将学会以健康积极的方式去使用电子产品，这将有助于他们学会应对未来多变的生活。 编辑推荐： ★充分把握孩子性格形成期，培养健康的屏幕使用习惯 不良的屏幕使用习惯给孩子带来的影响超乎想象： 精神紧张、性情乖戾、不可自拔、焦虑不安、沮丧抑郁…… 不仅如此，最新医学研究报道，屏幕时间过长会降低孩子的语言能力和读写能力！（美国医学会《儿科》, 2019.11.4） 请抓住还可以对孩子产生影响的关键时期，用科学有效的方法保护最重要的资源：下一代的大脑！ ★哈佛妈妈揭开电子屏幕让人上瘾的秘密，对症下药轻而易举 各种应用软件是如何吸引孩子们注意力的，是如何像胶水一样将孩子们死死粘在屏幕上的？ 作者希米·康是哈佛大学专门研究儿童青少年成瘾问题的专家，她用最简洁的语言解释了屏幕如何精确影响孩子的大脑，如何辨别孩子的各种反应，以及如何引导孩子掌握积极地应对技能？ 全面帮助父母保护孩子免受上瘾之苦，从源头上扭转与电子产品不健康的关系。 ★既有大原则，又有小方法，为当今父母解决重大养育难题 如何决定孩子是否可以接触电子屏幕了？三个判断标准让答案瞬间清晰！ 已经开始使用电子产品的孩子如何引导？针对每种问题都有完整的解决方案！ 即学即用的实用工具，外加完整的6周6步骤好习惯培养计划，扭转现状，重塑孩子的自控力。 当代父母的必修课，让孩子学会把屏幕当工具而不是玩具！ 媒体推荐： 如果你是一位家长，想知道如何指导孩子使用电子产品，这本书会为你提供全面而深入的科学依据，书中揭示了电子产品如何改变并塑造我们的大脑。利用这些知识，作者给出了很多实用的建议，帮助你以健康的方式引导孩子使用电子设备，从而改善孩子与家人之间的关系，促进他们幸福成长。 ——丹尼尔·J.西格尔，医学博士， 《纽约时报》畅销书《全脑教养法》作者 最新研究表明，屏幕使用时间与大脑的变化相关，儿童和青少年尤其容易受到影响。目前，青少年和年轻的成年人自杀、缺乏内在动力和社交孤立的情况接近流行病水平，实在令人震惊。幸运的是，《屏幕时代，重塑孩子的自控力》一书为我们提供了希望和直接、实用的指导，帮助我们保护最重要的资源：下一代的大脑。 ——丹尼尔·列维廷博士 《纽约时报》畅销书《成功地老去》作者 随着我们越来越多地了解新技术对孩子的健康和幸福产生的巨大影响，父母们从来没有像现在这样重视教导孩子如何负责任地使用这些工具。康博士为实现这一紧迫目标提供了切实可行的蓝图。 ——卡尔·纽波特 《纽约时报》畅销书《数字极简主义》作者 在不盲目崇拜或妖魔化科技的情况下，康博士为家长和老师提供了一份科学指南，让我们知道如何使科技在孩子的生活中处于恰当而积极的位置，书中充满了实用的建议和源自内心的智慧。 ——加博·马泰，医学博士 畅销书《在饥饿幽灵的领域：与成瘾亲密接触》作者 这正是当下父母们最需要的书，因为他们正试图在孩子接触科技产品的问题上做出明智的决定。康博士利用神经科学的最新发现，来推动我们理解科技对发育中的大脑的影响，帮助我们最大限度地利用科技带来的好处，避免社交媒体、互联网和游戏带来的危险。 ——斯图尔特·尚克博士 《自我调节：如何帮助你和孩子打破压力循环，成功地融入生活》作者 金句： 1.变革之风吹起时，有人砌围墙，有人造风车。 2.我们的生活不过是一大堆习惯。昨天你的孩子解锁手机150次，这并不是出于150个理性决策产生的结果。它们都源于习惯——这是一种绝大多数人都不了解的冲动。 3.每一个屏幕的那头都有一个工作团队，他们的工作就是瓦解人们的意志力和责任感。在这样的情况下，别说是一个12岁的孩子，就是大人也很难保持一种健康平衡的状态。何况孩子们更容易对电子屏幕和电子游戏上瘾。因为他们的大脑额叶还没有发育完全；还不具备面对状况时，及时收手，自我反省，采取不同做法的能力。 4.那些一心多用的人启动的是大脑中与手边任务无关的部分。久而久之，他们就变得注意力容易分散，记忆力受损。尽管人们觉得当需要他们全力以赴、认真做事的时候，他们就能心无旁骛、全神贯注，但事实上他们做不到，因为他们已经失去了一门心思做一件事的能力。 5.教孩子将科技产品作为工具而非玩具来使用。', '上海社会科学院出版社', 316, '58.80', '9787552039962', '2023-03-01', '2024-11-09 19:34:34.804546', '0', 99, '8.4', '平装', 0, 40, 'The Tech Solution: Creating Healthy Habits for Kids Growing Up in a Digital World', '2024-11-09 19:26:23.674735', 0, 0, 0);
INSERT INTO `b_book` VALUES (94, '教出会思考的孩子', 'https://img9.doubanio.com/view/subject/s/public/s34972034.jpg', '[美] 朱莉·博加特', '刘文玲', '关于孩子的阅读与写作，你是否有以下问题：孩子没有阅读习惯，怎么办？孩子阅读时的专注度不够，无法进行深度阅读，怎么办？孩子看了很多书但作文写得不好，怎么办？孩子沉迷于游戏，家长需要担心吗？只要坚持阅读，就会获得智慧，成为一个有见识的人，果真如此吗？网络上信息混杂，如何分辨哪些信息是正确的，哪些是错误的？ 这是一本给所有家长及教育工作者的养育指南，培养孩子的批判性思维，帮助孩子培养全面的世界观，成为知识面广、表达能力强、会独立思考、能解决问题的终身学习者。更好地应对数字时代多种多样的价值观与信息冲击。在获取知识途径极度丰富，知识相对“廉价”的时代，帮助孩子更好地思考与决策。 凭借20多年的家庭教育和课程开发经验，作者在书中引导各个年龄段的孩子提高探索世界的能力，让孩子逐步掌握思考与学习的过程，并产生新的见解，而非简单重复学过的知识。书中提供了14种适合各... 关于孩子的阅读与写作，你是否有以下问题：孩子没有阅读习惯，怎么办？孩子阅读时的专注度不够，无法进行深度阅读，怎么办？孩子看了很多书但作文写得不好，怎么办？孩子沉迷于游戏，家长需要担心吗？只要坚持阅读，就会获得智慧，成为一个有见识的人，果真如此吗？网络上信息混杂，如何分辨哪些信息是正确的，哪些是错误的？ 这是一本给所有家长及教育工作者的养育指南，培养孩子的批判性思维，帮助孩子培养全面的世界观，成为知识面广、表达能力强、会独立思考、能解决问题的终身学习者。更好地应对数字时代多种多样的价值观与信息冲击。在获取知识途径极度丰富，知识相对“廉价”的时代，帮助孩子更好地思考与决策。 凭借20多年的家庭教育和课程开发经验，作者在书中引导各个年龄段的孩子提高探索世界的能力，让孩子逐步掌握思考与学习的过程，并产生新的见解，而非简单重复学过的知识。书中提供了14种适合各个年龄段的活动，适合父母与孩子共同尝试，一同开启培养批判性思维之旅。', '浙江科学技术出版社', 292, '109.90', '9787573913517', '2024-08-15', '2024-11-09 19:34:36.294183', '0', 99, '9.2', '平装', 0, 40, 'Raising Critical Thinkers: A Parent\'s Guide to Growing Wise Kids in the Digital Age', '2024-11-09 19:26:25.345658', 0, 0, 0);
INSERT INTO `b_book` VALUES (95, '笑得出来的养育', 'https://img1.doubanio.com/view/subject/s/public/s34867678.jpg', '李一诺', '未知', '●亲历中、美、日多元教育，全球教育探索者李一诺重磅首发 ●解决三个养育痛点：给父母真实的情绪支持——“做父母”的难，李一诺说到人心坎里； 对新育儿理念的探索——养育优秀的孩子，不需要苦大仇深； 随取随用的养育招法——给孩子支持一生的7个能力。 ●写作手法轻松，好读又好用，一诺育儿中的各种崩溃场景贯穿全书 ●杨东平、俞敏洪、樊登、周轶君、蔡朝阳5位专家推荐 我们上一次和孩子大笑，是什么时候？ 我要如何培养自己的孩子？ 什么才是最好的教育？ 我们如何在每一次的养育崩溃中峰回路转？ 每一个家庭的背景，父母、孩子特点都不一样。所谓的“成功”，背后也有无数看不见、复制不了的机缘与特色。所以最好的养育，不来自于任何专家、道理、方法，而是来自于作为父母的我们，根据自己的状态，孩子的特点，关系的此时此刻，以及所处的环境与条件，来做的每个当下的“刚刚好，也是最好”的选... ●亲历中、美、日多元教育，全球教育探索者李一诺重磅首发 ●解决三个养育痛点：给父母真实的情绪支持——“做父母”的难，李一诺说到人心坎里； 对新育儿理念的探索——养育优秀的孩子，不需要苦大仇深； 随取随用的养育招法——给孩子支持一生的7个能力。 ●写作手法轻松，好读又好用，一诺育儿中的各种崩溃场景贯穿全书 ●杨东平、俞敏洪、樊登、周轶君、蔡朝阳5位专家推荐 我们上一次和孩子大笑，是什么时候？ 我要如何培养自己的孩子？ 什么才是最好的教育？ 我们如何在每一次的养育崩溃中峰回路转？ 每一个家庭的背景，父母、孩子特点都不一样。所谓的“成功”，背后也有无数看不见、复制不了的机缘与特色。所以最好的养育，不来自于任何专家、道理、方法，而是来自于作为父母的我们，根据自己的状态，孩子的特点，关系的此时此刻，以及所处的环境与条件，来做的每个当下的“刚刚好，也是最好”的选择。 如何做出这个“最合适”的选择？来自于我们的内心丰盈自然的状态，对内心障碍、过往伤痛的疗愈，与原生家庭的链接与和解，对真实自我的接纳与释放。只有当我们能真正看见自己，才能真正懂得孩子。只有我们能够真正爱自己，才能给孩子真实自然的爱。 所以这不是一本教你如何养孩子的书，而是一趟邀请父母们与我共渡的自我关爱、觉察、疗愈之旅。在这里，你能看到我的父母养育、觉察反观、自我成长的经历，既有正向的激励和传承，也有卡点的反思与突破。以及我后来做高管、做教育、做妈妈过程中，看到的父母辈的成长经历，以及同龄朋友、年轻人群，父母孩子、教育体系背后等等养育方式的不同，带来的人生变化与影响，再回过头来思考：到底什么才是最好的养育？我要如何培养自己的孩子？最希望给当下的父母们什么样的分享与启发？ 以上所有汇成了本书，从自我觉察出发的，启迪父母觉醒之书。', '浙江教育出版社', 344, '79.90', '9787572279010', '2024-06-01', '2024-11-09 19:34:37.951759', '0', 99, '8.2', '平装', 0, 40, '李一诺', '2024-11-09 19:26:26.961035', 0, 0, 0);
INSERT INTO `b_book` VALUES (96, '我的二本学生', 'https://img9.doubanio.com/view/subject/s/public/s33702245.jpg', '黄灯', '未知', '作者黄灯在一所二本院校从教,长期的课堂教学以及课后的师生交流，使她成为这群学生成长变化的见证者。《我的二本学生》相当于她的教学札记，这里面有她15年一线教学经验的分享，对4500个学生的长期观察和长达10年的跟踪走访，也有两届班主任工作的总结思考，更有近100名学生的现身说法，是黄灯向读者描摹一群年轻人生活剪影的尝试。 截至2020年6月，全国有3005所高等学府，其中本科院校1258所，人们熟知的985和211院校只占100多席，二本及以下学生面目是有点模糊的。为了让读者真切了解二本学生这一群体的社会性现实，在书中，黄灯做了跨越时间的、空间的、地域文化的差异性对比，借以考察时代变化、生源地、家庭流动情况对学生就业去向和人生目标设定的影响。 书中最真切动人的，是一个个具体学生的采访日志。在这些用学生名字命名的章节中，访谈个体向读者倾吐着他们对于高考的... 作者黄灯在一所二本院校从教,长期的课堂教学以及课后的师生交流，使她成为这群学生成长变化的见证者。《我的二本学生》相当于她的教学札记，这里面有她15年一线教学经验的分享，对4500个学生的长期观察和长达10年的跟踪走访，也有两届班主任工作的总结思考，更有近100名学生的现身说法，是黄灯向读者描摹一群年轻人生活剪影的尝试。 截至2020年6月，全国有3005所高等学府，其中本科院校1258所，人们熟知的985和211院校只占100多席，二本及以下学生面目是有点模糊的。为了让读者真切了解二本学生这一群体的社会性现实，在书中，黄灯做了跨越时间的、空间的、地域文化的差异性对比，借以考察时代变化、生源地、家庭流动情况对学生就业去向和人生目标设定的影响。 书中最真切动人的，是一个个具体学生的采访日志。在这些用学生名字命名的章节中，访谈个体向读者倾吐着他们对于高考的回望、对于城市生活的生疏、对于毕业的迷茫以及就业的慌张。在这些倾诉中，你将了解他们彼此之间的社交距离、他们和这个社会的认识过程；他们与父母兄妹之间交流的阻畅、与故园乡土的亲疏；他们对于网络文学和游戏的认识、对于新媒体时代的适应和迷失；他们对于考公务员和考研之间的权衡，对于安稳和漂泊的抉择。还有他们对自己人生还有父母、乃至国家责任的担当与跋涉。这每一个被当事人讲述出来的故事，都带着看得见的呼吸、烟尘、脚步还有凝视。在这些极为细致和具体的生命切片中，我们看到的已经不再是二本学生，而是八五后、九零后这一批年轻人，他们所有人。他们所遇到的困惑和难题，并没有将他们彼此区分很开，反而，成为他们共享的课题。', '人民文学出版社', 320, '45', '9787020161874', '2020-08-01', '2024-11-09 19:34:39.682171', '0', 99, '7.5', '平装', 0, 40, '未知', '2024-11-09 19:26:29.145813', 0, 0, 0);
INSERT INTO `b_book` VALUES (97, '金榜题名之后', 'https://img3.doubanio.com/view/subject/s/public/s34538702.jpg', '郑雅君', '未知', '重点大学寄托了万千家庭改变命运的梦想，如今一系列专项招生计划也为更多学子打开了机会之门。然而，金榜题名之后，学子是否如想象那般顺遂？不同社会经济背景的学生在毕业出路和职业前景上的差距是如何拉开的？通过对位于京沪的两所重点高校毕业班学生的深度访谈，本书揭示了大学生在上大学 过程中遭遇的一种隐性的挑战：是否洞察大学场域的“游戏规则”，掌握其中“默认”为常规的一系列认知和实践模式。本书指出，家庭背景优势不仅带来了雄厚的物质支持，更意味一整套关于“上大学”的文化技艺的传承，这使得出身优渥的大学生得以在白热化的出路竞争中抢占先机，而家境平平者却更容易与机会失之交臂。本书也关注了意义感在出路获得中的重要作用，指出了在当前的制度背景下，内化主流价值信念、扩充“文化工具箱”有助于帮助大学生走出生涯目标迷失的困境，从而更高效地利用大学资源，获得生涯出彩机会。 自中国教... 重点大学寄托了万千家庭改变命运的梦想，如今一系列专项招生计划也为更多学子打开了机会之门。然而，金榜题名之后，学子是否如想象那般顺遂？不同社会经济背景的学生在毕业出路和职业前景上的差距是如何拉开的？通过对位于京沪的两所重点高校毕业班学生的深度访谈，本书揭示了大学生在上大学 过程中遭遇的一种隐性的挑战：是否洞察大学场域的“游戏规则”，掌握其中“默认”为常规的一系列认知和实践模式。本书指出，家庭背景优势不仅带来了雄厚的物质支持，更意味一整套关于“上大学”的文化技艺的传承，这使得出身优渥的大学生得以在白热化的出路竞争中抢占先机，而家境平平者却更容易与机会失之交臂。本书也关注了意义感在出路获得中的重要作用，指出了在当前的制度背景下，内化主流价值信念、扩充“文化工具箱”有助于帮助大学生走出生涯目标迷失的困境，从而更高效地利用大学资源，获得生涯出彩机会。 自中国教育社会学重建与高校扩招以来，探究大学入学公平问题的研究在不断增长。郑雅君往前迈了一步，将重点从入学转到了学生经历大学生活与“探寻出路”的过程。她从国际知名的社会学家那里汲取了有力的概念工具，深入到中国的具体情境中去理解农村贫困学生的大学经历，探究了价值话语、机会结构与个人动力如何在家庭主义传统与市场经济交织着的社会转型期塑造他们的观念和决策。这本书是对中国教育社会学的重要贡献。 —Gerard A. Postiglione（香港大学教育学院荣誉教授） 从文化社会学视角切入受教育者的分类，是书作者提供给学界的一个知识亮点；无论人们是否同意它的结论，它将给教育学和社会学提供更多有用的思考。 —周怡（复旦大学社会学系教授） 很多人把考上大学作为衡量教育公平的结果变量，雅君则打开了高等教育过程的黑箱，指出“上大学”是一种“技艺”，经过层层选拔而胜出的相对弱势家庭孩子，可能因为文化障碍而经受更深刻的困扰。这本书不仅能让大家更好地理解大学中这些困难学生的迷茫与苦痛，更促使我们去反思大学教育，以寻求更加包容与公平的大学社区。 —余秀兰（南京大学教育研究院教授） 当社会舆论还在争辩不同背景的青年如何才能公平地走向社会的时候，雅君的这份教育与文化社会学专著已经深化了这场争论，不仅打开了高等教育过程的“黑匣子”，而且呈现了其中的异质性。相信这本书的文化关怀和深刻意义，不仅适合学术工作者阅读，更适合广大的学生、教师和家长一起思考。 —孙宇凡（爱丁堡大学社会学系博士生、微信公众号“社会学理论大缸”创办人） 我在上大学之后，长久地困惑于两个问题：我与其他同学高考分数都差不多，为什么我们之间的差异如此巨大？是不是有某种东西是高考试卷分数所反映不出来的？直到我读完本书，我才恍然大悟—“‘上大学’如今已经不再是一个无差别的传送带，而是高等教育阶段的又一重隐秘的筛选过程，一种与家庭背景紧密相连的、难以在课堂上学到的技艺”。本书直接洞穿了大学生所面临的窘境。所幸的是，雅君学姐提出了应对之法，这对于读者来说无疑是避免走弯路的金玉良言。 —陈建建（华中师范大学历史学系硕士生） 阅读完这本书，我之所以感到慰藉并受到鼓舞，是因为我终于明白，学生生活中出现文化障碍的现象是个有规律可循的社会事实，我们每个人无论是经历过哪种文化障碍的状态，都不是孤单、羞耻的。我真诚地推荐和希望更多的人去阅读这本书。 —孙露（兰州大学公共管理系硕士生）', '上海三联书店', 275, '68', '9787542677815', '2023-01-01', '2024-11-09 19:34:41.180375', '0', 99, '8.4', '平装', 0, 40, '未知', '2024-11-09 19:26:30.956928', 0, 0, 0);
INSERT INTO `b_book` VALUES (98, '蛤蟆先生去看心理医生', 'https://img1.doubanio.com/view/subject/s/public/s33941998.jpg', '[英] 罗伯特·戴博德', '陈赢', '蛤蟆先生一向爱笑爱闹，如今却一反常态地郁郁寡欢，他一个人躲在屋里，连起床梳洗的力气都没有。朋友们非常担心他，建议他去做心理咨询。在10次心理咨询中，蛤蟆在咨询师苍鹭的带领下，勇敢地探索了自己的内心世界，也逐渐找回了信心与希望…… 这并不是一本写给孩子看的书，而是一本非常有深度的心理疗愈读物。出版20多年来，已成为英国国民级心理咨询入门书。它基于TA沟通分析心理学的理论，讲述了一个抑郁症病人通过十次心理咨询，终于找回快乐和自信的全过程。在书中，可以看到心理咨询的倾听、共情、沟通技巧，也可以看到一个标准的心理咨询流程的模板。读者犹如亲临现场，体验心理咨询的每一个细节，见证疗愈和改变的发生。 在这本书里，作者借由蛤蟆和心理咨询师苍鹭的互动，探索了蛤蟆自卑、软弱、爱炫耀的个性与抑郁的情绪究竟来源于何处，让读者看到童年经历对人格的深刻影响，以及如何才能在心理上... 蛤蟆先生一向爱笑爱闹，如今却一反常态地郁郁寡欢，他一个人躲在屋里，连起床梳洗的力气都没有。朋友们非常担心他，建议他去做心理咨询。在10次心理咨询中，蛤蟆在咨询师苍鹭的带领下，勇敢地探索了自己的内心世界，也逐渐找回了信心与希望…… 这并不是一本写给孩子看的书，而是一本非常有深度的心理疗愈读物。出版20多年来，已成为英国国民级心理咨询入门书。它基于TA沟通分析心理学的理论，讲述了一个抑郁症病人通过十次心理咨询，终于找回快乐和自信的全过程。在书中，可以看到心理咨询的倾听、共情、沟通技巧，也可以看到一个标准的心理咨询流程的模板。读者犹如亲临现场，体验心理咨询的每一个细节，见证疗愈和改变的发生。 在这本书里，作者借由蛤蟆和心理咨询师苍鹭的互动，探索了蛤蟆自卑、软弱、爱炫耀的个性与抑郁的情绪究竟来源于何处，让读者看到童年经历对人格的深刻影响，以及如何才能在心理上真正长大成人，独立、自信、充满希望地生活。', '天津人民出版社', 208, '38.00', '9787201161693', '2020-08-01', '2024-11-09 19:34:50.880855', '0', 99, '8.4', '平装', 0, 40, 'Counselling For Toads: A Psychological Adventure', '2024-11-09 19:27:03.458567', 0, 0, 0);
INSERT INTO `b_book` VALUES (99, '小狗钱钱', 'https://img1.doubanio.com/view/subject/s/public/s33789389.jpg', '[德] 博多·舍费尔', '文燚', '吉娅是一个普通的12岁女孩，一次偶然的机会，她救助了一只受伤的小狗，并给它取名叫“钱钱”。没想到，钱钱居然是一位深藏不露的理财高手，它改变了吉娅一家人的财富命运…… “欧洲理财大师”博多·舍费尔用生动的理财童话，教会你如何从小学会支配金钱，而不是受金钱的支配；如何像富人那样思考，正确地认识和使用金钱；如何进行理财投资，找到积累资产的方法，早日实现财务自由！', '中信出版集团', 240, '39.80', '9787521726473', '2021-02-01', '2024-11-09 19:36:51.222764', '0', 99, '9.2', '平装', 0, 6, 'Ein Hund Namens Money', '2024-11-09 19:27:21.096661', 0, 0, 0);
INSERT INTO `b_book` VALUES (100, '一本书读懂财报', 'https://img9.doubanio.com/view/subject/s/public/s29294675.jpg', '肖星', '未知', '本书专门为零基础的初学者写作，它将帮助初学者循序渐进、轻松自如地掌握财务报表的相关知识，快速入门。无论你是企业管理层，是银行、咨询公司的工作人员，哪怕只是一名普普通通的会计专业学生，本书都能帮你实实在在地了解财报，迅速捕获财务报表中对自己最有价值的信息。 清华大学会计系主任肖星老师向你点对点传输执教经验，用问答形式展示关于财务报表的扎实干货与实战案例 本书让你 3 分钟掌握财务报表上的关键数据，5 分钟实现简单的财务分析，10 分钟利用财务信息做出正确决策。 总之，搞定财务报表，一本书就已足够。', '浙江大学出版社', 192, '35.00', '9787308133326', '2014-07-01', '2024-11-09 19:36:53.156513', '0', 99, '8.9', '平装', 0, 6, '未知', '2024-11-09 19:27:23.083804', 0, 0, 0);
INSERT INTO `b_book` VALUES (101, '深入理解软件性能——一种动态视角', 'https://img9.doubanio.com/view/subject/s/public/s34723454.jpg', '理查德· L. 赛茨(Richard L.Sites)', '赵利通', '本书不仅介绍了如何测量CPU、内存、磁盘/SSD、网络的性能，如何观察、记录、跟踪、汇总性能指标，还讨论了如何设计和创建性能测试工具KUtrace，以及如何对观察结果进行推理。 本书不仅适合软件开发人员阅读，还适合计算机相关专业的师生参考。', '人民邮电出版社', 618, '129.80', '9787115616562', '2023-12-01', '2024-11-09 19:37:28.910380', '0', 99, '9.5', '平装', 0, 4, 'Understanding Software Dynamics', '2024-11-09 19:27:48.354862', 0, 0, 0);
INSERT INTO `b_book` VALUES (102, '操作系统导论', 'https://img9.doubanio.com/view/subject/s/public/s32332106.jpg', '[美]  Remzi H. Arpaci-Dusseau', '王海鹏', '这是一本关于现代操作系统的书。全书围绕虚拟化、并发和持久性这3个主要概念展开，介绍了所有现代系统的主要组件（包括调度、虚拟内存管理、磁盘和I/O子系统、文件系统）。 本书共50章，分为3个部分，分别讲述虚拟化、并发和持久性的相关内容。本书大部分章节均先提出特定的问题，然后通过书中介绍的技术、算法和思想来解决这些问题。笔者以对话形式引入所介绍的主题概念，行文诙谐幽默却又鞭辟入里，力求帮助读者理解操作系统中虚拟化、并发和持久性的原理。 本书内容全面，并给出了真实可运行的代码（而非伪代码），还提供了相应的练习，适合高等院校相关专业教师教学和高校学生自学。', '人民邮电出版社', 480, '119.00', '9787115508232', '2019-06-01', '2024-11-09 19:37:30.739934', '0', 99, '9.4', '平装', 0, 4, 'Operating Systems: Three Easy Pieces', '2024-11-09 19:27:50.301158', 0, 0, 0);
INSERT INTO `b_book` VALUES (103, '程序员数学', 'https://img1.doubanio.com/view/subject/s/public/s34071359.jpg', '[美] 保罗·奥兰德', '百度KFive', '数学拥有无穷的力量。它既帮助游戏开发工程师建模物理世界，也帮助量化金融分析师赚取利润，还帮助音频处理工程师制作音乐。在数据科学和机器学习领域，数学知识更是不可或缺的。 有人热爱数学，将它比作诗歌，为之着迷一生；有人很难领会数学的妙处，受困于“数学焦虑症”。本书正是为了帮助程序员消除这种焦虑，用自己熟悉的工具，即代码，重新发现数学之美。 ◎ 编辑推荐 本书以图文结合的方式帮助你用Python代码解决程序设计中的数学问题。通过边学边练，你会发现线性代数和微积分的重要概念跃然纸上、印在脑中。 ◇ 向量几何和计算机图形 ◇ 矩阵和线性变换 ◇ 微积分的核心概念 ◇ 仿真和优化 ◇ 图像处理和音频处理 ◇ 用于回归和分类的机器学习算法 ◎ 内容简介 代码和数学是相知相惜的好伙伴，它们基于共同的理性思维，数学公式的推导可以自然地在编写代码的过程中展开。 本书带领... 数学拥有无穷的力量。它既帮助游戏开发工程师建模物理世界，也帮助量化金融分析师赚取利润，还帮助音频处理工程师制作音乐。在数据科学和机器学习领域，数学知识更是不可或缺的。 有人热爱数学，将它比作诗歌，为之着迷一生；有人很难领会数学的妙处，受困于“数学焦虑症”。本书正是为了帮助程序员消除这种焦虑，用自己熟悉的工具，即代码，重新发现数学之美。 ◎ 编辑推荐 本书以图文结合的方式帮助你用Python代码解决程序设计中的数学问题。通过边学边练，你会发现线性代数和微积分的重要概念跃然纸上、印在脑中。 ◇ 向量几何和计算机图形 ◇ 矩阵和线性变换 ◇ 微积分的核心概念 ◇ 仿真和优化 ◇ 图像处理和音频处理 ◇ 用于回归和分类的机器学习算法 ◎ 内容简介 代码和数学是相知相惜的好伙伴，它们基于共同的理性思维，数学公式的推导可以自然地在编写代码的过程中展开。 本书带领程序员使用自己熟知的工具，即代码，来理解机器学习和游戏设计中的数学知识。通过Python代码和300多个练习，读者将掌握二维向量、三维向量、矩阵变换、线性方程、微积分、线性回归、逻辑回归、梯度下降等。 ◎ 名人推荐 “这本书循序渐进地介绍了程序员应该掌握的有用的数学概念。” ——Christopher Haupt，Swoogo公司工程副总裁 “这本书严谨而简明地概述了对现代编程起支撑作用的数学知识。” ——Dan Sheikh，BCG Digital Ventures公司工程师 “实用、引人入胜。推荐所有程序员阅读。” ——Vincent Zhu，RethinkXSocial网站联合创始人兼CTO “这本书为需要提高数学技能的程序员建造了一座桥梁，使数学不再那么神秘、那么难以理解。” ——Robert Walsh，Excalibur Solutions公司总裁', '图灵教育', 513, '129.80', '9787115576491', '2021-12-01', '2024-11-09 19:37:32.902402', '0', 99, '9.2', '平装', 0, 4, 'Math for Programmers: 3D Graphics, Machine Learning, and Simulations with Python', '2024-11-09 19:27:51.968636', 0, 0, 0);
INSERT INTO `b_book` VALUES (104, '深度学习入门', 'https://img9.doubanio.com/view/subject/s/public/s29815955.jpg', '[日］斋藤康毅', '陆宇杰', '本书是深度学习真正意义上的入门书，深入浅出地剖析了深度学习的原理和相关技术。书中使用Python3，尽量不依赖外部库或工具，从基本的数学知识出发，带领读者从零创建一个经典的深度学习网络，使读者在此过程中逐步理解深度学习。书中不仅介绍了深度学习和神经网络的概念、特征等基础知识，对误差反向传播法、卷积神经网络等也有深入讲解，此外还介绍了深度学习相关的实用技巧，自动驾驶、图像生成、强化学习等方面的应用，以及为什么加深层可以提高识别精度等“为什么”的问题。', '人民邮电出版社', 285, '59.00', '9787115485588', '2018-07-01', '2024-11-09 19:37:34.488703', '0', 99, '9.5', '平装', 0, 4, 'Deep Learning from Scratch', '2024-11-09 19:27:53.557636', 0, 0, 0);
INSERT INTO `b_book` VALUES (105, '深入理解计算机系统（原书第3版）', 'https://img1.doubanio.com/view/subject/s/public/s29195878.jpg', 'Randal E.Bryant', '龚奕利', '和第2版相比，本版内容上*大的变化是，从以IA32和x86-64为基础转变为完全以x86-64为基础。主要更新如下： 基于x86-64，大量地重写代码，首次介绍对处理浮点数据的程序的机器级支持。 处理器体系结构修改为支持64位字和操作的设计。 引入更多的功能单元和更复杂的控制逻辑，使基于程序数据流表示的程序性能模型预测更加可靠。 扩充关于用GOT和PLT创建与位置无关代码的讨论，描述了更加强大的链接技术（比如库打桩）。 增加了对信号处理程序更细致的描述，包括异步信号安全的函数等。 采用新函数，更新了与协议无关和线程安全的网络编程。', '机械工业出版社', 737, '139.00', '9787111544937', '2016-11-01', '2024-11-09 19:37:36.617705', '0', 99, '9.8', '平装', 0, 4, 'Computer Systems: A Programmer\'s Perspective (3rd Edition)', '2024-11-09 19:27:55.101864', 0, 0, 0);
INSERT INTO `b_book` VALUES (106, '女人的胜利', 'https://img1.doubanio.com/view/subject/s/public/s34953668.jpg', '余华', '未知', '◆一边崩溃一边自愈，快活一天就是胜利。 ◆余华中短篇里极为罕见的现实主义风格！亲切日常，轻松好读。余华：“这是我所有中短篇小说中与现实最为接近的作品。” ◆幽默余华，犀利开麦。敏锐捕捉生活的无奈与荒诞，又以天才的幽默让你会心一笑！ ◆集中体现余华的创作关键词！余华：“如果关于我的写作应该有一个关键词，那么这个词就是日常生活。日常生活貌似平淡和琐碎，其实丰富宽广和激动人心。只要将日常生活写出来了，也就写下了一切。” ◆首次收录余华小说《明天就出来》！ ◆封面选自当代艺术家张晓刚的画作；内文选用平滑胶版纸；精美篇章页凝聚每篇精彩意象！ ◆翻开本书，让余华治愈你生活里的焦虑。 ------------------- 【内容简介】 “他会求你，他甚至会下跪，他还会打自己的耳光，你都不要心软，他会一次次地发誓，男人最喜欢发誓，他们的誓言和狗叫没有什么两样，你不... ◆一边崩溃一边自愈，快活一天就是胜利。 ◆余华中短篇里极为罕见的现实主义风格！亲切日常，轻松好读。余华：“这是我所有中短篇小说中与现实最为接近的作品。” ◆幽默余华，犀利开麦。敏锐捕捉生活的无奈与荒诞，又以天才的幽默让你会心一笑！ ◆集中体现余华的创作关键词！余华：“如果关于我的写作应该有一个关键词，那么这个词就是日常生活。日常生活貌似平淡和琐碎，其实丰富宽广和激动人心。只要将日常生活写出来了，也就写下了一切。” ◆首次收录余华小说《明天就出来》！ ◆封面选自当代艺术家张晓刚的画作；内文选用平滑胶版纸；精美篇章页凝聚每篇精彩意象！ ◆翻开本书，让余华治愈你生活里的焦虑。 ------------------- 【内容简介】 “他会求你，他甚至会下跪，他还会打自己的耳光，你都不要心软，他会一次次地发誓，男人最喜欢发誓，他们的誓言和狗叫没有什么两样，你不要相信。” ——第11页《 女人的胜利》 “我才二十四岁，可我这一个星期过得像个忙忙碌碌的中年人一样，我不能和自己的青春分开得太久……” ——第68 页《 我为什么要结婚》 · 本书收录《女人的胜利》《我为什么要结婚》《我没有自己的名字》等十三篇余华现实主义短篇小说佳作，其中包括首次收录出版的《明天就出来》。这些小说呈现了生活的无奈与荒诞，又以幽默的语言带给我们化解苦闷生活的巨大力量。 · “这是我所有中短篇小说中与现实最为接近的作品，可能是令人亲切的，不过也是令人不安的。我想这是现实生活给予我们最基本的感受，亲切同时又让人不安。生活是那么的强大，它时常在悲伤里剪辑出欢乐来。”——余华 · 【名家推荐】 ◆ 余华已经走到中国当代文学的前列了。——李陀（作家、文学批评家） ◆它（《我没有自己的名字》）可以说是我近几年来读到的最好的短篇小说之一，非常的古典、朴素，又非常的深刻、意味深长。——苏童（作家） ◆他的中短篇小说，无论你什么时候看，都能看出不同感受，他没有跳脱时间，但他写作的深度却已经脱离时间和时代的限制。——梁文道（作家、书评家） ◆他在这一时期的小说，生活的烟火气息十分明确……就像一个渐渐成熟的人，余华开始直面现实。——洪治纲（文学评论家、《余华评传》作者）', '江苏凤凰文艺出版社', 240, '49.9', '9787559484581', '2024-10-01', '2024-11-09 19:36:18.643067', '0', 99, '7.2', '平装', 0, 29, '未知', '2024-11-09 19:28:20.760573', 0, 0, 0);
INSERT INTO `b_book` VALUES (107, '奇点更近', 'https://img3.doubanio.com/view/subject/s/public/s34962527.jpg', '[美]雷·库兹韦尔', '芦义', '· 关于未来20年的预言，一幅走向奇点的未来生存指南与路线图。 继《奇点临近》之后，雷·库兹韦尔的又一部里程碑式作品！探讨以人工智能、生物技术及纳米机器人为代表的指数型技术将如何推动人类走向奇点！ 库兹韦尔通过扎实的论证，在书中重申了他对未来20年的大胆预言——AI将在何时通过图灵测试；人类将在何时迈入奇点；持续发展的人机融合技术将如何使人类智能增强数百万倍；人类寿命如何实现延长，超越目前120岁的生物学限制；可再生能源技术的不断完善将如何满足我们所有的能源需求；指数型技术将如何改变人类生活的方方面面等。我们即将迈入认知、生活乃至生命被重构的时代，一切都将重新开始！ · 生物技术、纳米技术、人工智能技术将如何重塑未来，一场关涉未来商业、生活、工作、健康等领域的超ji预言。 不断融合的指数增长的技术趋势将带来一场对人类具有根本性意义的变革。未来的商业、... · 关于未来20年的预言，一幅走向奇点的未来生存指南与路线图。 继《奇点临近》之后，雷·库兹韦尔的又一部里程碑式作品！探讨以人工智能、生物技术及纳米机器人为代表的指数型技术将如何推动人类走向奇点！ 库兹韦尔通过扎实的论证，在书中重申了他对未来20年的大胆预言——AI将在何时通过图灵测试；人类将在何时迈入奇点；持续发展的人机融合技术将如何使人类智能增强数百万倍；人类寿命如何实现延长，超越目前120岁的生物学限制；可再生能源技术的不断完善将如何满足我们所有的能源需求；指数型技术将如何改变人类生活的方方面面等。我们即将迈入认知、生活乃至生命被重构的时代，一切都将重新开始！ · 生物技术、纳米技术、人工智能技术将如何重塑未来，一场关涉未来商业、生活、工作、健康等领域的超ji预言。 不断融合的指数增长的技术趋势将带来一场对人类具有根本性意义的变革。未来的商业、工作、健康与生活都将被重构。 未来的商业：指数级发展的技术将革新实物的创造和分销模式！ 未来的工作：AI革命以指数级速度发生，这将导致超过一半的职业被自动化设备取代的可能性都在 50% 以上！ 未来的健康：医用纳米机器人将能够在细胞层面进行维护和修复，人口预期寿命将突破120岁，我们的思维文件将可以数字化方式备份，甚至实现“永生”！ 未来的生活：几乎生活的每个方面都在变得更好，变得更轻松、更an全、更丰富、更美好！', '中国财政经济出版社', 364, '119.90', '9787522333977', '2024-09-30', '2024-11-09 19:35:01.081020', '0', 99, '9.2', '平装', 0, 38, 'THE SINGULARITY IS NEARER', '2024-11-09 19:35:01.082581', 0, 0, 0);
INSERT INTO `b_book` VALUES (108, '我看见的世界', 'https://img9.doubanio.com/view/subject/s/public/s34825536.jpg', '[美] 李飞飞', '赵灿', '《我看见的世界》既是李飞飞的个人史，也是一部波澜壮阔、跌宕起伏的人工智能发展史。 在这本书里，李飞飞回忆了自己从底层移民成长到顶尖科学家的经历。她度过了困顿艰辛的青少年时代，但对科学的热爱不断激励着她持续追寻人生的“北极星”，并最终走进科学的殿堂。 当李飞飞和家人努力适应在美国的生活时，恰逢现代人工智能开始不断取得突破。她不断开启新的科学征程，并确立了自己在计算机视觉领域的科学使命，取得了非凡的成就。在这本书里，她详细记录了这些重大时刻的关键细节。同时，李飞飞也对未来人工智能的发展方向提出了自己的判断和警醒，核心就是“以人为本”，让人工智能真正推动人类的发展，而不是成为威胁。 这本书既是对重大科学突破幕后的精彩窥探，也是一位女性用好奇心和勇气突破人生困境的故事。它不仅证明了即使是最技术性的学术研究也需要激情，更加表明永不停歇的好奇心可以激发无尽的科技... 《我看见的世界》既是李飞飞的个人史，也是一部波澜壮阔、跌宕起伏的人工智能发展史。 在这本书里，李飞飞回忆了自己从底层移民成长到顶尖科学家的经历。她度过了困顿艰辛的青少年时代，但对科学的热爱不断激励着她持续追寻人生的“北极星”，并最终走进科学的殿堂。 当李飞飞和家人努力适应在美国的生活时，恰逢现代人工智能开始不断取得突破。她不断开启新的科学征程，并确立了自己在计算机视觉领域的科学使命，取得了非凡的成就。在这本书里，她详细记录了这些重大时刻的关键细节。同时，李飞飞也对未来人工智能的发展方向提出了自己的判断和警醒，核心就是“以人为本”，让人工智能真正推动人类的发展，而不是成为威胁。 这本书既是对重大科学突破幕后的精彩窥探，也是一位女性用好奇心和勇气突破人生困境的故事。它不仅证明了即使是最技术性的学术研究也需要激情，更加表明永不停歇的好奇心可以激发无尽的科技创新。', '中信出版社', 432, '85.00', '9787521762181', '2024-04-01', '2024-11-09 19:35:03.760731', '0', 99, '9.2', '精装', 0, 38, 'The Worlds I See: Curiosity, Exploration, and Discovery at the Dawn of AI', '2024-11-09 19:35:03.762724', 0, 0, 0);
INSERT INTO `b_book` VALUES (109, '芯片战争', 'https://img3.doubanio.com/view/subject/s/public/s34500182.jpg', '[美]克里斯·米勒', '蔡树军', '一部芯片的发展史与竞争史！ 追溯半导体产业发展历程，直面大国博弈下的芯片竞争格局！ 《金融时报》2022年度最佳商业图书 《经济学人》2022年度最佳图书 《纽约时报》畅销书 2023年专业出版商杰出作品奖 入围莱昂内尔·盖尔伯奖 腾讯研究院2023年新春书单 —————————————————— 芯片是现代世界赖以生存的稀缺资源，就像石油一样。如今，军事、经济和地缘政治力量都建立在芯片的基础上。从制导导弹到微波炉，从智能手机到股票市场，一切都离不开芯片。谁在芯片设计和制造领域保持领先地位，谁就能在科技和经济等领域产生巨大的优势。长期以来，美国、日本、韩国以及欧洲各国，都在芯片设计和制造领域进行激烈的竞争，以图赢得这场立足于科技之上的战争。 经济历史学家克里斯·米勒在书中较为完整地描述了各国为控制芯片技术而进行的长达数十年的斗争历程，解释了半导体在现... 一部芯片的发展史与竞争史！ 追溯半导体产业发展历程，直面大国博弈下的芯片竞争格局！ 《金融时报》2022年度最佳商业图书 《经济学人》2022年度最佳图书 《纽约时报》畅销书 2023年专业出版商杰出作品奖 入围莱昂内尔·盖尔伯奖 腾讯研究院2023年新春书单 —————————————————— 芯片是现代世界赖以生存的稀缺资源，就像石油一样。如今，军事、经济和地缘政治力量都建立在芯片的基础上。从制导导弹到微波炉，从智能手机到股票市场，一切都离不开芯片。谁在芯片设计和制造领域保持领先地位，谁就能在科技和经济等领域产生巨大的优势。长期以来，美国、日本、韩国以及欧洲各国，都在芯片设计和制造领域进行激烈的竞争，以图赢得这场立足于科技之上的战争。 经济历史学家克里斯·米勒在书中较为完整地描述了各国为控制芯片技术而进行的长达数十年的斗争历程，解释了半导体在现代生活中发挥的关键作用，以及美国是如何在芯片设计和制造中占据主导地位，并将这种技术应用于军事系统的。 本书集科技冒险、商战故事、大国博弈于一体，分析了芯片崛起的历史，以及以控制芯片行业的未来为目的的日益复杂的地缘政治权力斗争，对理解当今的政治、经济和和科技至关重要。 —————————————————— 1.一本书读懂芯片发展史与竞争史。本书讲述了全球半导体行业早期的技术突破，仙童半导体、德州仪器、英特尔、华为等各家芯片巨头的创业发展，以及美国、苏联、日本、韩国和欧洲各国为了这场科技战争而进行的长达数十年的斗争历程。 2.本书将宏大话题写得通俗易懂。本书共有54个章节，每一章都干货满满、清晰好读，集科技冒险、商战故事、大国博弈于一体，将芯片历史融合经济、技术、战略分析，即使是非专业读者，读起来也毫不费力。 3.本书对理解当今世界至关重要。本书有助于我们及时了解美国政府、企业家以及智囊团的真实想法，为我们正经历的“卡脖子”难关找寻历史启示，也为我们理解当前芯片局势、当今世界提供了有益的思考。 4.本书获中外知名人士重磅推荐。科学作家万维钢作序，郭奕武（上海市集成电路行业协会秘书长）、冯锦锋（知名半导体产业专家）、吴晨（《经济学人·商论》总编辑）、保罗·肯尼迪（英国历史学家)、尼尔·弗格森（英国历史学家）、劳伦斯·H. 萨默斯（美国财政部前部长）、詹姆斯·斯塔夫里迪斯（美国海军上将）等。 —————————————————— 克里斯·米勒的《芯片战争》十分精彩，有科技冒险，有商战故事，更有大国博弈，在世界范围内都很受欢迎。但我们中国读者读这本书会有更复杂的情绪，理应也有更重要的收获。 ——万维钢 科学作家 克里斯·米勒所写的《芯片战争》文笔优美，引人入胜，用讲故事的方式讲述了芯片的发展史与竞争史，展现了科技创新背后的激烈竞争与暗流涌动，值得推荐。 ——郭奕武 上海市集成电路行业协会秘书长 这是一本不可多得的产业、经济、战略图书。这本书让我们得以一窥美国专家乃至美国政府、企业家和智囊团的真实想法，是大家了解和思考当前芯片局势的上佳读物。 ——冯锦锋 知名半导体产业专家 《芯片战争》为全球化历史的梳理提供了重要的样本分析，也为世界矛盾重重的前景提供了多维度的思考。 ——吴晨 《经济学人·商论》总编辑 这是一部了不起的杰作，引人入胜，集经济分析、技术分析和战略分析于一体，独具匠心。 ——保罗·肯尼迪 英国历史学家 人类的未来取决于中美两个生态系统之间的“芯片战争”，它们争相设计和制造世界上先进的微处理器。随着中美竞争的加剧，这本书正好提供了我们所需要的历史视角。这是一本不可或缺的书。 ——尼尔·弗格森 英国历史学家 如果你关心技术、国家未来的繁荣或持续的安全，那么这是一本你不得不读的书。 ——劳伦斯·H. 萨默斯 美国财政部前部长 这本书抓住了21世纪地缘战略竞争中最关键和最具战略意义的要素，以历史和技术为基础，精彩而有趣，具有深刻的说服力。 ——詹姆斯·斯塔夫里迪斯 美国海军上将', '浙江人民出版社', 388, '88.00', '9787213109959', '2023-05-01', '2024-11-09 19:35:05.579857', '0', 99, '8.4', '平装', 0, 38, 'CHIP WAR: The Fight for the World’s Most Critical Technology', '2024-11-09 19:35:05.581850', 0, 0, 0);
INSERT INTO `b_book` VALUES (110, '浪潮之巅 (第四版)', 'https://img9.doubanio.com/view/subject/s/public/s33634524.jpg', '吴军', '未知', '这不只是一部科技产业发展历史集…… 更是在这个智能时代，一部IT人非读不可，而非IT人也应该阅读的作品。 一个企业的发展与崛起，绝非只是空有领导强人即可达成。任何的决策、同期的商业环境、各种能量的此消彼长，也在影响着企业的兴衰。《浪潮之巅》不只是一部历史书 ，除了讲 述 科技顶尖企业的发展规律， 对于华尔街如何左右科技公司，以及金融风暴对科技产业的冲击，也多有着墨。 《浪潮之巅 第四版》新增了6章内容，探讨硅谷不竭的创新精神究竟源自何处，进一步从工业革命的范式、生产关系的革命等角度深入全面阐述信息产业的规律性。从而，借助对信息时代公司管理特点进行的系统分析，对下一代科技产业浪潮给出判断和预测。 --------------- 第四版增加了大约1/4的章节，包括： ·“八叛徒与硅谷”（关于罗伊斯、摩尔等“八叛徒”创办仙童公司，开创全世界半导体产业的事迹... 这不只是一部科技产业发展历史集…… 更是在这个智能时代，一部IT人非读不可，而非IT人也应该阅读的作品。 一个企业的发展与崛起，绝非只是空有领导强人即可达成。任何的决策、同期的商业环境、各种能量的此消彼长，也在影响着企业的兴衰。《浪潮之巅》不只是一部历史书 ，除了讲 述 科技顶尖企业的发展规律， 对于华尔街如何左右科技公司，以及金融风暴对科技产业的冲击，也多有着墨。 《浪潮之巅 第四版》新增了6章内容，探讨硅谷不竭的创新精神究竟源自何处，进一步从工业革命的范式、生产关系的革命等角度深入全面阐述信息产业的规律性。从而，借助对信息时代公司管理特点进行的系统分析，对下一代科技产业浪潮给出判断和预测。 --------------- 第四版增加了大约1/4的章节，包括： ·“八叛徒与硅谷”（关于罗伊斯、摩尔等“八叛徒”创办仙童公司，开创全世界半导体产业的事迹）； ·“社交网络和Facebook”（以Facebook为核心，介绍社交网络的起源、发展和商业规律）； ·“生产关系的革命”（介绍硅谷企业独到的管理特点，特别是企业中新型的人与人的关系，以及较为合理的分配制度）； ·“汽车革命”（以特斯拉和字母表（Alphabet）旗下的Waymo为核心，介绍电动汽车和无人驾驶汽车产业）； ·“工业革命和颠覆式创新的范式”（介绍从第一次工业革命开始，历次工业革命的规律性）； ·“信息时代的科学基础”（介绍信息时代企业做事方法背后的科学基础和方法论，控制论、系统论和信息论在管理中的应用）。', '人民邮电出版社', 956, '139.00', '9787115514226', '2019-06-01', '2024-11-09 19:35:07.503147', '0', 99, '9.1', '平装', 0, 38, '未知', '2024-11-09 19:35:07.505141', 0, 0, 0);
INSERT INTO `b_book` VALUES (111, 'AI写作:用AI倍速提升写作效率', 'https://img1.doubanio.com/view/subject/s/public/s34926800.jpg', '邓世超', '未知', '本书是一本利用AI工具进行高效写作的指导手册，包含六个关键步骤，从明确主题到问题解答，旨在帮助读者掌握AI写作的核心技巧，适合职场人士、专业写作者和创作者、教育工作者、广告和创意团队、社交媒体内容创作者以及公共演讲者和演讲撰稿人等广泛群体。本书的特色在于通俗易懂的AI知识讲解、丰富的案例实践、多场景应用以及一学就会的指令技巧，帮助读者利用AI进行写作，提升工作效率与创作质量。本书不仅揭示了利用AI写作的奥秘，更是一本贴近生活的实用指南，让读者在AI的助力下产生新的灵感并创造更多的可能性。', '机械工业出版社', 188, '68.00', '9787111760146', '2024-08-01', '2024-11-09 19:35:09.011702', '0', 99, '9.6', '平装', 0, 38, '未知', '2024-11-09 19:35:09.013695', 0, 0, 0);
INSERT INTO `b_book` VALUES (112, '操控', 'https://img9.doubanio.com/view/subject/s/public/s34878904.jpg', '[以色列] 利拉斯·马加利特（Liraz Margalit）', '骆洋', '胡泳 姜宇辉 一致推荐！ 身处数字世界的警示说明，用户体验设计专家“逃离”科技公司后的反思之作 . 科技公司极力想要掩盖这则事实：人们正被人为地塑造成它们期望的样子。 请尝试回想数字世界中常见的几个场景：收到一条直击兴趣点的推送，点进阅 读；跳出一个红包界面，点进领取；看到一则“限时优惠”信息，立即下单……为什么数字世界总能说服人们，让人毫无抵抗地理性失灵？ 科技公司前用户体验专家利拉斯·马加利特，结合社会心理学和行为经济学的分析框架，向读者揭露了数字用户被算法/技术所操控的事实。她分析了这一现象背后被广泛应用于科技产品的脑科学机制，并进一步讨论了技术对人产生的生理、心理，乃至文化方面的影响。作者呼吁人们重新审视数字世界中的交互，警惕趋于无形的数字操控。 . 【推荐】 所有的技术和工具，都既可以用于积极的目的，也可以用于消极的目的。利拉斯·马加利特看... 胡泳 姜宇辉 一致推荐！ 身处数字世界的警示说明，用户体验设计专家“逃离”科技公司后的反思之作 . 科技公司极力想要掩盖这则事实：人们正被人为地塑造成它们期望的样子。 请尝试回想数字世界中常见的几个场景：收到一条直击兴趣点的推送，点进阅 读；跳出一个红包界面，点进领取；看到一则“限时优惠”信息，立即下单……为什么数字世界总能说服人们，让人毫无抵抗地理性失灵？ 科技公司前用户体验专家利拉斯·马加利特，结合社会心理学和行为经济学的分析框架，向读者揭露了数字用户被算法/技术所操控的事实。她分析了这一现象背后被广泛应用于科技产品的脑科学机制，并进一步讨论了技术对人产生的生理、心理，乃至文化方面的影响。作者呼吁人们重新审视数字世界中的交互，警惕趋于无形的数字操控。 . 【推荐】 所有的技术和工具，都既可以用于积极的目的，也可以用于消极的目的。利拉斯·马加利特看到了硬币的两面。为机器学习在用户体验方面的潜力感到兴奋的同时，她也对技术日益左右我们生活的方方面面提出了警告。 ——胡泳，北京大学新闻传播学院教授 . 诚如作者所言，本书创作于忧患之际，由此亦试图对这个时代的重重危机进行全面反省。作者并没有如很多人文研究的俗套那般，搬弄诸多批判理论的经典立场，而更是直指人心，直面现实。书中的每一个章节都如充满警示和启示的纪录片一般，将读者的目光带向那些被隐藏起来的暗处，条分缕析，鞭辟入里。或许，“操控”已是一个不争的现实，但作者更试图带给我们诊断病理的眼光，乃至走出困境的勇气。推荐给每一位深陷迷惘但却苦苦求索的读者，也期待大家都能从书中获致属于自己的那一线光亮。 ——姜宇辉，华东师范大学政治与国际关系学院教授', '浙江人民出版社', 384, '78', '9787213114571', '2024-06-01', '2024-11-09 19:35:10.759269', '0', 99, '7.3', '平装', 0, 38, 'Designing the Mind', '2024-11-09 19:35:10.761262', 0, 0, 0);
INSERT INTO `b_book` VALUES (113, '芯片简史', 'https://img1.doubanio.com/view/subject/s/public/s34501469.jpg', '汪波', '未知', '一本聚焦热门话题、热门行业的实力之作，完整呈现芯片发明和发展的60多年历程。 全书完整呈现了芯片发明与发展的历程，从支撑芯片产业发展的量子力学讲起，逐渐发展到半导体物理学，进而催生了半导体器件，这些器件又由简到繁，像一颗发芽的种子，演化出了双ji型晶体管、MOS场效晶体管、光电二ji管等，并由此集成构造出了模拟芯片（通信和传感器芯片等）、数字芯片（CPU、存储器、FPGA等）和光电芯片等。蕞后，本书还展示了芯片设计方法和制造方法由手工到自动的发展过程，并指出了芯片未来面对的挑战和可能的解决路径。可以说，了解芯片，有这一本书就够了。 芯片的发展史，就是一部创新史与叛逆史——详细讲述一群叛逆者突破传统、不断创新的故事。 作者以芯片诞生和发展为主线，将散落在世界各地的实验室、杂志、书籍或新闻报道的庞杂信息重新组织、编排，在力求准确、科学的前提下，写作了这样... 一本聚焦热门话题、热门行业的实力之作，完整呈现芯片发明和发展的60多年历程。 全书完整呈现了芯片发明与发展的历程，从支撑芯片产业发展的量子力学讲起，逐渐发展到半导体物理学，进而催生了半导体器件，这些器件又由简到繁，像一颗发芽的种子，演化出了双ji型晶体管、MOS场效晶体管、光电二ji管等，并由此集成构造出了模拟芯片（通信和传感器芯片等）、数字芯片（CPU、存储器、FPGA等）和光电芯片等。蕞后，本书还展示了芯片设计方法和制造方法由手工到自动的发展过程，并指出了芯片未来面对的挑战和可能的解决路径。可以说，了解芯片，有这一本书就够了。 芯片的发展史，就是一部创新史与叛逆史——详细讲述一群叛逆者突破传统、不断创新的故事。 作者以芯片诞生和发展为主线，将散落在世界各地的实验室、杂志、书籍或新闻报道的庞杂信息重新组织、编排，在力求准确、科学的前提下，写作了这样一本综合性作品，使得我们透过“芯片简史”这四个字，深入了解那些散落在历史深处的芯片发/明者的个人世界，体验他们在发/明中所经历的种种困苦与喜悦、磨难与幸福，与他们一起重走芯片发明之路，看他们如何突破科学研究中的困难与现实世界的阻碍，做出一项项改变甚至颠覆世界面貌的发明和创新。 一部跨越专业人士与大众藩篱的科技创新史，了解芯片发展历程以及看清未来发展趋势的绝佳商业图书。 芯片构成了现代社会正常运转的核心控制单元，影响范围涉及国家安全、商业、政治、文化等方面，没有芯片，我们现在所拥有的一切都无从谈起。为了使大众能够更加容易、更加清晰地了解芯片，本书作者在写作时做了以下努力：一是高度还原创新的历史过程，展现曾经盛行的观念和技术，以及新的技术是如何萌芽并与之斗争和蕞终突破的。二是突出作为创新者的个体，将历史的聚光灯打在实验台前的科学家和工程师身上，展现他们内心的渴望、追求、困顿、嫉妒和欣喜。三是将发明一刹那的火花清晰呈现出来。虽然知识的“剂量”被压缩，却足以激发读者智识上的兴趣，全书叙述上的惊险程度不逊于一部小说。', '浙江教育出版社', 568, '149.90', '9787572254758', '2023-04-01', '2024-11-09 19:35:12.385245', '0', 99, '8.8', '平装', 0, 38, '未知', '2024-11-09 19:35:12.386243', 0, 0, 0);
INSERT INTO `b_book` VALUES (114, '美国创新简史', 'https://img9.doubanio.com/view/subject/s/public/s34096034.jpg', '乔纳森·格鲁伯', '穆凤良', '本书详细梳理了美国创新的重要历史，并对当下的处境表示了担忧，对未来提出了具体可行的策略支撑。本书的第一部分，聚焦公费资助的科学创新如何为第二次世界大战的胜利做出了贡献、为战后充满活力的美国经济奠定了基础。作者通过分析美国历史上科技突破助推经济增长的成功案例，以及揭开尘封历史中那些曾立下汗马功劳的“关键人物”的不为人知的故事，将美国经济第一次飞跃的深层原因清晰地揭露出来。接下来，这一部分还解释了科学的过度自信、政治家的互相冲突，以及预算问题如何促使公共开支逐渐倾向于削减科学经费。 在第二部分，作者通过具体的经济案例阐述了美国今天的公共资助已经成为推动科技研发的主力，尽管力度尚太低，但公共资助的科学将继续获得创新性并贡献就业岗位。同时这一部分还解释了为什么私营企业在科学方面的投资有系统性的不足。 最后一部分给出了作者的核心观点，也是一份关于创新的国家型战... 本书详细梳理了美国创新的重要历史，并对当下的处境表示了担忧，对未来提出了具体可行的策略支撑。本书的第一部分，聚焦公费资助的科学创新如何为第二次世界大战的胜利做出了贡献、为战后充满活力的美国经济奠定了基础。作者通过分析美国历史上科技突破助推经济增长的成功案例，以及揭开尘封历史中那些曾立下汗马功劳的“关键人物”的不为人知的故事，将美国经济第一次飞跃的深层原因清晰地揭露出来。接下来，这一部分还解释了科学的过度自信、政治家的互相冲突，以及预算问题如何促使公共开支逐渐倾向于削减科学经费。 在第二部分，作者通过具体的经济案例阐述了美国今天的公共资助已经成为推动科技研发的主力，尽管力度尚太低，但公共资助的科学将继续获得创新性并贡献就业岗位。同时这一部分还解释了为什么私营企业在科学方面的投资有系统性的不足。 最后一部分给出了作者的核心观点，也是一份关于创新的国家型战略：吸取以前的经验教训，通过政府强有力的参与，扩大科技投资，鼓励地方创新，并帮助普通的美国人创造更好的就业机会，以确保资金被明智地使用，利益在美国各地共享，重获美国经济增长的引擎，并最终使美国落后的地区受益。', '中信出版集团', 300, '69', '9787521727548', '2021-04-01', '2024-11-09 19:35:14.190893', '0', 99, '7.7', '平装', 0, 38, 'Jump-Starting America: How Breakthrough Science Can Revive Economic Growth and the American Dream', '2024-11-09 19:35:14.192888', 0, 0, 0);
INSERT INTO `b_book` VALUES (115, '科技群星闪耀时', 'https://img1.doubanio.com/view/subject/s/public/s34926990.jpg', '[美] 斯蒂芬•沃尔弗拉姆（Stephen Wolfram）', '应俊耀', '◎ 编辑推荐 创新者的非凡洞见 什么样的项目会更“靠谱”？ 什么样的人生会更具拓展性？ 伟大思想的源头，科学发展的规律，创新动力的底层逻辑 大师眼中的大师，费曼、乔布斯、冯·诺伊曼……斯蒂芬·沃尔弗拉姆为科技群星撰写的15个传奇故事 ◎ 书籍推荐 这本书结合了渊博睿智的作者、熠熠生辉的主人公以及生动有趣的叙事手法。沃尔夫拉姆本人是计算科学、物理学和数学领域的著名学者，又是广泛流行的数学软件 Mathematica和计算知识引擎 Wolfram Alpha的主要设计师，可谓学术和商业领域的“双料巨人”。本书论及的科学家、工程师和企业家是计算科学领域从萌生、发育到壮大、辉煌的300多年里重要代表人物。透过这些伟大的探索者在推动科学技术创新和进步的鲜活故事，作者展现了一条绵延不绝的思想脉络，而这条脉络又与作者本人的创新、实践紧密联系在一起。一部精彩之作。 ... ◎ 编辑推荐 创新者的非凡洞见 什么样的项目会更“靠谱”？ 什么样的人生会更具拓展性？ 伟大思想的源头，科学发展的规律，创新动力的底层逻辑 大师眼中的大师，费曼、乔布斯、冯·诺伊曼……斯蒂芬·沃尔弗拉姆为科技群星撰写的15个传奇故事 ◎ 书籍推荐 这本书结合了渊博睿智的作者、熠熠生辉的主人公以及生动有趣的叙事手法。沃尔夫拉姆本人是计算科学、物理学和数学领域的著名学者，又是广泛流行的数学软件 Mathematica和计算知识引擎 Wolfram Alpha的主要设计师，可谓学术和商业领域的“双料巨人”。本书论及的科学家、工程师和企业家是计算科学领域从萌生、发育到壮大、辉煌的300多年里重要代表人物。透过这些伟大的探索者在推动科学技术创新和进步的鲜活故事，作者展现了一条绵延不绝的思想脉络，而这条脉络又与作者本人的创新、实践紧密联系在一起。一部精彩之作。 ——段永朝，苇草智酷 痴迷于“简单规则”和“复杂现象”的科学精神的人物谱。 ——读者评论 同其他大师一样，沃尔弗拉姆对各个领域都保持着难以抑制的好奇心。他对人文历史的研究同样出于科学思路：通过研究历史中的数据和样本，去找寻一种模式，去发现一种隐藏在纷繁复杂的细节背后的规律，然后以此来指导自己的研究。在千万个历史数据和样本的背后，自有其特定的规律。仔细研究它们，能让你慢慢建立起一种判断的直觉：什么样的项目更“靠谱”？什么样的人生更具拓展性？ ——读者评论 他（沃尔弗拉姆）的研究充分显示了，为什么一个人能够有如此卓越的贡献。而其中的理由必须能凭他的经验可以被理解，如果那个理由显得太奇特，那就说明必须继续挖掘下去，找寻更多的信息和材料，翻阅更多的原始文献，直到他能完全理解了这个人物的“成长规律”。从这个角度来讲，如果你喜欢科学与人文的交叉主题，喜欢运用科学的方法论去研究和探索“不确定”的历史和创造力，那么这本书对你来说绝对是不可多得的佳品。 ——读者评论 ◎ 内容简介 本书是当今杰出的创新者之一斯蒂芬·沃尔弗拉姆（Stephen Wolfram）为数学、物理学和计算科学史上的“群星”所写的传记。他以独特的个人视角讲述了科学和技术史上的有趣人物，及其思想和成就，其中一些人甚至与他有过精彩碰撞。作者从他与理查德·费曼的回忆到与乔布斯的碰撞，从图灵的工作如何释放几代人的创新力，讲到艾达·洛夫莱斯在计算史上的真正影响，将读者带入思想家和创造者们的思想和生活，并将书中故事与自己的兴趣、见解和经历结合在一起，以独到眼光透过历史审视了伟大思想背后的动力，解读科学发展、创新的规律，以及后世能汲取的启发。', '人民邮电出版社', 286, '69.80', '9787115648679', '2024-08-01', '2024-11-09 19:35:15.593385', '0', 99, '7.7', '平装', 0, 38, 'Idea Makers: Personal Perspectives on the Lives & Ideas of Some Notable People', '2024-11-09 19:35:15.594381', 0, 0, 0);
INSERT INTO `b_book` VALUES (116, '5000天后的世界', 'https://img9.doubanio.com/view/subject/s/public/s34487035.jpg', '[美]凯文·凯利', '潘小多', '在互联网商业化的5000天后， 社交媒体（SNS）开始蓬勃兴起， 现在距 SNS 兴起又过了近5000天， 接下来的5000天，将会发生什么？ ··· ··· ··· ··· ··· ··· ··· ··· 【编辑推荐】 ★  硅谷精神之父、世界互联网教父，《失控》作者凯文·凯利全新作品  ★ K.K.的《失控》《必然》等作品在中国互联网界曾引起轰动，他也被喻为世界互联网教父、硅谷精神之父、科技预言家等，本书是他的全新作品，以5000天的时间维度，聚焦那些能影响我们未来巨大变化的趋势，思考人类命运和互联网的未来。 ★  K.K.思考科技发展与人类命运的重磅作品  ★ K.K.在书中提到，未来5000天，世界上至少有95%的事物还会维持原样，他的焦点一直放在这不到5%的变化上。 ★  引领AI时代的思想之书  ★ 未来5000天，互联网、技术领域、社会... 在互联网商业化的5000天后， 社交媒体（SNS）开始蓬勃兴起， 现在距 SNS 兴起又过了近5000天， 接下来的5000天，将会发生什么？ ··· ··· ··· ··· ··· ··· ··· ··· 【编辑推荐】 ★  硅谷精神之父、世界互联网教父，《失控》作者凯文·凯利全新作品  ★ K.K.的《失控》《必然》等作品在中国互联网界曾引起轰动，他也被喻为世界互联网教父、硅谷精神之父、科技预言家等，本书是他的全新作品，以5000天的时间维度，聚焦那些能影响我们未来巨大变化的趋势，思考人类命运和互联网的未来。 ★  K.K.思考科技发展与人类命运的重磅作品  ★ K.K.在书中提到，未来5000天，世界上至少有95%的事物还会维持原样，他的焦点一直放在这不到5%的变化上。 ★  引领AI时代的思想之书  ★ 未来5000天，互联网、技术领域、社会形态、教育方式、金融领域等方方面面都可能发生变化，同时也意味着超越我们想象的机遇。本书为读者梳理了这些变化的脉络，读者可以更深入的思考自身未来与世界走向，先一步抓住可能决定命运的机会。 ··· ··· ··· ··· 【内容简介】 K.K.预测未来将会是一切都与AI相连的世界，他将其称为镜像世界（Mirror-world）。 智能手机和社交媒体已经超越国界，并对国际经济和政治产生影响。GAFA的规模扩展到可以左右国际社会命运的程度。为什么会出现这样的巨变，世界到底要向什么方向发展？ 物理世界将与虚拟世界融合，同时将产生新的平台，进而形成新的工作方式和组织形式，我们将迎来以中国和印度为中心的亚洲世纪。除了对未来科技发展的预测，K.K.也对社会形态变化进行了预测，涉及商业变革、地缘政治、社会学等。 K.K.没有因不断出现新的技术、产品或流行趋势而迷失方向，而是执着地对科技本质的深层结构进行观察，他在书中指明了产生科技的世界本身具有何种发展趋势。 ··· ··· ··· ··· 【专家、学者推荐】 K.K.永远是一个对未来的乐观主义者，他更多地是在变动的时代帮助大家找到机会，而不是杞人忧天。作为一位每天接触新科技的作家，K.K.的思想具有前瞻性。《5000天后的世界》所描述的情形，现在正在渐渐浮现！ ——吴军（硅谷投资人，人工智能、自然语言处理和网络搜索知名专家） 到底应该问科技要什么，还是问我们要什么？到底是因为成功而乐观，还是因为乐观而成功？本书可以启发我们思考和回答这些问题。 ——江晓原（上海交通大学讲席教授，科学史与科学文化研究院首任院长） 如同过去K.K. 的一致风格，这又是一本“站在未来看现在”的作品。公元1000年的人类自然无法理解甚至想象今日之科技，而我也确信未来1000年后的人类（如果还存在的话）看今天的世界恐怕感觉是原始部落。什么是科技？在过去异想天开，在今天勉为其难，在未来习以为常的这类事物，就是科技。人类面对新科技的时候，最容易犯的错误就是高估近期，却低估远期。然而科技的发展却从来不以人类的意志为转移，其总会跟随着认知边界的拓展而不断拾级而上。而我们所要做的，就是要努力去拥抱技术变化，并确保科技向善，普惠可及。 ——尹烨（华大集团CEO） 未来虽远，我们的目光更远。我想这就是这本书最具可读性的特点。科技以人为本，趋势大于优势。今后的十年，必定是科技重塑生活与产业的十年，所有的行业都值得重新做一遍，这就是科技进步所带来的变革的力量。 ——吕廷杰（中国信息经济学会副理事长，中国联通独立董事） 《5000 天后的世界》是一部短小精悍却不失思想性与启发性的佳作，适合所有对人工智能感兴趣的读者。K.K. 一语道破预知科技未来的秘诀，就是不断追问科技想要什么，然后努力帮它实现。这本书给投资者带来热点追踪，给创业者带来长期信心。更重要的是，K.K. 预测未来的方法，是每一位科学技术爱好者都梦寐以求的。 ——于江生（Futurewei公司机器学习与应用数学首席科学家） K.K.以独特的视角深入描绘了 AI、生物技术、镜像世界和其他前沿趋势。通过新奇前卫的案例和发人深省的见解，K.K.为驾驭瞬息万变的科技领域提供了通往未来的路线图。（而以上这段推荐语，也是我用AI 草拟的。） —— 范冰（营销咨询专家，《增长黑客》作者）', '中信出版社', 192, '69', '9787521753059', '2023-04-01', '2024-11-09 19:35:17.356817', '0', 99, '6.6', '平装', 0, 38, 'The Next 5000 Days', '2024-11-09 19:35:17.358813', 0, 0, 0);
INSERT INTO `b_book` VALUES (117, 'The Worlds I See', 'https://img3.doubanio.com/view/subject/s/public/s34598183.jpg', 'Fei-Fei Li', '未知', 'The moving memoir of a scientist coming of age as an immigrant in America who finds her calling at the forefront of the AI revolution. Wired called Dr. Fei-Fei Li “one of a tiny group of scientists―a group perhaps small enough to fit around a kitchen table―who are responsible for AI’s recent remarkable advances.” Known to the world as the creator of ImageNet, a key catalyst of ... The moving memoir of a scientist coming of age as an immigrant in America who finds her calling at the forefront of the AI revolution. Wired called Dr. Fei-Fei Li “one of a tiny group of scientists―a group perhaps small enough to fit around a kitchen table―who are responsible for AI’s recent remarkable advances.” Known to the world as the creator of ImageNet, a key catalyst of modern artificial intelligence, Dr. Li has spent more than two decades at the forefront of the field. But her career in science was improbable from the start. As immigrants, her family faced a difficult transition from China’s middle class to American poverty. And their lives were made all the harder as they struggled to care for her ailing mother, who was working tirelessly to help them all gain a foothold in their new land. Fei-Fei’s adolescent knack for physics endured, however, and positioned her to make a crucial contribution to the breakthrough we now call AI, placing her at the center of a global transformation. Over the last decades, her work has brought her face-to-face with the extraordinary possibilities―and the extraordinary dangers―of the technology she loves. The Worlds I See is a story of science in the first person, documenting one of the century’s defining moments from the inside. It provides a riveting story of a scientist at work and a thrillingly clear explanation of what artificial intelligence actually is―and how it came to be. Emotionally raw and intellectually uncompromising, this book is a testament not only to the passion required for even the most technical scholarship but also to the curiosity forever at its heart.', '未知', 336, '$29.99', '9781250897930', '2023-11-07', '2024-11-09 19:35:19.220770', '0', 99, '8.8', 'Hardcover', 0, 38, '未知', '2024-11-09 19:35:19.222763', 0, 0, 0);
INSERT INTO `b_book` VALUES (118, '深度学习革命', 'https://img9.doubanio.com/view/subject/s/public/s34363424.jpg', '[美] 凯德·梅茨', '桂曙光', '世界范围内主要的人工智能玩家有哪些？哪家公司在这场脑力与毅力的角逐中脱颖而出？深度学习革命如何颠覆了整个人工智能领域？人工智能还会经历第三次寒冬吗？ 长期以来，人工智能一直被视为一种遥远的未来技术，它是一个被委托给科学界边缘的项目，甚至在历史上两次走入绝境，陷入寒冬，直到一些孤注一掷的研究人员用一场新的变革打破了宁静——深度学习革命。 近年来，让人工智能受到全世界瞩目的高调事件，基本上都是基于深度学习的。比如，AlphaGo击败了世界围棋冠军，自然语言处理催生了智能语音助手，自动驾驶、人脸识别在世界范围内得到广泛应用，AI绘画更是以假乱真、火遍全球……可以说，深度学习已经浸入了我们的日常生活，从边缘走到了舞台的中心，正蓄势待发，即将掀起一场惊人的变革。 本书是一本讲述人工智能，尤其是深度学习的历史与未来的书。书中，作者讲述了一群将深度学习带给全世界的... 世界范围内主要的人工智能玩家有哪些？哪家公司在这场脑力与毅力的角逐中脱颖而出？深度学习革命如何颠覆了整个人工智能领域？人工智能还会经历第三次寒冬吗？ 长期以来，人工智能一直被视为一种遥远的未来技术，它是一个被委托给科学界边缘的项目，甚至在历史上两次走入绝境，陷入寒冬，直到一些孤注一掷的研究人员用一场新的变革打破了宁静——深度学习革命。 近年来，让人工智能受到全世界瞩目的高调事件，基本上都是基于深度学习的。比如，AlphaGo击败了世界围棋冠军，自然语言处理催生了智能语音助手，自动驾驶、人脸识别在世界范围内得到广泛应用，AI绘画更是以假乱真、火遍全球……可以说，深度学习已经浸入了我们的日常生活，从边缘走到了舞台的中心，正蓄势待发，即将掀起一场惊人的变革。 本书是一本讲述人工智能，尤其是深度学习的历史与未来的书。书中，作者讲述了一群将深度学习带给全世界的企业家和科学家的故事，从谷歌、Facebook、百度等大公司的决策者讲到学术界的领军人物——“深度学习三巨头”，再讲到DeepMind、OpenAI等知名实验室的开创者。 你可以通过这些人的故事，跟随现代人工智能的发展脚步，从人工智能研究的萌芽阶段开始，穿过两次人工智能的寒冬，一直了解到当下全新的前沿进展。', '中信出版集团', 408, '79.00', '9787521747553', '2023-01-01', '2024-11-09 19:35:21.004064', '0', 99, '8.4', '平装', 0, 38, 'Genius Makers: The Mavericks Who Brought AI to Google, Facebook, and the World', '2024-11-09 19:35:21.005060', 0, 0, 0);
INSERT INTO `b_book` VALUES (119, '硅谷之火', 'https://img1.doubanio.com/view/subject/s/public/s33511278.jpg', '迈克尔·斯韦因', '陈少芸', '本书是一部微型计算机发展史，让读者了解整个20世纪以及至21世纪初计算机从兴起到鼎盛直至今天受到平板电脑和手机等电子产品冲击的整个过程，是一本集历史故事与小说风格于一体的硅谷纪传体书籍。最新第3版重新修订了全书内容，增加了计算机发展史上的几位大佬退出舞台后的计算机行业现状分析。', '人民邮电出版社', 371, '99.00', '9787115516824', '2019-10-30', '2024-11-09 19:35:23.565542', '0', 99, '7.8', '平装', 0, 38, 'Fire in the Valley:The Birth and Death of the Personal Computer, Third Edition', '2024-11-09 19:35:23.566539', 0, 0, 0);
INSERT INTO `b_book` VALUES (120, '人工智能（第4版）', 'https://img3.doubanio.com/view/subject/s/public/s34395012.jpg', '[美] Stuart Russell', '张博雅', '本书全面、深入地探讨了人工智能（AI）领域的理论和实践，以统一的风格将当今流行的人工智能思想和术语融合到引起广泛关注的应用中，真正做到理论和实践相结合。 全书分7个部分，共28章，理论部分介绍了人工智能研究的主要理论和方法并追溯了两千多年前的相关思想，内容主要包括逻辑、概率和连续数学，感知、推理、学习和行动，公平、信任、社会公益和安全；实践部分完美地践行了“现代”理念，实际应用选择当下热度较高的微电子设备、机器人行星探测器、拥有几十亿用户的在线服务、AlphaZero、人形机器人、自动驾驶、人工智能辅助医疗等。 本书适合作为高等院校人工智能相关专业本科生和研究生的教材，也可以作为相关领域专业人员的参考书。', '人民邮电出版社', 928, '198.00', '9787115598103', '2022-11-01', '2024-11-09 19:35:25.460990', '0', 99, '9.0', '平装', 0, 38, 'Artificial Intelligence: A Modern Approach', '2024-11-09 19:35:25.462983', 0, 0, 0);
INSERT INTO `b_book` VALUES (121, '史蒂夫·乔布斯传', 'https://img3.doubanio.com/view/subject/s/public/s6974202.jpg', '[美] 沃尔特·艾萨克森', '管延圻', '这本乔布斯唯一授权的官方传记，在2011年上半年由美国出版商西蒙舒斯特对外发布出版消息以来，备受全球媒体和业界瞩目，这本书的全球出版日期最终确定为2011年11月21日，简体中文版也将同步上市。 两年多的时间，与乔布斯40多次的面对面倾谈，以及与乔布斯一百多个家庭成员、 朋友、竞争对手、同事的不受限的采访，造就了这本独家传记。 尽管乔布斯给予本书的采访和创作全面的配合，但他对内容从不干涉，也不要求出版前阅读全文的权利。对于任何资源和关联的人，他都不设限，甚至鼓励他所熟知的人袒露出自己的心声。 “我已经做了很多并不值得自豪的事情，比如23岁时就让我的女友怀了孕，以及我对这件事的处理方式”，他说， “对我而言，没有什么不可以对外袒露的。” 谈及和他共过事的人以及竞争对手，他直言不讳，甚至尖酸刻薄。他的激情、精力、欲望、完美主义、艺术修养、残暴还有对掌控权... 这本乔布斯唯一授权的官方传记，在2011年上半年由美国出版商西蒙舒斯特对外发布出版消息以来，备受全球媒体和业界瞩目，这本书的全球出版日期最终确定为2011年11月21日，简体中文版也将同步上市。 两年多的时间，与乔布斯40多次的面对面倾谈，以及与乔布斯一百多个家庭成员、 朋友、竞争对手、同事的不受限的采访，造就了这本独家传记。 尽管乔布斯给予本书的采访和创作全面的配合，但他对内容从不干涉，也不要求出版前阅读全文的权利。对于任何资源和关联的人，他都不设限，甚至鼓励他所熟知的人袒露出自己的心声。 “我已经做了很多并不值得自豪的事情，比如23岁时就让我的女友怀了孕，以及我对这件事的处理方式”，他说， “对我而言，没有什么不可以对外袒露的。” 谈及和他共过事的人以及竞争对手，他直言不讳，甚至尖酸刻薄。他的激情、精力、欲望、完美主义、艺术修养、残暴还有对掌控权的迷恋塑造出的商业哲学一览无余。 同样，他的朋友、敌人，还有同事得以为我们提供了一个前所未有的毫无掩饰的视角。 他是一位极具创造力的企业家，他有如过山车般精彩的人生和犀利激越的性格，充满追求完美和誓不罢休的激情，他创造出个人电脑、动画电影、音乐、手机、平板电脑以及数字出版等6大产业的颠覆性变革。 乔布斯的个性经常让周围的人愤怒和绝望，但其所创造出的产品也与这种个性息息相关，全然不可分割的，正如苹果的硬件和软件一样。 他的故事既具有启发意义，又有警示意义，充满了关于创新、个性、领导力以及价值观的教益。', '中信出版社', 560, '68.00', '9787508630069', '2011-10-24', '2024-11-09 19:35:26.957959', '0', 99, '8.8', '平装', 0, 38, 'Steve Jobs: A Biography', '2024-11-09 19:35:26.959961', 0, 0, 0);
INSERT INTO `b_book` VALUES (122, '生命3.0', 'https://img1.doubanio.com/view/subject/s/public/s29983520.jpg', '[美] 迈克斯·泰格马克', '汪婕舒', '《生命3.0》一书中，作者迈克斯·泰格马克对人类的终极未来进行了全方位的畅想，从我们能活到的近未来穿行至1万年乃至10 亿年及其以后，从可见的智能潜入不可见的意识，重新定义了“生命”“智能”“目标”“意识”，并澄清了常见的对人工智能的误解，将帮你构建起应对人工智能时代动态的全新思维框架，抓住人类与人工智能共生演化的焦点。 迈克斯·泰格马克不仅以全景视角探讨了近未来人工智能对法律、战争、就业和社会带来的影响，还将目光投向了这场变革更为深远之处：在未来的1万年乃至10亿年及其以后，我们能否与人工智能实现共生与繁荣？宇宙生命发展的终极物理极限是什么？更为重要的是，我们如何在这场变革中迎来重生，同时又不会陷入危机，丧失生而为人的意义？《生命3.0》这本书将是你人工智能时代的思考利器。此书对未来生命的终极形式进行了大胆的想象：生命已经走过了1.0生物阶段和2.... 《生命3.0》一书中，作者迈克斯·泰格马克对人类的终极未来进行了全方位的畅想，从我们能活到的近未来穿行至1万年乃至10 亿年及其以后，从可见的智能潜入不可见的意识，重新定义了“生命”“智能”“目标”“意识”，并澄清了常见的对人工智能的误解，将帮你构建起应对人工智能时代动态的全新思维框架，抓住人类与人工智能共生演化的焦点。 迈克斯·泰格马克不仅以全景视角探讨了近未来人工智能对法律、战争、就业和社会带来的影响，还将目光投向了这场变革更为深远之处：在未来的1万年乃至10亿年及其以后，我们能否与人工智能实现共生与繁荣？宇宙生命发展的终极物理极限是什么？更为重要的是，我们如何在这场变革中迎来重生，同时又不会陷入危机，丧失生而为人的意义？《生命3.0》这本书将是你人工智能时代的思考利器。此书对未来生命的终极形式进行了大胆的想象：生命已经走过了1.0生物阶段和2.0文化阶段，接下来生命将进入能自我设计的3.0科技阶段。', '浙江教育出版社', 468, '99.90', '9787553672786', '2018-06-01', '2024-11-09 19:35:29.083072', '0', 99, '8.3', '精装', 0, 38, 'Life 3.0: being human in the age of artificial intelligence', '2024-11-09 19:35:29.084068', 0, 0, 0);
INSERT INTO `b_book` VALUES (123, '芯片浪潮', 'https://img9.doubanio.com/view/subject/s/public/s34641765.jpg', '余盛', '未知', '本书全景式展现了芯片行业关键的几十年发展历程，以详细的数据分析和严谨的史实考证为基础，以台积电、联华电子、三星、英特尔等关键企业的发展为线索，铺陈出整个行业的发展脉络。其中，以颇具代表性的中国经验台积电为主轴，展示了其如何从半导体产业基础相当薄弱的中国台湾，通过开创晶圆代工商业模式，不断抓住行业衰退和技术迭代的机会，进行大规模的资本开支和研发投入，逐步甩开联华电子、击败三星电子和赶超英特尔，取得全球芯片制造技术&先的地位，成长为\"世界上*重要的公司”之一。如今，中美之间的贸易、科技冲突频发，其发展路径，亦是中国芯片、中国制造，甚到全球科技产业的一个缩影。本书对于中国大陆如何发展自己的芯片制造业、追赶世界半导体&先技术水平，有着非常重要的借鉴意义。', '电子工业出版社', 328, '89.00', '9787121457159', '2023-06-01', '2024-11-09 19:35:31.908802', '0', 99, '8.7', '平装', 0, 38, '未知', '2024-11-09 19:35:31.909799', 0, 0, 0);
INSERT INTO `b_book` VALUES (124, '技术垄断', 'https://img2.doubanio.com/view/subject/s/public/s32271971.jpg', '[美]尼尔•波斯曼', '何道宽', '本书与《童年的消逝》《娱乐至死》并称尼尔•波斯曼的“媒介批评三部曲”，其一以贯之的主题是检讨技术对人类社会生活、文化、制度的负面影响。 作者认为，技术和人的关系是亦敌亦友的关系，他之所以揭示技术的阴暗面，是为了避免技术对文化造成伤害。文化有三种形态：在 工具使用文化阶段，技术服务、从属于社会和文化；在技术统治文化阶段，技术向文化发起攻击，并试图取而代之，但难以撼动文化；在技术垄断文化阶段，技术使信息泛滥成灾，使传统世界观消失得无影无踪，技术垄断就是极权主义的技术统治。 本书揭示了技术垄断阶段各种“软”技术的欺骗作用，挞伐所谓社会“科学”，谴责唯科学主义；辨析自然科学、社会“科学”和文学之异同，并为传统符号的耗竭扼腕痛惜；号召人们以强烈的道德关怀和博爱之心抵抗技术垄断，坚决反对文化向技术投降。', '中信出版社', 312, '58.00', '9787521700497', '2019-04-01', '2024-11-09 19:35:33.741221', '0', 99, '8.1', '精装', 0, 38, 'Technopoly: The Surrender of Culture to Technology', '2024-11-09 19:35:33.742218', 0, 0, 0);
INSERT INTO `b_book` VALUES (125, '人类新史', 'https://img9.doubanio.com/view/subject/s/public/s34940825.jpg', '[美] 大卫·格雷伯', '张帆', '🌟入围奥威尔政治写作奖决选名单 🌟《星期日泰晤士报》《观察家报》《BBC历史》年度图书 🌟入选《科克斯书评》2021年度好书榜、亚马逊2021年度好书榜等各大权威图书榜单 →《债》《毫无意义的工作》作者格雷伯最具野心的重磅遗作 →挑战《人类简史》《枪炮、病菌与钢铁》背后的基本假设 →直指大历史研究真正应当关注的问题：人类为何会从曾经的灵活陷入如今的僵化，而改变的希望又蕴藏在哪里 🐾 内容简介 思索人类社会的命运时，我们总会借助大历史的广角镜头。可耳熟能详，甚至被默认为公理的人类发展叙事——从人人平等的狩猎采集小游群到现代民族国家，历经“农业革命”“城市革命”“国家起源”等关键节点——真的反映了事实吗？《人类新史》向我们揭示出，这或许只是一个现代版本的起源神话。 两位作者追本溯源，发现上述理论其实源自18世纪美洲原住民对欧洲殖民者的批判，以及欧洲人做出... 🌟入围奥威尔政治写作奖决选名单 🌟《星期日泰晤士报》《观察家报》《BBC历史》年度图书 🌟入选《科克斯书评》2021年度好书榜、亚马逊2021年度好书榜等各大权威图书榜单 →《债》《毫无意义的工作》作者格雷伯最具野心的重磅遗作 →挑战《人类简史》《枪炮、病菌与钢铁》背后的基本假设 →直指大历史研究真正应当关注的问题：人类为何会从曾经的灵活陷入如今的僵化，而改变的希望又蕴藏在哪里 🐾 内容简介 思索人类社会的命运时，我们总会借助大历史的广角镜头。可耳熟能详，甚至被默认为公理的人类发展叙事——从人人平等的狩猎采集小游群到现代民族国家，历经“农业革命”“城市革命”“国家起源”等关键节点——真的反映了事实吗？《人类新史》向我们揭示出，这或许只是一个现代版本的起源神话。 两位作者追本溯源，发现上述理论其实源自18世纪美洲原住民对欧洲殖民者的批判，以及欧洲人做出的保守反击。随后，作者们综合考古学和人类学等领域近年来涌现的突破性成果，展示了人类实际上有过怎样多元和流动的社会组织形态，历史的道路又有过多少分岔与并行。重新理解人类的过去，重新发现人类本就拥有的其他可能性，或许也能赋予我们新的思想资源，去想象一个更具希望的未来。 🐾 编辑推荐 ◎ 全球已被翻译成30多种语言，获得国内外学者一致推荐 英文版（2021年底）一经推出即成为《纽约时报》畅销书，引发各界热议。知名语言学家和社会活动家乔姆斯基、《黑天鹅》作者塔勒布、《弱者的武器》作者斯科特等国外学者力荐；简体中文版得到陈嘉映、王铭铭、周雪光、张笑宇长文推荐，另有高毅、李宏图、李钧鹏、梁永佳、梁捷、梁文道、施展、王笛、许知远、周濂一致推荐（推荐语和推荐长文均收录于随书附赠的解读册）。 ◎ 人类大历史颠覆之作！挑战《人类简史》《枪炮、病菌与钢铁》等传统经典 这本书借助人类学、考古学等领域的最新研究进展，有力质疑了我们所熟知的《枪炮、病菌与钢铁》《人类简史》等经典大历史的基本前提和很多观点，呼吁一种崭新的人类历史书写。农业的发明和城市的出现绝非什么革命性的时刻；环境与技术也不像传统认为的那样决定着文明的命运；人类社会的发展与其说是线性进步（并伴随着相应的代价），不如说是从开放逐渐走向封闭的过程。书中引入了“季节性”“分裂演化”“人类的三种基本自由”“支配三要素”等概念，为我们提供了解释历史的新框架。 ◎ 提出“狗屁工作”概念的叛逆学者格雷伯最具野心的重磅遗作 作者之一大卫·格雷伯是著名人类学家和社会活动家，曾是“占领华尔街”运动的重要发起人，以批判官僚主义、资本主义和当代政治而闻名。他在59岁之年（2020年9月2日）突然病逝，去世前3周才完成这部历时10年的合著之作，也代表了他学术思想的巅峰。 ◎ 在历史的“垃圾时间”再度振奋起来，重新想象人类的可能性 两位作者在传统叙事框架之外爬梳材料，一点点拼合被忽视或误解的历史碎片：原始人类很可能季节性地在不同的社会秩序之间横跳，而不是固守某一种特定的制度，许多我们以为标志着“文明”的宏伟建筑遗址，其实只是他们季节性地建造又抛弃的东西；数量惊人的早期城市并不存在等级制或中心化的组织方式，却创造了令人惊叹的文化；在一些传统社会，财产权并不意味着你绝对占有某物，而代表着你负有照看它的责任；历史上许多重要发现并不来自概念性突破，而可能来源自日常实践的累积，甚至来自玩乐或仪式…… 我们将看到，历史的发展并不存在所谓的正轨，人类社会有过各种有趣的可能性。那些传统从未中断，而它们比当前的主流秩序有着更加悠久和深厚的渊源。 🐾 名人推荐 ◎ 这是一场迷人的探寻，引导我们重新思考人类能力的本质……兼具挑战性和启发性。 ——[美] 诺姆·乔姆斯基 知名语言学家、哲学家及社会活动家 ◎ 《人类新史》应当成为所有关于这类宏大主题的后续作品的起点。那些日后登上此船（“二大卫号”）起航的人，将有两位无与伦比的领航员。 ——[美] 詹姆斯·C. 斯科特 耶鲁大学政治学和人类学斯特林荣休教授、《弱者的武器》作者 ◎ 这不是一本书，而是一场思想盛宴。书中没有一个章节不在（玩世不恭地）颠覆根深蒂固的思想信念。它既有深度，又轻巧地打破常规，言之有据，值得一读。 ——[美] 纳西姆·尼古拉斯·塔勒布 《黑天鹅》《反脆弱》作者 ◎ ……两百多年来学者用人性的一部分来充当人性的全部的做法是错误的。在作者看来，如果非得历史地追溯人性，那么，我们便先要认识到，并不存在单面人性，一开始，人便具有人性的丰富性。 ——王铭铭 北京大学社会学系教授 ◎ 我完全赞同作者，我们有必要跳出这些狭隘的套路，更多看到既有生活方式和社会–政治体制的偶然性，从而不再拘囿于这些方式和体制，而去了解和探究它们之外的多种多样的可能性。 ——陈嘉映 首都师范大学哲学系特聘教授 ◎ 人类社会正进入一个兼具高度不确定性和崭新可能性的时代。在此时此地读此书此主题，可谓恰逢其时。大胆的设想、不同方向的探索与严肃的学术争论，正是作者倡导的返回“自由”的第一步。 ——周雪光 斯坦福大学社会学系教授 ◎ 当我们面临现存政治经济结构导致的巨大不公，当我们迫于人上人的强大压力而被迫承认我们不想承认的现实，只要我们知道历史永远允许可能性的存在，那么哪怕启蒙时代已然过去，我们依然可以从中汲取巨大的勇气。 ——张笑宇 亚洲图书奖得主，“文明三部曲”作者 ◎ 因为借力于数十年来人类学和考古学的最新研究成果，此书无疑是对启蒙运动后通行的社会进化理论的一次空前严重的挑战。书中虽然还有不少可以商榷的地方，但作者探索真理的非凡勇气和热忱，他们深厚的专业修养和殷切的社会关怀，都能使我们在阅读中时时感到欲罢不能，感到大有教益。尤其是，透过本书关于人类在进入农业社会之前普遍处于“和谐共生”状态的史实揭示，我们还有可能感悟到启蒙时代出现的“文明”概念的那个长期受到遮蔽的本义。 ——高毅 北京大学历史学系教授 ◎ 如何用新的眼光看待人类的过去，这是作者写作此书的主旨和目标。通过对人类历史演化中一些基本问题的考察，作者在起源性的追寻中努力破除现有的成见，提出自己的新解。阅读此书，将会扩展人们的视野，激发起我们的深思，如何重塑我们的世界，探寻未来社会变革的可能路径。 ——李宏图 复旦大学历史学系教授 ◎ 本书的原创性和学术野心令人印象深刻。格雷伯和温格罗挑战的不只是霍布斯和卢梭，更是现代文明史上的标准历史叙事，而他们论证过程中的复杂度和严谨性让人不能不肃然起敬。这本书不仅给了那些“没有历史的人”以应有的声音，而且启发我们深入思考何为善恶、何为人类。 ——李钧鹏 华中师范大学社会学院教授，International Sociology Reviews主编 ◎ 《人类新史》摧毁了众多学科的根基——原始人神话。当代人类学和考古学研究证明，人类的黎明时代有着惊人的复杂性、灵活性、自由度、思辨力。启蒙思想家为当代社会科学所构想的原始人，在历史和逻辑上都不可能存在过。《人类新史》或许标志着社会科学的新起点。 ——梁永佳 浙江大学求是特聘教授 ◎ 大卫·格雷伯的著作总能带来意想不到的东西，搅得学界不得安宁。这次回到他的本行，不出意料地又给大家讲述了一个全新的有关人类起源的故事。每次阅读格雷伯，都是一次智识上的重大挑战。 ——梁捷 上海财经大学副教授 ◎ 这是一部颇具勇气的作品。两位作者本着人文精神，挑战了传统大历史叙事中的一些基本参照系。书中呼唤的对人性与文明的新理解，值得我们深入思考。 ——施展 大观学者，上海外国语大学全球文明史研究所教授 ◎ 本书是人类学家大卫·格雷伯和考古学家大卫·温格罗思想碰撞的结晶，他们利用考古学和人类学的开创性研究，带领我们重新审视人类文明和世界历史，从根本上改变了我们对人类文明起源的理解。他们抛弃过去占主导地位的那种宏大叙事，利用清晰、有力、有趣、丰富的考古学和民族志的细节，提供了一系列崭新而且引人入胜的见解，揭示了我们过去对人类历史理解存在的极大的误区。在优美而且通俗易懂的散文式的描述中，人类多种形式的存在和进化的故事徐徐地展现在读者的眼前。 ——王笛 澳门大学历史系讲席教授', '九州出版社', 560, '128.00', '9787522527949', '2024-09-01', '2024-11-09 19:35:35.927414', '0', 99, '9.0', '精装', 0, 39, 'The Dawn of Everything : A New History of Humanity', '2024-11-09 19:35:35.928411', 0, 0, 0);
INSERT INTO `b_book` VALUES (126, '三国前夜', 'https://img3.doubanio.com/view/subject/s/public/s34877207.jpg', '张向荣', '未知', '洛阳城北的夏门，四方之通衢，人流如织；因为面对北邙山，亦是人鬼殊途之地。 夏门外的门亭，自然是迎来送往，好不热闹。大将军梁冀特意把李固、杜乔的尸体扔在夏门外，好让天下人都能看见，即使贵为三公，和他作对就是这般下场。他还下令，如果有人胆敢悼念哭丧，一律以罪论处。 梁太后同 意杀死“李杜”，既有维护梁氏家族的私怨，也有对士大夫为维护礼教而迸发出的力量的担忧。“李杜”之死仿佛一曲前奏。二人为了天下的纲纪而被权臣所杀，把汉家天下的和谐表象撕开了一道口子，那个老问题再次被抛出来： 天下到底是汉家之天下，还是天下之天下？ 这将成为此后一百年风云变幻的核心，隐藏着汉家是存续还是终结的密码。 ———————————————————— 旧邦新命，共致太平，重重吊诡，逐鹿群雄 《祥瑞》作者张向荣再探汉家故事 礼教与秦制混合互补，家国天下因何坍塌？ 皇帝和士大夫残酷共生，... 洛阳城北的夏门，四方之通衢，人流如织；因为面对北邙山，亦是人鬼殊途之地。 夏门外的门亭，自然是迎来送往，好不热闹。大将军梁冀特意把李固、杜乔的尸体扔在夏门外，好让天下人都能看见，即使贵为三公，和他作对就是这般下场。他还下令，如果有人胆敢悼念哭丧，一律以罪论处。 梁太后同 意杀死“李杜”，既有维护梁氏家族的私怨，也有对士大夫为维护礼教而迸发出的力量的担忧。“李杜”之死仿佛一曲前奏。二人为了天下的纲纪而被权臣所杀，把汉家天下的和谐表象撕开了一道口子，那个老问题再次被抛出来： 天下到底是汉家之天下，还是天下之天下？ 这将成为此后一百年风云变幻的核心，隐藏着汉家是存续还是终结的密码。 ———————————————————— 旧邦新命，共致太平，重重吊诡，逐鹿群雄 《祥瑞》作者张向荣再探汉家故事 礼教与秦制混合互补，家国天下因何坍塌？ 皇帝和士大夫残酷共生，谁才是最终赢家？ 以群风群貌挑战刻板印象，填补东汉书写空白 李开元、于赓哲、刘勃、仇鹿鸣——力荐 ———————————————————— 《三国前夜》是青年文史作家张向荣的全新历史非虚构力作，接续《祥瑞：王莽和他的时代》，本书主要讲述被新朝洗礼过的“第二汉朝”是什么样子，儒学在培养“哲人王”的道路上失败后怎样延续自己的文化生命。东汉在前期就拥有了较为成熟的政教体系，即“秦制—儒教”政制，这是稳定汉家天下的“底层逻辑”，然而其中的张力最终促成了秦汉帝国的灭亡，数百年的“大一统”由此崩解。 本书重点关注东汉后期桓、灵二帝近五十年的执政生涯，同时全面系统地还原党锢之祸的始末，细致考察党锢中人的心态、目的、行为，解读儒家在其中到底发挥着怎样的作用，“士大夫政治”如何定型，为什么从辅佐汉朝走向了辅佐三国。 作者尝试以“群像”书写呈现这一时期士大夫、宦官、宗室以及群雄之外普通人的观念乃至时代风貌，辅以图表梳理人物关系，进而追问：东汉的皇权虽然崩解了，但“秦制—儒教”这一结构并未随之覆灭，它又如何寄托在新兴的儒家士大夫身上，得以在后世不断重建？ ———————————————————— 文学研究的对象，是文学作品，作家及其作品，是文学的主体。历史学研究的对象，是作为往事的历史，历史由谁来书写，成了历史的空白。张向荣先生的学术专业是文学研究，他先写成《祥瑞》，今又写成《三国前夜》，用自己热爱的非虚构历史写作，填补了历史书写的空白，值得阅读，也值得深思。 ——李开元 一切危机都起自于青萍之末，高厦倾覆之时才能看见根基之腐烂。本书是对三国乱局根源的把脉。——于赓哲 把繁复的学术研究转化为轻盈叙事的笔力罕有其匹。没有核心事件，没有主要人物，却把二百年政治生态、社会风气的变迁呈现得行云流水，浓墨般的暗夜，终于弥漫得浩瀚无垠。——刘勃 “先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也”，诸葛亮《出师表》中的这段话，提示在当时人心中，三国历史实际上处于东汉中期以后诸种问题的延长线上，本书则尝试勾勒出这一线索。——仇鹿鸣', '上海人民出版社', 516, '89.80', '9787208186903', '2024-06-01', '2024-11-09 19:35:39.205395', '0', 99, '8.5', '精装', 0, 39, '未知', '2024-11-09 19:35:39.207379', 0, 0, 0);
INSERT INTO `b_book` VALUES (127, '智人之上', 'https://img3.doubanio.com/view/subject/s/public/s34941172.jpg', '[以色列] 尤瓦尔·赫拉利', '林俊宏', '在过去10万年里，我们智人积攒了巨大的力量。然而，持续不断的发明与征服也将我们推入了一场生存危机。全球生态濒临崩溃，虚假信息泛滥。我们正一头扎进可能毁灭我们自身的、由新型信息网络组成的人工智能时代。 人类如此智慧，为什么却总是倾向于自我毁灭？我们为什么走到了生态和技术自杀的边缘？当非人智能威胁到人类的生存时，人类如何做出明智的选择？ 从口口相传的故事，到文字书写，再到人工智能，《智人之上》透过大历史的长镜头，讲述信息网络如何塑造了我们和我们的世界，邀请我们思考信息与真相、神话与官僚制度、智慧与权力之间的复杂关系，探讨不同的社会结构在试图构建信息网络时面临的关键困境。 如果我们拓宽视野，看看人类的信息网络在过去几千年如何发展，我们也许可以更了解今日与未来发生的事情。', '中信出版社', 349, '79.00', '9787521768527', '2024-09-01', '2024-11-09 19:35:40.751906', '0', 99, '8.2', '平装', 0, 39, 'Nexus: A Brief History of Information Networks from the Stone Age to AI', '2024-11-09 19:35:40.752895', 0, 0, 0);
INSERT INTO `b_book` VALUES (128, '翦商', 'https://img1.doubanio.com/view/subject/s/public/s34385069.jpg', '李硕', '未知', '一部夏商周启示录 许宏作序；罗新+许纪霖+刘苏里+杨斌一致推荐 许宏：“这书读起来就让你放不下，最后，我要用‘震撼’二字来形容自己的感觉和心情了。” ★界碑：从这本书开启中国史的阅读！ 本书带有界碑性质，作者攀爬到了该研究领域的顶端，还将是同类研究和写作绕不过去的作 品。 同时，它还设立了一个出发点：凡对古典中国思想、信仰、伦理、风俗，以及政治、制度有兴趣的研究者或普通读者，可以先从这本书开始你的探索。 该部作品还是过往几十年社会承平和财富积累的结晶，让我们在再次进入幽暗的历史通道前，一窥我们这群人何以如此，何以至今。它将予我们鼓励，认识自己，直面未来。 ——刘苏里 万圣书园创办人 ★数学家的逻辑，文学家的想象 一部好的历史著作，不仅要数学家的逻辑，还要文学家的想象。由此观之，李硕的《翦商》，宏大处堂堂正正，细微处绵绵实实：详述了人祭现象在早期华夏文... 一部夏商周启示录 许宏作序；罗新+许纪霖+刘苏里+杨斌一致推荐 许宏：“这书读起来就让你放不下，最后，我要用‘震撼’二字来形容自己的感觉和心情了。” ★界碑：从这本书开启中国史的阅读！ 本书带有界碑性质，作者攀爬到了该研究领域的顶端，还将是同类研究和写作绕不过去的作 品。 同时，它还设立了一个出发点：凡对古典中国思想、信仰、伦理、风俗，以及政治、制度有兴趣的研究者或普通读者，可以先从这本书开始你的探索。 该部作品还是过往几十年社会承平和财富积累的结晶，让我们在再次进入幽暗的历史通道前，一窥我们这群人何以如此，何以至今。它将予我们鼓励，认识自己，直面未来。 ——刘苏里 万圣书园创办人 ★数学家的逻辑，文学家的想象 一部好的历史著作，不仅要数学家的逻辑，还要文学家的想象。由此观之，李硕的《翦商》，宏大处堂堂正正，细微处绵绵实实：详述了人祭现象在早期华夏文明的出现和消失，以及为什么“武王克商”不仅仅是一场简单的政权更替，更是华夏文明形成史上的里程碑式的革命。 因此，我愿意以“商周变革”来归纳李硕的洞见：对于华夏文明而言，这场变革比两千年后的唐宋变革的意义更深、更远！ ——杨斌 澳门大学历史系教授，西泠印社社员，《海贝与贝币：鲜为人知的全球史》作者 ★用考古成果读懂玄奥文献，重构武王伐纣的历史认知 在传统的上古历史叙述中，商周易代的面目是模糊的。对于背后的细节，我们知之甚少。纣王“无道”的表现有哪些？商朝王室的贵族生活是怎样的？商朝人究竟是什么人？他们的日常生活与祭祀之间有何秘密？本书运用大量现代考古发掘的成果，对应甲骨文卜辞及《易经》卦象，将费解的言辞重新释义，为读者揭开了华夏上古历史中重要的一页。 王国维之后，商周革命在中国历史上的重要性已深入人心；而李硕则把这一重要性，形象生动地描画了出来。 ——罗新 北京大学历史系教授 ★再现人祭与华夏早期文明从伴生到分离的伟大转折 第一王朝夏朝（二里头）沿袭了新石器时代以来的杀人献祭的风俗，并在商朝登峰造极。周文王因受商纣王怀疑而被作为人牲拘禁在殷都，长子伯邑考也被纣王献祭。此后，文王发展出《易经》的卦、爻辞体系，并记录了周文王亲历和认知的诸多事件，最终目的是推算“翦商”的战略。 武王灭商后，曾模仿商人的人祭行为；武王死后，由周公辅政，彻底禁绝了人祭宗教，销毁了有关商代人祭的文献记录，并制造出一套没有人祭的理想化历史叙事，以及基于“德”的世俗政治与道德体系。 国之大事，在祀与戎。本书从人祭开始，讲述了商朝的祭祀与战争为何有如此紧密的联系，以及殷周之变是如何发生的。 ——许纪霖 华东师范大学历史系教授 ★发掘上古时代的人文精神，追忆华夏文明的启蒙熹光 向起源回溯，商周易代正是华夏新生的起点。这并非一次简单的朝代更迭。周朝所开启的礼乐文明，取代了商朝的鬼神文化；周公和孔子的人本主义，战胜了武丁与纣王的“宗教神秘主义”，为中国人的信仰奠定了基石。 ★青年历史学家、《南北战争三百年》作者李硕重磅新作 李硕著有《南北战争三百年》《孔子大历史》等有影响力的历史著作；本书则深入上古史，用鲜活的叙述，深入探索了商人与周人的民族起源、信仰习俗、战争军事与日常生活，将故纸堆与遗址变成了生动的情节故事，用史料赋神话中的人物（姜太公、周文王、商纣王……）以血肉。 【内容简介】 “李硕中国史”开篇之作，从这本书开启中国史的阅读！ 本书主要讲述华夏文明的萌生与转型。从距今四千年前夏朝（二里头文化）的出现，到三千年前商朝的灭亡、西周建立，时间跨度一千余年。 从新石器时代以来，华北地区形成了杀人献祭的原始宗教。第一王朝夏朝（二里头）也沿袭了这种人祭文化，并在随后的商朝登峰造极。周族僻处西部，本没有人祭传统，但他们曾投靠商朝，为商朝捕猎用于献祭的羌人。周文王因受到商纣王怀疑，被作为人牲拘禁在殷都，最后，文王的长子伯邑考被纣王献祭。文王学习了商人的易卦占算技术，发展出《易经》的卦、爻辞体系——记录周文王亲历和认知的诸多事件，最终目的是推算“翦商”的战略。 武王灭商后，曾模仿商人的人祭行为；武王死后，由周公辅政，彻底禁绝了人祭宗教，销毁了有关商代人祭的文献记录，并制造出一套没有人祭的理想化历史叙事，以及基于“德”的世俗政治与道德体系。 周公的这些举措，开创了新的华夏文明。五百年后，孔子编辑儒家“六经”，系统整理周公的理论成果。周公和孔子塑造了儒家学派，其影响一直持续到现代。 概而言之，本书借助考古材料和传世文献，梳理了上古人祭风俗产生、繁荣和消亡的全过程，以及人祭与华夏早期文明从伴生到分离的伟大转折，再现了古人（周人）为终结商朝和人祭风俗付出的巨大努力，使我们对华夏文明的起源有了全新的认知。', '广西师范大学出版社', 592, '99.00', '9787559852533', '2022-10-01', '2024-11-09 19:35:42.368243', '0', 99, '9.0', '精装', 0, 39, '未知', '2024-11-09 19:35:42.369239', 0, 0, 0);
INSERT INTO `b_book` VALUES (129, '江南困局', 'https://img1.doubanio.com/view/subject/s/public/s34925070.jpg', '唐元鹏', '未知', '继《熊廷弼之死》后，作者唐元鹏又一部明史非虚构力作！ 陈宝良、谌旭彬、郭建龙、刘勃、王笛、张向荣联袂推荐！ 晚明江南，十面埋伏， 从奴仆、士大夫到皇帝，一起走入生死一线的危机时刻。 ———————— 【编辑推荐】 📣晚明江南，繁华富庶的表面之下，已经暗流潜藏，危机四伏？ 📣 六个显赫的士大夫家族，为何成了刀俎下的鱼肉？ ⭐董范之变——湖州两大缙绅世家遭逢滔天巨祸，董家家财散尽，范家状元自缢，江南社会山雨欲来。 ⭐荆熊分袒——宣城一件风化案，秀才兴风作浪，世家相互倾轧，朝野环环紧扣，乡间之火燃烧着京师朝局。 ⭐火烧董家楼——一场婢女引起的纠纷，让董其昌家百幢华厦，一夜烧成白地，谁才是真正的幕后黑手？ ⭐郑鄤凌迟—— “惑父杖母”被判凌迟，郑鄤是党争下的牺牲品，还是“坑爹”的忤逆恶人？ ⭐夜掘周家坟——当“胥吏均衡”被打破后，没有人是安全的。皇帝、官... 继《熊廷弼之死》后，作者唐元鹏又一部明史非虚构力作！ 陈宝良、谌旭彬、郭建龙、刘勃、王笛、张向荣联袂推荐！ 晚明江南，十面埋伏， 从奴仆、士大夫到皇帝，一起走入生死一线的危机时刻。 ———————— 【编辑推荐】 📣晚明江南，繁华富庶的表面之下，已经暗流潜藏，危机四伏？ 📣 六个显赫的士大夫家族，为何成了刀俎下的鱼肉？ ⭐董范之变——湖州两大缙绅世家遭逢滔天巨祸，董家家财散尽，范家状元自缢，江南社会山雨欲来。 ⭐荆熊分袒——宣城一件风化案，秀才兴风作浪，世家相互倾轧，朝野环环紧扣，乡间之火燃烧着京师朝局。 ⭐火烧董家楼——一场婢女引起的纠纷，让董其昌家百幢华厦，一夜烧成白地，谁才是真正的幕后黑手？ ⭐郑鄤凌迟—— “惑父杖母”被判凌迟，郑鄤是党争下的牺牲品，还是“坑爹”的忤逆恶人？ ⭐夜掘周家坟——当“胥吏均衡”被打破后，没有人是安全的。皇帝、官僚、胥吏、豪奴造好的火盆只差一颗火星。 ⭐王氏复仇记——逼死王氏丈夫的是一门四进士的缙绅世家，她定要为夫报仇，坚信飞蛾扑火也能闪出一瞬的光辉。 📣看大时代里的小人物，胥吏、农户、奴仆、雇工、流氓……曾有过怎样的喜怒哀乐、爱恨情仇？ 📣权力斗争、利益分歧、伦理纠纷、嫉妒、怨恨、算计……这六个历史故事背后，是亘古不变的复杂人心？ 📣江南社会的动荡，如何波及朝堂，昭示晚明万历、天启、崇祯三朝的危局？ 📣情节环环紧扣，写法通俗诙谐，随书附赠高清明代舆图，按图寻踪，俯瞰江南百景！ ———————— 【内容简介】 江南，一个长期以来繁华富庶、文风昌盛的地区，士大夫，封建王朝里一个尽享荣华、地位超然的社会群体，在晚明政事纷纭、世风日下的时代大势下，都难逃倾颓的命运。 本书聚焦于晚明时期六个围绕江南士大夫发生的故事。他们或因朝堂争端，或因乡间龃龉，而泥潭深陷。轻则地位不再，财势散尽；重则被逼上绝路，家破人亡。被裹挟其中的，除却名臣豪绅、莘莘士子，还有平民、胥吏、奴仆等社会阶层，每一个人都不得不在历史片段中挣扎沉浮。 在历史的主流叙事中，这些普通个体的声音极其微弱，但作者深挖时人档案文书，以生动、细腻的笔触力求还原真实的人物故事，带领我们于历史细微处，感知大时代之下每个人的生死抉择。 ———————— 【名家推荐】 若想深入了解明朝历史，江南无疑是一个很好的区域范例。江南不止是明代国家税收的主要来源地，更是科举最为发达、士大夫力量极其兴盛的地区。晚明江南士大夫危机的出现，地方秩序的颠倒，固然是士大夫鱼肉乡里所致，却又预示了当时的社会已经陷入困境，以暴力为呈现方式的社会流动随之而来。 ——陈宝良（西南大学历史文化学院教授） 江南是明帝国的经济命脉所在，是明帝国政治结构、社会结构最为复杂的区域。唐元鹏兄这本《江南困局》通过解剖江南民间社会运作的历史细节，将那个表面斯文风流、内在仍以野蛮为底色的时代再度呈现在读者面前。只有理解了江南困局，才能洞悉明帝国暮年陷入了怎样的泥潭。 ——谌旭彬（历史作家、资深历史编辑） 一本生动的微观史，晚明社会的百态图。我们会看到，地理大发现对中国并非毫无影响，它促成了世俗力量的兴起，冲击着中国传统的秩序观，在晚明社会留下了一幅幅光怪陆离又生机勃勃的画面，令人忍俊不禁，又让人深思。 —— 郭建龙（历史作家） 本书行文如同江南的春潮，盛世的余晖仍然铺洒在江面，大水悄悄漫过许多人的口鼻，不想让自己绝望的人们，仍然可以假装那只是无关紧要的微澜。 ——刘勃（历史作家、编剧） 明朝真是一个神奇的时代，留下了许多神奇的故事：状元郎在自己的家乡，被草民逼得家破人亡；一门四进士，祖宅被奴仆侵占，却无力讨回……到底后面发生了什么？推荐阅读《江南困局》，在书中去寻找答案。这本书告诉我们，历史并不总是像我们想象的那样，强者可以横行乡里，弱者任人宰割。历史就是这样复杂，其过程和结局经常是出乎意料，并非“常识”就能告诉我们事件的本相。 ——王笛（澳门大学人文学院讲席教授）', '广东人民出版社', 248, '78.00', '9787218176291', '2024-08-01', '2024-11-09 19:35:46.813728', '0', 99, '8.5', '精装', 0, 39, '未知', '2024-11-09 19:35:46.814724', 0, 0, 0);
INSERT INTO `b_book` VALUES (130, '崖山', 'https://img1.doubanio.com/view/subject/s/public/s34944118.jpg', '张明扬', '未知', '◆新锐历史作家张明扬，以快意恩仇的文学笔法，梳理中国古代王朝之兴替 既《弃长安》《入关》之后，作者张明扬将视角转投到宋衰元兴的转轨时代，继续创作自己擅长的历史大变局叙事。他以快意恩仇的文学笔法，梳理历史线索，剖析王朝更迭的根源，为读者复刻出这段令人悸动的历史。 ◆12座城池，50年战争，刻画宋衰元兴的完整故事脉络 南宋的衰落非一日之寒。从1234年端平入洛，到1279年崖山海战，作者以12座城池、近50年战争故事，刻画出宋衰元兴的完整故事脉络。 ◆塑造有血有肉的鲜活人物，展现纷乱时代中的人性与气节 重儒的忽必烈、南宋权臣贾似道、降元名将刘整、为宋廷死守襄阳6年的吕文焕、忠烈不降元的文天祥……作者以讲故事的方式，塑造了诸多历史人物的鲜活形象，展现纷乱时代中的人性与气节。 ◆从历史表象直击本质，挖掘宋衰元兴的根本原因 作者结合一手史料，从历史故事切入更深... ◆新锐历史作家张明扬，以快意恩仇的文学笔法，梳理中国古代王朝之兴替 既《弃长安》《入关》之后，作者张明扬将视角转投到宋衰元兴的转轨时代，继续创作自己擅长的历史大变局叙事。他以快意恩仇的文学笔法，梳理历史线索，剖析王朝更迭的根源，为读者复刻出这段令人悸动的历史。 ◆12座城池，50年战争，刻画宋衰元兴的完整故事脉络 南宋的衰落非一日之寒。从1234年端平入洛，到1279年崖山海战，作者以12座城池、近50年战争故事，刻画出宋衰元兴的完整故事脉络。 ◆塑造有血有肉的鲜活人物，展现纷乱时代中的人性与气节 重儒的忽必烈、南宋权臣贾似道、降元名将刘整、为宋廷死守襄阳6年的吕文焕、忠烈不降元的文天祥……作者以讲故事的方式，塑造了诸多历史人物的鲜活形象，展现纷乱时代中的人性与气节。 ◆从历史表象直击本质，挖掘宋衰元兴的根本原因 作者结合一手史料，从历史故事切入更深的主题，如解析中国历史上南北对峙产生的分裂、极权社会的制度痼疾，以及所谓的忠奸评判背后的真正责任问题，为读者了解古代王朝兴替的底层原因提供线索。 ◆一众知名历史学者鼎力推荐！ 刘擎、虞云国、张帆、许纪霖、郭建龙、周思成鼎力推荐！ ---------------------------------------------------------------------------------------- 崖山海战，是一场影响中国历史进程的著名战役。1279年，蒙古军队与南宋军队在广东新会崖山海面上，展开了一场大规模的海战，最终南宋军队落败，陆秀夫负末帝赵昺投海殉国。 本书以历史中的十二个地名（蔡州、钓鱼城、鄂州、上都、益都、泸州、襄阳、大都、丁家洲、临安、崖山和零丁洋）为线索，自1234年“端平入洛”开始，一直写到1279年南宋灭亡，时间跨越了近五十年。书中分两条主线，一条线探讨南宋何以灭亡，另一条线探讨元朝何以崛起，同时从政治、外交、文化、军事等多元视角，生动地描写了从蒙宋灭金到崖山海战的整个过程，襄阳鏖战、临安出降、南宋灭亡，以及最后的文天祥之死，描写得恢弘而悲壮。作者用缜密、细腻的文笔描写了忽必烈、蒙哥、王文统、阿合马、吕文焕、贾似道、刘整、文天祥等诸多历史人物的命运和选择，力求还原一段真实的历史情境。 崖山之外，是更大的中国。', '中信出版社', 360, '69.00', '9787521766394', '2024-08-25', '2024-11-09 19:35:48.279768', '0', 99, '8.5', '精装', 0, 39, '未知', '2024-11-09 19:35:48.281760', 0, 0, 0);
INSERT INTO `b_book` VALUES (131, '祥瑞', 'https://img9.doubanio.com/view/subject/s/public/s33957074.jpg', '张向荣', '未知', '★上追尧舜，禅让称帝，王莽究竟是民选的圣主，还是篡汉的罪人？ ★新锐文史作家、网红书评人张向荣首部历史非虚构作品 ★罗新、刘勃、陆大鹏力荐 ★搁置定论，厘清王莽真容，揭示两汉皇权真相 丰厚细节，再现政途跌宕，叩问儒家使命得失 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ★传统史学把新莽贬入闰位，把古典末期的这个重要瞬间涂抹得怪诞荒唐。张向荣以深描细察的写作，让读者看到一个充满活力和可能性的转折时代。 ——罗新 ★写得真好，第一章汉史简述，综合各种前沿成果，信息量超大。具体讲王莽的部分，已有研究本身较薄弱，可依傍的成果较少，行文从基本史料出发，舒缓而缜密，常识与识见，自在其中。 ——刘勃 ★张向荣博士的《祥瑞》，不仅仅是王莽的传记，而且把西汉的“建国”“建政”大业以及儒家... ★上追尧舜，禅让称帝，王莽究竟是民选的圣主，还是篡汉的罪人？ ★新锐文史作家、网红书评人张向荣首部历史非虚构作品 ★罗新、刘勃、陆大鹏力荐 ★搁置定论，厘清王莽真容，揭示两汉皇权真相 丰厚细节，再现政途跌宕，叩问儒家使命得失 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ★传统史学把新莽贬入闰位，把古典末期的这个重要瞬间涂抹得怪诞荒唐。张向荣以深描细察的写作，让读者看到一个充满活力和可能性的转折时代。 ——罗新 ★写得真好，第一章汉史简述，综合各种前沿成果，信息量超大。具体讲王莽的部分，已有研究本身较薄弱，可依傍的成果较少，行文从基本史料出发，舒缓而缜密，常识与识见，自在其中。 ——刘勃 ★张向荣博士的《祥瑞》，不仅仅是王莽的传记，而且把西汉的“建国”“建政”大业以及儒家如何成为帝国意识形态的过程梳理得很清晰，令人豁然开朗。这本书有深厚的学术功底作为支撑，行文深浅适中，结构设计巧妙，幽默风趣，常有发人深思的犀利评论。对王莽、西汉历史和儒家这三个话题感兴趣的读者，都不妨读读这本书。我期待能够读到更多这样面向“受过良好教育、非专家”读者的中国题材历史书。 ——陆大鹏 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ★元始元年（公元前1年）春正月，汉室迎来一件千年未有之祥瑞。来自极远之地的蛮夷“越裳氏”到长安朝贡，献上一只白雉、两只黑雉。白雉出现，意味着天下出现了道德流布四夷的王者。刚即位的汉平帝年仅9岁，越裳氏上一次到中土献雉，还是周成王时期，见的是辅佐幼主的周公。——难道所谓“王者”，是刚刚稳定了西汉政局的大司马王莽？这极有可能是王莽自导自演的一出闹剧，可臣民们怎样看待这位功德超群的外戚权臣与周公相媲美？是诧异、震惊，还是觉得锦上添花？ ★中国历史上，西汉与后世定型的“一家一姓”的朝代不一样。它不仅是一个朝代，更是中国儒家文化首次实现立法的新阶段。同时，西汉也是一个迷信天人感应的时代，在不到两百年的历史中，充斥着谶纬之学。从汉武帝时期开始，灾异变化、祥瑞谴告就与现实政治运动紧密相连。 ★生于西汉末年的王莽，幼年丧父，并没有得到作为外戚家族成员的优待。他从一介儒生，以其周全的为人处世之道，一跃成为家族寄予厚望的后起之秀。他借助“祥瑞”之说，重返朝堂；又在众人的欢呼声中步步高升，最终合法建立了新朝。那他又是如何在短短的十五年里，就从“天下归心”的“哲人王”成为了一个“天人共弃”的篡汉者？ ★面对日益严峻的政治合法性危机，儒家理论的实践者王莽勤劳王事，建辟雍、制礼乐，恢复井田，赢得了同时代其他儒士的认可。那么王莽称帝的真正动力又是什么？王莽到底是邪恶无道的簒夺者，还是复古派的改革家？是儒教立国的决定者，还是演技精湛的政治表演家？ ★本书截取汉宣帝到新莽这一历史片段，从“祥瑞”这个视角切入，剖析王莽的个人、家族和政权相关的人物事件，再现了太后王政君、外戚王氏家族、刘姓皇室家族、儒家经师、官僚士大夫等在西汉末年政治舞台的角力，进而重新审视旋涡中心的王莽，以窥他和时代的真貌。', '上海人民出版社', 640, '79.80', '9787208172036', '2021-08-01', '2024-11-09 19:35:57.505346', '0', 99, '8.8', '平装', 0, 39, '未知', '2024-11-09 19:35:57.506333', 0, 0, 0);
INSERT INTO `b_book` VALUES (132, '筚路维艰', 'https://img1.doubanio.com/view/subject/s/public/s33986279.jpg', '萧冬连', '未知', '本书以简明清晰的文字对当代中国的历史轨迹做了逻辑梳理。作者认为，从执政党的建国方略、发展模式和基本政策角度考察，中国社会主义的实践路径经历了从实行新民主主义开始，途经仿效苏联模式、追寻赶超之路、发动继续革命和实行改革开放的五次历史选择。', '社会科学文献出版社', 246, '45.00', '9787509763247', '2014-10-01', '2024-11-09 19:35:58.878312', '0', 99, '9.5', '平装', 0, 39, '未知', '2024-11-09 19:35:58.880299', 0, 0, 0);
INSERT INTO `b_book` VALUES (133, '失去的三百年', 'https://img1.doubanio.com/view/subject/s/public/s34943920.jpg', '郭建龙', '未知', '本书所描写的内容，是追溯从地理大发现到1840年这三百多年里，中国的开放与失败，曾经的盛世到后来的衰败而被动挨打，这个历史期间的客观得失与经验教训。全书分三个部分，第一部分试探的百年，时间从1516年到1644年，从隆庆开关到明末清初，大航海时代以来，中国也曾经生机勃勃充满了希望。第二部分是跌宕的百年，时间从1644到1735年，清朝早期的开放如何发展成中期的封闭的。第三部分是锁死在系统中的百年，时间从1735到1840年，这个时期的西方从大航海走向工业革命，而中国却关闭了大门，直到1840年鸦片战争的爆发。', '浙江人民出版社', 472, '98.00', '9787213115295', '2024-10-01', '2024-11-09 19:36:00.987697', '0', 99, '8.3', '精装', 0, 39, '未知', '2024-11-09 19:36:00.989701', 0, 0, 0);
INSERT INTO `b_book` VALUES (134, '东晋门阀政治', 'https://img9.doubanio.com/view/subject/s/public/s10206185.jpg', '田余庆', '未知', '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝；门阀政治是皇权政治在特定历史条件下出现的变态，具有暂时性和过渡性，其存在形式是门阀士族与皇权的共治。本书不落以婚宦论门阀士族的窠臼，对中国中古政治史中的这一重要问题提供了精辟的见解，具有很高的学术价值。', '北京大学出版社', 348, '49.00', '9787301204351', '2012-05-01', '2024-11-09 19:36:02.673751', '0', 99, '9.5', '精装', 0, 39, '未知', '2024-11-09 19:36:02.674756', 0, 0, 0);
INSERT INTO `b_book` VALUES (135, '叫魂', 'https://img3.doubanio.com/view/subject/s/public/s28118682.jpg', '[美] 孔飞力', '陈兼', '《叫魂:1768年中国妖术大恐慌》讲述的是一个关于“盛世妖术”的故事。在中国的千年帝制时代，乾隆皇帝可谓是空前绝后的一人。他建立并巩固起来的大清帝国达到了权力与威望的顶端。然而整个大清的政治与社会生活却被一股名为“叫魂”的妖术搅得天昏地暗。在1768年由春天到秋天的那几个月里，这股妖风竟然冲击了半个中国，百性为之惶恐，官员为之奔命，连乾隆也为之寝食难安。作者孔飞力细致入微的描写令人颤栗，他生动地再现了各省的恐慌是如何演变成一场全国性的除妖运动。《叫魂:1768年中国妖术大恐慌》也表现出了一种更为宏大的学术视野，在构建以“叫魂”案为中心的“大叙事”的过程中，在方法论的层次上将社会史、文化史、政治史、经济史、区域分析、官僚科层制度分析以及心理分析等研究方法结合在一起。', '孔飞力著作集', 368, '38.00', '9787542643216', '2014-06-01', '2024-11-09 19:36:04.740029', '0', 99, '9.2', '平装', 0, 39, 'Soulstealers: The Chinese Sorcery Scare of 1768', '2024-11-09 19:36:04.741111', 0, 0, 0);
INSERT INTO `b_book` VALUES (136, '分裂的共识', 'https://img1.doubanio.com/view/subject/s/public/s34936188.jpg', '[美]吉尔·莱波雷', '邵旭东', '“一个国家不能选择它的过去，它只能选择未来。”——吉尔· 莱波雷 ************* ★ 比尔· 盖茨年度选书★ Goodreads 高分图书★ 数十家媒体高度评价 “莱波雷写出了我读过的对我们国家历史最真实的描述。”——比尔·盖茨 \"这本关于美国过去的著作全面而冷静，它讲述的不是无情的进步，而是冲突和矛盾，理性与信仰、黑人与白人、移民与本地人、工业与农业的交织，荡漾在一个远未完成的叙事中\"。——《纽约时报书评》 “（莱波雷笔下的）历史优雅、可读性强、令人警醒；当急速的新闻周期从一个事件猛冲到另一个事件，让人头脑混乱、胃部不适时，它伸出了一只稳定的手。”——詹妮弗·萨莱，《纽约时报》 “这是一个多种族国家建国之初时的故事，以及为实现‘这些真理’寻求方法的人们的故事。”——约翰·S·加德纳，《卫报》 “那些致力于对美国的过去进行真实回顾的人有他... “一个国家不能选择它的过去，它只能选择未来。”——吉尔· 莱波雷 ************* ★ 比尔· 盖茨年度选书★ Goodreads 高分图书★ 数十家媒体高度评价 “莱波雷写出了我读过的对我们国家历史最真实的描述。”——比尔·盖茨 \"这本关于美国过去的著作全面而冷静，它讲述的不是无情的进步，而是冲突和矛盾，理性与信仰、黑人与白人、移民与本地人、工业与农业的交织，荡漾在一个远未完成的叙事中\"。——《纽约时报书评》 “（莱波雷笔下的）历史优雅、可读性强、令人警醒；当急速的新闻周期从一个事件猛冲到另一个事件，让人头脑混乱、胃部不适时，它伸出了一只稳定的手。”——詹妮弗·萨莱，《纽约时报》 “这是一个多种族国家建国之初时的故事，以及为实现‘这些真理’寻求方法的人们的故事。”——约翰·S·加德纳，《卫报》 “那些致力于对美国的过去进行真实回顾的人有他们的工作要做了。莱波雷的书是一个很好的开始。”——H.W.布兰兹，《华盛顿邮报》 ▷内容简介： 美国当今极重要的历史学家吉尔· 莱波雷倾力之作！ 以800余页的篇幅覆盖了数百年的历史，从哥伦布到特朗普，全面展现美国的发展历程和社会分裂，暗藏着的讽刺与矛盾，去重新审视美国人的历史及当下的撕裂与挑战。 1492年，哥伦布的航行将两个大陆联系在一起，最终造就了一个不仅连接而且纠缠交织在一起的世界。本书以时间为序为我们展示了： 美国国家的创建及其经历移民、战争和发明创造后的扩张；陷入内战；卷入欧洲战争；成为世界强国以及“二战”后在建立现代自由国际秩序（法治、人权、民主政府、开放边界、自由市场）中扮演的角色；美国的对外冲突，对内面临的种族歧视问题；今日美国的分化与分裂。 美国历史是一场大型的人类政治实践，美国实践基于三个理念： 政治平等、自然权利、人民主权。本书记录了400多年来这场实践中有关起因、进程、后果的问题。“美国人缺乏共同的历史背景，并且，在充满裂缝的根基之上建立的共和国也很容易破碎坍塌。” 作者吉尔· 莱波雷用多元的视角还原逐渐破碎的美国梦的真实历史，希望指引读者找到这个国家的真谛，同时帮助我们更好地理解美国的历史与现状。 “我们行走在这片土地上，必须对得起现在活着的和已经死去的人。” ▷编辑推荐： ◆ 本书不同于以往任何美国史作品，重塑了美国历史的主题：共识与分裂。 美国历史是一场大型的人类政治实践，美国实践基于三个理念：政治平等、自然权利、人民主权。 在此三个共识的基础上有着无数的分歧：政府的边界、民主的范围、种族问题、女性权利等等。 美国历史就是一部不断寻求共识，弥合分歧的进程。 ◆ 读懂了这本书，才能理解当今美国社会的撕裂，特朗普和哈里斯的总统竞选。 “美国人缺乏共同的历史背景，并且，建立在充满裂缝的根基之上的共和国也很容易破碎坍塌。” 到今天，美国人正在经历严重分裂，并且矛盾愈发显得不可弥合，这一切在历史中都有迹可循。 ◆ 从1492年哥伦布第一次来到这片大陆，到特朗普竞选总统，从未有一部美国历史如此全面。 ◆ 作者吉尔· 莱波雷是美国历史学家协会前主席，哈佛大学教授，是当今美国极重要的历史学家。 ◆ 刘苏里、李雪涛、梁文道、熊培云诚挚推荐！ ◆ 上下册精装，精选进口特种纸印刷，全书配图超100幅。', '新星出版社', 976, '178', '9787513351065', '2024-09-01', '2024-11-09 19:36:06.282814', '0', 99, '8.9', '精装', 0, 39, 'These Truths: A History of the United States', '2024-11-09 19:36:06.283801', 0, 0, 0);
INSERT INTO `b_book` VALUES (137, '万历十五年', 'https://img9.doubanio.com/view/subject/s/public/s1800355.jpg', '[美] 黄仁宇', '未知', '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始…… 《万历十五年》是黄仁宇的成名之作，也是他的代表作之一。这本书融会了他数十年人生经历与治学体会，首次以“大历史观”分析明代社会之症结，观察现代中国之来路，给人启发良多。英文原本推出后，被美国多所大学采用为教科书，并两次获得美国书卷奖历史类好书的提名。', '生活·读书·新知三联书店', 320, '18.00', '9787108009821', '1997-05-01', '2024-11-09 19:36:08.293004', '0', 99, '9.0', '平装', 0, 39, '未知', '2024-11-09 19:36:08.294000', 0, 0, 0);
INSERT INTO `b_book` VALUES (138, '明朝那些事儿（1-9）', 'https://img9.doubanio.com/view/subject/s/public/s3745215.jpg', '当年明月', '未知', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中国海关出版社', 0, '358.20', '9787801656087', '2009-04-01', '2024-11-09 19:36:10.309232', '0', 99, '9.2', '精装16开', 0, 39, '未知', '2024-11-09 19:36:10.311225', 0, 0, 0);
INSERT INTO `b_book` VALUES (139, '在阿尔巴尼亚长大', 'https://img1.doubanio.com/view/subject/s/public/s34941450.jpg', '[英] 莱亚·乌皮', '吴文权', '“我身在历史何处”系列002 全球24家媒体年度图书，横扫6项非虚构大奖 知名政治哲学教授莱亚·乌皮省思力作 “巴尔干几十年来最佳回忆录” 一位少女亲历东欧剧变的成长故事 在不确定的世界，回望历史如何形塑个体生命 于思想的阵痛中，找寻自由的意义 ———————————— —————————————————— 📖 内容简介 1979年出生的莱亚·乌皮在阿尔巴尼亚长大，一个拥有独特历史又鲜为外人知的东欧国家。那些年，那里的人们怀揣着乌托邦理想，外人几乎无法访问，而生活于其中的人几乎无法离开。它是一个物质匮乏、买东西需要排队的地方，一个充满秘密和不可说的地方。对莱亚而言，那里是家，邻里之间互助，长辈期待孩子们能创造一个更好的世界。那里有她的共同体和希望。 在1990年12月，在柏林墙倒塌后的一年，一切都变了。几乎在一夜之间，人们可以自由投票、穿自己喜欢的衣... “我身在历史何处”系列002 全球24家媒体年度图书，横扫6项非虚构大奖 知名政治哲学教授莱亚·乌皮省思力作 “巴尔干几十年来最佳回忆录” 一位少女亲历东欧剧变的成长故事 在不确定的世界，回望历史如何形塑个体生命 于思想的阵痛中，找寻自由的意义 ———————————— —————————————————— 📖 内容简介 1979年出生的莱亚·乌皮在阿尔巴尼亚长大，一个拥有独特历史又鲜为外人知的东欧国家。那些年，那里的人们怀揣着乌托邦理想，外人几乎无法访问，而生活于其中的人几乎无法离开。它是一个物质匮乏、买东西需要排队的地方，一个充满秘密和不可说的地方。对莱亚而言，那里是家，邻里之间互助，长辈期待孩子们能创造一个更好的世界。那里有她的共同体和希望。 在1990年12月，在柏林墙倒塌后的一年，一切都变了。几乎在一夜之间，人们可以自由投票、穿自己喜欢的衣服。再也没有什么可担心的了。但是，工厂关闭，工作机会消失，许多人乘坐拥挤的船只逃往意大利，最后又被送回。掠夺性的金字塔骗局最终使这个国家破产，导致暴力冲突。当一代人的宏愿变成另一代人的幻觉，家族的秘密被揭露，莱亚开始追寻自由的真正含义。 🌊 编辑推荐 ※ 权威大奖×大咖推荐×重要媒体×读者口碑，掀起全球热议的纪实文学力作。 6项非虚构大奖得奖&决选|全球30种语言翻译授权； 《你当像鸟飞往你的山》作者塔拉·韦斯特弗、梁文道、《边界的诱惑》作者柏琳推荐； 北京外国语大学教授、阿尔巴尼亚和巴尔干研究专家柯静专文推荐； 横扫《纽约客》《华尔街日报》《金融时报》等全球24家媒体年度图书榜单； Goodreads过万人打出4+高分|原版豆瓣读者评论9.6高分，好评如潮。 ※ 个人命运与历史激流交织的典范之作，“巴尔干几十年来最佳回忆录”。 享誉国际的政治哲学家莱亚·乌皮首部面向大众之作，一经出版即成破圈典范。有人说，她简直是被哲学家身份耽误的好莱坞编剧潜力股！她新颖的讲述，令家国历史栩栩如生，为我们提供了一个绝佳的观察视角。阿尔巴尼亚，那个我们可能知之甚少，又与我们有诸多相似的国家，从此不再遥远。 ※ 以小说大师之笔，勾勒一段亲历东欧剧变的非凡成长往事。 寓言般的小故事，再现生动场景和对话，串联起童年与少女时代的困惑与领悟。读者化身为孩童，一起在谎言与真相中打转，沉浸式经历种种黑色幽默，感受荒诞与悲怆。读来宛如《乔乔的异想世界》遇上《我在伊朗长大》，也堪比“阿尔巴尼亚版《你当像鸟飞往你的山》”。在巧妙铺陈中，她的故事，成了我们每一个人的故事。 ※ 跟随哲学家，穿过时代的迷雾与废墟，身临一场生命与观念洗礼。 曾经天真的女孩、如今的学者，带我们重访洪流中裹挟的具体面孔，体悟种种观念的幽微内涵，看历史的翻云覆雨手如何形塑个体生命。生长自切身经验的智性思考，跨越时空仍掷地有声，给人启迪。 ※ 一部犀利而正当时的警醒之作：在历史远未终结的今天，我们要如何有意义地生活？ “当我们不知道如何思考未来，那就必须回顾过去。”回首人生，关照当下和未来，莱亚在对自由意义的叩问中，也发出沉落年代的希望之声：“如果我无所作为，他们（先辈）的努力将会白费，他们的一生将会显得毫无意义。” 🏆 获奖记录 2024年里登奥尔图书奖（Ridenhour Book Prize) 2022年英国皇家文学学会翁达杰奖获奖作品 2021年Slightly Foxed最佳首部传记获奖作品 2022年戈登·伯恩奖决选作品 2021年科斯塔年度最佳首部传记决选作品 2021年贝利·吉福德奖决选作品 《纽约客》《华尔街日报》《卫报》《泰晤士报文学副刊》等全球24家媒体年度图书 🎙️ 媒体&名人推荐 在阅读和重读莱亚·乌皮的书时，我们强烈地感受到，书中的核心问题——政治、个人历史、自由的意义——与我们此刻的生活息息相关。国家如何梦想自己，个人如何在这些幻想中思考自己？我们如何感受历史，以及历史如何被制度化？乌皮是将这些宏大叙事和个人叙事——家庭秘密和政治危机——并置的大师，在对这本书评审的过程中，我们一再回到历史的漫长阴影中，追问在不被质疑的地方隐藏着怎样的黑暗。 ——2022年英国皇家文学学会翁达杰评委 莱亚·乌皮的回忆录生动描绘了她童年和少年时期在谎言、超现实的怪异与危险中的困惑，这些都是她在阿尔巴尼亚的严酷统治和1990年后的混乱中经历的。 ——约翰尼·德法尔贝，2021年Slightly Foxed最佳首部传记奖评委 在全世界都对阿尔巴尼亚不闻不问的时候，这本全新的杰作向我们展示了过去百年来，政治里的人性真理……它揭露了一个又一个真相，关于家庭、关于国家，仿佛出自小说大师之手，又宛如进入托尔斯泰的小说。 ——艾米·威伦兹，《永别了，弗雷德·伏都》作者 这个非凡的成长故事，可说是阿尔巴尼亚版《你当像鸟飞往你的山》，但又远不止于此。 ——大卫·伦西曼，《民主如何结束》作者 这本书不仅仅是对一个我们不甚了解或关心的国家的历史描述……如同作者及其家人眼看着帝国连同整个现实一起崩溃一样，我们也生活在灾难性时代，过去一个世纪以来庇护我们的地缘政治确定性，无论好坏——美国、英国和最近的欧盟——都处于不同阶段的崩溃或衰败。乌皮警告我们，这就是堤坝崩溃时的感觉。 ——埃德·奥拉夫林，《爱尔兰时报》 莱亚·乌皮的这部作品是自埃莱娜·费兰特的《我的天才女友》以来，我催促家人、朋友和同事读的第一本书，坚持要他们读它。 ——露丝·斯库尔，《观察家》杂志 乌皮在这本书中编织了魔法。我从头到尾都被迷住了。 ——劳拉·哈克特，《星期日泰晤士报》 不同于其他充满“怀旧情怀”的东欧回忆录，乌皮的作品充满天才的洞察力、政治的幽微，最出色的是，有趣。 ——《卫报》 一个关于错失的机会、幻灭和希望的故事……它最终邀请读者自问，什么是自由的意义。 ——《今日历史》 巴尔干几十年来最佳回忆录。 ——《新兴欧洲》', '上海三联书店', 344, '58.00', '9787542684370', '2024-09-01', '2024-11-09 19:36:11.778712', '0', 99, '8.8', '平装', 0, 39, 'Free: Coming of Age at the End of History', '2024-11-09 19:36:11.779709', 0, 0, 0);
INSERT INTO `b_book` VALUES (140, '权力的文化与文化的权力', 'https://img3.doubanio.com/view/subject/s/public/s34902352.jpg', '[英] 蒂莫西·C.W.布莱宁', '李文君', '英国著名历史学家、国家学术院院士、剑桥大学教授蒂莫西·C. W.布莱宁，炉火纯青集大成巨制！面向专业读者和大众读者，融深刻的思辨、精辟的理论、翔实的史料、生动的记述、明了的语言于一体，呈现近代欧洲权力与文化激烈交锋与隐秘融合的时代大势与关键细节，打造历史研究与写作的典范之作！ ✒️ 横跨法兰西、德意志、不列颠，沿着历史大路与小径的轨迹，跟随要人与公众的脚步，追踪曲折变革的过程，拼合从路易十四的绝对主义、腓特烈二世的开明专制、乔治三世的爱国主义训练到启蒙运动之争、公共领域兴起、民族国家登场的旧制度文化全景图，洞察现代世界如何从明暗交织的18世纪破土而出！ 💐 聚焦卢梭╳赫尔德╳亨德尔╳海顿╳华托╳诺伊曼、建筑╳绘画╳期刊╳小说╳歌剧╳音乐会，呈现一段别开生面、宏伟壮观的欧洲文艺史，感受杰出巨匠领衔的创作潮流，勘破不朽名作背后的权力位移，见证冲击社会政治... 英国著名历史学家、国家学术院院士、剑桥大学教授蒂莫西·C. W.布莱宁，炉火纯青集大成巨制！面向专业读者和大众读者，融深刻的思辨、精辟的理论、翔实的史料、生动的记述、明了的语言于一体，呈现近代欧洲权力与文化激烈交锋与隐秘融合的时代大势与关键细节，打造历史研究与写作的典范之作！ ✒️ 横跨法兰西、德意志、不列颠，沿着历史大路与小径的轨迹，跟随要人与公众的脚步，追踪曲折变革的过程，拼合从路易十四的绝对主义、腓特烈二世的开明专制、乔治三世的爱国主义训练到启蒙运动之争、公共领域兴起、民族国家登场的旧制度文化全景图，洞察现代世界如何从明暗交织的18世纪破土而出！ 💐 聚焦卢梭╳赫尔德╳亨德尔╳海顿╳华托╳诺伊曼、建筑╳绘画╳期刊╳小说╳歌剧╳音乐会，呈现一段别开生面、宏伟壮观的欧洲文艺史，感受杰出巨匠领衔的创作潮流，勘破不朽名作背后的权力位移，见证冲击社会政治、改变人类面貌的文化领域大革命！ ⛔ 法国史学者高毅、英国史学者陈晓律、德国史学者邢来顺联袂推荐，读懂近代欧洲历史，反观今日全球景象，应对未来全新挑战! 当代，TikTok、短视频、AI等新媒介层出不穷，权力与文化的博弈仍在上演，而政治文化始终是治国理政的重要实践维度。“一旦思想经历了变革，现实便难以维持”，权力唯有顺应文化变迁，方能持续强势，一旦罔顾文化变迁，只能成为历史。 >>> 内容简介 1660年，“太阳王”路易十四亲政在即；1789年，法国大革命爆发。在这至关重要的百余年中，旧制由盛转衰，启蒙熠熠生辉，公共领域兴起，民族国家登场。英国国家学术院院士、剑桥大学教授蒂莫西·C.W.布莱宁在本书中探讨了改变18世纪欧洲权力格局的文化革命。漫长的一个多世纪中，王公贵族以古典方正的建筑、光辉崇高的绘画、庄严肃穆的歌剧呈现权力的文化，公众人民则在期刊、报纸、小说、图书室、咖啡馆中彰显文化的权力，逐渐显露的新生力量给既有秩序带来了撼动根基的挑战，也提供了千载难逢的机遇。面对纷扰与骚动，法兰西、德意志与不列颠做出了不同的选择，最终走上了迥异的发展道路，整个欧洲就此迈入现代世界的新篇章。 >>> 作者简介 蒂莫西·C.W.布莱宁（Timothy  C.W. Blanning，1942— ），英国著名历史学家，剑桥大学历史学荣休教授，英国国家学术院院士，专攻从17世纪到第一次世界大战前的近代欧洲史，对几个世纪中的绘画、音乐、文学、思想等领域都有深入的研究。2016年，荣获英国国家学术院奖章。著有《浪漫主义革命：缔造现代世界的人文运动》《追逐荣耀：1648—1815》《权力的文化与文化的权力：旧制度下的欧洲（1660—1789）》《弗里德里希大王：开明专制君主与普鲁士强国之路》等十余部作品。 >>> 相关评论 高毅，北京大学历史学系教授、博雅特聘教授，中国法国史研究会副会长： 布莱宁关于启蒙时代欧洲文化与权力关系的探讨相当精彩，很好地揭示了政治文化对于现代民族国家建设的极端重要性，这不仅有助于深化近现代世界史的研究，可能还有助于治国理政的实践。 陈晓律，南京大学历史学院教授，中国英国史研究会副会长： 欧洲世界权力与文化的圆舞曲自近代以来面临着前所未有的危机，正如作者所言，文化的权力发生了位移，它不再由权力的掌控者直接控制，而是由“公众”来界定。在当代，权力与文化的博弈仍在上演，读罢本书不难理解很多问题。 邢来顺，华中师范大学历史文化学院教授、博雅学者，中国德国史研究会前会长： 文化是权力的创制者，也是权力的终结者。权力顺应文化变迁，方能持续强势，构筑权力的文化；权力罔顾文化变迁，只能成为历史。这就是文化的权力。本书以法国、普鲁士和英国为例，生动诠释了权力与文化之间的关系。 《法国研究》（French Studies）： 一部出色的文化史著作。在各国内政变革、国际霸权争夺、公共领域兴起的时代大背景下，布莱宁讨论了欧洲旧制度下的建筑、文学、艺术、音乐等，视野广阔、内容精彩，不时还有幽默的妙语，让人读来愉悦。 《文学评论》（Literary Review）： 布莱宁是一位卓越的历史学家。他在本书中展现了广博的学术功底、独到的阐释路径、大气的行文风格，为历史写作树立了新的典范。同时，他的研究表明“政治史”与“文化史”相互交织，武断分割两者并不可取。 《历史》（History）： 布莱宁阅读了广泛的文献，同时精于理论。他凝练地指出了大革命爆发的原因，十分出色，堪称一流。', '上海书店出版社', 587, '138.00', '9787545823660', '2024-08-01', '2024-11-09 19:36:13.138383', '0', 99, '9.2', '精装', 0, 39, '未知', '2024-11-09 19:36:13.139380', 0, 0, 0);
INSERT INTO `b_book` VALUES (141, '王氏之死', 'https://img9.doubanio.com/view/subject/s/public/s34924686.jpg', '[美] 史景迁', '张祝馨', '清代郯城，一个名不见经传的山东小县，默默无闻，但多灾多难。妇人王氏，一个疑案记录中昙花一现的受害人，在飘雪纷纷的夜晚，惨死于丈夫之手。 利用县官回忆录、地方县志与《聊斋志异》，史景迁还原了17世纪末这个边缘县城的生存样貌：普通百姓挣扎于战乱、贫困和地方暴力中，没有官场人脉帮忙应对，也没有强大的宗族可以倚赖；无名女性没有法术和金钱做靠山，婚姻可能是毫无欢乐的陷阱，舆论与道德的纠缠随时将她们置于死地。 穿梭于聊斋的幻梦与郯城的苦难之间，他们在崩解的现实中，苦求肉身与道德的基本生存，在亦真亦幻的志怪故事中渴望正义的降临。这是一个有关幻想、肉欲与不安的故事，是对当时的郯城恰如其分的注解。在人鬼莫辨的世界，人们详实而真切地体味命运的尖厉。', '南海出版公司', 176, '49.00', '9787573509475', '2024-09-01', '2024-11-09 19:36:14.788013', '0', 99, '7.8', '精装', 0, 39, 'The Death of Woman Wang', '2024-11-09 19:36:14.790007', 0, 0, 0);
INSERT INTO `b_book` VALUES (142, '跑去她的世界', 'https://img2.doubanio.com/view/subject/s/public/s34944821.jpg', '夏桑', '未知', '★他仅存的希望，就是每当跑步时，能够看见亡妻。 ★抑郁患者 ✖ 受难机器 ✖ 时光药丸 ★一场马拉松引发的都市幻想，一名内耗者的自毁和自救。 ★每个困在痛苦中的人，都能在书里找到自己。 ★献给不敢哭泣的你。 ★青年科幻作家夏桑首部长篇小说，他把心剖出来放在了故事里。 ★韩松、陈楸帆、福豆姐姐、谈亦默读后推荐！读后推荐！读后推荐！ ★超精美专色封面+六张艺术插图+作者私人名印，收藏感拉满！ ★北大物理系博士付强精心科学细节校对。 ★资深跑者、科幻作家su27指导马拉松运动细节。 【内容简介】 当你自责消沉，翻开本书，“祂”能承受你的痛苦。 沈禹铭在角逐成都马拉松时身负重伤，伤痛和网暴让他陷入抑郁，因此疏远和伤害了家庭，妻儿却在这时意外离世。他陷入追悔莫及的无力中，只觉世界跟自己再无关系，身体失控般释放着三十年来积累的所有情绪。 然而，一颗神奇药丸的出现... ★他仅存的希望，就是每当跑步时，能够看见亡妻。 ★抑郁患者 ✖ 受难机器 ✖ 时光药丸 ★一场马拉松引发的都市幻想，一名内耗者的自毁和自救。 ★每个困在痛苦中的人，都能在书里找到自己。 ★献给不敢哭泣的你。 ★青年科幻作家夏桑首部长篇小说，他把心剖出来放在了故事里。 ★韩松、陈楸帆、福豆姐姐、谈亦默读后推荐！读后推荐！读后推荐！ ★超精美专色封面+六张艺术插图+作者私人名印，收藏感拉满！ ★北大物理系博士付强精心科学细节校对。 ★资深跑者、科幻作家su27指导马拉松运动细节。 【内容简介】 当你自责消沉，翻开本书，“祂”能承受你的痛苦。 沈禹铭在角逐成都马拉松时身负重伤，伤痛和网暴让他陷入抑郁，因此疏远和伤害了家庭，妻儿却在这时意外离世。他陷入追悔莫及的无力中，只觉世界跟自己再无关系，身体失控般释放着三十年来积累的所有情绪。 然而，一颗神奇药丸的出现，让他在跑步时看到了妻儿的身影。而他越是追逐，越能确定那并非幻影。每一次奔跑，都离他们更近一步。 他开始重新训练，只想再次跑进她的世界，跟她说一声“对不起”。 【名家读后推荐】 读了《跑去她的世界》，是一部很感人的小说，写了一个人的精神史，同时也是身体史，像在看一部情感类电影剧本和意识流小说的融合。作者触及了宇宙的本质、意识的真相，以及平行世界、人的精神力量、人类建设新的乌托邦的可能性、人类战胜苦难的力量等等。最打动人的，是小说中对于亲情的描述。作品对人在困境里，面对多种选择时的心理，做了细致地刻画。事实上，我们都跟主人公一样奔跑着，不管追逐幻影，还是追逐另一个美好世界。不管最终是否能够抵达，都要不停地跑下去。这不就是人生的意义吗？这部小说，给人以力量，让人在抑郁颓败中，重新振作起来，或者放松下来，面对苦难，好好生活。 ——著名科幻作家 韩松 十分喜欢夏桑的新书，尤其是后半段的剧情走向很妙，感觉打开了一个新的维度。与此同时，夏桑本可以成为一名厉害的作家，却十年如一日为作者们做嫁衣，实在是值得叹佩！ ——著名科幻作家 陈楸帆 读《跑去她的世界》时，我能感受到作者的深情。这不是一本特别类型化的科幻小说，书的第一章甚至没有任何科幻元素，但第一章之后，科幻像是给故事插上的一双翅膀，能到现实主义所不能至的地方。本书的阅读门槛极低，但是情绪却非常动人，读到最后一刻，能够感受到很多…… ——读书博主 福豆姐姐 《跑去她的世界》的设定是高级的，设定之下，人物行为笼罩的悲剧感也足够感人。看小说的时候，我总觉得作夏桑太残忍了：人物一出场，几乎就身在深渊；他再怎么挣扎，乃至借助科技的力量，也不过是离深渊稍远一点。但这恰恰是小说家的高明处——不是说他想出了一个绝妙的点子，让人物可以走出悲痛重建人生；而是他自始至终，给与了人物足够细致的体察，这种立足于人性——而非科技——的体察，才是小说的光芒。 ——伟大的匿名者 谈亦默 【编辑推荐】 尼采说:“一切文学，我独爱以血写就的。用血写作，你会知道，这就是生命。” 读了本书，我深以为然。作者将内心的最高真实融入小说，为之浸入生命。 透过这样毫无保留的文字，或许我们每个人都能抵达心底被忽略的答案，重新审视生活的意义。', '新星出版社', 285, '59', '9787513357371', '2024-08-01', '2024-11-09 19:36:26.831994', '0', 99, '7.7', '平装', 0, 29, '未知', '2024-11-09 19:36:26.834037', 0, 0, 0);
INSERT INTO `b_book` VALUES (143, '页边和听写', 'https://img2.doubanio.com/view/subject/s/public/s34924951.jpg', '[意] 埃莱娜·费兰特', '陈英', '★ 埃莱娜•费兰特于“新冠疫情”期间 四场由他人朗诵的特殊演讲 ★ 《痛苦和笔》《蓝宝石》《历史和我》｜博洛尼亚大学名家讲堂之“埃科讲堂” ｜Le Eco Lectures ( Università di Bologna ) 《但丁的肋骨》｜“但丁及其他经典”研讨会 Dante e altri classici （ADI） ★ 「我们必须顽强工作，对我们所继承的糟糕的语言进行改造。」 ★ 费兰特对启发自身的作家的致敬与重温：艾米莉•狄金森（Emily Dickinson）、格特鲁德•斯泰因（Gertrude Stein）、英格博格•巴赫曼（Ingeborg Bachmann）、德尼•狄德罗（Denis Diderot）、劳伦斯•斯特恩（Laurence Sterne）、伊塔洛•斯韦沃（Italo Svevo）、阿德里亚娜•卡瓦列罗（Adriana C... ★ 埃莱娜•费兰特于“新冠疫情”期间 四场由他人朗诵的特殊演讲 ★ 《痛苦和笔》《蓝宝石》《历史和我》｜博洛尼亚大学名家讲堂之“埃科讲堂” ｜Le Eco Lectures ( Università di Bologna ) 《但丁的肋骨》｜“但丁及其他经典”研讨会 Dante e altri classici （ADI） ★ 「我们必须顽强工作，对我们所继承的糟糕的语言进行改造。」 ★ 费兰特对启发自身的作家的致敬与重温：艾米莉•狄金森（Emily Dickinson）、格特鲁德•斯泰因（Gertrude Stein）、英格博格•巴赫曼（Ingeborg Bachmann）、德尼•狄德罗（Denis Diderot）、劳伦斯•斯特恩（Laurence Sterne）、伊塔洛•斯韦沃（Italo Svevo）、阿德里亚娜•卡瓦列罗（Adriana Cavarero）、陀思妥耶夫斯基（Dostoyevsky）、但丁（Dante）…… **** 2020年，埃莱娜•费兰特接受博洛尼亚大学名家讲堂之“埃科讲堂”的邀请，进行了三场由他人代为朗读的演讲《痛苦和笔》《蓝宝石》《历史与我》。作家从自身的阅读写作史中提炼出“说出事情的原本”“我们所需的巫术”“必要的另一人”等关键主题，并通过阐释格特鲁德•斯泰因、英格博格•巴赫曼、劳伦斯•斯特恩、伊塔洛•斯韦沃、阿德里亚娜•卡瓦列罗等作家对自身的影响，勾连起自身写作过程和经典作品的联系。 书中还附录了《但丁的肋骨》一篇，是作家应意大利学研究者协会（ADI）的邀请，在“但丁及其他经典”研讨会上（2021年4月29日）发表的演讲稿，由学者蒂兹亚娜•德洛卡蒂斯代为朗读。费兰特阐释了但丁如何突破自己的诗歌传统，想象女性生活的智慧和可能，最终创造出贝雅特丽齐这一不朽的文学形象的。 *** 我们必须接受一个事实：没有任何词语真正属于我们。我们必须放弃这种想法：写作就是奇迹般地发出自己的声音，有自己的语气。在我看来，这是在以一种倦怠的方式谈论写作。其实事情正好相反，写作就是每次都会踏入一片无尽的墓地，那里每座坟墓都等待被亵渎；写作就是沉浸于已经写就的一切小说、散文和戏剧，无论是伟大的还是流俗的文学（只要用得上），并在漩涡般纷乱复杂的个性中，形成自己的写作；写作就是占有所有已经写就的作品，慢慢学会使用这些巨大的财富。——埃莱娜•费兰特 · 在很长时间内，我们要暂停区分写出平庸作品和写出传世之作的作家。我们要共同对抗糟糕的语言，它在历史上一直没有接纳女性的真相。我们要彼此交融，把我们的天分融合在一起，不让任何一行文字消失在风中，我们一定能做到。——埃莱娜•费兰特', '人民文学出版社', 132, '39.00', '9787020188239', '2024-08-01', '2024-11-09 19:36:36.067525', '0', 99, '8.8', '平装', 0, 29, '未知', '2024-11-09 19:36:36.069518', 0, 0, 0);
INSERT INTO `b_book` VALUES (144, '记忆萦回', 'https://img9.doubanio.com/view/subject/s/public/s34941466.jpg', '[美]哈罗德·布鲁姆', '李小均', '这才是最高层次批评的本质： 是对自我灵魂的记录。 它比历史更精彩，因为它只涉及自己。 它比哲学更可喜，因为它的主题具体而不抽象、真切而不含糊。 它是自传的唯一文明形式， 因为它处理的不是事件，而是个人生活的思想； 不是生活中行为或环境的有形事件，而是心灵的精神气氛和想象 激情。 ----------------------------------------------------------------------------------------------------------- 中西方学界已有共识，哈罗德·布鲁姆是当今最有天赋、最具原创性、最富煽动性的文学评论家——没有之一。深厚的文学修养构成了布鲁姆作为著名文学评论家的基础。对文学如数家珍的熟稔，对西方文化传统和知识的百科全书般的涉猎，使得布鲁姆成为西方文学和文化界的传奇。 《记忆萦回》... 这才是最高层次批评的本质： 是对自我灵魂的记录。 它比历史更精彩，因为它只涉及自己。 它比哲学更可喜，因为它的主题具体而不抽象、真切而不含糊。 它是自传的唯一文明形式， 因为它处理的不是事件，而是个人生活的思想； 不是生活中行为或环境的有形事件，而是心灵的精神气氛和想象 激情。 ----------------------------------------------------------------------------------------------------------- 中西方学界已有共识，哈罗德·布鲁姆是当今最有天赋、最具原创性、最富煽动性的文学评论家——没有之一。深厚的文学修养构成了布鲁姆作为著名文学评论家的基础。对文学如数家珍的熟稔，对西方文化传统和知识的百科全书般的涉猎，使得布鲁姆成为西方文学和文化界的传奇。 《记忆萦回》是布鲁姆的告别之作，也是他最私人的回忆录，被作者称为近年来最重要的一部作品。本书可以说是年近九十岁的布鲁姆对他一生阅读体验的一次回顾和总结。书中，作者遵循阅读的记忆选取了超过八十段他从小就熟记于心的经典作家的文本，为读者带来精炼、睿智的解读。 阅读此书，就好比跟随作者经历一段从童年到晚年的精神之旅，读者将有幸看到当代最伟大的批评家从文学史、艺术史、思想史上的杰出灵魂中汲取养分的过程。书中选入的作品自布鲁姆幼年时就萦绕在他心头，直到暮年它们依然鲜活：从《圣经》到莎士比亚与约翰生博士；从斯宾塞与米尔顿到华兹华斯与济慈；从惠特曼与罗伯特·勃朗宁到乔伊斯和普鲁斯特；从托尔斯泰与叶芝到德尔摩·舒瓦茨与艾米·克兰皮特……其中不少作者他都在之前的著作中论及过，但在人生的最后阶段将它们重新加以诠释，依然会给读者带来新鲜的观点。 全书精彩纷呈又令人深为感动。虽然这部著作的字里行间弥漫着一种“垂垂老矣”的孤独和忧伤的气质，但布鲁姆对于经典、灵魂、美德、信仰的重申与热爱，却依然跃然纸上，充满生机。本书不仅展现了我们这个时代最伟大的人文批评家的阅读历程、人生历程，也映照了二十世纪下半叶的英美文学史。无论是在文学意义上，还是在文本意义上，这部著作都具有极高的学术价值和审美价值。 【媒体评论】 这些文章流露出作者对文学深深的个人眷恋，也展现出其崭新的阅读视角。本书是布鲁姆对他挚爱作品的一次雄辩而博学的重读。 ——Kirkus Reviews 我们时代的塞缪尔·约翰生……《记忆萦回》是一部告别之作。布鲁姆深爱着文学，即使面对死亡，这种爱也赋予了一种生命的力量。 ——Commonweal Magazine 这位伟大的评论家在本书中重温了对他来说最重要的文学作品。 ——《纽约时报》', '中信出版社', 808, '168', '9787521756401', '2024-09-01', '2024-11-09 19:36:40.582748', '0', 99, '9.1', '未知', 0, 29, 'Possessed by Memory: The Inward Light of Criticism', '2024-11-09 19:36:40.583788', 0, 0, 0);
INSERT INTO `b_book` VALUES (145, '冷到下雪', 'https://img1.doubanio.com/view/subject/s/public/s34902988.jpg', '[澳] 欧健梅', '陆剑', '一个十月的雨天，一对母女分别离开自己生活的国家，到东京见面：她们漫步在河道旁， 躲避台风，分享咖啡馆和餐厅的美食，参观画廊，欣赏城市中最激进的现代艺术。与此同时，她们聊天气、星座、服装和物品，乃至家庭、距离和记忆。 母亲在香港长大，在两个女儿出生之前移民。她们之间彬彬有礼 ，但并不亲密。一种混合着失望和希望的感觉笼罩着她们的互动，仿佛一个系着渴望和绝望的结。这次旅行或许并没有像女儿所希望的那样成功，虽然几乎一切都按计划发生，没有什么糟糕的意外。 《冷到下雪》以最纤细的笔触写出了隐忍、含蓄、疏离的母女关系。它也质疑我们是否有共同言说的语言，哪些维度可以容纳爱，以及我们是否有资格真正了解别人的内心世界。 ———————————————————————————————— 从1500多部作品中脱颖而出 获英美澳三家出版社联合主办的小说奖 被翻译成20种语言 ... 一个十月的雨天，一对母女分别离开自己生活的国家，到东京见面：她们漫步在河道旁， 躲避台风，分享咖啡馆和餐厅的美食，参观画廊，欣赏城市中最激进的现代艺术。与此同时，她们聊天气、星座、服装和物品，乃至家庭、距离和记忆。 母亲在香港长大，在两个女儿出生之前移民。她们之间彬彬有礼 ，但并不亲密。一种混合着失望和希望的感觉笼罩着她们的互动，仿佛一个系着渴望和绝望的结。这次旅行或许并没有像女儿所希望的那样成功，虽然几乎一切都按计划发生，没有什么糟糕的意外。 《冷到下雪》以最纤细的笔触写出了隐忍、含蓄、疏离的母女关系。它也质疑我们是否有共同言说的语言，哪些维度可以容纳爱，以及我们是否有资格真正了解别人的内心世界。 ———————————————————————————————— 从1500多部作品中脱颖而出 获英美澳三家出版社联合主办的小说奖 被翻译成20种语言 “也许 不去理解万事万物 也没关系。”', '上海译文出版社', 82, '48', '9787532796281', '2024-08-01', '2024-11-09 19:36:42.308332', '0', 99, '7.7', '平装', 0, 29, 'Cold Enough for Snow', '2024-11-09 19:36:42.309281', 0, 0, 0);
INSERT INTO `b_book` VALUES (146, '我与地坛', 'https://img1.doubanio.com/view/subject/s/public/s4594868.jpg', '史铁生', '未知', '《我与地坛》收入《我与地坛》、《记忆与印象》等以记事为主的散文，配少量图片。《我与地坛》由中国当代著名作家史铁生著。是史铁生文学作品中，充满哲思又极为人性化的代表作之一。其前第一段和第二段被纳入人民教育出版社的高一教材中。前两部分注重讲地坛和他与母亲的后悔，对于中学生来说，这是一篇令人反思的优秀文章。 史铁生是当代中国最令人敬佩的作家之一。他的写作与他的生命完全同构在了一起，在自己的“写作之夜”，史铁生用残缺的身体，说出了最为健全而丰满的思想。他体验到的是生命的苦难，表达出的却是存在的明朗和欢乐，他睿智的言辞，照亮的反而是我们日益幽暗的内心。 地坛只是一个载体，而文章的本质却是一个绝望的人寻求希望的过程，以及对母亲的思念。', '人民文学出版社', 226, '23.00', '9787020083442', '2011-01-01', '2024-11-09 19:36:44.235274', '0', 99, '9.3', '平装', 0, 29, '未知', '2024-11-09 19:36:44.236286', 0, 0, 0);
INSERT INTO `b_book` VALUES (147, '以利为利', 'https://img9.doubanio.com/view/subject/s/public/s9062104.jpg', '周飞舟', '未知', '本书主要内容包括：序论：政府行为与中央-地方关系、改革前的中央地方关系、财政包干的效应和后果、分税制改革及其影响等。', '上海三联书店', 254, '35.00', '9787542636492', '2012-02-01', '2024-11-09 19:36:57.072659', '0', 99, '9.4', '平装', 0, 6, '未知', '2024-11-09 19:36:57.073656', 0, 0, 0);
INSERT INTO `b_book` VALUES (148, '投资第1课', 'https://img9.doubanio.com/view/subject/s/public/s34457574.jpg', '孟岩', '未知', '《投资第1课》是一本为普通投资者写就的入门读物。现代社会是一个分工高度专业化和精细化的社会，任何一个人都不可能、也没必要去学习所有的知识——生病了，找医生；有纠纷，找律师。投资是不是也应该如此？ 相比其他行业，投资行业有个很大的不同：作为用户，在绝大多数时间里，都无法评价产品，以及相应服务的好坏。 “短期涨得好，不代表长期能赚钱。我们看到的投资收益，有可能是牛市带来的，有可能是短期市场风格带来的。如果不具备基本的金融素养（Financial Literacy），我们就无法辨别这个结果是能力还是运气，更无法在将来获得这个收益。 更重要的是，即使我们选择了好的投资产品，如果不具备基本的投资知识，也可能会经历’贪婪和恐惧‘，在关键时刻无法拿住”，作者如是说。 本杰明·格雷厄姆曾说： “投资艺术有一个特点不为大众所知。门外汉只需些许努力与能力，便可以取得令人... 《投资第1课》是一本为普通投资者写就的入门读物。现代社会是一个分工高度专业化和精细化的社会，任何一个人都不可能、也没必要去学习所有的知识——生病了，找医生；有纠纷，找律师。投资是不是也应该如此？ 相比其他行业，投资行业有个很大的不同：作为用户，在绝大多数时间里，都无法评价产品，以及相应服务的好坏。 “短期涨得好，不代表长期能赚钱。我们看到的投资收益，有可能是牛市带来的，有可能是短期市场风格带来的。如果不具备基本的金融素养（Financial Literacy），我们就无法辨别这个结果是能力还是运气，更无法在将来获得这个收益。 更重要的是，即使我们选择了好的投资产品，如果不具备基本的投资知识，也可能会经历’贪婪和恐惧‘，在关键时刻无法拿住”，作者如是说。 本杰明·格雷厄姆曾说： “投资艺术有一个特点不为大众所知。门外汉只需些许努力与能力，便可以取得令人尊敬（即使并不可观）的结果。但是如果人们想在这个容易获取的标准上更进一步，则需要更多的实践和智慧。” 这本书希望做到的，就是正确地找到这“些许努力”： 1.学习投资的大道以及基本的知识； 2.树立正确的财富观； 3.理解投资为什么可以赚钱、赚的是什么钱； 4.这些钱本质上又是从哪儿来的； 5.如何赚到这些钱。 本书以有知有行 App 专栏《投资第一课》为蓝本，凝聚了孟岩多年实盘投资经验，以及服务用户的体会与心得。经与合伙人张潇雨、有知有行团队不断优化、迭代，本书已成为一本适时、及时的个人资产管理指南。', '新星出版社', 240, '68', '9787513350488', '2023-02-01', '2024-11-09 19:36:58.452315', '0', 99, '8.2', '精装', 0, 6, '未知', '2024-11-09 19:36:58.453270', 0, 0, 0);
INSERT INTO `b_book` VALUES (149, '纳瓦尔宝典', 'https://img9.doubanio.com/view/subject/s/public/s34241855.jpg', '[美] 埃里克·乔根森', '赵灿', '致富不仅仅靠运气，幸福也不是从天而降的。积累财富和幸福生活都是我们可以且需要学习的技能。 那么指导我们学习的原则和方法是什么？本书提供了原则和方法。这本书收集整理了硅谷知名天使投资人纳瓦尔的智慧箴言录，尤其是关于财富积累和幸福人生的原则与方法。 在过去十年里，纳瓦尔通过推特、博客和播客等方式分享了他的人生智慧，分享如何不靠运气取得成功、如何利用专长和杠杆获得财富以及他的幸福哲学等内容，他的分享在网络上掀起了讨论热潮，受到大量网友的热爱和追捧。纳瓦尔不仅告诉了我们怎样致富，还告诉了我们怎样看待人生，怎样获得幸福。他对财富、人生的思考将帮助你走上自己独特的人生道路，过上更富有、更幸福的生活。', '中信出版社', 256, '68.00', '9787521741124', '2022-04-01', '2024-11-09 19:37:00.284581', '0', 99, '8.4', '平装', 0, 6, 'The Almanack of Naval Ravikant: A Guide to Wealth and Happiness', '2024-11-09 19:37:00.285662', 0, 0, 0);
INSERT INTO `b_book` VALUES (150, '风险投资史', 'https://img3.doubanio.com/view/subject/s/public/s34376067.jpg', '[英] 塞巴斯蒂安·马拉比', '田轩', '如果你只能读一本关于风险投资的书，那么请读这本。 ●这是风险投资真实运作的故事。在很多人的印象里，风险投资一直是神话般的存在，掌握着改变风向和创造巨额财富的密码。这本书可以帮助你打开风险投资神话般的外壳，如穿越时间的虫洞般，窥见其中关于人性、时代、财富甚至资本善恶的秘密。它将硅谷传奇企业与人物的故事与对风投行业发展脉络的洞见交织起来，首度权威揭秘硅谷指数级技术革命背后的千亿资本运作实情。 ●它揭示了驱动风投行业、整个硅谷乃至整个世界的基本原理——指数法则。风投的蕞大秘密是蕞佳投资所创回报等于或超过基金其他部分的收益总和。成功虽是罕见的，但成功所带来的影响力却是变革性的。也正因如此，风险投资家总是有着异乎常人的洞察力和直觉,有着对于风险的偏好和对失败的宽容,他们面对巨大的不确定性敢于大举押注。对于他们而言，那些看似疯狂的梦想，越是大胆、越是看起来不可能... 如果你只能读一本关于风险投资的书，那么请读这本。 ●这是风险投资真实运作的故事。在很多人的印象里，风险投资一直是神话般的存在，掌握着改变风向和创造巨额财富的密码。这本书可以帮助你打开风险投资神话般的外壳，如穿越时间的虫洞般，窥见其中关于人性、时代、财富甚至资本善恶的秘密。它将硅谷传奇企业与人物的故事与对风投行业发展脉络的洞见交织起来，首度权威揭秘硅谷指数级技术革命背后的千亿资本运作实情。 ●它揭示了驱动风投行业、整个硅谷乃至整个世界的基本原理——指数法则。风投的蕞大秘密是蕞佳投资所创回报等于或超过基金其他部分的收益总和。成功虽是罕见的，但成功所带来的影响力却是变革性的。也正因如此，风险投资家总是有着异乎常人的洞察力和直觉,有着对于风险的偏好和对失败的宽容,他们面对巨大的不确定性敢于大举押注。对于他们而言，那些看似疯狂的梦想，越是大胆、越是看起来不可能，就越有价值。风险投资不只是一个生意，也是一种能带来社会进步的方法、思维方式和哲学，通过大胆支持勇敢的创新者来更好满足人类的需求和欲望，甚至可以说，风险投资本身就是巨大的创新。', '浙江教育出版社', 476, '129.90', '9787572245992', '2022-12-01', '2024-11-09 19:37:01.744368', '0', 99, '8.7', '平装', 0, 6, 'The Power Law: Venture Capital and the Making of the New Future', '2024-11-09 19:37:01.746371', 0, 0, 0);
INSERT INTO `b_book` VALUES (151, '日本蜡烛图技术（第2版）', 'https://img9.doubanio.com/view/subject/s/public/s33562205.jpg', '[美] 史蒂夫·尼森', '丁圣元', '“K线之父”“蜡烛图泰斗”史蒂夫·尼森畅销近30年的金融投资技术分析经典，让大众熟知蜡烛图技术的开山之作。作者结合近年全球市场变化进行了全新修订，原书第2版。 美国技术分析专家史蒂夫·尼森的技术分析代表作，对“日本蜡烛图技术”进行了全面实用的讲解。融合东西方金融分析理论和技巧的精华，运用典型生动的图表案例、条理清晰的文字解析，一本书让你掌握股票、债券、基金、期货等金融投资的策略和技巧，提升交易能力，降低波动风险。既适合初入股票、期货市场的新手，也对技术分析老手有很大裨益。', '湖南文艺出版社', 376, '98.00', '9787540493738', '2020-03-01', '2024-11-09 19:37:03.810016', '0', 99, '9.0', '平装', 0, 6, 'Japanese Candlestick Charting Techniques (2/e)', '2024-11-09 19:37:03.812009', 0, 0, 0);
INSERT INTO `b_book` VALUES (152, '见证失衡', 'https://img1.doubanio.com/view/subject/s/public/s6185230.jpg', '余永定', '未知', '《见证失衡:双顺差、人民币汇率和美元陷阱》作为有影响力的经济学家，作者十多年来一直呼吁遏制中国经济的双顺差，理顺中国经济与世界经济的关系，但却并不如愿。今日中美经济关系的严重扭曲，使我们有必要重新审视作者当年的忧虑。《见证失衡:双顺差、人民币汇率和美元陷阱》遴选其三十多篇代表作品，以年代为序，试图表现作者一脉相承的见解，同时也表达了一个经济学家敢于反思研究历程并接受历史检验的勇气。', '生活·读书·新知三联书店', 308, '36.00', '9787108033864', '2010-06-01', '2024-11-09 19:37:05.313268', '0', 99, '8.9', '未知', 0, 6, '未知', '2024-11-09 19:37:05.315270', 0, 0, 0);
INSERT INTO `b_book` VALUES (153, '债务机器', 'https://img1.doubanio.com/view/subject/s/public/s34907788.jpg', '[美]埃琳娜·博泰拉(Elena Botella)', '吴士宝', '本书探讨了美国的个人债务体系以及其缺陷带给民众的困扰，从历史、现状和未来三个层面分析了美国长久以来的个人债务问题，包括信用卡使用过程中对公众产生的影响、问题和原因。 美国第一资本一线工作人员亲身经历 揭露美国金融“自由政策”的陷阱 美国银行为何让民众负债累累 本书揭示了美国债务人阶级的形成和美国金融保障体系的弊端，对美国国内债务分歧和信贷价格公平性问题进行了深入讨论，最后探讨了了在美国开发新的市场和采用新型借贷方式的可能性。本书适合于银行等金融机构人员、管理部门人员以及对金融知识感兴趣的大众读者阅读参考。 作者用亲身工作经历讲述在金融前线窥见的美国政策陷阱。 几十个美国民众的真实故事揭露“自由金融”的幕后。 从民众债务问题入手，剖析美国金融的深层问题及资本主义弊端 用金融界一线工作经历解读“自由之地”的民众为何被金融政策压垮 作者简介： [美] 埃琳... 本书探讨了美国的个人债务体系以及其缺陷带给民众的困扰，从历史、现状和未来三个层面分析了美国长久以来的个人债务问题，包括信用卡使用过程中对公众产生的影响、问题和原因。 美国第一资本一线工作人员亲身经历 揭露美国金融“自由政策”的陷阱 美国银行为何让民众负债累累 本书揭示了美国债务人阶级的形成和美国金融保障体系的弊端，对美国国内债务分歧和信贷价格公平性问题进行了深入讨论，最后探讨了了在美国开发新的市场和采用新型借贷方式的可能性。本书适合于银行等金融机构人员、管理部门人员以及对金融知识感兴趣的大众读者阅读参考。 作者用亲身工作经历讲述在金融前线窥见的美国政策陷阱。 几十个美国民众的真实故事揭露“自由金融”的幕后。 从民众债务问题入手，剖析美国金融的深层问题及资本主义弊端 用金融界一线工作经历解读“自由之地”的民众为何被金融政策压垮 作者简介： [美] 埃琳娜·博泰拉 曾任美国第一资本金融公司的高级业务经理。在多年的一线工作中发现了美国财政政策的弊端后，她毅然决然地离开了原来的岗位，开始研究美国的财政、金融等方面的问题，并发表相关文章。她的文章被刊登于美国各大杂志。她用自己多年的亲身经历，详细解读了美国财政金融问题。', '中国科学技术出版社', 360, '69.00', '9787523607725', '2024-09-01', '2024-11-09 19:37:06.755109', '0', 99, '8.4', '精装', 0, 6, '未知', '2024-11-09 19:37:06.757102', 0, 0, 0);
INSERT INTO `b_book` VALUES (154, '世界上最简单的会计书', 'https://img1.doubanio.com/view/subject/s/public/s28040378.jpg', '[美] 达雷尔·穆利斯', '黄屹', '会计难吗？不，一点儿也不！只要你看过这本书。 创业者、投资者、企业家、老板、有抱负的经理人、会计的好奇者……速速看过来！ 本书以一个小男孩开设柠檬汁摊为背景，阐述了最基本的会计原理和方法。读者可在小男孩制作广告招牌、向妈妈借钱、从杂货店买糖和柠檬、卖柠檬汁给邻居和同学们的过程中，一步步了解资产、负债、盈余、存货、应付账款等专业名词。', '机械工业出版社', 212, '30.00', '9787111442585', '2013-10-01', '2024-11-09 19:37:09.288804', '0', 99, '9.0', '平装', 0, 6, 'The Accounting Game: Basic Accounting Fresh from the Lemonade Stand', '2024-11-09 19:37:09.290835', 0, 0, 0);
INSERT INTO `b_book` VALUES (155, '穿透估值', 'https://img1.doubanio.com/view/subject/s/public/s34935310.jpg', '邹佩轩', '未知', '在投资中，我们时常听到这么一句话：找到优质企业，然后陪伴它成长。这句话中的关键词不是“优质”，而是“找到”。能否“找到”，考验的便是投资者看透估值的能力。有鉴于此，本书尝试搭建一个既有学院派理论基础又能落地应用的估值体系，将源头的理论模型与实战中常用的经验公式整合起来，并融入对交易行为和规则制度的思考，以有助于读者找到优质企业。 作者在书中基于逻辑推理搭建框架，用现实案例验证了框架的准确性。全书内容分为四章：第1章从理论化的学院派模型讲起，为估值体系的演化提供了框架；第2章重点讨论实战中常用的模型，包括DCF模型的几种变体及各种估值法；第3章进一步推进估值实战化，分析动态的投资过程及人性博弈；第4章沿着前三章的框架，进行经典案例的复盘，透过行业差异，寻找规律。作者意在通过大量的图表、翔实的案例、生动的语言，手把手地带领读者读懂估值中的共识与博弈。 本... 在投资中，我们时常听到这么一句话：找到优质企业，然后陪伴它成长。这句话中的关键词不是“优质”，而是“找到”。能否“找到”，考验的便是投资者看透估值的能力。有鉴于此，本书尝试搭建一个既有学院派理论基础又能落地应用的估值体系，将源头的理论模型与实战中常用的经验公式整合起来，并融入对交易行为和规则制度的思考，以有助于读者找到优质企业。 作者在书中基于逻辑推理搭建框架，用现实案例验证了框架的准确性。全书内容分为四章：第1章从理论化的学院派模型讲起，为估值体系的演化提供了框架；第2章重点讨论实战中常用的模型，包括DCF模型的几种变体及各种估值法；第3章进一步推进估值实战化，分析动态的投资过程及人性博弈；第4章沿着前三章的框架，进行经典案例的复盘，透过行业差异，寻找规律。作者意在通过大量的图表、翔实的案例、生动的语言，手把手地带领读者读懂估值中的共识与博弈。 本书适合广大投资者，尤其是二级市场从业者阅读和参考。', '人民邮电出版社', 279, '79.00', '9787115646354', '2024-08-01', '2024-11-09 19:37:10.657333', '0', 99, '8.2', '平装', 0, 6, '未知', '2024-11-09 19:37:10.659326', 0, 0, 0);
INSERT INTO `b_book` VALUES (156, '专业投机原理', 'https://img9.doubanio.com/view/subject/s/public/s2997274.jpg', '维克托·斯波朗迪', '未知', '《专业投机原理》系统地反映了世界上最伟大的交易员维克托的投机哲学。因此，除了通常的市场知识外，书中还包含了大量的心理学、经济学、政治学方面的知识，大大开阔了读者学习投机知识的视野。尤其值得一提的是，维克托对经济学、经济循环的本质有着深刻的认识，这使他能够把握宏观经济脉络，从容地进行投机活动。', '机械工业出版社', 452, '68.00', '9787111232926', '2008-03-01', '2024-11-09 19:37:13.128218', '0', 99, '8.6', '平装', 0, 6, '未知', '2024-11-09 19:37:13.130225', 0, 0, 0);
INSERT INTO `b_book` VALUES (157, '渐行渐近的金融周期', 'https://img1.doubanio.com/view/subject/s/public/s29459570.jpg', '彭文生', '未知', '过去40年在金融自由化、政府对私人财富隐性担保、宏观政策过度依赖信贷的大环境下，全球范围内金融的顺周期性成为驱动经济中期波动的重要力量，甚至带来了金融危机。有别于实体与金融相割裂的传统视角，本书在金融周期的分析框架下，聚焦信用和房地产相互促进的机制，联系金融和实体、总量和结构，提供一个从金融看宏观经济的全景式分析。 中国在经历第一个金融周期，上半场的繁荣已经持续了10年，房地产和信用（债务）过度扩张损害潜在增长率，扭曲经济结构，加剧贫富分化和环境污染，不可持续。央行加息（紧货币）、监管加强（紧信用）、结构改革包括税制调整，独立或合力作用，将触发金融周期拐点。下半场调整意味着房地产去泡沫、非政府部门去杠杆，经济增长在一段时间面临下行压力，但结构改善。寄希望于刺激增长和通胀去杠杆、家庭加杠杆扶持企业降杠杆、只减债务不减资产泡沫、汇率贬值消化高房价等都是不... 过去40年在金融自由化、政府对私人财富隐性担保、宏观政策过度依赖信贷的大环境下，全球范围内金融的顺周期性成为驱动经济中期波动的重要力量，甚至带来了金融危机。有别于实体与金融相割裂的传统视角，本书在金融周期的分析框架下，聚焦信用和房地产相互促进的机制，联系金融和实体、总量和结构，提供一个从金融看宏观经济的全景式分析。 中国在经历第一个金融周期，上半场的繁荣已经持续了10年，房地产和信用（债务）过度扩张损害潜在增长率，扭曲经济结构，加剧贫富分化和环境污染，不可持续。央行加息（紧货币）、监管加强（紧信用）、结构改革包括税制调整，独立或合力作用，将触发金融周期拐点。下半场调整意味着房地产去泡沫、非政府部门去杠杆，经济增长在一段时间面临下行压力，但结构改善。寄希望于刺激增长和通胀去杠杆、家庭加杠杆扶持企业降杠杆、只减债务不减资产泡沫、汇率贬值消化高房价等都是不现实的。 进入金融周期下半场后，理想的宏观政策是“紧信用、松货币、宽财政”，但这是技术层面的调整，不改变金融的基本结构。促进金融服务实体经济还需要深层次的变革：一是央行（财政）扩表增加货币投放，降低对银行信贷的依赖，央行发行数字货币支持财政大幅减税；二是回归某种形式的分业经营，存款归存款、投资归投资，区隔金融的公用事业和风险部分。', '中信出版社', 416, '65.00', '9787508675909', '2017-06-01', '2024-11-09 19:37:14.932614', '0', 99, '9.1', '平装', 0, 6, '未知', '2024-11-09 19:37:14.934615', 0, 0, 0);
INSERT INTO `b_book` VALUES (158, '韭菜的自我修养', 'https://img1.doubanio.com/view/subject/s/public/s29869019.jpg', '李笑来', '未知', '你可以是新手，但你必须不是韭菜！记住—— ◆韭菜的根本误区在于，把交易当作零和游戏 ◆降低你的交易频率，降低降低再降低 ◆不要一进场就买买买，看上一年再动手 ◆已经买了？先买交易量最大的那只！ ◆你需要的是学习和成长，不是打探“内部消息” ◆Never All-in，不要全职投资 ◆认真生活，这比交易判断重要一百倍！ ◆享受孤独，孤独是这个领域最重要的品质 ◆判断牛熊周期有一个现学现用的方法…… 李笑来说：“交易有风险，这是一个注定只有极少数人能够成功的领域——是因为它复杂吗？恰恰相反，是因为越简单的原理，往往越难以遵守……” ◆李笑来首次公开投资原则，写给每一个进场者的生存指南。 ◆“看不懂”的A股、楼市、区块链，从此洞若观火！ 这个小册子最终取名为《韭菜的自我修养》，实在出于迫不得已。我的初衷，是把我所知道的认知、我所知道的真相写出来，让更有价值... 你可以是新手，但你必须不是韭菜！记住—— ◆韭菜的根本误区在于，把交易当作零和游戏 ◆降低你的交易频率，降低降低再降低 ◆不要一进场就买买买，看上一年再动手 ◆已经买了？先买交易量最大的那只！ ◆你需要的是学习和成长，不是打探“内部消息” ◆Never All-in，不要全职投资 ◆认真生活，这比交易判断重要一百倍！ ◆享受孤独，孤独是这个领域最重要的品质 ◆判断牛熊周期有一个现学现用的方法…… 李笑来说：“交易有风险，这是一个注定只有极少数人能够成功的领域——是因为它复杂吗？恰恰相反，是因为越简单的原理，往往越难以遵守……” ◆李笑来首次公开投资原则，写给每一个进场者的生存指南。 ◆“看不懂”的A股、楼市、区块链，从此洞若观火！ 这个小册子最终取名为《韭菜的自我修养》，实在出于迫不得已。我的初衷，是把我所知道的认知、我所知道的真相写出来，让更有价值的思考、更有价值的观察、更有价值的真相传播得更多。我想过几个原本可能的名字：《韭菜防割指南》《小韭菜如何成长》《新韭菜必知手册》……但最后发现，还是目前这个“自黑书名”最可能自带流量。 你不是韭菜，你从来都不是韭菜。真的很羡慕你，读过这本小册子！认真读，反复读，一个字也不要漏掉！你将一步一步得到很多很多颠倒乾坤的结论，你可以暂时放弃自己的智商（但同时你没有忘记锻炼自己的智商），你会渐渐变成一个有章有法的交易者，你能看到周期，你能判断自己应该在什么时候用什么样的频次交易，你有能力为自己的行为负责，你能透过表象研究实质，你总是尝试着去寻找能够更完整地解释这个世界的规律及其方法论，你甚至可以控制自己的情绪和行为…… 如果，你尚未冲进交易市场，却意外地先读到了这本小册子，你猜，你会不会避开书里提到的“几乎所有人都会犯的错误”？李笑来用这个小册子祝福你：好人一生平安。', '江苏凤凰文艺出版社', 152, '39.00', '9787559428639', '2018-09-21', '2024-11-09 19:37:16.493665', '0', 99, '6.7', '精装', 0, 6, '未知', '2024-11-09 19:37:16.495658', 0, 0, 0);
INSERT INTO `b_book` VALUES (159, '巴芒演义', 'https://img3.doubanio.com/view/subject/s/public/s33887052.jpg', '唐朝', '未知', '我们学习价值投资的过程中，经常会发现大师们在很多重要问题上有南辕北辙的表述，甚至同一位大师在不同场合、不同时间，可能表达出完全相反的观点，比如是烟蒂还是成长？集中还是分散？个股还是指数？杠杆还是拒绝杠杆？永远不卖还是高估出手？赌宏观国运还是看微观企业？等等。这些问题让很多投资者困惑。 《巴芒演义》就是用来解决这些问题的。 这是一部关于价值投资从无到有的演化史。它用中国传统的章回小说体，以巴菲特和芒格的价值投资体系成长过程为线索，将近代投资领域的大师们一一搬上舞台。格雷厄姆、巴鲁克、凯恩斯、费雪、施洛斯、索普、格罗斯、米尔肯、林奇、格林布拉特、博格……这一张张鲜活的面孔、各成体系的投资思想、精彩绝伦的投资案例，与巴菲特和芒格的成长融合在一起，可以让我们明白以上理念分歧所发生的特殊背景、适用环境及其变化过程。让我们不再孤立、呆板地背诵大师语录，而是按照自... 我们学习价值投资的过程中，经常会发现大师们在很多重要问题上有南辕北辙的表述，甚至同一位大师在不同场合、不同时间，可能表达出完全相反的观点，比如是烟蒂还是成长？集中还是分散？个股还是指数？杠杆还是拒绝杠杆？永远不卖还是高估出手？赌宏观国运还是看微观企业？等等。这些问题让很多投资者困惑。 《巴芒演义》就是用来解决这些问题的。 这是一部关于价值投资从无到有的演化史。它用中国传统的章回小说体，以巴菲特和芒格的价值投资体系成长过程为线索，将近代投资领域的大师们一一搬上舞台。格雷厄姆、巴鲁克、凯恩斯、费雪、施洛斯、索普、格罗斯、米尔肯、林奇、格林布拉特、博格……这一张张鲜活的面孔、各成体系的投资思想、精彩绝伦的投资案例，与巴菲特和芒格的成长融合在一起，可以让我们明白以上理念分歧所发生的特殊背景、适用环境及其变化过程。让我们不再孤立、呆板地背诵大师语录，而是按照自身实际情况、现实环境，选择*适合的投资模式并明白背后的原因。 希望这部茶馆评书般的演义，处处散落的故事和八卦，能帮助你在轻松愉悦中，完成自身投资体系的建设。', '中国经济出版社', 363, '69.00', '9787513646079', '2020-03-01', '2024-11-09 19:37:18.304988', '0', 99, '9.0', '精装', 0, 6, '未知', '2024-11-09 19:37:18.306982', 0, 0, 0);
INSERT INTO `b_book` VALUES (160, '走出幻觉走向成熟', 'https://img1.doubanio.com/view/subject/s/public/s11336328.jpg', '金融帝国', '未知', '《走出幻觉•走向成熟:从学生股民到系统交易专家》的作者金融帝国说：“本书并不想证明什么，只是想告诉大家一些市场的真相。”“通过我曾经走过的弯路，来挖掘交易者思想上的误区。”“市场是一位狡诈的老师，而交易者是一位愚钝的学生。”因此，我们首先要实实在在地敬畏市场。 在敬畏市场的基础上，金融帝国构造了一个整体获利的交易系统，无论是牛市、熊市还是震荡市，不回避亏损、不追求高准确率，坚持交易系统，在整体上持续获取利润。', '中国经济出版社', 282, '38.00', '9787513610773', '2012-07-01', '2024-11-09 19:37:19.933638', '0', 99, '8.5', '未知', 0, 6, '未知', '2024-11-09 19:37:19.935631', 0, 0, 0);
INSERT INTO `b_book` VALUES (161, '聪明的投资者（第4版注疏点评版）', 'https://img3.doubanio.com/view/subject/s/public/s34918327.jpg', '【美】本杰明•格雷厄姆', '王中华', '《聪明的投资者》（第4版注疏点评版）在完整保留格雷厄姆原著1973 年第4 版的基础上，由贾森•兹威格根据近40 年尤其是世纪之交全球股市的大动荡现实，对格雷厄姆的原著作了大量的注释和章后点评，进一步检验和佐证了价值投资理论。股神巴菲特为本书撰写的序言和评论是这个版本的又一个亮点。《聪明的投资者》（第4版注疏点评版）首先明确了“投资”与“投机”的区别，指出聪明的投资者当如何确定预期收益。《聪明的投资者》（第4版注疏点评版）着重介绍防御型投资者与积极型投资者的投资组合策略，论述了投资者如何应对市场波动。《聪明的投资者》（第4版注疏点评版）还对基金投资、投资者与投资顾问的关系、普通投资者证券分析的一般方法、防御型投资者与积极型投资者的证券选择、可转换证券及认股权证等问题进行了详细阐述。 《聪明的投资者》（第4版注疏点评版）主要面向个人投资者，全面体现了格... 《聪明的投资者》（第4版注疏点评版）在完整保留格雷厄姆原著1973 年第4 版的基础上，由贾森•兹威格根据近40 年尤其是世纪之交全球股市的大动荡现实，对格雷厄姆的原著作了大量的注释和章后点评，进一步检验和佐证了价值投资理论。股神巴菲特为本书撰写的序言和评论是这个版本的又一个亮点。《聪明的投资者》（第4版注疏点评版）首先明确了“投资”与“投机”的区别，指出聪明的投资者当如何确定预期收益。《聪明的投资者》（第4版注疏点评版）着重介绍防御型投资者与积极型投资者的投资组合策略，论述了投资者如何应对市场波动。《聪明的投资者》（第4版注疏点评版）还对基金投资、投资者与投资顾问的关系、普通投资者证券分析的一般方法、防御型投资者与积极型投资者的证券选择、可转换证券及认股权证等问题进行了详细阐述。 《聪明的投资者》（第4版注疏点评版）主要面向个人投资者，全面体现了格雷厄姆的价值投资思想，为普通人在证券投资策略的选择和执行方面提供了重要指导。', '人民邮电出版社', 504, '88.00', '9787115413581', '2016-03-01', '2024-11-09 19:37:21.868915', '0', 99, '9.1', '平装', 0, 6, 'The Intelligent Investor', '2024-11-09 19:37:21.870897', 0, 0, 0);
INSERT INTO `b_book` VALUES (162, '一本书读懂财报 (修订版)', 'https://img1.doubanio.com/view/subject/s/public/s33602578.jpg', '肖星', '未知', '本书是一部进行财报解读、财务分析的经典著作，被读者誉为“读过的财务入门书里好的一部”，同时也是学堂在线平台国家精品课“财务分析与决策”的配套参考书、收听超500万次的喜马拉雅FM音频课进阶版图书。自2014年首次出版以来，本书常年占据京东经管类畅销书榜单，电子书销量位列Kindle会计类图书一位，影响了无数财务行业初学者、投资人和企业管理层，被众多企业指定为中层及以上管理者必读图书。此次，清华大学经济管理学院教授、会计系系主任肖星老师对原版书做了全面修订，一方面使内容符合新会计准则要求，另一方面还补充了全新的案例，新内容占总篇幅的五分之一。 全书从解读资产负债表、利润表、现金流量表三大财务报表和它们之间的关系出发，为你搭建财务报表骨架，剖析财务数据背后的秘密。读完本书，财务行业初学者将轻松掌握财务分析的方法与技巧，投资人能轻松判断企业的价值，企业管理... 本书是一部进行财报解读、财务分析的经典著作，被读者誉为“读过的财务入门书里好的一部”，同时也是学堂在线平台国家精品课“财务分析与决策”的配套参考书、收听超500万次的喜马拉雅FM音频课进阶版图书。自2014年首次出版以来，本书常年占据京东经管类畅销书榜单，电子书销量位列Kindle会计类图书一位，影响了无数财务行业初学者、投资人和企业管理层，被众多企业指定为中层及以上管理者必读图书。此次，清华大学经济管理学院教授、会计系系主任肖星老师对原版书做了全面修订，一方面使内容符合新会计准则要求，另一方面还补充了全新的案例，新内容占总篇幅的五分之一。 全书从解读资产负债表、利润表、现金流量表三大财务报表和它们之间的关系出发，为你搭建财务报表骨架，剖析财务数据背后的秘密。读完本书，财务行业初学者将轻松掌握财务分析的方法与技巧，投资人能轻松判断企业的价值，企业管理者能轻松看穿企业的管理效率、盈利能力、抗风险能力和未来发展前景。 总之，秒通财报，就从本书开始。', '浙江大学出版社', 217, '45.00', '9787308191524', '2019-08-01', '2024-11-09 19:37:23.819013', '0', 99, '8.9', '平装', 0, 6, '未知', '2024-11-09 19:37:23.820009', 0, 0, 0);
INSERT INTO `b_book` VALUES (163, '投资最重要的事', 'https://img3.doubanio.com/view/subject/s/public/s33818742.jpg', '[美]霍华德·马克斯', '李莉', '霍华德 ? 马克斯所写的投资备忘录，备受包括巴菲特在内的全球专业投资者推崇。这本书撷取了投资备忘录中的精华内容，将作者几十年来的投资理念和亲身经历娓娓道来，告诉每位读者如何取得**市场平均水平的投资业绩——这种**市场平均水平所必须的与众不同的思维，被称为“第二层次思维”。 霍华德从自己投资的逆向思考和逆向投资的经验中，总结提炼出了18件投资最重要的事。他告诫投资者：投资决策应以价值为本，投资最重要的不是买好的，而是买得好；在投资风险的问题上，应深刻理解巨大的风险发生在人人都乐观之时，要永远坚持低风险高收益。但霍华德同时指出，即使逆向投资也不会永远带来收益。极端价格不会天天出现，而投资者必然要在周期中非极端时间买进卖出，因此我们必须识别出不利的时机，采取更加谨慎的行动。 此外，这本书除了饱含作者本人的投资智慧外，还融入了其他4位知名投资专家、教育家的... 霍华德 ? 马克斯所写的投资备忘录，备受包括巴菲特在内的全球专业投资者推崇。这本书撷取了投资备忘录中的精华内容，将作者几十年来的投资理念和亲身经历娓娓道来，告诉每位读者如何取得**市场平均水平的投资业绩——这种**市场平均水平所必须的与众不同的思维，被称为“第二层次思维”。 霍华德从自己投资的逆向思考和逆向投资的经验中，总结提炼出了18件投资最重要的事。他告诫投资者：投资决策应以价值为本，投资最重要的不是买好的，而是买得好；在投资风险的问题上，应深刻理解巨大的风险发生在人人都乐观之时，要永远坚持低风险高收益。但霍华德同时指出，即使逆向投资也不会永远带来收益。极端价格不会天天出现，而投资者必然要在周期中非极端时间买进卖出，因此我们必须识别出不利的时机，采取更加谨慎的行动。 此外，这本书除了饱含作者本人的投资智慧外，还融入了其他4位知名投资专家、教育家的评论、看法和不同意见。他们共同就“第二层次思维”、价格与价值的关系、耐心等待机会、防御性投资等概念发表了真知灼见。', '中信出版社', 251, '78', '9787521700602', '2019-03-01', '2024-11-09 19:37:25.932067', '0', 99, '8.5', '精装', 0, 6, 'The Most Important Thing Illuminated', '2024-11-09 19:37:25.935089', 0, 0, 0);
INSERT INTO `b_book` VALUES (164, 'Python编程（第3版）', 'https://img3.doubanio.com/view/subject/s/public/s34505252.jpg', '[美] 埃里克 • 马瑟斯（Eric Matthes）', '袁国忠', '享誉全球的Python入门书，影响了超过250万读者。 ◎ 编辑推荐 编程入门就选蟒蛇书！ 【经典】Python入门圣经，长居 Amazon、京东等编程类图书榜首 【畅销】热销全球，以 13 个语种发行，影响超过 250 万读者 【口碑】好评如潮，第 2 版豆瓣评分 9.2，Amazon 4.7 星评 【升级】代码基于 Python 3.11 升级，涵盖语言最新特性 【资源丰富】配套视频 + PPT课件 + 随书代码 + 速查地图 【自学神器】真正零基础，自学超轻松，附赠学习路线图 【品质提升】精雕细琢，邀请20位一线开发人员审读全书 ◎ 内容简介 本书是针对所有层次的 Python 读者而作的 Python 入门书。全书分为两部分：第一部分介绍使用Python 编程所必须了解的基本概念，包括强大的 Python 库和工具，以及列表、字典、if 语句... 享誉全球的Python入门书，影响了超过250万读者。 ◎ 编辑推荐 编程入门就选蟒蛇书！ 【经典】Python入门圣经，长居 Amazon、京东等编程类图书榜首 【畅销】热销全球，以 13 个语种发行，影响超过 250 万读者 【口碑】好评如潮，第 2 版豆瓣评分 9.2，Amazon 4.7 星评 【升级】代码基于 Python 3.11 升级，涵盖语言最新特性 【资源丰富】配套视频 + PPT课件 + 随书代码 + 速查地图 【自学神器】真正零基础，自学超轻松，附赠学习路线图 【品质提升】精雕细琢，邀请20位一线开发人员审读全书 ◎ 内容简介 本书是针对所有层次的 Python 读者而作的 Python 入门书。全书分为两部分：第一部分介绍使用Python 编程所必须了解的基本概念，包括强大的 Python 库和工具，以及列表、字典、if 语句、类、文件和异常、测试代码等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的 2D 游 戏、利用数据生成交互式的信息图以及创建和定制简单的 Web 应用程序，并帮助读者解决常见编程问题和困惑。第 3 版进行了全面修订：使用了文本编辑器 VS Code，新增了介绍 removeprefix() 方法和removesuffix() 方法的内容，并且在项目中利用了Matplotlib 和 Plotly 的最新特性，等等。 本书适合对 Python 感兴趣的所有读者阅读。 ◎ 名人推荐 编程教学之道，一是重在实践，二是循序渐进——通过巧妙的实战项目，激发和保持学习的热情，让学习渐入佳境。在这两方面，这本书无疑都是非常出色的。无论是初次尝试编程，还是打算拥抱人工智能，相信这本书都会成为你的最佳起点。 ——爱可可-爱生活，北京邮电大学副教授陈光老师 很高兴看到这本书的第3版更新，这是一本实操性很强的Python语言零基础入门和起步教材。它最大的特色在于，在为初学者构建完整的Python语言知识体系的同时，面向实际应用情境编写代码样例，而且许多样例还是后续实践项目部分的伏笔。实践项目部分的选题经过精心设计，生动详尽又面面俱到。相信这本书能够得到更多Python初学者的喜爱。 ——陈斌，北京大学地球与空间科学学院教授、北京市高等学校教学名师 这本书的前两版已经广销全球，而且稳居Python图书的各大销量榜首，这足以证明它的内容有多么出色！这本书简明又全面地阐述了入门Python需要掌握的各方面知识，可以说是学习Python的不二选择。 ——崔庆才，《Python 3网络爬虫开发实战》作者、微软（中国）软件工程师 Python Crash Course从2016年出版，到现在刚刚7年就已经增补到了第3版，可见作者是认真的、市场是认可的、内容是靠谱的。关键是，这本书在图灵的Python技术图书中的核心地位难以撼动。为什么呢？因为其他入门书没这本全面，而其他专业领域图书又没这本好读，它基本上可以作为将其他所有Python技术图书串联起来的总线。这本书唯一的缺点可能就是太厚，读者怕读不完。其实不必，第一部分看过后，其余内容就可以当成工程辞典，有需要时查阅即可。注意原书副标题“A Hands-On, Project-Based Introduction to Programming”点出了关键：这是以一个个小项目为线索来阐述如何用Python进行具体编程的书。它的每一个版本都紧跟Python的进步而增补，值得收藏。 ——大妈，CPyUG联合创始人、蟒营®创始人 本书注重用户体验，列举了大量易于理解的例子和各种练习来帮助读者掌握Python，非常适合初学者以及有一定编程经验的人学习Python。 ——廖雪峰，知名技术专家 从这本书第1版起，我就开始把它推荐给身边正在学Python的朋友，因为作为Python入门的第一本书，它对初学者非常友好。如今这本书已经更新到了第3版，内容与时俱进且更加精练，现在依然是最好的Python入门读物之一。 ——刘志军，公众号“Python之禅”主理人 说实话，这本书可能不太需要那么多推荐。近十年来，这本书引导着包括我在内的无数Python开发者进入了Python世界。在我心中，放眼全球，它在Python入门书中应该是“天花板”般的存在。而更令人惊喜的是，中文版的翻译水平也是引进图书的“天花板”。因此，请放心，这本书一定能将你带入令人陶醉的Python开发世界！ ——Manjusaka，PyCon China负责人、Python播客“捕蛇者说”联合创始人、微软MVP 这是一本让你轻松掌握Python的绝佳教材。这本书用简练的文字阐述Python知识，已成为百万读者信赖的“编程圣经”。它包含三个实战项目：《外星人入侵》游戏、数据可视化、Web开发，方便读者迅速学以致用。渴望学习Python的朋友，这本书无疑是你不容错过的入门必读之作！ ——彭涛，“涛哥聊Python”博主、字码网络科技创始人 编程语言很快就要成为大家母语之外应该掌握的第二语言，而Python是学习编程的优选语言。这本书内容循序渐进、基础与实战相结合，非常适合Python初学者，是新手入门的最佳选择。 ——豌豆花下猫，自媒体“Python猫”主理人 如果你想学习Python编程，那么这是一本非常适合初学者和有经验的程序员的入门书。本书将Python编程的基本概念和相关工具讲解得深入浅出，通过三个实际项目的开发帮助读者更好地理解如何应用所学的概念和技巧，同时解决实际编程中遇到的问题和困惑。第3版进行了全面修订，采用了流行的编程软件，并且新增了一些内容。这是一本值得放在你桌上的书。 ——翁恺，浙江大学计算机学院教授 最理想的新人入门书应该满足两个特点：第一就是内容通俗易懂；第二就是要有实战，能够让读者在学完之后知道具体怎么用。这本书刚好满足了这两点，而且销量也是一个很好的证明。不管你是要入门还是精进Python，都建议你读一读这本经典著作。 ——张俊红，《对比Excel，轻松学习Python数据分析》作者 “蟒蛇书”是我最常向朋友们推荐的Python入门书之一。全书内容安排合理，既有通俗易懂的技术概念讲解，又包含大量有趣的项目实战，可谓面面俱到，尤其适合初学者。 ——朱雷（@piglei），腾讯公司高级工程师、《Python工匠：案例、技巧与工程实践》作者 这本书是我的Python启蒙老师，它不仅有详细的语法讲解，还配有大量项目案例，第3版的实践项目更加丰富。所谓“输出是最好的输入”，通过Python来实现数据分析、数据可视化、Web开发等，帮助自己提升工作效率，是非常有成就感的事。 ——朱卫军，公众号“Python大数据分析”主理人', '人民邮电出版社', 476, '109.80', '9787115613639', '2023-05-01', '2024-11-09 19:37:38.044562', '0', 99, '9.3', '平装', 0, 4, 'Python Crash Course, 3rd Edition: A Hands-On, Project-Based Introduction to Programming', '2024-11-09 19:37:38.046555', 0, 0, 0);
INSERT INTO `b_book` VALUES (165, 'Hello算法', 'https://img3.doubanio.com/view/subject/s/public/s34802857.jpg', '靳宇栋（@krahets）', '未知', '本书是备受广大读者推崇的数据结构与算法入门教程，已在GitHub获得超60k的Star，并多次登顶GitHub Trending。书中系统介绍了数据结构与算法基础、复杂度分析、数组与链表、栈与队列、哈希表、树、堆、图、搜索、排序、分治、回溯、动态规划和贪心算法等核心知识，通过清晰易懂的解释和丰富的代码示例，以及生动形象的全彩插图和在线动画图解，揭示算法工作原理和数据结构底层实现，教授读者如何选择和设计最优算法来解决不同类型的问题，切实提升编程技能，构建完整的数据结构与算法知识体系。 编辑推荐 动画图解：重点和难点知识通过动画以图解形式展示，内容清晰易懂、学习曲线平滑，引导初学者探索数据结构与算法的知识地图。 一键运行：源代码可一键运行，帮助读者在练习中提升编程技能，了解算法工作原理和数据结构底层实现。 配套齐全：附赠源代码、思维导图和书签。', '人民邮电出版社', 380, '129.8', '9787115637505', '2024-03-01', '2024-11-09 19:37:39.365015', '0', 99, '8.7', '平装', 0, 4, '未知', '2024-11-09 19:37:39.366981', 0, 0, 0);
INSERT INTO `b_book` VALUES (166, '深度学习进阶', 'https://img9.doubanio.com/view/subject/s/public/s33738306.jpg', '[ 日］ 斋藤康毅', '陆宇杰', '《深度学习进阶：自然语言处理》是《深度学习入门：基于Python 的理论与实现》的续作，围绕自然语言处理和时序数据处理，介绍深度学习中的重要技术，包括word2vec、RNN、LSTM、GRU、seq2seq 和Attention 等。本书语言平实，结合大量示意图和Python代码，按照“提出问题”“思考解决问题的新方法”“加以改善”的流程，基于深度学习解决自然语言处理相关的各种问题，使读者在此过程中更深入地理解深度学习中的重要技术。 豆瓣评分9.4的畅销书《深度学习入门：基于Python的理论与实现》续作，带你快速直达自然语言处理领域！ 【本书特色】 ·简明易懂 本书内容精炼，聚焦深度学习视角下的自然语言处理，延续前作的行文风格，采用通俗的语言和大量直观的示意图详细讲解，帮助读者加深对深度学习技术的理解，轻松入门自然语言处理。 ·侧重原理 不依赖外... 《深度学习进阶：自然语言处理》是《深度学习入门：基于Python 的理论与实现》的续作，围绕自然语言处理和时序数据处理，介绍深度学习中的重要技术，包括word2vec、RNN、LSTM、GRU、seq2seq 和Attention 等。本书语言平实，结合大量示意图和Python代码，按照“提出问题”“思考解决问题的新方法”“加以改善”的流程，基于深度学习解决自然语言处理相关的各种问题，使读者在此过程中更深入地理解深度学习中的重要技术。 豆瓣评分9.4的畅销书《深度学习入门：基于Python的理论与实现》续作，带你快速直达自然语言处理领域！ 【本书特色】 ·简明易懂 本书内容精炼，聚焦深度学习视角下的自然语言处理，延续前作的行文风格，采用通俗的语言和大量直观的示意图详细讲解，帮助读者加深对深度学习技术的理解，轻松入门自然语言处理。 ·侧重原理 不依赖外部库，使用Python 3从零开始创建深度学习程序，通过亲自创建程序并运行，读者可透彻掌握word2vec、RNN、LSTM、GRU、seq2seq和Attention等技术背后的运行原理。 ·学习曲线平缓 按照“文字介绍→代码实现→分析结果→发现问题→进行改善”的流程，逐步深入，读者只需具备基础的神经网络和Python知识，即可轻松读懂。', '人民邮电出版社', 400, '99.00', '9787115547644', '2020-10-14', '2024-11-09 19:37:41.186247', '0', 99, '9.5', '平装', 0, 4, 'ゼロから作るDeep Learning2―自然言語処理編', '2024-11-09 19:37:41.188240', 0, 0, 0);
INSERT INTO `b_book` VALUES (167, '深度学习入门4', 'https://img3.doubanio.com/view/subject/s/public/s34926793.jpg', '[日]斋藤康毅', '郑明智', '本书前半部分介绍强化学习的重要思想和基础知识，后半部分介绍如何将深度学习应用于强化学习，遴选讲解了深度强化学习的最新技术。全书从最适合入门的多臂老虎机问题切入，依次介绍了定义一般强化学习问题的马尔可夫决策过程、用于寻找最佳答案的贝尔曼方程，以及解决贝尔曼方程的动态规划法、蒙特卡洛方法和TD方法。随后，神经网络和Q学习、DQN、策略梯度法等几章则分别讨论了深度学习在强化学习领域的应用。本书延续“鱼书”系列的风格，搭配丰富的图、表、代码示例，加上轻松、简明的讲解，让人循序渐进地理解强化学习中各种方法之间的关系，于不知不觉中登堂入室。 编辑推荐 沿袭“鱼书”系列风格，提供实际代码，边实践边学习，无须依赖外部库，从零开始实现支撑强化学习的基础技术。 本书有什么特点? ●把握潮流中的变与不变 在快速发展变化的深度学习领域，有变化的事物，有不变的事物。有些事物会... 本书前半部分介绍强化学习的重要思想和基础知识，后半部分介绍如何将深度学习应用于强化学习，遴选讲解了深度强化学习的最新技术。全书从最适合入门的多臂老虎机问题切入，依次介绍了定义一般强化学习问题的马尔可夫决策过程、用于寻找最佳答案的贝尔曼方程，以及解决贝尔曼方程的动态规划法、蒙特卡洛方法和TD方法。随后，神经网络和Q学习、DQN、策略梯度法等几章则分别讨论了深度学习在强化学习领域的应用。本书延续“鱼书”系列的风格，搭配丰富的图、表、代码示例，加上轻松、简明的讲解，让人循序渐进地理解强化学习中各种方法之间的关系，于不知不觉中登堂入室。 编辑推荐 沿袭“鱼书”系列风格，提供实际代码，边实践边学习，无须依赖外部库，从零开始实现支撑强化学习的基础技术。 本书有什么特点? ●把握潮流中的变与不变 在快速发展变化的深度学习领域，有变化的事物，有不变的事物。有些事物会随潮流而消逝，有些则会被传承下去。本书从马尔可夫决策过程、贝尔曼方程、蒙特卡洛方法、时间差分法等强化学习基础方法，自然而然地过渡到神经网络和深度学习，从前沿视角为读者遴选出最值得关注的强化学习理论和方法。 ●内容丰富，讲解简明易懂 作为超高人气“鱼书”系列第四部作品，本书延续了这一系列的写作和讲解风格，搭配丰富的图、表、代码示例，加上轻松、简明的讲解，能够让人非常信服地理解强化学习中各种方法之间的关系，于不知不觉中登堂入室。 ●原理与实践并重 本书旨在确保读者能够牢固掌握强化学习的独特理论，奉行“只有做出来才能真正理解”的理念，将这一主题的每个构成要素都从“理论”和“实践”两个方面进行详尽解释，并鼓励读者动手尝试。与仅通过数学公式解释理论的图书不同，读者将通过实际运行本书代码获得许多令人惊叹的领悟。', '人民邮电出版社', 332, '109.8', '9787115649171', '2024-08-13', '2024-11-09 19:37:42.547561', '0', 99, '9.7', '平装', 0, 4, 'ゼロから作るDeep Learning ❹-強化学習編', '2024-11-09 19:37:42.549584', 0, 0, 0);
INSERT INTO `b_book` VALUES (168, '深入理解计算机系统（原书第2版）', 'https://img9.doubanio.com/view/subject/s/public/s4510534.jpg', '[美] Randal E.Bryant', '龚奕利', '本书从程序员的视角详细阐述计算机系统的本质概念，并展示这些概念如何实实在在地影响应用程序的正确性、性能和实用性。全书共12章，主要内容包括信息的表示和处理、程序的机器级表示、处理器体系结构、优化程序性能、存储器层次结构、链接、异常控制流、虚拟存储器、系统级I/O、网络编程、并发编程等。书中提供大量的例子和练习，并给出部分答案，有助于读者加深对正文所述概念和知识的理解。 本书的最大优点是为程序员描述计算机系统的实现细节，帮助其在大脑中构造一个层次型的计算机系统，从最底层的数据在内存中的表示到流水线指令的构成，到虚拟存储器，到编译系统，到动态加载库，到最后的用户态应用。通过掌握程序是如何映射到系统上，以及程序是如何执行的，读者能够更好地理解程序的行为为什么是这样的，以及效率低下是如何造成的。 本书适合那些想要写出更快、更可靠程序的程序员阅读，也适合作为高... 本书从程序员的视角详细阐述计算机系统的本质概念，并展示这些概念如何实实在在地影响应用程序的正确性、性能和实用性。全书共12章，主要内容包括信息的表示和处理、程序的机器级表示、处理器体系结构、优化程序性能、存储器层次结构、链接、异常控制流、虚拟存储器、系统级I/O、网络编程、并发编程等。书中提供大量的例子和练习，并给出部分答案，有助于读者加深对正文所述概念和知识的理解。 本书的最大优点是为程序员描述计算机系统的实现细节，帮助其在大脑中构造一个层次型的计算机系统，从最底层的数据在内存中的表示到流水线指令的构成，到虚拟存储器，到编译系统，到动态加载库，到最后的用户态应用。通过掌握程序是如何映射到系统上，以及程序是如何执行的，读者能够更好地理解程序的行为为什么是这样的，以及效率低下是如何造成的。 本书适合那些想要写出更快、更可靠程序的程序员阅读，也适合作为高等院校计算机及相关专业本科生、研究生的教材。', '机械工业出版社', 702, '99.00', '9787111321330', '2011-01-01', '2024-11-09 19:37:44.486196', '0', 99, '9.7', '平装', 0, 4, 'Computer Systems: A Programmer\'s Perspective', '2024-11-09 19:37:44.488190', 0, 0, 0);
INSERT INTO `b_book` VALUES (169, '深入理解Linux网络： 修炼底层内功，掌握高性能原理', 'https://img9.doubanio.com/view/subject/s/public/s34237505.jpg', '张彦飞', '未知', '《深入理解Linux网络： 修炼底层内功，掌握高性能原理》通过先抛出一些开发、运维等技术人员在工作中经常遇见的问题，激发读者的思考。从这些问题出发，深入地对网络底层实现原理进行拆解，带领读者看清楚问题的核心，理解其背后的技术本质，提高大家的技术功力。例如网络包是如何被接收和发送的？阻塞到底在内部是如何发生的？epoll的底层工作原理又是啥？TCP连接在底层上是如何支持和实现的？书中对这些内容都有深度的阐述。本书旨在通过带领读者修炼底层内功，进而帮助大家深度掌握网络高性能原理。', '电子工业出版社', 336, '118', '9787121434105', '2022-06-01', '2024-11-09 19:37:46.177370', '0', 99, '8.4', '未知', 0, 4, '未知', '2024-11-09 19:37:46.179371', 0, 0, 0);
INSERT INTO `b_book` VALUES (170, '编码', 'https://img3.doubanio.com/view/subject/s/public/s25103742.jpg', 'Charles Petzold', '左飞', '本书是一本讲述计算机工作原理的书。不过，你千万不要因为“工作原理”之类的字眼就武断地认为，它是晦涩而难懂的。作者用丰富的想象和清晰的笔墨将看似繁杂的理论阐述得通俗易懂，你丝毫不会感到枯燥和生硬。更重要的是，你会因此而获得对计算机工作原理较深刻的理解。这种理解不是抽象层面上的，而是具有一定深度的，这种深度甚至不逊于“电气工程师”和“程序员”的理解。 不管你是计算机高手，还是对这个神奇的机器充满敬畏之心的菜鸟，都不妨翻阅一下本书，读一读大师的经典作品，必然会有收获。', '电子工业出版社', 420, '59.00', '9787121181184', '2012-10-01', '2024-11-09 19:37:48.142109', '0', 99, '9.2', '平装', 0, 4, 'Code: The Hidden Language of Computer Hardware and Software', '2024-11-09 19:37:48.143106', 0, 0, 0);
INSERT INTO `b_book` VALUES (171, 'UNIX环境高级编程（第3版）', 'https://img3.doubanio.com/view/subject/s/public/s28284137.jpg', '史蒂文斯 (W.Richard Stevens)', '戚正伟', '《UNIX环境高级编程（第3版）》是被誉为UNIX编程“圣经”的Advanced Programming in the UNIX Environment一书的第3版。在本书第2版出版后的8年中，UNIX行业发生了巨大的变化，特别是影响UNIX编程接口的有关标准变化很大。本书在保持前一版风格的基础上，根据最新的标准对内容进行了修订和增补，反映了最新的技术发展。书中除了介绍UNIX文件和目录、标准I/O库、系统数据文件和信息、进程环境、进程控制、进程关系、信号、线程、线程控制、守护进程、各种I/O、进程间通信、网络IPC、伪终端等方面的内容，还在此基础上介绍了众多应用实例，包括如何创建数据库函数库以及如何与网络打印机通信等。此外，还在附录中给出了函数原型和部分习题的答案。 《UNIX环境高级编程（第3版）》内容权威，概念清晰，阐述精辟，对于所有层次UNI... 《UNIX环境高级编程（第3版）》是被誉为UNIX编程“圣经”的Advanced Programming in the UNIX Environment一书的第3版。在本书第2版出版后的8年中，UNIX行业发生了巨大的变化，特别是影响UNIX编程接口的有关标准变化很大。本书在保持前一版风格的基础上，根据最新的标准对内容进行了修订和增补，反映了最新的技术发展。书中除了介绍UNIX文件和目录、标准I/O库、系统数据文件和信息、进程环境、进程控制、进程关系、信号、线程、线程控制、守护进程、各种I/O、进程间通信、网络IPC、伪终端等方面的内容，还在此基础上介绍了众多应用实例，包括如何创建数据库函数库以及如何与网络打印机通信等。此外，还在附录中给出了函数原型和部分习题的答案。 《UNIX环境高级编程（第3版）》内容权威，概念清晰，阐述精辟，对于所有层次UNIX/Linux程序员都是一本不可或缺的参考书。 适读人群 ：所有层次UNIX/Linux程序员 20多年来，严谨的C程序员都是依靠一本书来深入了解驱动UNIX和Linux内核的编程接口的实用知识的，这本书就是W. Richard Stevens所著的《UNIX高级环境编程》。现在，Stevens的同事Steve Rago彻底更新了这本经典著作。新的第3版支持当今领先的系统平台，反映了最新技术进展和最佳实践，并且符合最新的Single UNIX Specification第4版（SUSv4）。 Rago保留了使本书前版成为经典之作的精髓和方法。他在Stevens原著的基础上，从基础的文件、目录和进程讲起，并给诸如信号处理和终端I/O之类的先进技术保留较大的篇幅。他还深入讨论了线程和多线程编程、使用套接字接口驱动进程间通信（IPC）等方面的内容。 这一版涵盖了70多个最新版POSIX.1标准的新增接口，包括POSIX异步I/O、旋转锁、屏障（barrier）和POSIX信号量。此外，这一版删除了许多过时的接口，保留了一些广泛使用的接口。书中几乎所有实例都已经在目前最主流的4个平台上测试过，包括Solaris 10、Mac OS X 10.6.8（Darwin 10.8.0）、FressBSD 8.0、Ubuntu 12.04（基于Linux 3.2内核）。 与前两版一样，读者仍可以通过实例学习，这些实例包括了1万多行可下载的ISO C源代码，书中通过简明但完整的程序阐述了400多个系统调用和函数，清楚地说明它们的用法、参数和返回值。为了使读者能融会贯通，书中还提供了几个贯穿整章的案例，每个案例都根据现在的技术环境进行了全面更新。 《UNIX环境高级编程（第3版）》帮助了几代程序员写出强大、高性能、可靠的代码。第3版根据当今主流系统进行更新，更具实用价值。 精彩书评： 本书第1版连同Stevens所著的系列网络技术书籍，被公认为优秀的、匠心独具的名著，成为极其畅销的作品……总之，这是一本弥足珍贵的经典著作的更新版。 ——Dennis Ritchie，图灵奖得主，UNIX操作系统和C语言之父 对任何一个严谨的、专业的UNIX系统程序员而言，本书都是不可或缺的权威参考书。Rago更新和扩展了Stevens的经典著作，并保持了原书的风貌。书中利用清晰的实例演示了API的使用过程，还提到了许多在不同UNIX系统实现上编程时需要注意的陷阱，并指出如何使用相关的标准（如POSIX 1003.1 2004版和Single UNIX Specification第3版）来避免这些错误。 ——Andrew Josey， The Open Group标准部门主管，POSIX 1003.1标准工作组主席 绝对的UNIX编程经典之一。 ——Eric S. Raymond，《UNIX编程艺术》作者 Stephen Rago的更新版本对于使用众多UNIX及相关操作系统环境的广大专业用户来说是一个迟来的喜讯。这一版不仅删除了过时的接口，吸纳了较新的开发接口，还根据UNIX及类UNIX操作系统环境的几种主流实现发布的新版本全面更新了所有主题、实例和应用的背景。难能可贵的是，这一版本还保持了经典的第1版的风格和品位。 ——Mukesh Kacker，Pronto Networks公司联合创始人和前任CTO 本书对于任何在UNIX系统上编写程序的开发人员来说都是非常重要的参考书。当我想要了解或者重新回顾各种系统接口时，这本书是首选的求助工具。Stephen Rago成功地修订了本书，使其与新的操作系统（如GNU/Linux和苹果的OS X）相容，并保持了第1版易读和实用的特质。它将永远摆放在我桌上随手可及的位置。 ——Benjamin Kuperman博士，斯沃斯莫尔学院 这是每一位严谨的UNIX C程序员必备的书籍。它深入、全面、清晰的解释是无可匹敌的。 ——UniForum Monthly 从W. Richard Stevens的这本书中可以找到更多易于理解的、详尽的UNIX系统内部细节。这本书包含了大量实际的例子，对系统编程工作非常有益。 ——RS/Magazine', '人民邮电出版社', 812, '128.00', '9787115352118', '2014-06-01', '2024-11-09 19:37:50.503190', '0', 99, '9.7', '平装', 0, 4, 'Advanced Programming in the UNIX Environment, Third Edition', '2024-11-09 19:37:50.505182', 0, 0, 0);
INSERT INTO `b_book` VALUES (172, 'C程序设计语言', 'https://img9.doubanio.com/view/subject/s/public/s1106934.jpg', '（美）Brian W. Kernighan', '徐宝文', '在计算机发展的历史上，没有哪一种程序设计语言像C语言这样应用广泛。本书作者是C语言的设计者之一Dennis M. Ritchie和著名计算机科学家Brian W. Kernighan合著的一本介绍C语言的权威经典著作。我们现在见到的大量论述C语言程序设计的教材和专著均以此书为蓝本。 原著第1版中介绍的C语言成为后来广泛使用的C语言版本——标准C的基础。人们熟知的“hello,World\"程序就是由本书首次引入的，现在，这一程序已经成为众多程序设计语言入门的第一课。原著第2版根据1987年制定的ANSIC标准做了适当的修订．引入了最新的语言形式，并增加了新的示例，通过简洁的描述、典型的示例，作者全面、系统、准确地讲述了C语言的各个特性以及程序设计的基本方法。 对于计算机从业人员来说，本书是一本必读的程序设计语言方面的参考书。', '机械工业出版社', 258, '30.00', '9787111128069', '2004-01-01', '2024-11-09 19:37:52.901813', '0', 99, '9.4', '平装', 0, 4, 'The C Programming Language', '2024-11-09 19:37:52.903815', 0, 0, 0);
INSERT INTO `b_book` VALUES (173, '智慧的疆界', 'https://img1.doubanio.com/view/subject/s/public/s29923729.jpg', '周志明', '未知', '这是一部对人工智能充满敬畏之心的匠心之作，由《深入理解Java虚拟机》作者耗时一年完成，它将带你从奠基人物、历史事件、学术理论、研究成果、技术应用等5个维度全面读懂人工智能。 本书以时间为主线，用专业的知识、通俗的语言、巧妙的内容组织方式，详细讲解了人工智能这个学科的全貌、能解决什么问题、面临怎样的困难、尝试过哪些努力、取得过多少成绩、未来将向何方发展，尽可能消除人工智能的神秘感，把阳春白雪的人工智能从科学的殿堂推向公众面前。', '机械工业出版社', 413, '56.9', '9787111610496', '2018-01-01', '2024-11-09 19:37:54.792855', '0', 99, '9.2', '平装', 2, 4, '未知', '2024-11-09 19:37:54.794841', 0, 0, 0);
INSERT INTO `b_book` VALUES (174, '计算机程序的构造和解释(原书第2版)', 'https://img9.doubanio.com/view/subject/s/public/s1113106.jpg', '[美] Harold Abelson', '裘宗燕', '《计算机程序的构造和解释》成型于美国麻省理工学院（MIT）多年使用的一本教材，1984年出版，1996年修订为第二版。在过去的二十多年里，该书对于计算机科学的教育计划产生了深刻的影响。 在第二版中，大部分重要程序设计系统都重新修改并做过测试，包括各种解释器和编译器。作者根据其后十余年的教学实践，还对其他许多细节做了相应的修改。', '机械工业出版社', 473, '45.00', '9787111135104', '2004-02-01', '2024-11-09 19:37:57.996514', '0', 98, '9.5', '平装', 3, 4, 'Structure and Interpretation of Computer Programs', '2024-11-09 19:37:57.999474', 0, 1, 1);
INSERT INTO `b_book` VALUES (175, '编写可读代码的艺术', 'https://img2.doubanio.com/view/subject/s/public/s10328621.jpg', '[美] Dustin Boswell', '尹哲', '细节决定成败，思路清晰、言简意赅的代码让程序员一目了然；而格式凌乱、拖沓冗长的代码让程序员一头雾水。除了可以正确运行以外，优秀的代码必须具备良好的可读性，编写的代码要使其他人能在最短的时间内理解才行。本书旨在强调代码对人的友好性和可读性。 本书关注编码的细节，总结了很多提高代码可读性的小技巧，看似都微不足道，但是对于整个软件系统的开发而言，它们与宏观的架构决策、设计思想、指导原则同样重要。编码不仅仅只是一种技术，也是一门艺术，编写可读性高的代码尤其如此。如果你要成为一位优秀的程序员，要想开发出高质量的软件系统，必须从细处着手，做到内外兼修，本书将为你提供有效的指导。', '机械工业出版社', 240, '59.00', '9787111385448', '2012-07-10', '2024-11-09 19:38:02.302794', '0', 99, '8.7', '平装', 1, 4, 'The Art of Readable Code: Simple and Practical Techniques for Writing Better Code', '2024-11-09 19:38:02.303791', 0, 0, 0);

-- ----------------------------
-- Table structure for b_book_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_book_collect`;
CREATE TABLE `b_book_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_collect_book_id_user_id_4d5fbd66_uniq`(`book_id`, `user_id`) USING BTREE,
  INDEX `b_book_collect_user_id_3d47677a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_book_collect_user_id_3d47677a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_collect
-- ----------------------------
INSERT INTO `b_book_collect` VALUES (29, 1, 28);
INSERT INTO `b_book_collect` VALUES (28, 19, 28);
INSERT INTO `b_book_collect` VALUES (31, 23, 28);
INSERT INTO `b_book_collect` VALUES (26, 50, 27);
INSERT INTO `b_book_collect` VALUES (30, 174, 28);

-- ----------------------------
-- Table structure for b_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_book_tag`;
CREATE TABLE `b_book_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_tag_book_id_tag_id_830acd4d_uniq`(`book_id`, `tag_id`) USING BTREE,
  INDEX `b_book_tag_tag_id_6f01bb2b_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_book_tag_book_id_ae8baebe_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_book_tag_tag_id_6f01bb2b_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_book_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_book_wish`;
CREATE TABLE `b_book_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_book_wish_book_id_user_id_5712007e_uniq`(`book_id`, `user_id`) USING BTREE,
  INDEX `b_book_wish_user_id_2113e71c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_book_wish_book_id_79314cb6_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_book_wish_user_id_2113e71c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_book_wish
-- ----------------------------
INSERT INTO `b_book_wish` VALUES (12, 1, 28);
INSERT INTO `b_book_wish` VALUES (1, 19, 27);
INSERT INTO `b_book_wish` VALUES (11, 19, 28);
INSERT INTO `b_book_wish` VALUES (14, 23, 28);
INSERT INTO `b_book_wish` VALUES (13, 174, 28);

-- ----------------------------
-- Table structure for b_borrow
-- ----------------------------
DROP TABLE IF EXISTS `b_borrow`;
CREATE TABLE `b_borrow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `borrow_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `return_time` datetime(6) NULL DEFAULT NULL,
  `expect_time` datetime(6) NULL DEFAULT NULL,
  `delayed` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_borrow_book_id_e01aec1d_fk_b_book_id`(`book_id`) USING BTREE,
  INDEX `b_borrow_user_id_a9d86b1d_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_borrow_book_id_e01aec1d_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_borrow_user_id_a9d86b1d_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_borrow
-- ----------------------------
INSERT INTO `b_borrow` VALUES (61, '2', '2024-11-08 22:20:35.385270', 1, 27, NULL, '2025-01-07 22:20:35.381186', 0);
INSERT INTO `b_borrow` VALUES (62, '2', '2024-11-08 22:41:39.685469', 19, 27, NULL, '2025-01-07 22:41:39.681490', 0);
INSERT INTO `b_borrow` VALUES (63, '1', '2024-11-10 15:58:52.964952', 174, 28, NULL, '2025-01-09 15:58:52.960964', 0);
INSERT INTO `b_borrow` VALUES (64, '1', '2024-11-10 16:04:18.851200', 23, 28, NULL, '2025-01-09 16:04:18.848199', 0);

-- ----------------------------
-- Table structure for b_borrow_log
-- ----------------------------
DROP TABLE IF EXISTS `b_borrow_log`;
CREATE TABLE `b_borrow_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_borrow_log_book_id_1406c733_fk_b_book_id`(`book_id`) USING BTREE,
  INDEX `b_borrow_log_user_id_c4182f45_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_borrow_log_book_id_1406c733_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_borrow_log_user_id_c4182f45_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_borrow_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (2, '小说', '2023-01-03 20:29:03.379531', -1);
INSERT INTO `b_classification` VALUES (3, '娱乐', '2023-01-09 22:24:27.689763', -1);
INSERT INTO `b_classification` VALUES (4, '计算机', '2023-01-09 22:24:34.338028', -1);
INSERT INTO `b_classification` VALUES (6, '财经', '2023-01-15 19:44:08.212906', -1);
INSERT INTO `b_classification` VALUES (29, '文学', '2023-01-16 22:05:29.623095', -1);
INSERT INTO `b_classification` VALUES (38, '科技', '2023-02-27 21:26:43.415114', -1);
INSERT INTO `b_classification` VALUES (39, '历史', '2023-02-27 21:26:55.346282', -1);
INSERT INTO `b_classification` VALUES (40, '教育', '2023-02-27 21:27:05.039525', -1);
INSERT INTO `b_classification` VALUES (41, '生活', '2023-02-27 21:39:07.692345', -1);
INSERT INTO `b_classification` VALUES (42, '漫画', '2024-11-08 22:49:30.625855', -1);
INSERT INTO `b_classification` VALUES (43, '经济学', '2024-11-09 00:17:11.301935', -1);
INSERT INTO `b_classification` VALUES (44, '动漫', '2024-11-09 00:41:03.943397', -1);

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `book_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_book_id_4a166c01_fk_b_book_id`(`book_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_book_id_4a166c01_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (39, '不错', '2024-11-09 00:50:35.628696', 0, 64, 27);
INSERT INTO `b_comment` VALUES (40, '666666666', '2024-11-09 00:50:51.820536', 3, 1, 27);
INSERT INTO `b_comment` VALUES (41, '666', '2024-11-10 15:59:01.430817', 2, 174, 28);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/end/overview/count', 'GET', '参数错误', '2023-01-27 10:14:19.681863');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/end/overview/count', 'GET', '参数错误', '2023-01-27 10:20:58.595624');
INSERT INTO `b_error_log` VALUES (3, '127.0.0.1', '/myapp/end/overview/count', 'GET', '参数错误', '2023-01-27 10:21:00.525755');
INSERT INTO `b_error_log` VALUES (4, '127.0.0.1', '/myapp/end/overview/count', 'GET', '参数错误', '2023-01-27 10:21:04.982522');
INSERT INTO `b_error_log` VALUES (5, '127.0.0.1', '/myapp/index/address/create', 'POST', '参数错误', '2023-02-22 22:03:13.868242');
INSERT INTO `b_error_log` VALUES (6, '127.0.0.1', '/myapp/index/book/detail', 'GET', '对象不存在', '2024-11-08 22:41:16.568368');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, '127.0.0.1', '2024-11-08 21:57:17.197775', '1453641651@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (2, '127.0.0.1', '2024-11-08 21:57:24.187834', 'admin123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (3, '127.0.0.1', '2024-11-08 22:44:43.074318', 'admin123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (4, '127.0.0.1', '2024-11-09 15:17:51.511719', '1453641651@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (5, '127.0.0.1', '2024-11-10 09:47:37.725355', '123@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (6, '127.0.0.1', '2024-11-10 10:18:05.216142', '1453641651@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (7, '127.0.0.1', '2024-11-10 10:38:14.701712', '123@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0');
INSERT INTO `b_login_log` VALUES (8, '127.0.0.1', '2024-11-10 15:58:33.977755', '123@qq.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36');
INSERT INTO `b_login_log` VALUES (9, '127.0.0.1', '2024-11-10 15:59:35.748045', 'admin123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (6, '我梦想的是一种更隐秘的默认，或更柔软的回应。对我而言，生命宛如一匹马，须先尽力驯服调教，然后配合它一起律动', '2023-02-16 21:38:33.626216', '新书推荐');
INSERT INTO `b_notice` VALUES (7, '法语小说家、诗人、翻译家、文学批评家，16岁即以长诗《幻想园》崭露头角，1951年出版的《哈德良回忆录》同时得到费米纳奖和法兰西学院大奖', '2023-02-16 21:39:14.476040', '新书推荐');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1937 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-11-08 21:55:28.601429', '/myapp/admin/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-11-08 21:55:29.319266', '/myapp/admin/overview/count', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-11-08 21:55:34.962185', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-11-08 21:55:36.895429', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-11-08 21:55:40.895479', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-11-08 21:55:42.702129', '/myapp/admin/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-11-08 21:55:43.413593', '/myapp/admin/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-11-08 21:55:43.882860', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-11-08 21:55:44.806881', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-11-08 21:55:46.749147', '/myapp/admin/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-11-08 21:55:47.530196', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-11-08 21:55:50.998025', '/myapp/admin/banner/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-11-08 21:55:51.447530', '/myapp/admin/ad/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-11-08 21:55:51.843862', '/myapp/admin/notice/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-11-08 21:55:52.510182', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-11-08 21:55:52.922086', '/myapp/admin/banner/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-11-08 21:55:58.595029', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-11-08 21:55:58.597021', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-11-08 21:55:58.631096', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-11-08 21:55:58.633088', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-11-08 21:56:01.231191', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-11-08 21:56:01.233184', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-11-08 21:56:01.235479', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-11-08 21:56:01.250428', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-11-08 21:56:06.202560', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-11-08 21:56:06.204179', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-11-08 21:56:06.205171', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-11-08 21:56:06.220166', '/myapp/index/borrow/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-11-08 21:56:08.722581', '/myapp/index/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-11-08 21:56:09.312652', '/myapp/index/borrow/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-11-08 21:56:11.373601', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-11-08 21:56:11.979267', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-11-08 21:56:12.499584', '/myapp/index/comment/listMyComments', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-11-08 21:56:12.899990', '/myapp/index/address/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-11-08 21:56:13.327081', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-11-08 21:56:13.814579', '/myapp/index/address/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-11-08 21:56:14.444388', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-11-08 21:56:15.248705', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-11-08 21:56:15.259364', '/upload/avatar/1731073131762.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-11-08 21:56:30.422631', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-11-08 21:56:30.964081', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-11-08 21:56:32.533889', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-11-08 21:56:35.057364', '/myapp/index/user/update', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-11-08 21:56:47.528283', '/myapp/index/user/login', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-11-08 21:56:49.377893', '/myapp/index/user/login', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-11-08 21:56:49.781157', '/myapp/index/user/login', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-11-08 21:56:49.969815', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-11-08 21:56:50.123911', '/myapp/index/user/login', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-11-08 21:56:50.314939', '/myapp/index/user/login', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-11-08 21:56:50.500263', '/myapp/index/user/login', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-11-08 21:56:51.420253', '/myapp/index/user/login', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-11-08 21:56:51.604286', '/myapp/index/user/login', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-11-08 21:56:53.731401', '/myapp/index/user/login', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-11-08 21:56:53.905111', '/myapp/index/user/login', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-11-08 21:56:54.074692', '/myapp/index/user/login', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-11-08 21:56:54.257135', '/myapp/index/user/login', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-11-08 21:57:00.424604', '/myapp/admin/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-11-08 21:57:01.278226', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-11-08 21:57:02.469097', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-11-08 21:57:02.896142', '/myapp/admin/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-11-08 21:57:03.590476', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-11-08 21:57:10.031662', '/myapp/admin/user/update', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-11-08 21:57:10.052591', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-11-08 21:57:11.863863', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-11-08 21:57:12.806369', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-11-08 21:57:15.311773', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-11-08 21:57:16.166349', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-11-08 21:57:17.201763', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-11-08 21:57:17.246387', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-11-08 21:57:17.247384', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-11-08 21:57:17.248382', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-11-08 21:57:17.249378', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-11-08 21:57:18.478985', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-11-08 21:57:18.481975', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-11-08 21:57:18.482971', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-11-08 21:57:18.484966', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-11-08 21:57:18.761579', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-11-08 21:57:18.763573', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-11-08 21:57:18.764570', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-11-08 21:57:18.764570', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-11-08 21:57:18.975809', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-11-08 21:57:18.977804', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-11-08 21:57:18.981789', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-11-08 21:57:18.982787', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-11-08 21:57:19.894767', '/myapp/admin/overview/count', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-11-08 21:57:24.191828', '/myapp/admin/adminLogin', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-11-08 21:57:24.368766', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-11-08 21:57:29.464856', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-11-08 21:57:31.487030', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-11-08 21:57:34.919911', '/myapp/admin/overview/count', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-11-08 22:13:05.110366', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-11-08 22:13:05.113355', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-11-08 22:13:05.117342', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-11-08 22:13:05.132858', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-11-08 22:13:08.613428', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-11-08 22:13:08.618404', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-11-08 22:13:08.616410', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-11-08 22:13:08.643327', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-11-08 22:13:09.795723', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-11-08 22:13:09.797727', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-11-08 22:13:09.800259', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-11-08 22:13:09.827168', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-11-08 22:13:11.435288', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-11-08 22:13:11.437280', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-11-08 22:13:11.439275', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-11-08 22:13:11.463205', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-11-08 22:13:12.825337', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-11-08 22:13:12.827324', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-11-08 22:13:12.830313', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-11-08 22:13:12.854242', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-11-08 22:13:14.469399', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-11-08 22:13:14.468400', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-11-08 22:13:14.472394', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-11-08 22:13:14.498308', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-11-08 22:13:15.641707', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-11-08 22:13:15.643699', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-11-08 22:13:15.645692', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-11-08 22:13:15.673608', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-11-08 22:13:16.438252', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-11-08 22:13:16.442240', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-11-08 22:13:16.441250', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-11-08 22:13:16.469881', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-11-08 22:13:17.529646', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-11-08 22:13:17.530641', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-11-08 22:13:17.534629', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-11-08 22:13:17.562535', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-11-08 22:13:18.658857', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-11-08 22:13:18.659854', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-11-08 22:13:18.661846', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-11-08 22:13:18.692742', '/myapp/index/book/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-11-08 22:13:36.055436', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-11-08 22:13:36.068393', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-11-08 22:13:36.070386', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-11-08 22:13:36.099290', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-11-08 22:13:37.617415', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-11-08 22:13:37.618412', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-11-08 22:13:37.621405', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-11-08 22:13:37.643910', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-11-08 22:13:44.969638', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-11-08 22:13:48.335514', '/myapp/index/book/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-11-08 22:13:49.676903', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-11-08 22:13:52.538000', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-11-08 22:13:53.800502', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-11-08 22:13:53.801499', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-11-08 22:13:53.830975', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-11-08 22:13:53.836955', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-11-08 22:14:06.374402', '/myapp/index/book/addWishUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-11-08 22:14:06.433408', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-11-08 22:14:14.125105', '/myapp/index/book/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-11-08 22:14:16.190972', '/myapp/index/book/addWishUser', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-11-08 22:14:17.282252', '/myapp/index/book/addWishUser', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-11-08 22:14:17.614974', '/myapp/index/book/addWishUser', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-11-08 22:14:17.791292', '/myapp/index/book/addWishUser', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-11-08 22:14:17.960424', '/myapp/index/book/addWishUser', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-11-08 22:14:18.643548', '/myapp/index/book/addCollectUser', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-11-08 22:14:18.881552', '/myapp/index/book/addCollectUser', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-11-08 22:14:19.069206', '/myapp/index/book/addCollectUser', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-11-08 22:14:21.004831', '/myapp/index/book/addCollectUser', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-11-08 22:14:21.366307', '/myapp/index/book/addCollectUser', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-11-08 22:14:23.117421', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-11-08 22:14:23.123412', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-11-08 22:14:23.131374', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-11-08 22:14:23.134365', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-11-08 22:14:23.138351', '/upload/avatar/1731073131762.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-11-08 22:14:24.186709', '/myapp/index/comment/listMyComments', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-11-08 22:14:24.788292', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-11-08 22:14:25.272733', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-11-08 22:14:25.752105', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-11-08 22:14:26.197408', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-11-08 22:14:27.043461', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-11-08 22:14:27.480343', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-11-08 22:14:28.100193', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-11-08 22:14:29.379733', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-11-08 22:14:30.342021', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-11-08 22:14:31.006169', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-11-08 22:14:31.443708', '/myapp/index/borrow/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-11-08 22:14:32.715753', '/myapp/index/book/getWishBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-11-08 22:14:32.753626', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-11-08 22:14:35.036572', '/myapp/index/book/getCollectBookList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-11-08 22:14:35.074446', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-11-08 22:14:36.236675', '/myapp/index/book/removeCollectUser', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-11-08 22:14:36.248635', '/myapp/index/book/getCollectBookList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-11-08 22:14:43.517661', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-11-08 22:14:43.523654', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-11-08 22:14:43.527275', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-11-08 22:14:43.556766', '/myapp/index/tag/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-11-08 22:14:44.755997', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-11-08 22:14:44.756995', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-11-08 22:14:44.759984', '/myapp/index/borrow/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-11-08 22:14:44.765965', '/myapp/index/borrow/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-11-08 22:14:47.393816', '/myapp/index/book/getWishBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-11-08 22:14:47.444215', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-11-08 22:14:48.165065', '/myapp/index/book/removeWishUser', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-11-08 22:14:48.181020', '/myapp/index/book/getWishBookList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-11-08 22:14:51.514104', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-11-08 22:14:51.527663', '/myapp/index/book/getWishBookList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-11-08 22:14:51.528661', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-11-08 22:14:51.537630', '/myapp/index/book/getWishBookList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-11-08 22:14:55.893036', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-11-08 22:14:55.894031', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-11-08 22:14:55.897020', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-11-08 22:14:55.932453', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-11-08 22:14:56.689956', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-11-08 22:14:56.691942', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-11-08 22:14:56.693943', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-11-08 22:14:56.728396', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-11-08 22:14:57.413091', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-11-08 22:14:58.371960', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-11-08 22:14:59.355362', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-11-08 22:15:00.822618', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-11-08 22:15:01.455990', '/myapp/index/book/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-11-08 22:15:03.069940', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-11-08 22:15:03.071933', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-11-08 22:15:03.073927', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-11-08 22:15:03.112942', '/myapp/index/tag/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-11-08 22:15:06.498478', '/myapp/index/book/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-11-08 22:15:06.506376', '/myapp/index/book/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-11-08 22:15:06.528899', '/myapp/index/book/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-11-08 22:15:06.534870', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-11-08 22:16:26.045875', '/myapp/index/book/addWishUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-11-08 22:16:26.086127', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34903230.jpg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-11-08 22:16:45.668262', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-11-08 22:16:45.670256', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-11-08 22:16:45.706306', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-11-08 22:16:45.713282', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-11-08 22:16:50.802309', '/myapp/index/book/addWishUser', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-11-08 22:16:50.845166', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34903230.jpg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-11-08 22:16:57.032084', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-11-08 22:16:57.037069', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-11-08 22:16:57.075708', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-11-08 22:16:57.080692', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-11-08 22:16:59.108379', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-11-08 22:16:59.117356', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-11-08 22:16:59.144162', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-11-08 22:16:59.149936', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-11-08 22:18:25.267928', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-11-08 22:18:25.270916', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-11-08 22:18:25.272910', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-11-08 22:18:25.302420', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-11-08 22:18:26.721673', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-11-08 22:18:26.747135', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-11-08 22:18:26.748132', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-11-08 22:18:26.770059', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-11-08 22:18:28.521328', '/myapp/index/book/addWishUser', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-11-08 22:18:28.560850', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-11-08 22:18:33.213856', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-11-08 22:18:33.223823', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-11-08 22:18:33.249737', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-11-08 22:18:33.259704', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-11-08 22:19:52.733194', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-11-08 22:19:52.739950', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-11-08 22:19:52.741942', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-11-08 22:19:52.747922', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-11-08 22:19:52.762872', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-11-08 22:19:52.768925', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-11-08 22:19:52.784798', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-11-08 22:19:52.792773', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-11-08 22:19:53.195129', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-11-08 22:19:53.204129', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-11-08 22:19:53.227305', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-11-08 22:19:53.228298', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-11-08 22:19:54.146604', '/myapp/index/book/addWishUser', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-11-08 22:19:55.242140', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-11-08 22:19:55.246127', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-11-08 22:19:55.271664', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-11-08 22:19:55.273655', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-11-08 22:19:55.834196', '/myapp/index/book/addCollectUser', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-11-08 22:19:55.859899', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-11-08 22:19:56.909151', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-11-08 22:19:56.940042', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-11-08 22:19:56.961979', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-11-08 22:19:56.962965', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-11-08 22:20:06.614004', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-11-08 22:20:06.617991', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-11-08 22:20:06.620990', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-11-08 22:20:06.621977', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-11-08 22:20:06.644489', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-11-08 22:20:06.655019', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-11-08 22:20:06.658009', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-11-08 22:20:06.689903', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-11-08 22:20:07.130490', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-11-08 22:20:07.153422', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-11-08 22:20:07.154428', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-11-08 22:20:07.173947', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-11-08 22:20:07.422005', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-11-08 22:20:07.425991', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-11-08 22:20:07.451252', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-11-08 22:20:07.471178', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-11-08 22:20:07.624112', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-11-08 22:20:07.627110', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-11-08 22:20:07.651295', '/myapp/index/notice/list_api', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-11-08 22:20:07.653276', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-11-08 22:20:08.067769', '/myapp/index/book/addCollectUser', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-11-08 22:20:31.019465', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-11-08 22:20:31.027444', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-11-08 22:20:31.054348', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-11-08 22:20:31.059331', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-11-08 22:20:35.398913', '/myapp/index/borrow/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-11-08 22:20:35.417854', '/myapp/index/book/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-11-08 22:20:39.833962', '/myapp/index/book/addWishUser', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-11-08 22:20:40.298290', '/myapp/index/book/addCollectUser', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-11-08 22:20:44.527686', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-11-08 22:20:44.541649', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-11-08 22:20:44.545626', '/myapp/index/borrow/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-11-08 22:20:44.547619', '/myapp/index/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-11-08 22:20:44.605311', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-11-08 22:22:17.413074', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-11-08 22:22:17.422045', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-11-08 22:22:17.424038', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-11-08 22:22:17.427028', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-11-08 22:22:17.474499', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-11-08 22:22:18.124528', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-11-08 22:22:18.137059', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-11-08 22:22:18.143039', '/myapp/index/borrow/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-11-08 22:22:18.142043', '/myapp/index/borrow/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-11-08 22:22:18.304579', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-11-08 22:22:18.310566', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-11-08 22:22:18.315543', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-11-08 22:22:18.317549', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-11-08 22:22:18.342205', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-11-08 22:22:18.489812', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-11-08 22:22:18.513373', '/myapp/index/borrow/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-11-08 22:22:18.517360', '/myapp/index/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-11-08 22:22:18.516363', '/myapp/index/borrow/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-11-08 22:22:18.563517', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-11-08 22:24:33.702614', '/myapp/index/borrow/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-11-08 22:24:34.629890', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-11-08 22:24:34.644366', '/myapp/index/book/getWishBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-11-08 22:24:34.654334', '/myapp/index/book/getWishBookList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-11-08 22:24:34.654334', '/myapp/index/book/getWishBookList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-11-08 22:24:36.800849', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-11-08 22:24:36.802842', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-11-08 22:24:36.840289', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-11-08 22:24:36.846269', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-11-08 22:24:38.479212', '/myapp/index/book/addWishUser', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-11-08 22:24:38.834770', '/myapp/index/book/addCollectUser', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-11-08 22:24:40.976675', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-11-08 22:24:40.983651', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-11-08 22:24:40.986343', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-11-08 22:24:40.991327', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-11-08 22:40:08.558285', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-11-08 22:40:08.567254', '/myapp/index/borrow/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-11-08 22:40:08.572237', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-11-08 22:40:08.577221', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-11-08 22:40:13.143978', '/myapp/index/borrow/return_book', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-11-08 22:40:14.784509', '/myapp/index/borrow/return_book', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-11-08 22:40:17.036412', '/myapp/index/borrow/return_book', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-11-08 22:40:44.061965', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-11-08 22:40:44.080903', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-11-08 22:40:44.087879', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-11-08 22:40:44.090869', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-11-08 22:40:44.627088', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-11-08 22:40:44.643034', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-11-08 22:40:44.648017', '/myapp/index/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-11-08 22:40:44.663964', '/myapp/index/borrow/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-11-08 22:40:45.150956', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-11-08 22:40:45.154943', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-11-08 22:40:45.157944', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-11-08 22:40:45.176872', '/myapp/index/borrow/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-11-08 22:40:45.361750', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-11-08 22:40:45.367721', '/myapp/index/borrow/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-11-08 22:40:45.370712', '/myapp/index/borrow/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-11-08 22:40:45.373276', '/myapp/index/borrow/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-11-08 22:40:46.138206', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-11-08 22:40:46.144181', '/myapp/index/borrow/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-11-08 22:40:46.147172', '/myapp/index/borrow/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-11-08 22:40:46.151159', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-11-08 22:40:46.353875', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-11-08 22:40:46.371815', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-11-08 22:40:46.377795', '/myapp/index/borrow/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-11-08 22:40:46.378792', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-11-08 22:41:12.345104', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-11-08 22:41:12.350088', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-11-08 22:41:12.359057', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-11-08 22:41:12.360054', '/myapp/index/borrow/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-11-08 22:41:16.569365', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-11-08 22:41:16.573351', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-11-08 22:41:16.599038', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-11-08 22:41:18.606840', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-11-08 22:41:18.634288', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-11-08 22:41:18.635283', '/myapp/index/borrow/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-11-08 22:41:18.638273', '/myapp/index/borrow/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-11-08 22:41:21.529520', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-11-08 22:41:21.530509', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-11-08 22:41:21.534496', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-11-08 22:41:21.566928', '/myapp/index/book/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-11-08 22:41:22.428857', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-11-08 22:41:22.430849', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-11-08 22:41:22.434836', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-11-08 22:41:22.475266', '/myapp/index/book/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-11-08 22:41:23.033972', '/myapp/index/book/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-11-08 22:41:23.041129', '/myapp/index/book/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-11-08 22:41:23.067051', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-11-08 22:41:23.070028', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-11-08 22:41:25.384416', '/myapp/index/book/addWishUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-11-08 22:41:26.522251', '/myapp/index/book/addCollectUser', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-11-08 22:41:27.606235', '/myapp/index/book/addCollectUser', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-11-08 22:41:28.693230', '/myapp/index/book/addWishUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-11-08 22:41:29.113521', '/myapp/index/book/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-11-08 22:41:29.443936', '/myapp/index/book/addWishUser', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-11-08 22:41:34.716641', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-11-08 22:41:34.718635', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-11-08 22:41:34.720628', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-11-08 22:41:34.754514', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-11-08 22:41:35.546727', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-11-08 22:41:35.573637', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-11-08 22:41:35.588166', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-11-08 22:41:35.603117', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-11-08 22:41:36.204199', '/myapp/index/book/addWishUser', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-11-08 22:41:36.760286', '/myapp/index/book/addCollectUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-11-08 22:41:39.693449', '/myapp/index/borrow/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-11-08 22:41:39.712017', '/myapp/index/book/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-11-08 22:41:41.911330', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-11-08 22:41:41.924287', '/myapp/index/borrow/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-11-08 22:41:41.929270', '/myapp/index/borrow/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-11-08 22:41:41.934254', '/myapp/index/borrow/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-11-08 22:42:02.135004', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-11-08 22:42:02.148958', '/myapp/index/borrow/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-11-08 22:42:02.157928', '/myapp/index/borrow/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-11-08 22:42:02.158934', '/myapp/index/borrow/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-11-08 22:42:02.983239', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-11-08 22:42:02.997193', '/myapp/index/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-11-08 22:42:03.006716', '/myapp/index/borrow/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-11-08 22:42:03.010704', '/myapp/index/borrow/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-11-08 22:42:11.915396', '/myapp/index/borrow/return_book', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-11-08 22:42:11.950280', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-11-08 22:42:13.190946', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-11-08 22:42:13.732747', '/myapp/index/borrow/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-11-08 22:42:21.479725', '/myapp/index/comment/listMyComments', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-11-08 22:42:22.579654', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-11-08 22:42:23.022288', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-11-08 22:42:23.644234', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-11-08 22:42:26.391296', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-11-08 22:42:26.393290', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-11-08 22:42:26.396279', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-11-08 22:42:26.428739', '/myapp/index/book/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-11-08 22:42:39.640437', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-11-08 22:42:40.176165', '/myapp/index/book/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-11-08 22:42:41.135846', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-11-08 22:42:42.146952', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-11-08 22:42:45.756218', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-11-08 22:43:02.020788', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-11-08 22:43:18.469292', '/myapp/index/book/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-11-08 22:43:18.478262', '/myapp/index/book/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-11-08 22:43:18.497205', '/myapp/index/book/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-11-08 22:43:18.503184', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-11-08 22:43:41.427710', '/myapp/admin/overview/count', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-11-08 22:43:42.514729', '/myapp/admin/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-11-08 22:43:43.971311', '/myapp/admin/book/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-11-08 22:43:51.095442', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-11-08 22:43:51.097431', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-11-08 22:43:51.121915', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-11-08 22:43:55.752705', '/upload/https:/img3.doubanio.com/view/subject/s/public/s34921093.jpg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-11-08 22:43:55.754693', '/upload/https:/img3.doubanio.com/view/subject/s/public/s34921093.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-11-08 22:43:55.777615', '/upload/https:/img3.doubanio.com/view/subject/s/public/s34921093.jpg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-11-08 22:44:39.672348', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-11-08 22:44:39.673345', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-11-08 22:44:39.674334', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-11-08 22:44:39.712750', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-11-08 22:44:43.078305', '/myapp/admin/adminLogin', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-11-08 22:44:43.278280', '/myapp/admin/overview/count', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-11-08 22:44:44.192004', '/myapp/admin/book/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-11-08 22:44:45.335183', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-11-08 22:44:45.334185', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-11-08 22:44:45.374073', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-11-08 22:44:52.647655', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-11-08 22:44:53.546107', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-11-08 22:44:54.074085', '/myapp/admin/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-11-08 22:44:54.684874', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-11-08 22:45:03.714882', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-11-08 22:45:04.384417', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-11-08 22:45:06.819404', '/myapp/admin/banner/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-11-08 22:45:07.285533', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-11-08 22:45:07.760329', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-11-08 22:45:09.276669', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-11-08 22:45:10.892316', '/myapp/admin/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-11-08 22:45:35.165407', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34893600.jpg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-11-08 22:45:35.166401', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34893600.jpg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-11-08 22:45:35.190324', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34893600.jpg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-11-08 22:45:43.829570', '/myapp/admin/overview/count', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-11-08 22:45:45.687005', '/myapp/admin/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-11-08 22:45:46.317193', '/myapp/admin/book/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-11-08 22:45:46.988825', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-11-08 22:45:49.008276', '/myapp/admin/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-11-08 22:45:52.630442', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-11-08 22:45:52.632435', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-11-08 22:45:52.655080', '/upload/https:/img1.doubanio.com/view/subject/s/public/s34273798.jpg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-11-08 22:46:43.032196', '/myapp/admin/book/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-11-08 22:46:43.344049', '/myapp/admin/book/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-11-08 22:46:44.174239', '/myapp/admin/book/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-11-08 22:46:45.792176', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-11-08 22:46:45.793173', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-11-08 22:46:53.595848', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-11-08 22:46:53.596835', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-11-08 22:47:06.607185', '/myapp/admin/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-11-08 22:47:16.748858', '/myapp/admin/book/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-11-08 22:47:32.706431', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-11-08 22:47:33.398996', '/myapp/admin/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-11-08 22:47:33.840323', '/myapp/admin/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-11-08 22:47:34.564976', '/myapp/admin/overview/count', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-11-08 22:47:43.041455', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-11-08 22:47:43.043448', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-11-08 22:47:43.057808', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-11-08 22:47:43.089867', '/myapp/index/book/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-11-08 22:47:53.286109', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-11-08 22:47:54.203679', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-11-08 22:47:54.687054', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-11-08 22:47:55.062976', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-11-08 22:47:55.417133', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-11-08 22:47:55.723587', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-11-08 22:47:56.085497', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-11-08 22:47:56.454186', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-11-08 22:47:56.761186', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-11-08 22:47:57.150560', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-11-08 22:47:58.756901', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-11-08 22:47:59.071876', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-11-08 22:48:00.143997', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-11-08 22:48:00.663984', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-11-08 22:48:01.695564', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-11-08 22:48:02.194205', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-11-08 22:48:03.550712', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-11-08 22:48:04.558929', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-11-08 23:14:03.004627', '/myapp/admin/book/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-11-08 23:14:06.342652', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-11-08 23:14:06.344644', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-11-08 23:14:09.853124', '/myapp/admin/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-11-08 23:14:14.126635', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-11-08 23:14:14.738478', '/myapp/admin/book/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-11-08 23:14:17.150162', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-11-08 23:14:17.152163', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-11-08 23:14:33.261078', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-11-08 23:14:33.271630', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-11-08 23:14:33.273631', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-11-08 23:14:33.316612', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-11-08 23:14:40.259669', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-11-08 23:14:40.269637', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-11-08 23:14:40.307101', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-11-08 23:14:40.326617', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-11-08 23:14:50.140939', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-11-08 23:14:50.148659', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-11-08 23:14:50.178559', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-11-08 23:14:50.214223', '/myapp/index/notice/list_api', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-11-08 23:14:58.893960', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-11-08 23:14:58.926424', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-11-08 23:14:58.951340', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-11-08 23:14:58.953333', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-11-08 23:25:58.052048', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-11-08 23:25:58.054052', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-11-08 23:25:58.056035', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-11-08 23:25:58.098485', '/myapp/index/notice/list_api', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-11-08 23:26:01.890365', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-11-08 23:26:01.899947', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-11-08 23:26:01.933827', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-11-08 23:26:01.967714', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-11-08 23:26:08.987592', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-11-08 23:26:08.995573', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-11-08 23:26:09.019644', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-11-08 23:26:09.057140', '/myapp/index/notice/list_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-11-08 23:26:09.286041', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-11-08 23:26:09.294993', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-11-08 23:26:09.320519', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-11-08 23:26:09.357398', '/myapp/index/notice/list_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-11-08 23:26:11.812777', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-11-08 23:26:11.817761', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-11-08 23:26:11.844410', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-11-08 23:26:11.880297', '/myapp/index/notice/list_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-11-08 23:26:12.411756', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-11-08 23:26:12.417736', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-11-08 23:26:12.415745', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-11-08 23:26:12.485029', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-11-08 23:26:13.523676', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-11-08 23:26:13.533643', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-11-08 23:26:13.548593', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-11-08 23:26:13.598426', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-11-08 23:27:12.836479', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-11-08 23:27:12.855416', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-11-08 23:27:12.879336', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-11-08 23:27:12.911911', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-11-08 23:27:19.974538', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-11-08 23:27:21.397914', '/myapp/admin/borrow/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-11-08 23:27:22.349624', '/myapp/admin/book/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-11-08 23:27:24.592439', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-11-08 23:27:24.590446', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-11-08 23:27:28.560781', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-11-08 23:27:28.562764', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-11-08 23:27:30.576942', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-11-08 23:27:31.446727', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-11-08 23:27:32.039223', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-11-08 23:28:00.893468', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-11-08 23:28:07.602201', '/myapp/admin/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-11-08 23:28:08.672378', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-11-08 23:28:11.972368', '/myapp/admin/banner/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-11-08 23:28:12.746733', '/myapp/admin/ad/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-11-08 23:28:21.600369', '/myapp/admin/notice/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-11-08 23:28:26.625132', '/myapp/admin/loginLog/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-11-08 23:28:27.498049', '/myapp/admin/opLog/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-11-08 23:28:27.811481', '/myapp/admin/errorLog/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-11-08 23:28:32.940225', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1011');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-11-08 23:28:35.685559', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-11-08 23:28:37.152426', '/myapp/admin/ad/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-11-08 23:28:43.693920', '/myapp/admin/banner/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-11-08 23:28:45.435455', '/myapp/admin/book/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-11-08 23:28:56.278208', '/myapp/admin/banner/create', 'POST', NULL, '142');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-11-08 23:28:56.295862', '/myapp/admin/banner/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-11-08 23:28:56.328357', '/upload/banner/1731079734598.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-11-08 23:28:59.707955', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-11-08 23:28:59.714932', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-11-08 23:28:59.742839', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-11-08 23:28:59.780729', '/myapp/index/notice/list_api', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-11-08 23:29:05.658018', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-11-08 23:29:05.676963', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-11-08 23:29:05.677959', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-11-08 23:29:05.736355', '/myapp/index/book/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-11-08 23:29:20.899124', '/myapp/index/book/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-11-08 23:29:21.721271', '/myapp/index/book/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-11-08 23:29:25.303849', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-11-08 23:29:26.005848', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-11-08 23:29:27.961529', '/myapp/index/book/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-11-08 23:29:29.394159', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-11-08 23:29:30.282268', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-11-08 23:29:31.198682', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-11-08 23:29:32.704440', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-11-08 23:29:33.695627', '/myapp/index/book/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-11-08 23:29:34.317439', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-11-08 23:29:38.895323', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-11-08 23:29:38.899311', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-11-08 23:29:38.942755', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-11-08 23:29:38.956708', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-11-08 23:29:56.845689', '/myapp/index/book/addWishUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-11-08 23:29:57.332693', '/myapp/index/book/addCollectUser', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-11-08 23:30:00.589899', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-11-08 23:30:00.609436', '/myapp/index/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-11-08 23:30:00.608439', '/myapp/index/borrow/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-11-08 23:30:00.615415', '/myapp/index/borrow/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-11-08 23:30:04.309111', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-11-08 23:30:05.149280', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-11-08 23:30:09.097356', '/myapp/index/book/getCollectBookList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-11-08 23:30:09.358598', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '244');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-11-08 23:30:09.373547', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '243');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-11-08 23:30:09.374544', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '242');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-11-08 23:30:14.539585', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-11-08 23:30:14.622709', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-11-08 23:30:14.622709', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-11-08 23:30:22.417783', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-11-08 23:30:22.524756', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-11-08 23:30:22.524756', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-11-08 23:30:22.524756', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-11-08 23:30:23.881197', '/myapp/index/book/getWishBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-11-08 23:30:23.946172', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-11-08 23:30:23.947160', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-11-08 23:30:24.667073', '/myapp/index/book/getCollectBookList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-11-08 23:30:24.752904', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-11-08 23:30:24.753900', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-11-08 23:30:24.772837', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-11-08 23:31:09.949770', '/myapp/index/book/getCollectBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-11-08 23:31:10.473676', '/myapp/index/book/getWishBookList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-11-08 23:31:10.485634', '/myapp/index/book/getWishBookList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-11-08 23:31:10.486631', '/myapp/index/book/getWishBookList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-11-08 23:31:10.497165', '/myapp/index/book/getCollectBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-11-08 23:31:12.438062', '/myapp/index/book/getWishBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-11-08 23:31:12.495100', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-11-08 23:31:12.495100', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-11-08 23:31:13.213736', '/myapp/index/book/getCollectBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-11-08 23:31:14.424553', '/myapp/index/book/getWishBookList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-11-08 23:31:14.439069', '/myapp/index/book/getWishBookList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-11-08 23:31:14.441062', '/myapp/index/book/getWishBookList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-11-08 23:31:14.453731', '/myapp/index/book/getCollectBookList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-11-08 23:31:15.950792', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-11-08 23:31:16.036643', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-11-08 23:31:16.036643', '/upload/https:/img9.doubanio.com/view/subject/s/public/s34367076.jpg', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-11-08 23:31:34.704148', '/myapp/index/book/getWishBookList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-11-08 23:31:43.356077', '/myapp/index/book/getWishBookList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-11-08 23:31:43.368701', '/myapp/index/book/getWishBookList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-11-08 23:31:43.374694', '/myapp/index/book/getWishBookList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-11-08 23:31:43.381657', '/myapp/index/book/getWishBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-11-08 23:31:44.742023', '/myapp/index/book/getCollectBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-11-08 23:31:45.938976', '/myapp/index/book/getWishBookList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-11-08 23:31:47.947020', '/myapp/index/book/getCollectBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-11-08 23:31:49.005440', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-11-08 23:31:50.583777', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-11-08 23:31:50.616272', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-11-08 23:31:50.646794', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-11-08 23:31:50.685244', '/myapp/index/notice/list_api', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-11-08 23:31:56.509776', '/myapp/index/comment/listMyComments', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-11-08 23:31:56.950453', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-11-08 23:31:58.270714', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-11-08 23:31:59.559772', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-11-08 23:31:59.592654', '/upload/avatar/1731073131762.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-11-08 23:32:01.348786', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-11-08 23:32:02.870480', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-11-08 23:32:03.516513', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-11-08 23:32:04.840691', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-11-08 23:32:05.499998', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-11-08 23:32:06.767648', '/myapp/index/comment/listMyComments', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-11-08 23:32:07.376387', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-11-08 23:32:09.515462', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-11-08 23:32:10.952500', '/myapp/index/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-11-08 23:32:14.861961', '/myapp/index/book/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-11-08 23:32:14.871497', '/myapp/index/book/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-11-08 23:32:14.897407', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-11-08 23:32:14.925436', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-11-08 23:45:43.478278', '/myapp/admin/book/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-11-08 23:45:46.491774', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-11-08 23:45:46.495326', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-11-08 23:45:46.553713', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-11-08 23:45:46.558697', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-11-08 23:45:50.103828', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-11-08 23:45:50.107822', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-11-08 23:45:50.108819', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-11-08 23:45:50.173166', '/myapp/index/book/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-11-08 23:45:51.024088', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-11-08 23:45:51.028083', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-11-08 23:45:51.076457', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-11-08 23:45:51.080451', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-11-08 23:45:58.660081', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-11-08 23:45:58.662083', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-11-08 23:45:58.674596', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-11-08 23:45:58.724997', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-11-08 23:45:59.601642', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-11-08 23:45:59.607620', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-11-08 23:45:59.642042', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-11-08 23:45:59.667684', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-11-09 00:22:24.977229', '/myapp/admin/banner/delete', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-11-09 00:22:25.012716', '/myapp/admin/banner/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-11-09 00:22:25.790274', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-11-09 00:22:28.616441', '/myapp/admin/ad/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-11-09 00:22:28.647329', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-11-09 00:22:29.575139', '/myapp/admin/notice/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-11-09 00:22:30.993868', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-11-09 00:22:31.588169', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-11-09 00:22:35.567739', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-11-09 00:22:42.817275', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-11-09 00:22:48.441136', '/myapp/admin/book/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-11-09 00:22:55.236493', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-11-09 00:22:55.237489', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-11-09 00:23:28.081088', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-11-09 00:23:28.097614', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-11-09 00:23:28.097614', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-11-09 00:23:28.162067', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-11-09 00:23:29.157907', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-11-09 00:23:29.159901', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-11-09 00:23:29.160897', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-11-09 00:23:29.223908', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-11-09 00:23:34.839008', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-11-09 00:23:35.275645', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-11-09 00:23:36.072469', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-11-09 00:23:36.890646', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-11-09 00:23:39.552206', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-11-09 00:23:42.163733', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-11-09 00:23:52.682221', '/myapp/admin/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-11-09 00:23:53.640538', '/myapp/admin/book/list', 'GET', NULL, '219');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-11-09 00:23:54.155841', '/myapp/admin/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-11-09 00:23:56.886754', '/myapp/admin/book/list', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-11-09 00:23:58.230308', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-11-09 00:23:58.232292', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-11-09 00:24:41.044942', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-11-09 00:24:41.045938', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-11-09 00:24:44.785414', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-11-09 00:24:50.112876', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-11-09 00:24:52.846295', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-11-09 00:24:53.921061', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-11-09 00:25:00.068890', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-11-09 00:25:00.070883', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-11-09 00:25:00.073873', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-11-09 00:25:00.170451', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-11-09 00:25:02.733319', '/myapp/index/book/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-11-09 00:25:02.746276', '/myapp/index/book/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-11-09 00:25:02.791882', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-11-09 00:25:02.827330', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-11-09 00:28:48.515117', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-11-09 00:28:48.519096', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-11-09 00:28:48.551768', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-11-09 00:28:48.591635', '/myapp/index/notice/list_api', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-11-09 00:34:34.985824', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-11-09 00:34:35.003690', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-11-09 00:34:35.016647', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-11-09 00:34:35.060507', '/myapp/index/notice/list_api', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-11-09 00:34:56.833403', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-11-09 00:34:56.837399', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-11-09 00:34:56.863303', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-11-09 00:34:56.914955', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-11-09 00:35:08.701975', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-11-09 00:35:08.704965', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-11-09 00:35:08.718918', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-11-09 00:35:08.794666', '/myapp/index/book/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-11-09 00:35:09.699197', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-11-09 00:35:09.709791', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-11-09 00:35:09.734700', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-11-09 00:35:09.800048', '/myapp/index/notice/list_api', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-11-09 00:35:10.635548', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-11-09 00:35:10.637535', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-11-09 00:35:10.639528', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-11-09 00:35:10.729913', '/myapp/index/book/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-11-09 00:35:11.307999', '/myapp/index/book/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-11-09 00:35:11.313970', '/myapp/index/book/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-11-09 00:35:11.350846', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-11-09 00:35:11.389715', '/myapp/index/notice/list_api', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-11-09 00:35:22.589484', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-11-09 00:35:22.591469', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-11-09 00:35:22.593470', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-11-09 00:35:22.686566', '/myapp/index/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-11-09 00:35:24.342628', '/myapp/index/book/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-11-09 00:35:24.355583', '/myapp/index/book/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-11-09 00:35:24.382493', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-11-09 00:35:24.442132', '/myapp/index/notice/list_api', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-11-09 00:35:32.511202', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-11-09 00:35:32.513195', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-11-09 00:35:32.515189', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-11-09 00:35:32.598917', '/myapp/index/book/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-11-09 00:35:41.557662', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-11-09 00:35:41.566632', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-11-09 00:35:41.596136', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-11-09 00:35:41.658485', '/myapp/index/notice/list_api', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-11-09 00:35:54.846079', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-11-09 00:35:54.848071', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-11-09 00:35:54.849069', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-11-09 00:35:54.939444', '/myapp/index/book/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-11-09 00:36:01.411992', '/myapp/index/book/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-11-09 00:36:01.417972', '/myapp/index/book/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-11-09 00:36:01.453435', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-11-09 00:36:01.517792', '/myapp/index/notice/list_api', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-11-09 00:36:05.769912', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-11-09 00:36:05.772903', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-11-09 00:36:05.780876', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-11-09 00:36:05.866431', '/myapp/index/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-11-09 00:36:08.983114', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-11-09 00:36:08.993081', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-11-09 00:36:09.024558', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-11-09 00:36:09.086351', '/myapp/index/notice/list_api', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-11-09 00:36:11.870977', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-11-09 00:36:11.871983', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-11-09 00:36:11.874964', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-11-09 00:36:11.956873', '/myapp/index/book/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-11-09 00:36:13.222893', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-11-09 00:36:13.221904', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-11-09 00:36:13.248814', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-11-09 00:36:13.309525', '/myapp/index/notice/list_api', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-11-09 00:37:41.755415', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-11-09 00:37:41.758398', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-11-09 00:37:41.760399', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-11-09 00:37:41.846650', '/myapp/index/book/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-11-09 00:37:50.680535', '/myapp/index/book/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-11-09 00:37:52.205353', '/myapp/index/book/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-11-09 00:38:01.890583', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-11-09 00:38:01.901139', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-11-09 00:38:01.928633', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-11-09 00:38:01.999395', '/myapp/index/notice/list_api', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-11-09 00:38:16.503203', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-11-09 00:38:16.504759', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-11-09 00:38:16.507757', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-11-09 00:38:16.587985', '/myapp/index/book/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-11-09 00:38:35.939915', '/myapp/index/book/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-11-09 00:38:45.465177', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-11-09 00:38:48.220394', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-11-09 00:38:48.235335', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-11-09 00:38:48.263787', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-11-09 00:38:48.334553', '/myapp/index/notice/list_api', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-11-09 00:41:44.561980', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-11-09 00:41:44.577919', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-11-09 00:41:44.620998', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-11-09 00:41:44.681251', '/myapp/index/notice/list_api', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-11-09 00:49:59.035038', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-11-09 00:49:59.038028', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-11-09 00:49:59.058967', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-11-09 00:49:59.155857', '/myapp/index/book/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-11-09 00:50:06.143343', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-11-09 00:50:09.124767', '/myapp/index/book/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-11-09 00:50:09.868751', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-11-09 00:50:11.149235', '/myapp/index/book/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-11-09 00:50:11.693975', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-11-09 00:50:12.523871', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-11-09 00:50:14.029793', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-11-09 00:50:15.501245', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-11-09 00:50:16.018106', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-11-09 00:50:17.720307', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-11-09 00:50:18.599810', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-11-09 00:50:19.439945', '/myapp/index/book/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-11-09 00:50:21.129774', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-11-09 00:50:22.375819', '/myapp/index/book/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-11-09 00:50:23.879121', '/myapp/index/book/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-11-09 00:50:27.758806', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-11-09 00:50:29.128606', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-11-09 00:50:29.130600', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-11-09 00:50:29.169873', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-11-09 00:50:29.232216', '/myapp/index/notice/list_api', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-11-09 00:50:35.635284', '/myapp/index/comment/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-11-09 00:50:35.649237', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-11-09 00:50:37.751550', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-11-09 00:50:37.753543', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-11-09 00:50:37.782464', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-11-09 00:50:37.858804', '/myapp/index/notice/list_api', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-11-09 00:50:44.114395', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-11-09 00:50:44.113406', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-11-09 00:50:44.116396', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-11-09 00:50:44.218145', '/myapp/index/book/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-11-09 00:50:47.667950', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-11-09 00:50:47.673930', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-11-09 00:50:47.717354', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-11-09 00:50:47.782147', '/myapp/index/notice/list_api', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-11-09 00:50:51.827513', '/myapp/index/comment/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-11-09 00:50:51.842462', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-11-09 00:50:53.317402', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-11-09 00:50:53.323383', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-11-09 00:50:53.350292', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-11-09 00:50:53.419716', '/myapp/index/notice/list_api', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-11-09 00:51:00.997302', '/myapp/index/comment/like', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-11-09 00:51:01.011895', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-11-09 00:51:02.361019', '/myapp/index/comment/like', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-11-09 00:51:02.377963', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-11-09 00:51:03.077826', '/myapp/index/comment/like', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-11-09 00:51:03.091787', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-11-09 00:51:03.685061', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-11-09 00:51:03.691261', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-11-09 00:51:03.712946', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-11-09 00:51:03.789765', '/myapp/index/notice/list_api', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-11-09 00:51:34.893354', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-11-09 00:51:34.896336', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-11-09 00:51:34.898340', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-11-09 00:51:35.020710', '/myapp/index/book/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-11-09 00:51:38.575288', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-11-09 00:51:38.580272', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-11-09 00:51:38.609767', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-11-09 00:51:38.679261', '/myapp/index/notice/list_api', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-11-09 00:51:41.527664', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-11-09 00:51:41.525672', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-11-09 00:51:41.529659', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-11-09 00:51:41.633408', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-11-09 00:51:42.998813', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-11-09 00:51:43.775245', '/myapp/index/book/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-11-09 00:51:44.536360', '/myapp/index/book/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-11-09 00:51:45.204483', '/myapp/index/book/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-11-09 00:51:45.867250', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-11-09 00:51:46.894310', '/myapp/index/book/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-11-09 00:51:47.681875', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-11-09 00:53:31.451744', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-11-09 00:53:31.955383', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-11-09 00:53:32.652268', '/myapp/index/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-11-09 00:53:33.191220', '/myapp/index/book/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-11-09 00:53:33.581308', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-11-09 00:57:50.962005', '/myapp/index/book/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-11-09 00:57:52.273794', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-11-09 00:57:53.715043', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-11-09 00:57:53.720027', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-11-09 00:57:53.729003', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-11-09 00:57:53.796319', '/myapp/index/book/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-11-09 01:02:58.727259', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-11-09 01:02:58.728245', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-11-09 01:02:58.739218', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-11-09 01:02:58.740214', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-11-09 01:02:58.749175', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-11-09 01:02:58.750171', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-11-09 01:02:58.784067', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-11-09 01:02:58.785055', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-11-09 01:02:58.795033', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-11-09 01:02:58.795033', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-11-09 01:02:58.808606', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-11-09 01:02:58.825541', '/myapp/index/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-11-09 01:02:58.829528', '/myapp/index/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-11-09 01:02:58.904707', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-11-09 01:02:58.988017', '/myapp/index/book/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-11-09 01:02:59.076906', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-11-09 01:02:59.170129', '/myapp/index/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-11-09 01:02:59.265062', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-11-09 01:03:05.721375', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-11-09 01:03:05.724364', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-11-09 01:03:05.744300', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-11-09 01:03:05.806914', '/myapp/index/tag/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-11-09 01:03:06.351027', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-11-09 01:03:11.782162', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-11-09 01:03:11.786148', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-11-09 01:03:11.790135', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-11-09 01:03:11.891877', '/myapp/index/book/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-11-09 01:03:17.517018', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-11-09 01:03:17.527981', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-11-09 01:03:17.531968', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-11-09 01:03:17.638679', '/myapp/index/tag/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-11-09 01:03:22.075942', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-11-09 01:03:41.772978', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-11-09 01:03:41.773974', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-11-09 01:03:41.788923', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-11-09 01:03:41.788923', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-11-09 01:03:41.799887', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-11-09 01:03:41.800884', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-11-09 01:03:41.812941', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-11-09 01:03:41.813945', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-11-09 01:03:41.824908', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-11-09 01:03:41.825905', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-11-09 01:03:41.835865', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-11-09 01:03:41.838024', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-11-09 01:03:41.877871', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-11-09 01:03:41.963416', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-11-09 01:03:42.052493', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-11-09 01:03:42.133723', '/myapp/index/book/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-11-09 01:03:42.209857', '/myapp/index/book/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-11-09 01:03:42.290790', '/myapp/index/book/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-11-09 01:04:53.601995', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-11-09 01:04:53.603547', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-11-09 01:04:53.619489', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-11-09 01:04:53.622481', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-11-09 01:04:53.632445', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-11-09 01:04:53.634438', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-11-09 01:04:53.695830', '/myapp/index/classification/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-11-09 01:04:53.767597', '/myapp/index/book/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-11-09 01:04:53.865324', '/myapp/index/book/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-11-09 01:11:59.801595', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-11-09 01:11:59.822524', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-11-09 01:11:59.837132', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-11-09 01:11:59.893207', '/myapp/index/notice/list_api', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-11-09 01:16:10.170994', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-11-09 01:16:10.173984', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-11-09 01:16:10.175978', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-11-09 01:16:10.250314', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-11-09 01:16:10.817048', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-11-09 01:16:10.822031', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-11-09 01:16:10.827014', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-11-09 01:16:10.903381', '/myapp/index/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-11-09 01:16:11.602523', '/myapp/index/book/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-11-09 01:16:13.187439', '/myapp/index/book/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-11-09 01:16:14.547394', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-11-09 01:16:14.557971', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-11-09 01:16:14.587871', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-11-09 01:16:14.641313', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-11-09 01:16:45.262207', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-11-09 01:16:45.264189', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-11-09 01:16:45.267179', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-11-09 01:16:45.372966', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-11-09 01:16:45.754027', '/myapp/index/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-11-09 01:16:49.629607', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-11-09 01:16:54.574309', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-11-09 01:16:54.593242', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-11-09 01:16:54.626698', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-11-09 01:16:54.696132', '/myapp/index/notice/list_api', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-11-09 01:16:56.716449', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-11-09 01:16:56.733384', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-11-09 01:16:56.766274', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-11-09 01:16:56.852389', '/myapp/index/notice/list_api', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-11-09 01:17:00.590258', '/myapp/index/book/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-11-09 01:17:02.775770', '/myapp/index/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-11-09 08:39:23.345272', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-11-09 08:39:23.346269', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-11-09 08:39:23.349266', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-11-09 08:39:23.428992', '/myapp/index/book/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-11-09 08:39:25.888613', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-11-09 08:39:27.709852', '/myapp/index/book/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-11-09 08:39:31.201608', '/myapp/index/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-11-09 08:39:32.341122', '/myapp/index/book/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-11-09 08:39:57.958389', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-11-09 08:39:57.974400', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-11-09 08:39:58.031140', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-11-09 08:39:58.084858', '/myapp/index/notice/list_api', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-11-09 08:40:33.806270', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-11-09 08:40:33.807267', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-11-09 08:40:33.809267', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-11-09 08:40:33.921893', '/myapp/index/book/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-11-09 08:40:35.601907', '/myapp/index/book/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-11-09 08:40:38.863986', '/myapp/index/book/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-11-09 08:40:39.831304', '/myapp/index/book/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-11-09 08:40:40.368807', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-11-09 08:40:41.280931', '/myapp/index/book/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-11-09 08:40:41.746522', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-11-09 08:40:43.539069', '/myapp/index/book/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-11-09 08:40:44.531860', '/myapp/index/book/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-11-09 08:40:46.787514', '/myapp/index/book/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-11-09 08:40:47.842678', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-11-09 08:40:48.424841', '/myapp/index/book/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-11-09 08:40:48.966429', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-11-09 08:40:49.598278', '/myapp/index/book/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-11-09 08:40:50.006416', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-11-09 08:40:50.664728', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-11-09 08:40:51.617169', '/myapp/index/book/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-11-09 08:40:55.110707', '/myapp/index/book/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-11-09 08:40:55.726638', '/myapp/index/book/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-11-09 08:40:56.132281', '/myapp/index/book/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-11-09 08:40:56.797047', '/myapp/index/book/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-11-09 08:40:57.242810', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-11-09 08:40:57.854674', '/myapp/index/book/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-11-09 08:40:58.249689', '/myapp/index/book/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-11-09 08:57:33.651618', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-11-09 08:57:33.655603', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-11-09 08:57:33.655603', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-11-09 08:57:33.726378', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-11-09 08:57:36.901024', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-11-09 08:57:36.904007', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-11-09 08:57:36.945867', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-11-09 08:57:36.979821', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-11-09 10:05:50.402409', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-11-09 10:05:50.403404', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-11-09 10:05:50.407391', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-11-09 10:05:50.477166', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-11-09 10:05:53.518676', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-11-09 10:05:53.528641', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-11-09 10:05:53.558533', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-11-09 10:05:53.597414', '/myapp/index/notice/list_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-11-09 10:05:59.942583', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-11-09 10:05:59.943587', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-11-09 10:05:59.945572', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-11-09 10:06:00.014351', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-11-09 10:06:06.218749', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-11-09 10:06:22.484566', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-11-09 10:06:22.495532', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-11-09 10:06:22.531969', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-11-09 10:06:22.573839', '/myapp/index/notice/list_api', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-11-09 10:06:27.865619', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-11-09 10:06:27.866616', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-11-09 10:06:27.867620', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-11-09 10:06:27.933400', '/myapp/index/book/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-11-09 10:06:29.522360', '/myapp/index/book/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-11-09 10:07:11.660401', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-11-09 10:07:11.661396', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-11-09 10:07:11.662385', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-11-09 10:07:11.724187', '/myapp/index/book/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-11-09 10:07:16.078252', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-11-09 10:07:17.811128', '/myapp/index/book/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-11-09 10:07:18.810300', '/myapp/index/book/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-11-09 10:07:19.345358', '/myapp/index/book/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-11-09 10:07:20.379011', '/myapp/index/book/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-11-09 10:07:23.412053', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-11-09 10:07:23.733499', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-11-09 10:07:24.281206', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-11-09 10:07:25.253123', '/myapp/index/book/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-11-09 10:07:25.606520', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-11-09 10:07:26.252385', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-11-09 10:07:26.941463', '/myapp/index/book/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-11-09 10:07:27.833485', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-11-09 10:07:30.698284', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-11-09 10:07:31.108918', '/myapp/index/book/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-11-09 10:07:31.797283', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-11-09 10:07:32.411872', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-11-09 10:07:33.060081', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-11-09 10:07:33.450457', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-11-09 10:07:34.209304', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-11-09 10:07:34.581879', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-11-09 10:07:35.376628', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-11-09 10:07:35.809174', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-11-09 10:07:36.312923', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-11-09 10:07:36.891888', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-11-09 10:07:37.363341', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-11-09 10:07:37.676310', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-11-09 10:07:38.040387', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-11-09 10:07:38.398950', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-11-09 10:07:38.791370', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-11-09 10:07:39.175704', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-11-09 10:07:46.428873', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-11-09 10:07:52.429993', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-11-09 10:07:53.689808', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-11-09 10:07:56.070972', '/myapp/index/book/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-11-09 14:28:28.893373', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-11-09 14:28:28.897360', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-11-09 14:28:28.898364', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-11-09 14:28:28.966137', '/myapp/index/book/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-11-09 14:28:30.098180', '/myapp/index/book/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-11-09 14:28:33.604452', '/myapp/index/book/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-11-09 14:28:35.410467', '/myapp/index/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-11-09 14:28:55.323426', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-11-09 14:28:55.325420', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-11-09 14:28:55.327422', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-11-09 14:28:55.402735', '/myapp/index/book/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-11-09 14:28:56.013595', '/myapp/index/book/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-11-09 14:35:40.231636', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-11-09 14:35:40.246586', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-11-09 14:35:40.248579', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-11-09 14:35:40.321343', '/myapp/index/book/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-11-09 14:48:08.720632', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-11-09 14:48:08.733595', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-11-09 14:48:08.739567', '/myapp/index/borrow/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-11-09 14:48:08.740571', '/myapp/index/borrow/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-11-09 14:48:10.595301', '/myapp/index/user/info', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-11-09 14:48:12.180981', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-11-09 14:48:15.753026', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-11-09 14:48:16.259257', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-11-09 14:48:16.774671', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-11-09 14:48:17.310247', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-11-09 14:48:18.163931', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-11-09 14:48:19.306508', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-11-09 14:48:21.121648', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-11-09 14:51:28.482183', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-11-09 14:51:28.483180', '/myapp/index/borrow/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-11-09 14:51:28.491747', '/myapp/index/borrow/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-11-09 14:51:28.493752', '/myapp/index/borrow/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-11-09 14:51:53.115642', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-11-09 14:51:53.116638', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-11-09 14:51:53.127594', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-11-09 14:51:53.128591', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-11-09 14:51:53.137561', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-11-09 14:51:53.140552', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-11-09 14:51:53.192377', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-11-09 14:51:53.286072', '/myapp/index/book/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-11-09 14:51:53.358427', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-11-09 14:53:53.657410', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-11-09 14:53:53.659403', '/myapp/index/book/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-11-09 14:53:53.671363', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-11-09 14:53:53.673356', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-11-09 14:53:53.681337', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-11-09 14:53:53.682339', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-11-09 14:53:53.734160', '/myapp/index/classification/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-11-09 14:53:53.830847', '/myapp/index/book/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-11-09 14:53:53.922531', '/myapp/index/book/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-11-09 14:54:36.752149', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-11-09 14:54:36.753145', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-11-09 14:54:36.755138', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-11-09 14:54:36.825901', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-11-09 14:54:38.097128', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-11-09 14:54:38.665129', '/myapp/index/book/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-11-09 14:54:52.763999', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-11-09 14:54:52.768983', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-11-09 14:54:52.771972', '/myapp/index/book/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-11-09 14:54:52.855702', '/myapp/index/book/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-11-09 14:54:54.201648', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-11-09 14:55:52.058051', '/myapp/index/book/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-11-09 14:55:59.279981', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-11-09 14:56:01.090766', '/myapp/index/book/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-11-09 14:56:01.957013', '/myapp/index/book/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-11-09 14:56:02.524921', '/myapp/index/book/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-11-09 14:56:02.934524', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-11-09 15:03:37.942732', '/myapp/index/borrow/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-11-09 15:06:55.957603', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-11-09 15:06:55.959596', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-11-09 15:10:10.203099', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-11-09 15:10:10.205090', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-11-09 15:10:10.207084', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-11-09 15:10:12.424345', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-11-09 15:10:12.425340', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-11-09 15:10:12.426338', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-11-09 15:10:25.726918', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-11-09 15:10:25.728910', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-11-09 15:10:25.788711', '/myapp/index/book/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-11-09 15:11:44.320642', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-11-09 15:11:44.320642', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-11-09 15:11:44.403902', '/myapp/index/book/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-11-09 15:11:47.506706', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-11-09 15:11:47.507713', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-11-09 15:11:47.578475', '/myapp/index/book/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-11-09 15:11:54.469088', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-11-09 15:11:54.470085', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-11-09 15:11:54.544180', '/myapp/index/book/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-11-09 15:11:55.359698', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-11-09 15:11:55.364681', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-11-09 15:11:55.365678', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-11-09 15:11:55.440428', '/myapp/index/book/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-11-09 15:11:56.942286', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-11-09 15:12:20.386151', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-11-09 15:12:20.389140', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-11-09 15:12:20.508857', '/myapp/index/book/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-11-09 15:14:21.870104', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-11-09 15:14:21.871100', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-11-09 15:14:21.874091', '/myapp/index/book/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-11-09 15:14:21.970766', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-11-09 15:14:22.594963', '/myapp/index/book/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-11-09 15:14:25.087837', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-11-09 15:14:25.711543', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-11-09 15:15:07.355649', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-11-09 15:15:07.358639', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-11-09 15:15:07.358639', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-11-09 15:15:07.412458', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-11-09 15:15:22.177550', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-11-09 15:15:22.194482', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-11-09 15:15:22.194482', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-11-09 15:15:22.218431', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-11-09 15:16:23.186552', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-11-09 15:16:23.190539', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-11-09 15:16:23.193529', '/myapp/index/book/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-11-09 15:16:23.307148', '/myapp/index/book/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-11-09 15:16:23.863384', '/myapp/index/book/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-11-09 15:16:24.407109', '/myapp/index/book/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-11-09 15:16:25.073260', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-11-09 15:16:26.254261', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-11-09 15:16:27.660014', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-11-09 15:16:27.677953', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-11-09 15:16:27.679947', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-11-09 15:16:27.803533', '/myapp/index/book/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-11-09 15:16:28.859744', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-11-09 15:16:28.861736', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-11-09 15:16:28.863730', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-11-09 15:16:28.970372', '/myapp/index/book/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-11-09 15:17:51.516710', '/myapp/index/user/login', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-11-09 15:17:51.560564', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-11-09 15:17:51.561552', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-11-09 15:17:51.582482', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-11-09 15:17:51.669193', '/myapp/index/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-11-09 15:17:53.778176', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-11-09 15:17:58.667036', '/myapp/index/book/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-11-09 15:17:59.302272', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-11-09 15:18:00.213992', '/myapp/index/book/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-11-09 15:18:00.952212', '/myapp/index/book/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-11-09 15:18:01.461434', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-11-09 16:54:17.572585', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-11-09 16:54:17.575574', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-11-09 16:54:17.578573', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-11-09 16:54:17.641362', '/myapp/index/notice/list_api', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-11-09 16:54:18.847976', '/myapp/index/book/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-11-09 16:54:54.036023', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-11-09 16:54:54.039021', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-11-09 16:54:54.040017', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-11-09 16:54:54.114760', '/myapp/index/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-11-09 16:54:55.104478', '/myapp/index/book/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-11-09 16:55:47.144775', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-11-09 16:55:47.146768', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-11-09 16:55:47.147764', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-11-09 16:55:47.223044', '/myapp/index/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-11-09 16:55:48.226829', '/myapp/index/book/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-11-09 16:55:50.431294', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-11-09 16:55:50.433288', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-11-09 16:55:50.435281', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-11-09 16:55:50.510160', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-11-09 16:55:51.721944', '/myapp/index/book/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-11-09 16:55:52.902865', '/myapp/index/book/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-11-09 16:55:54.358915', '/myapp/index/book/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-11-09 16:56:15.391279', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-11-09 16:56:15.402241', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-11-09 16:56:15.434135', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-11-09 16:56:15.475006', '/myapp/index/notice/list_api', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-11-09 16:56:22.164412', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-11-09 16:56:22.166406', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-11-09 16:56:22.169388', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-11-09 16:56:22.271048', '/myapp/index/classification/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-11-09 16:56:23.375554', '/myapp/index/book/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-11-09 16:56:24.522954', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-11-09 16:56:25.080683', '/myapp/index/book/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-11-09 16:56:25.942201', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-11-09 16:56:26.358515', '/myapp/index/book/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-11-09 16:56:32.519514', '/myapp/index/book/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-11-09 16:56:35.302906', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-11-09 16:56:35.315854', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-11-09 16:56:35.347747', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-11-09 16:56:35.413096', '/myapp/index/notice/list_api', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-11-09 16:56:37.570586', '/myapp/index/book/addWishUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-11-09 16:56:40.154856', '/myapp/index/book/addCollectUser', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-11-09 16:56:41.504877', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-11-09 16:56:41.507859', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-11-09 16:56:41.509852', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-11-09 16:56:41.610516', '/myapp/index/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-11-09 16:56:43.594152', '/myapp/index/book/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-11-09 16:57:05.203600', '/myapp/index/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-11-09 17:05:15.821030', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-11-09 17:05:16.367781', '/myapp/index/book/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-11-09 17:05:38.862679', '/myapp/index/book/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-11-09 17:05:39.342254', '/myapp/index/book/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-11-09 17:05:39.822175', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-11-09 17:05:40.107773', '/myapp/index/book/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-11-09 17:05:40.529901', '/myapp/index/book/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-11-09 17:05:40.848274', '/myapp/index/book/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-11-09 17:05:41.296185', '/myapp/index/book/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-11-09 17:05:41.600429', '/myapp/index/book/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-11-09 17:05:41.963343', '/myapp/index/book/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-11-09 17:05:42.284465', '/myapp/index/book/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-11-09 17:05:42.628493', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-11-09 17:05:42.926535', '/myapp/index/book/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-11-09 17:05:43.277021', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-11-09 17:05:44.125426', '/myapp/index/book/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-11-09 17:05:46.647569', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-11-09 17:05:46.656531', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-11-09 17:05:46.675467', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-11-09 17:05:46.759194', '/myapp/index/notice/list_api', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-11-09 17:05:48.615137', '/myapp/index/book/addWishUser', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-11-09 17:05:52.454016', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-11-09 17:05:52.464980', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-11-09 17:05:52.494040', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-11-09 17:05:52.562809', '/myapp/index/notice/list_api', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-11-09 17:05:53.119011', '/myapp/index/book/addWishUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-11-09 17:05:54.322622', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-11-09 17:05:54.331590', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-11-09 17:05:54.358503', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-11-09 17:05:54.446758', '/myapp/index/notice/list_api', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-11-09 17:05:54.918853', '/myapp/index/book/addWishUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-11-09 17:05:57.553123', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-11-09 17:05:57.561096', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-11-09 17:05:57.590995', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-11-09 17:05:57.677705', '/myapp/index/notice/list_api', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-11-09 17:05:58.056687', '/myapp/index/book/addWishUser', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-11-09 17:06:02.494803', '/myapp/index/book/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-11-09 17:06:06.736196', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-11-09 17:06:06.739185', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-11-09 17:06:06.741178', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-11-09 17:06:06.856791', '/myapp/index/book/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-11-09 17:06:08.067361', '/myapp/index/book/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-11-09 17:11:52.828592', '/myapp/index/book/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-11-09 17:11:55.970453', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-11-09 17:11:55.983418', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-11-09 17:11:56.015304', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-11-09 17:11:56.086067', '/myapp/index/notice/list_api', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-11-09 17:12:00.606245', '/myapp/index/book/addWishUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-11-09 17:12:00.928387', '/myapp/index/book/addCollectUser', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-11-09 17:12:47.429834', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-11-09 17:12:47.430824', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-11-09 17:12:47.431829', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-11-09 17:12:47.497749', '/myapp/index/book/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-11-09 17:12:48.283122', '/myapp/index/book/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-11-09 17:12:49.291967', '/myapp/index/book/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-11-09 17:12:50.687586', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-11-09 17:12:50.688582', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-11-09 17:12:50.713492', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-11-09 17:12:50.793232', '/myapp/index/notice/list_api', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-11-09 17:12:51.860914', '/myapp/index/book/addWishUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-11-09 17:12:52.164638', '/myapp/index/book/addCollectUser', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-11-09 17:12:54.419849', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-11-09 17:12:54.436792', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-11-09 17:12:54.465695', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-11-09 17:12:54.557598', '/myapp/index/notice/list_api', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-11-09 17:12:55.184318', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-11-09 17:12:55.186304', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-11-09 17:12:55.187300', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-11-09 17:12:55.290953', '/myapp/index/book/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-11-09 17:12:56.859863', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-11-09 17:12:56.862853', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-11-09 17:12:56.865842', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-11-09 17:12:56.987443', '/myapp/index/book/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-11-09 17:13:20.806672', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-11-09 17:13:20.809664', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-11-09 17:13:20.810660', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-11-09 17:13:20.897369', '/myapp/index/book/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-11-09 17:13:21.282450', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-11-09 17:13:28.060107', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-11-09 17:13:32.605078', '/myapp/index/book/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-11-09 17:14:19.104735', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-11-09 17:14:20.506580', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-11-09 17:14:20.509570', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-11-09 17:14:20.512561', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-11-09 17:14:20.630165', '/myapp/index/book/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-11-09 17:14:21.741421', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-11-09 17:14:25.195898', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-11-09 17:14:25.207856', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-11-09 17:14:25.234767', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-11-09 17:14:25.324467', '/myapp/index/notice/list_api', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-11-09 17:14:26.244528', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-11-09 17:14:26.246522', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-11-09 17:14:26.250509', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-11-09 17:14:26.353758', '/myapp/index/book/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-11-09 17:14:27.215696', '/myapp/index/book/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-11-09 17:14:29.432869', '/myapp/index/book/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-11-09 18:38:11.541735', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-11-09 18:38:11.554692', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-11-09 18:38:11.557689', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-11-09 18:38:11.627448', '/myapp/index/tag/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-11-09 18:38:12.673948', '/myapp/index/book/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-11-09 18:38:13.816979', '/myapp/index/book/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-11-09 18:38:14.288210', '/myapp/index/book/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-11-09 18:38:15.169336', '/myapp/index/book/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-11-09 18:38:15.709704', '/myapp/index/book/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-11-09 18:38:17.237716', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-11-09 18:38:19.011198', '/myapp/index/book/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-11-09 18:38:29.548178', '/myapp/index/book/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-11-09 18:38:30.183356', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-11-09 18:38:30.666080', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-11-09 18:38:31.017233', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-11-09 18:38:31.379335', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2024-11-09 18:38:33.058692', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2024-11-09 18:38:33.071641', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2024-11-09 18:38:33.115502', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2024-11-09 18:38:33.172303', '/myapp/index/notice/list_api', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2024-11-09 18:38:35.128838', '/myapp/index/book/addWishUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2024-11-09 18:38:35.456587', '/myapp/index/book/addCollectUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2024-11-09 18:38:37.373900', '/myapp/index/book/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2024-11-09 18:38:39.324878', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2024-11-09 18:38:39.326880', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2024-11-09 18:38:39.328866', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2024-11-09 18:38:39.442468', '/myapp/index/book/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2024-11-09 18:38:40.562112', '/myapp/index/book/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2024-11-09 18:38:48.267986', '/myapp/index/book/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2024-11-09 18:48:16.382119', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2024-11-09 18:48:16.990969', '/myapp/index/book/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2024-11-09 18:48:17.560788', '/myapp/index/book/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2024-11-09 18:48:22.098427', '/myapp/index/book/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2024-11-09 18:48:22.661895', '/myapp/index/book/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2024-11-09 18:48:23.223019', '/myapp/index/book/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2024-11-09 18:48:23.659410', '/myapp/index/book/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2024-11-09 18:48:23.888033', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2024-11-09 19:05:52.694274', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2024-11-09 19:05:53.000990', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2024-11-09 19:05:53.708541', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2024-11-09 19:05:54.385360', '/myapp/index/book/list', 'GET', NULL, '212');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2024-11-09 19:05:54.599873', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2024-11-09 19:05:57.941747', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2024-11-09 19:05:58.532524', '/myapp/index/book/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2024-11-09 19:19:08.783788', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2024-11-09 19:19:10.013166', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2024-11-09 19:19:10.720138', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2024-11-09 19:19:11.641972', '/myapp/index/book/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2024-11-09 19:19:11.987499', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2024-11-09 19:19:12.552589', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2024-11-09 19:19:13.528760', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2024-11-09 19:19:13.915654', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2024-11-09 19:19:28.685197', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2024-11-09 19:19:29.235202', '/myapp/index/book/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2024-11-09 19:19:29.922675', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2024-11-09 19:19:33.042828', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2024-11-09 19:19:33.058775', '/myapp/index/borrow/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2024-11-09 19:19:33.065752', '/myapp/index/borrow/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2024-11-09 19:19:33.069738', '/myapp/index/borrow/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2024-11-09 19:19:40.625909', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2024-11-09 19:19:40.637869', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2024-11-09 19:19:40.686705', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2024-11-09 19:19:40.739528', '/myapp/index/notice/list_api', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2024-11-09 19:19:47.018527', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2024-11-09 19:19:47.035477', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2024-11-09 19:19:47.033484', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2024-11-09 19:19:47.132156', '/myapp/index/tag/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2024-11-09 19:19:48.206761', '/myapp/index/book/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2024-11-09 19:19:48.985443', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2024-11-09 19:19:49.613730', '/myapp/index/book/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2024-11-09 19:19:50.273781', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2024-11-09 19:19:51.333950', '/myapp/index/book/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2024-11-09 19:22:19.536916', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2024-11-09 19:22:19.550870', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2024-11-09 19:22:19.551866', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2024-11-09 19:22:19.627613', '/myapp/index/book/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2024-11-09 19:22:21.497092', '/myapp/index/book/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2024-11-09 19:22:21.861030', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2024-11-09 19:22:22.338964', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2024-11-09 19:22:23.237917', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2024-11-09 19:22:23.658434', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2024-11-09 19:22:24.042466', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2024-11-09 19:22:24.724081', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2024-11-09 19:25:08.976084', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2024-11-09 19:25:08.997013', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2024-11-09 19:25:08.998012', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2024-11-09 19:25:09.076746', '/myapp/index/book/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2024-11-09 19:25:10.486869', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2024-11-09 19:25:12.057490', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2024-11-09 19:25:13.056599', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1520, '127.0.0.1', '2024-11-09 19:25:13.533577', '/myapp/index/book/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1521, '127.0.0.1', '2024-11-09 19:25:14.110990', '/myapp/index/book/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1522, '127.0.0.1', '2024-11-09 19:25:14.991423', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1523, '127.0.0.1', '2024-11-09 20:33:26.887003', '/', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1524, '127.0.0.1', '2024-11-09 20:33:27.005607', '/favicon.ico', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1525, '127.0.0.1', '2024-11-09 20:33:31.024212', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1526, '127.0.0.1', '2024-11-09 20:33:31.046138', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1527, '127.0.0.1', '2024-11-09 20:33:31.061089', '/myapp/index/book/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1528, '127.0.0.1', '2024-11-09 20:33:31.271981', '/myapp/index/book/list', 'GET', NULL, '224');
INSERT INTO `b_op_log` VALUES (1529, '127.0.0.1', '2024-11-09 20:33:34.292154', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1530, '127.0.0.1', '2024-11-09 20:33:34.294137', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1531, '127.0.0.1', '2024-11-09 20:33:34.295134', '/myapp/index/book/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1532, '127.0.0.1', '2024-11-09 20:33:34.484508', '/myapp/index/book/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (1533, '127.0.0.1', '2024-11-09 20:33:37.182396', '/myapp/index/book/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (1534, '127.0.0.1', '2024-11-09 20:33:39.853706', '/myapp/index/book/list', 'GET', NULL, '192');
INSERT INTO `b_op_log` VALUES (1535, '127.0.0.1', '2024-11-09 20:33:41.242827', '/myapp/index/book/list', 'GET', NULL, '313');
INSERT INTO `b_op_log` VALUES (1536, '127.0.0.1', '2024-11-09 20:33:50.221297', '/myapp/index/book/list', 'GET', NULL, '206');
INSERT INTO `b_op_log` VALUES (1537, '127.0.0.1', '2024-11-09 20:33:50.919652', '/myapp/index/book/list', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (1538, '127.0.0.1', '2024-11-09 20:34:12.684530', '/myapp/index/book/list', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (1539, '127.0.0.1', '2024-11-09 20:34:13.508782', '/myapp/index/book/list', 'GET', NULL, '285');
INSERT INTO `b_op_log` VALUES (1540, '127.0.0.1', '2024-11-09 20:34:14.647108', '/myapp/index/book/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (1541, '127.0.0.1', '2024-11-09 20:34:17.376197', '/myapp/index/book/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (1542, '127.0.0.1', '2024-11-09 20:34:17.930592', '/myapp/index/book/list', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (1543, '127.0.0.1', '2024-11-09 20:34:18.552763', '/myapp/index/book/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1544, '127.0.0.1', '2024-11-09 20:34:19.050748', '/myapp/index/book/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1545, '127.0.0.1', '2024-11-09 20:34:19.634433', '/myapp/index/book/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (1546, '127.0.0.1', '2024-11-10 09:15:33.035949', '/', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1547, '127.0.0.1', '2024-11-10 09:15:33.174489', '/favicon.ico', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1548, '127.0.0.1', '2024-11-10 09:47:05.343975', '/', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1549, '127.0.0.1', '2024-11-10 09:47:05.449614', '/favicon.ico', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1550, '127.0.0.1', '2024-11-10 09:47:08.368261', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1551, '127.0.0.1', '2024-11-10 09:47:08.382206', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1552, '127.0.0.1', '2024-11-10 09:47:08.384200', '/myapp/index/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1553, '127.0.0.1', '2024-11-10 09:47:08.564604', '/myapp/index/tag/list', 'GET', NULL, '204');
INSERT INTO `b_op_log` VALUES (1554, '127.0.0.1', '2024-11-10 09:47:13.236030', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1555, '127.0.0.1', '2024-11-10 09:47:13.822173', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1556, '127.0.0.1', '2024-11-10 09:47:14.248499', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1557, '127.0.0.1', '2024-11-10 09:47:14.563784', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1558, '127.0.0.1', '2024-11-10 09:47:15.821818', '/myapp/index/book/list', 'GET', NULL, '291');
INSERT INTO `b_op_log` VALUES (1559, '127.0.0.1', '2024-11-10 09:47:16.558420', '/myapp/index/book/list', 'GET', NULL, '293');
INSERT INTO `b_op_log` VALUES (1560, '127.0.0.1', '2024-11-10 09:47:17.396795', '/myapp/index/book/list', 'GET', NULL, '451');
INSERT INTO `b_op_log` VALUES (1561, '127.0.0.1', '2024-11-10 09:47:31.442103', '/myapp/index/user/register', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1562, '127.0.0.1', '2024-11-10 09:47:37.729334', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1563, '127.0.0.1', '2024-11-10 09:47:37.767216', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1564, '127.0.0.1', '2024-11-10 09:47:37.768212', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1565, '127.0.0.1', '2024-11-10 09:47:37.769201', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1566, '127.0.0.1', '2024-11-10 09:47:38.032040', '/myapp/index/book/list', 'GET', NULL, '269');
INSERT INTO `b_op_log` VALUES (1567, '127.0.0.1', '2024-11-10 09:47:40.270590', '/myapp/index/book/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (1568, '127.0.0.1', '2024-11-10 09:47:41.667681', '/myapp/index/book/list', 'GET', NULL, '268');
INSERT INTO `b_op_log` VALUES (1569, '127.0.0.1', '2024-11-10 09:47:43.809165', '/myapp/index/book/list', 'GET', NULL, '288');
INSERT INTO `b_op_log` VALUES (1570, '127.0.0.1', '2024-11-10 09:47:46.398802', '/myapp/index/book/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1571, '127.0.0.1', '2024-11-10 09:47:48.050273', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1572, '127.0.0.1', '2024-11-10 09:47:48.072207', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1573, '127.0.0.1', '2024-11-10 09:47:48.127016', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1574, '127.0.0.1', '2024-11-10 09:47:48.315386', '/myapp/index/notice/list_api', 'GET', NULL, '197');
INSERT INTO `b_op_log` VALUES (1575, '127.0.0.1', '2024-11-10 09:47:49.200105', '/myapp/index/book/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1576, '127.0.0.1', '2024-11-10 09:47:50.224122', '/myapp/index/book/addCollectUser', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1577, '127.0.0.1', '2024-11-10 09:47:52.935539', '/myapp/index/book/list', 'GET', NULL, '445');
INSERT INTO `b_op_log` VALUES (1578, '127.0.0.1', '2024-11-10 09:47:54.820464', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1579, '127.0.0.1', '2024-11-10 09:47:54.823462', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1580, '127.0.0.1', '2024-11-10 09:47:54.836412', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1581, '127.0.0.1', '2024-11-10 09:47:55.099318', '/myapp/index/book/list', 'GET', NULL, '283');
INSERT INTO `b_op_log` VALUES (1582, '127.0.0.1', '2024-11-10 09:47:56.921286', '/myapp/index/book/list', 'GET', NULL, '416');
INSERT INTO `b_op_log` VALUES (1583, '127.0.0.1', '2024-11-10 09:51:43.517030', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1584, '127.0.0.1', '2024-11-10 09:51:43.528978', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1585, '127.0.0.1', '2024-11-10 09:51:43.536960', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1586, '127.0.0.1', '2024-11-10 09:51:43.719026', '/myapp/index/book/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (1587, '127.0.0.1', '2024-11-10 09:51:44.779336', '/myapp/index/book/list', 'GET', NULL, '313');
INSERT INTO `b_op_log` VALUES (1588, '127.0.0.1', '2024-11-10 10:17:24.263695', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1589, '127.0.0.1', '2024-11-10 10:17:24.276651', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1590, '127.0.0.1', '2024-11-10 10:17:24.281633', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1591, '127.0.0.1', '2024-11-10 10:17:24.284624', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1592, '127.0.0.1', '2024-11-10 10:17:25.477821', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1593, '127.0.0.1', '2024-11-10 10:17:26.010607', '/myapp/index/comment/listMyComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1594, '127.0.0.1', '2024-11-10 10:17:26.676384', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1595, '127.0.0.1', '2024-11-10 10:17:27.661188', '/myapp/index/comment/listMyComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1596, '127.0.0.1', '2024-11-10 10:17:28.057035', '/myapp/index/address/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1597, '127.0.0.1', '2024-11-10 10:17:28.493372', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1598, '127.0.0.1', '2024-11-10 10:17:30.084813', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1599, '127.0.0.1', '2024-11-10 10:17:33.221271', '/myapp/index/book/getWishBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1600, '127.0.0.1', '2024-11-10 10:17:34.779316', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1601, '127.0.0.1', '2024-11-10 10:17:35.329403', '/myapp/index/book/getWishBookList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1602, '127.0.0.1', '2024-11-10 10:17:38.893572', '/myapp/index/book/getCollectBookList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1603, '127.0.0.1', '2024-11-10 10:17:40.361522', '/myapp/index/book/getWishBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1604, '127.0.0.1', '2024-11-10 10:17:42.125337', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1605, '127.0.0.1', '2024-11-10 10:17:42.838186', '/myapp/index/book/getWishBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1606, '127.0.0.1', '2024-11-10 10:17:47.643060', '/myapp/index/book/getWishBookList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1607, '127.0.0.1', '2024-11-10 10:17:47.654024', '/myapp/index/book/getWishBookList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1608, '127.0.0.1', '2024-11-10 10:17:47.655020', '/myapp/index/book/getWishBookList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1609, '127.0.0.1', '2024-11-10 10:17:47.691903', '/myapp/index/book/getWishBookList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1610, '127.0.0.1', '2024-11-10 10:17:51.258112', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1611, '127.0.0.1', '2024-11-10 10:17:51.261110', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1612, '127.0.0.1', '2024-11-10 10:17:51.259109', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1613, '127.0.0.1', '2024-11-10 10:17:51.530450', '/myapp/index/book/list', 'GET', NULL, '277');
INSERT INTO `b_op_log` VALUES (1614, '127.0.0.1', '2024-11-10 10:18:05.218072', '/myapp/index/user/login', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1615, '127.0.0.1', '2024-11-10 10:18:05.259525', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1616, '127.0.0.1', '2024-11-10 10:18:05.261511', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1617, '127.0.0.1', '2024-11-10 10:18:05.262508', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1618, '127.0.0.1', '2024-11-10 10:18:05.531642', '/myapp/index/book/list', 'GET', NULL, '276');
INSERT INTO `b_op_log` VALUES (1619, '127.0.0.1', '2024-11-10 10:18:07.725511', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1620, '127.0.0.1', '2024-11-10 10:18:07.746441', '/myapp/index/borrow/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1621, '127.0.0.1', '2024-11-10 10:18:07.756962', '/myapp/index/borrow/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1622, '127.0.0.1', '2024-11-10 10:18:07.757958', '/myapp/index/borrow/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1623, '127.0.0.1', '2024-11-10 10:18:09.824494', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1624, '127.0.0.1', '2024-11-10 10:18:10.177483', '/myapp/index/borrow/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1625, '127.0.0.1', '2024-11-10 10:18:10.838036', '/myapp/index/book/getCollectBookList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1626, '127.0.0.1', '2024-11-10 10:18:13.350225', '/myapp/index/book/getWishBookList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1627, '127.0.0.1', '2024-11-10 10:19:28.566065', '/myapp/index/book/getCollectBookList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1628, '127.0.0.1', '2024-11-10 10:34:28.128906', '/myapp/index/book/getWishBookList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1629, '127.0.0.1', '2024-11-10 10:34:28.136872', '/myapp/index/book/getWishBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1630, '127.0.0.1', '2024-11-10 10:34:28.151829', '/myapp/index/book/getWishBookList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1631, '127.0.0.1', '2024-11-10 10:34:28.164785', '/myapp/index/book/getCollectBookList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1632, '127.0.0.1', '2024-11-10 10:34:30.314701', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1633, '127.0.0.1', '2024-11-10 10:34:31.439452', '/myapp/index/borrow/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1634, '127.0.0.1', '2024-11-10 10:34:36.712552', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1635, '127.0.0.1', '2024-11-10 10:34:36.713542', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1636, '127.0.0.1', '2024-11-10 10:34:36.732489', '/myapp/index/book/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1637, '127.0.0.1', '2024-11-10 10:34:36.977816', '/myapp/index/book/list', 'GET', NULL, '271');
INSERT INTO `b_op_log` VALUES (1638, '127.0.0.1', '2024-11-10 10:34:37.798176', '/myapp/index/book/list', 'GET', NULL, '280');
INSERT INTO `b_op_log` VALUES (1639, '127.0.0.1', '2024-11-10 10:34:38.307491', '/myapp/index/book/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1640, '127.0.0.1', '2024-11-10 10:34:39.714045', '/myapp/index/book/list', 'GET', NULL, '273');
INSERT INTO `b_op_log` VALUES (1641, '127.0.0.1', '2024-11-10 10:34:40.346436', '/myapp/index/book/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1642, '127.0.0.1', '2024-11-10 10:34:44.026752', '/myapp/index/book/list', 'GET', NULL, '299');
INSERT INTO `b_op_log` VALUES (1643, '127.0.0.1', '2024-11-10 10:34:45.629099', '/myapp/index/book/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1644, '127.0.0.1', '2024-11-10 10:34:47.690894', '/myapp/index/book/list', 'GET', NULL, '298');
INSERT INTO `b_op_log` VALUES (1645, '127.0.0.1', '2024-11-10 10:34:48.395697', '/myapp/index/book/list', 'GET', NULL, '269');
INSERT INTO `b_op_log` VALUES (1646, '127.0.0.1', '2024-11-10 10:34:48.910760', '/myapp/index/book/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1647, '127.0.0.1', '2024-11-10 10:34:50.432703', '/myapp/index/book/list', 'GET', NULL, '282');
INSERT INTO `b_op_log` VALUES (1648, '127.0.0.1', '2024-11-10 10:34:51.684366', '/myapp/index/book/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1649, '127.0.0.1', '2024-11-10 10:37:30.552961', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1650, '127.0.0.1', '2024-11-10 10:37:30.556957', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1651, '127.0.0.1', '2024-11-10 10:37:30.558941', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1652, '127.0.0.1', '2024-11-10 10:37:30.742928', '/myapp/index/tag/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (1653, '127.0.0.1', '2024-11-10 10:37:31.575867', '/myapp/index/book/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (1654, '127.0.0.1', '2024-11-10 10:37:32.593455', '/myapp/index/book/list', 'GET', NULL, '582');
INSERT INTO `b_op_log` VALUES (1655, '127.0.0.1', '2024-11-10 10:37:33.810856', '/myapp/index/book/list', 'GET', NULL, '203');
INSERT INTO `b_op_log` VALUES (1656, '127.0.0.1', '2024-11-10 10:37:34.681262', '/myapp/index/book/list', 'GET', NULL, '289');
INSERT INTO `b_op_log` VALUES (1657, '127.0.0.1', '2024-11-10 10:37:35.472703', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1658, '127.0.0.1', '2024-11-10 10:37:35.475694', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1659, '127.0.0.1', '2024-11-10 10:37:35.477688', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1660, '127.0.0.1', '2024-11-10 10:37:35.748790', '/myapp/index/book/list', 'GET', NULL, '279');
INSERT INTO `b_op_log` VALUES (1661, '127.0.0.1', '2024-11-10 10:37:42.539216', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1662, '127.0.0.1', '2024-11-10 10:37:42.556159', '/myapp/index/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1663, '127.0.0.1', '2024-11-10 10:37:42.562139', '/myapp/index/borrow/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1664, '127.0.0.1', '2024-11-10 10:37:42.563136', '/myapp/index/borrow/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1665, '127.0.0.1', '2024-11-10 10:37:44.408788', '/myapp/index/book/getWishBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1666, '127.0.0.1', '2024-11-10 10:37:45.596634', '/myapp/index/book/removeWishUser', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1667, '127.0.0.1', '2024-11-10 10:37:45.635557', '/myapp/index/book/getWishBookList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1668, '127.0.0.1', '2024-11-10 10:37:46.903607', '/myapp/index/book/getCollectBookList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1669, '127.0.0.1', '2024-11-10 10:37:48.856488', '/myapp/index/book/removeCollectUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1670, '127.0.0.1', '2024-11-10 10:37:48.886388', '/myapp/index/book/getCollectBookList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1671, '127.0.0.1', '2024-11-10 10:37:49.602127', '/myapp/index/book/removeCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1672, '127.0.0.1', '2024-11-10 10:37:49.622068', '/myapp/index/book/getCollectBookList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1673, '127.0.0.1', '2024-11-10 10:37:52.330124', '/myapp/index/book/removeCollectUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1674, '127.0.0.1', '2024-11-10 10:37:52.347024', '/myapp/index/book/getCollectBookList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1675, '127.0.0.1', '2024-11-10 10:38:01.987709', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1676, '127.0.0.1', '2024-11-10 10:38:01.989703', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1677, '127.0.0.1', '2024-11-10 10:38:01.990700', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1678, '127.0.0.1', '2024-11-10 10:38:02.264241', '/myapp/index/book/list', 'GET', NULL, '282');
INSERT INTO `b_op_log` VALUES (1679, '127.0.0.1', '2024-11-10 10:38:14.705699', '/myapp/index/user/login', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1680, '127.0.0.1', '2024-11-10 10:38:14.755104', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1681, '127.0.0.1', '2024-11-10 10:38:14.780552', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1682, '127.0.0.1', '2024-11-10 10:38:14.782545', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1683, '127.0.0.1', '2024-11-10 10:38:15.031104', '/myapp/index/book/list', 'GET', NULL, '280');
INSERT INTO `b_op_log` VALUES (1684, '127.0.0.1', '2024-11-10 10:38:17.998023', '/myapp/index/book/list', 'GET', NULL, '931');
INSERT INTO `b_op_log` VALUES (1685, '127.0.0.1', '2024-11-10 10:38:19.783081', '/myapp/index/book/list', 'GET', NULL, '292');
INSERT INTO `b_op_log` VALUES (1686, '127.0.0.1', '2024-11-10 10:38:21.985451', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1687, '127.0.0.1', '2024-11-10 10:38:21.996422', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1688, '127.0.0.1', '2024-11-10 10:38:22.057221', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1689, '127.0.0.1', '2024-11-10 10:38:22.260075', '/myapp/index/notice/list_api', 'GET', NULL, '210');
INSERT INTO `b_op_log` VALUES (1690, '127.0.0.1', '2024-11-10 10:38:22.912548', '/myapp/index/book/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1691, '127.0.0.1', '2024-11-10 10:38:23.238523', '/myapp/index/book/addCollectUser', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1692, '127.0.0.1', '2024-11-10 10:38:24.565872', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1693, '127.0.0.1', '2024-11-10 10:38:24.567865', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1694, '127.0.0.1', '2024-11-10 10:38:24.568862', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1695, '127.0.0.1', '2024-11-10 10:38:24.855030', '/myapp/index/book/list', 'GET', NULL, '294');
INSERT INTO `b_op_log` VALUES (1696, '127.0.0.1', '2024-11-10 10:38:33.347333', '/myapp/index/book/list', 'GET', NULL, '945');
INSERT INTO `b_op_log` VALUES (1697, '127.0.0.1', '2024-11-10 10:38:34.277745', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1698, '127.0.0.1', '2024-11-10 10:38:34.278741', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1699, '127.0.0.1', '2024-11-10 10:38:34.281740', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1700, '127.0.0.1', '2024-11-10 10:38:34.551828', '/myapp/index/book/list', 'GET', NULL, '280');
INSERT INTO `b_op_log` VALUES (1701, '127.0.0.1', '2024-11-10 10:38:35.338589', '/myapp/index/book/list', 'GET', NULL, '284');
INSERT INTO `b_op_log` VALUES (1702, '127.0.0.1', '2024-11-10 10:38:36.125459', '/myapp/index/book/list', 'GET', NULL, '279');
INSERT INTO `b_op_log` VALUES (1703, '127.0.0.1', '2024-11-10 10:39:30.666803', '/myapp/index/book/list', 'GET', NULL, '247');
INSERT INTO `b_op_log` VALUES (1704, '127.0.0.1', '2024-11-10 10:39:31.315078', '/myapp/index/book/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1705, '127.0.0.1', '2024-11-10 10:39:32.159003', '/myapp/index/book/list', 'GET', NULL, '288');
INSERT INTO `b_op_log` VALUES (1706, '127.0.0.1', '2024-11-10 10:55:50.846703', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1707, '127.0.0.1', '2024-11-10 10:55:50.848696', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1708, '127.0.0.1', '2024-11-10 10:55:50.863639', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1709, '127.0.0.1', '2024-11-10 10:55:51.049026', '/myapp/index/book/list', 'GET', NULL, '205');
INSERT INTO `b_op_log` VALUES (1710, '127.0.0.1', '2024-11-10 10:56:10.951446', '/myapp/admin/overview/count', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1711, '127.0.0.1', '2024-11-10 10:59:18.065067', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1712, '127.0.0.1', '2024-11-10 10:59:19.239273', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1713, '127.0.0.1', '2024-11-10 10:59:19.240270', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1714, '127.0.0.1', '2024-11-10 10:59:19.255227', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1715, '127.0.0.1', '2024-11-10 10:59:19.434620', '/myapp/index/book/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (1716, '127.0.0.1', '2024-11-10 10:59:27.260009', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1717, '127.0.0.1', '2024-11-10 10:59:27.261005', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1718, '127.0.0.1', '2024-11-10 10:59:27.281508', '/myapp/index/book/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1719, '127.0.0.1', '2024-11-10 10:59:27.446948', '/myapp/index/book/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (1720, '127.0.0.1', '2024-11-10 10:59:30.655912', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1721, '127.0.0.1', '2024-11-10 10:59:30.656919', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1722, '127.0.0.1', '2024-11-10 10:59:30.674858', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1723, '127.0.0.1', '2024-11-10 10:59:30.840859', '/myapp/index/book/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (1724, '127.0.0.1', '2024-11-10 10:59:35.847610', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1725, '127.0.0.1', '2024-11-10 10:59:35.868540', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1726, '127.0.0.1', '2024-11-10 10:59:35.898439', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1727, '127.0.0.1', '2024-11-10 10:59:36.120697', '/myapp/index/notice/list_api', 'GET', NULL, '229');
INSERT INTO `b_op_log` VALUES (1728, '127.0.0.1', '2024-11-10 10:59:44.679058', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1729, '127.0.0.1', '2024-11-10 10:59:44.682048', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1730, '127.0.0.1', '2024-11-10 10:59:44.685037', '/myapp/index/book/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1731, '127.0.0.1', '2024-11-10 10:59:44.969216', '/myapp/index/book/list', 'GET', NULL, '294');
INSERT INTO `b_op_log` VALUES (1732, '127.0.0.1', '2024-11-10 10:59:54.037488', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1733, '127.0.0.1', '2024-11-10 10:59:54.040478', '/myapp/index/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1734, '127.0.0.1', '2024-11-10 10:59:54.044465', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1735, '127.0.0.1', '2024-11-10 10:59:54.226858', '/myapp/index/book/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (1736, '127.0.0.1', '2024-11-10 11:00:09.178527', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1737, '127.0.0.1', '2024-11-10 11:00:09.181516', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1738, '127.0.0.1', '2024-11-10 11:00:09.182514', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1739, '127.0.0.1', '2024-11-10 11:00:09.369480', '/myapp/index/book/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (1740, '127.0.0.1', '2024-11-10 11:00:14.052710', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1741, '127.0.0.1', '2024-11-10 11:00:14.064661', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1742, '127.0.0.1', '2024-11-10 11:00:14.101536', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1743, '127.0.0.1', '2024-11-10 11:00:14.235658', '/myapp/index/notice/list_api', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (1744, '127.0.0.1', '2024-11-10 11:00:19.892704', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1745, '127.0.0.1', '2024-11-10 11:00:19.893700', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1746, '127.0.0.1', '2024-11-10 11:00:19.895694', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1747, '127.0.0.1', '2024-11-10 11:00:20.073101', '/myapp/index/classification/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (1748, '127.0.0.1', '2024-11-10 11:00:43.571366', '/myapp/index/book/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1749, '127.0.0.1', '2024-11-10 11:00:43.574357', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1750, '127.0.0.1', '2024-11-10 11:00:43.663061', '/upload/https:/img2.doubanio.com/view/subject/s/public/s10328621.jpg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1751, '127.0.0.1', '2024-11-10 11:00:50.505709', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1752, '127.0.0.1', '2024-11-10 11:00:50.526640', '/myapp/index/book/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1753, '127.0.0.1', '2024-11-10 11:00:50.547577', '/upload/https:/img2.doubanio.com/view/subject/s/public/s10328621.jpg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1754, '127.0.0.1', '2024-11-10 11:04:16.239432', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1755, '127.0.0.1', '2024-11-10 11:04:16.247405', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1756, '127.0.0.1', '2024-11-10 11:07:31.504425', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1757, '127.0.0.1', '2024-11-10 11:07:31.510404', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1758, '127.0.0.1', '2024-11-10 11:07:38.823503', '/myapp/index/book/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1759, '127.0.0.1', '2024-11-10 11:07:38.855396', '/myapp/index/book/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1760, '127.0.0.1', '2024-11-10 11:12:20.351365', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1761, '127.0.0.1', '2024-11-10 11:12:20.353358', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1762, '127.0.0.1', '2024-11-10 11:12:20.366323', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1763, '127.0.0.1', '2024-11-10 11:12:20.544718', '/myapp/index/book/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (1764, '127.0.0.1', '2024-11-10 11:12:29.614041', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1765, '127.0.0.1', '2024-11-10 11:12:29.616026', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1766, '127.0.0.1', '2024-11-10 11:12:29.618027', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1767, '127.0.0.1', '2024-11-10 11:12:29.876389', '/myapp/index/book/list', 'GET', NULL, '266');
INSERT INTO `b_op_log` VALUES (1768, '127.0.0.1', '2024-11-10 11:12:38.926752', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1769, '127.0.0.1', '2024-11-10 11:12:38.928745', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1770, '127.0.0.1', '2024-11-10 11:12:46.570799', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1771, '127.0.0.1', '2024-11-10 11:12:46.572792', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1772, '127.0.0.1', '2024-11-10 11:12:46.574798', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1773, '127.0.0.1', '2024-11-10 11:12:46.834117', '/myapp/index/book/list', 'GET', NULL, '269');
INSERT INTO `b_op_log` VALUES (1774, '127.0.0.1', '2024-11-10 11:13:08.104066', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1775, '127.0.0.1', '2024-11-10 11:13:08.106051', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1776, '127.0.0.1', '2024-11-10 11:13:08.108045', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1777, '127.0.0.1', '2024-11-10 11:13:08.422578', '/myapp/index/book/list', 'GET', NULL, '323');
INSERT INTO `b_op_log` VALUES (1778, '127.0.0.1', '2024-11-10 11:13:14.124487', '/myapp/index/book/list', 'GET', NULL, '312');
INSERT INTO `b_op_log` VALUES (1779, '127.0.0.1', '2024-11-10 11:13:16.753504', '/myapp/index/book/list', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (1780, '127.0.0.1', '2024-11-10 11:13:17.589634', '/myapp/index/book/list', 'GET', NULL, '286');
INSERT INTO `b_op_log` VALUES (1781, '127.0.0.1', '2024-11-10 11:13:24.781391', '/myapp/index/book/list', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (1782, '127.0.0.1', '2024-11-10 11:13:25.821777', '/myapp/index/book/list', 'GET', NULL, '291');
INSERT INTO `b_op_log` VALUES (1783, '127.0.0.1', '2024-11-10 11:13:26.934904', '/myapp/index/book/list', 'GET', NULL, '273');
INSERT INTO `b_op_log` VALUES (1784, '127.0.0.1', '2024-11-10 11:13:27.634476', '/myapp/index/book/list', 'GET', NULL, '278');
INSERT INTO `b_op_log` VALUES (1785, '127.0.0.1', '2024-11-10 11:13:29.913067', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1786, '127.0.0.1', '2024-11-10 11:13:29.914076', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1787, '127.0.0.1', '2024-11-10 11:13:29.916065', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1788, '127.0.0.1', '2024-11-10 11:13:30.194126', '/myapp/index/book/list', 'GET', NULL, '287');
INSERT INTO `b_op_log` VALUES (1789, '127.0.0.1', '2024-11-10 15:40:26.212035', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1790, '127.0.0.1', '2024-11-10 15:40:26.213023', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1791, '127.0.0.1', '2024-11-10 15:40:26.215017', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1792, '127.0.0.1', '2024-11-10 15:40:26.410972', '/myapp/index/classification/list', 'GET', NULL, '206');
INSERT INTO `b_op_log` VALUES (1793, '127.0.0.1', '2024-11-10 15:40:27.495379', '/myapp/index/book/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (1794, '127.0.0.1', '2024-11-10 15:40:27.886218', '/myapp/index/book/list', 'GET', NULL, '220');
INSERT INTO `b_op_log` VALUES (1795, '127.0.0.1', '2024-11-10 15:40:28.407319', '/myapp/index/book/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (1796, '127.0.0.1', '2024-11-10 15:41:09.747422', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1797, '127.0.0.1', '2024-11-10 15:41:09.750408', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1798, '127.0.0.1', '2024-11-10 15:41:09.751405', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1799, '127.0.0.1', '2024-11-10 15:41:09.944425', '/myapp/index/book/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (1800, '127.0.0.1', '2024-11-10 15:55:24.753408', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1801, '127.0.0.1', '2024-11-10 15:55:24.755409', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1802, '127.0.0.1', '2024-11-10 15:55:24.756404', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1803, '127.0.0.1', '2024-11-10 15:55:24.943151', '/myapp/index/book/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (1804, '127.0.0.1', '2024-11-10 15:55:25.681251', '/myapp/index/book/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1805, '127.0.0.1', '2024-11-10 15:55:25.691213', '/myapp/index/book/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1806, '127.0.0.1', '2024-11-10 15:55:25.728090', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1807, '127.0.0.1', '2024-11-10 15:55:25.862899', '/myapp/index/notice/list_api', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (1808, '127.0.0.1', '2024-11-10 15:55:28.948963', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1809, '127.0.0.1', '2024-11-10 15:55:28.949962', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1810, '127.0.0.1', '2024-11-10 15:55:28.950963', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1811, '127.0.0.1', '2024-11-10 15:55:29.132356', '/myapp/index/book/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (1812, '127.0.0.1', '2024-11-10 15:57:53.364560', '/myapp/index/book/list', 'GET', NULL, '308');
INSERT INTO `b_op_log` VALUES (1813, '127.0.0.1', '2024-11-10 15:57:53.646618', '/myapp/index/book/list', 'GET', NULL, '274');
INSERT INTO `b_op_log` VALUES (1814, '127.0.0.1', '2024-11-10 15:57:55.163033', '/myapp/index/book/list', 'GET', NULL, '288');
INSERT INTO `b_op_log` VALUES (1815, '127.0.0.1', '2024-11-10 15:57:55.506884', '/myapp/index/book/list', 'GET', NULL, '337');
INSERT INTO `b_op_log` VALUES (1816, '127.0.0.1', '2024-11-10 15:57:56.855221', '/myapp/index/book/list', 'GET', NULL, '287');
INSERT INTO `b_op_log` VALUES (1817, '127.0.0.1', '2024-11-10 15:57:57.149178', '/myapp/index/book/list', 'GET', NULL, '284');
INSERT INTO `b_op_log` VALUES (1818, '127.0.0.1', '2024-11-10 15:58:14.735720', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1819, '127.0.0.1', '2024-11-10 15:58:14.736708', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1820, '127.0.0.1', '2024-11-10 15:58:14.738705', '/myapp/index/book/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1821, '127.0.0.1', '2024-11-10 15:58:14.914702', '/myapp/index/book/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (1822, '127.0.0.1', '2024-11-10 15:58:18.113822', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1823, '127.0.0.1', '2024-11-10 15:58:18.650766', '/myapp/index/book/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1824, '127.0.0.1', '2024-11-10 15:58:19.096731', '/myapp/index/book/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1825, '127.0.0.1', '2024-11-10 15:58:19.977789', '/myapp/index/book/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1826, '127.0.0.1', '2024-11-10 15:58:20.797899', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1827, '127.0.0.1', '2024-11-10 15:58:21.553123', '/myapp/index/book/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1828, '127.0.0.1', '2024-11-10 15:58:22.129087', '/myapp/index/book/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1829, '127.0.0.1', '2024-11-10 15:58:22.970984', '/myapp/index/book/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1830, '127.0.0.1', '2024-11-10 15:58:25.061630', '/myapp/index/book/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1831, '127.0.0.1', '2024-11-10 15:58:33.982736', '/myapp/index/user/login', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1832, '127.0.0.1', '2024-11-10 15:58:34.015618', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1833, '127.0.0.1', '2024-11-10 15:58:34.016615', '/myapp/index/book/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1834, '127.0.0.1', '2024-11-10 15:58:34.019606', '/myapp/index/book/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1835, '127.0.0.1', '2024-11-10 15:58:34.303272', '/myapp/index/book/list', 'GET', NULL, '292');
INSERT INTO `b_op_log` VALUES (1836, '127.0.0.1', '2024-11-10 15:58:35.878384', '/myapp/index/book/list', 'GET', NULL, '300');
INSERT INTO `b_op_log` VALUES (1837, '127.0.0.1', '2024-11-10 15:58:37.631154', '/myapp/index/book/list', 'GET', NULL, '1052');
INSERT INTO `b_op_log` VALUES (1838, '127.0.0.1', '2024-11-10 15:58:40.386893', '/myapp/index/book/list', 'GET', NULL, '315');
INSERT INTO `b_op_log` VALUES (1839, '127.0.0.1', '2024-11-10 15:58:41.163019', '/myapp/index/book/list', 'GET', NULL, '313');
INSERT INTO `b_op_log` VALUES (1840, '127.0.0.1', '2024-11-10 15:58:42.214528', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1841, '127.0.0.1', '2024-11-10 15:58:42.233465', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1842, '127.0.0.1', '2024-11-10 15:58:42.261981', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1843, '127.0.0.1', '2024-11-10 15:58:42.517080', '/myapp/index/notice/list_api', 'GET', NULL, '264');
INSERT INTO `b_op_log` VALUES (1844, '127.0.0.1', '2024-11-10 15:58:45.141203', '/myapp/index/book/addWishUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1845, '127.0.0.1', '2024-11-10 15:58:45.622714', '/myapp/index/book/addCollectUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1846, '127.0.0.1', '2024-11-10 15:58:52.969944', '/myapp/index/borrow/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1847, '127.0.0.1', '2024-11-10 15:58:52.989876', '/myapp/index/book/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1848, '127.0.0.1', '2024-11-10 15:59:01.435793', '/myapp/index/comment/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (1849, '127.0.0.1', '2024-11-10 15:59:01.447762', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1850, '127.0.0.1', '2024-11-10 15:59:03.590730', '/myapp/index/comment/like', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (1851, '127.0.0.1', '2024-11-10 15:59:03.628560', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1852, '127.0.0.1', '2024-11-10 15:59:04.024356', '/myapp/index/comment/like', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1853, '127.0.0.1', '2024-11-10 15:59:04.034323', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1854, '127.0.0.1', '2024-11-10 15:59:16.787875', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1855, '127.0.0.1', '2024-11-10 15:59:16.803813', '/myapp/index/borrow/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1856, '127.0.0.1', '2024-11-10 15:59:16.809793', '/myapp/index/borrow/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1857, '127.0.0.1', '2024-11-10 15:59:16.811787', '/myapp/index/borrow/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1858, '127.0.0.1', '2024-11-10 15:59:20.224008', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1859, '127.0.0.1', '2024-11-10 15:59:20.648149', '/myapp/index/borrow/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1860, '127.0.0.1', '2024-11-10 15:59:21.206105', '/myapp/index/borrow/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1861, '127.0.0.1', '2024-11-10 15:59:22.358446', '/myapp/index/book/getCollectBookList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1862, '127.0.0.1', '2024-11-10 15:59:23.353831', '/myapp/index/book/getWishBookList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1863, '127.0.0.1', '2024-11-10 15:59:24.791857', '/myapp/index/book/getCollectBookList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1864, '127.0.0.1', '2024-11-10 15:59:25.271905', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1865, '127.0.0.1', '2024-11-10 15:59:26.146000', '/myapp/index/comment/listMyComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1866, '127.0.0.1', '2024-11-10 15:59:26.703942', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1867, '127.0.0.1', '2024-11-10 15:59:27.410411', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1868, '127.0.0.1', '2024-11-10 15:59:27.956187', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1869, '127.0.0.1', '2024-11-10 15:59:28.423778', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1870, '127.0.0.1', '2024-11-10 15:59:29.114136', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1871, '127.0.0.1', '2024-11-10 15:59:29.982672', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1872, '127.0.0.1', '2024-11-10 15:59:30.436904', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1873, '127.0.0.1', '2024-11-10 15:59:35.752032', '/myapp/admin/adminLogin', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1874, '127.0.0.1', '2024-11-10 15:59:35.950026', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1875, '127.0.0.1', '2024-11-10 15:59:39.380805', '/myapp/admin/borrow/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1876, '127.0.0.1', '2024-11-10 15:59:40.776166', '/myapp/admin/book/list', 'GET', NULL, '675');
INSERT INTO `b_op_log` VALUES (1877, '127.0.0.1', '2024-11-10 15:59:45.105091', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1878, '127.0.0.1', '2024-11-10 15:59:45.108080', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1879, '127.0.0.1', '2024-11-10 15:59:50.182593', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1880, '127.0.0.1', '2024-11-10 15:59:50.993728', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1881, '127.0.0.1', '2024-11-10 15:59:51.610423', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1882, '127.0.0.1', '2024-11-10 15:59:52.181842', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1883, '127.0.0.1', '2024-11-10 15:59:53.625574', '/myapp/admin/banner/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1884, '127.0.0.1', '2024-11-10 15:59:54.026507', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1885, '127.0.0.1', '2024-11-10 15:59:54.435214', '/myapp/admin/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1886, '127.0.0.1', '2024-11-10 15:59:56.287369', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1887, '127.0.0.1', '2024-11-10 15:59:57.137409', '/myapp/admin/opLog/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1888, '127.0.0.1', '2024-11-10 15:59:57.451791', '/myapp/admin/errorLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1889, '127.0.0.1', '2024-11-10 15:59:58.832147', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1021');
INSERT INTO `b_op_log` VALUES (1890, '127.0.0.1', '2024-11-10 16:02:10.965525', '/myapp/index/book/getWishBookList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1891, '127.0.0.1', '2024-11-10 16:02:10.978474', '/myapp/index/book/getWishBookList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1892, '127.0.0.1', '2024-11-10 16:02:10.979467', '/myapp/index/book/getWishBookList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1893, '127.0.0.1', '2024-11-10 16:02:11.853876', '/myapp/index/book/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1894, '127.0.0.1', '2024-11-10 16:02:11.854879', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1895, '127.0.0.1', '2024-11-10 16:02:11.872819', '/myapp/index/book/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1896, '127.0.0.1', '2024-11-10 16:02:12.042246', '/myapp/index/book/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (1897, '127.0.0.1', '2024-11-10 16:02:16.537012', '/myapp/index/book/list', 'GET', NULL, '625');
INSERT INTO `b_op_log` VALUES (1898, '127.0.0.1', '2024-11-10 16:02:18.211978', '/myapp/index/book/list', 'GET', NULL, '281');
INSERT INTO `b_op_log` VALUES (1899, '127.0.0.1', '2024-11-10 16:02:24.898596', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1900, '127.0.0.1', '2024-11-10 16:02:24.921527', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1901, '127.0.0.1', '2024-11-10 16:02:24.950431', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1902, '127.0.0.1', '2024-11-10 16:02:25.171299', '/myapp/index/notice/list_api', 'GET', NULL, '227');
INSERT INTO `b_op_log` VALUES (1903, '127.0.0.1', '2024-11-10 16:02:35.650526', '/myapp/index/book/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1904, '127.0.0.1', '2024-11-10 16:02:35.655510', '/myapp/index/book/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1905, '127.0.0.1', '2024-11-10 16:02:37.449589', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1906, '127.0.0.1', '2024-11-10 16:02:37.469531', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1907, '127.0.0.1', '2024-11-10 16:02:37.502421', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1908, '127.0.0.1', '2024-11-10 16:02:37.744263', '/myapp/index/notice/list_api', 'GET', NULL, '247');
INSERT INTO `b_op_log` VALUES (1909, '127.0.0.1', '2024-11-10 16:02:40.968954', '/myapp/index/book/addWishUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1910, '127.0.0.1', '2024-11-10 16:02:41.304369', '/myapp/index/book/addCollectUser', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (1911, '127.0.0.1', '2024-11-10 16:03:03.503850', '/myapp/admin/book/list', 'GET', NULL, '681');
INSERT INTO `b_op_log` VALUES (1912, '127.0.0.1', '2024-11-10 16:03:04.757055', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1913, '127.0.0.1', '2024-11-10 16:03:45.823208', '/myapp/admin/borrow/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1914, '127.0.0.1', '2024-11-10 16:03:53.928769', '/myapp/admin/book/list', 'GET', NULL, '669');
INSERT INTO `b_op_log` VALUES (1915, '127.0.0.1', '2024-11-10 16:03:55.509475', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1916, '127.0.0.1', '2024-11-10 16:03:57.182790', '/myapp/admin/book/list', 'GET', NULL, '623');
INSERT INTO `b_op_log` VALUES (1917, '127.0.0.1', '2024-11-10 16:03:58.024243', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1918, '127.0.0.1', '2024-11-10 16:03:58.025246', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1919, '127.0.0.1', '2024-11-10 16:04:00.233537', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1920, '127.0.0.1', '2024-11-10 16:04:00.235519', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1921, '127.0.0.1', '2024-11-10 16:04:05.036995', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1922, '127.0.0.1', '2024-11-10 16:04:09.234457', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1923, '127.0.0.1', '2024-11-10 16:04:09.862572', '/myapp/admin/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1924, '127.0.0.1', '2024-11-10 16:04:10.411685', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1925, '127.0.0.1', '2024-11-10 16:04:18.865150', '/myapp/index/borrow/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1926, '127.0.0.1', '2024-11-10 16:04:18.883902', '/myapp/index/book/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1927, '127.0.0.1', '2024-11-10 16:04:20.604257', '/myapp/index/borrow/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1928, '127.0.0.1', '2024-11-10 16:04:20.661077', '/myapp/index/borrow/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1929, '127.0.0.1', '2024-11-10 16:04:20.664057', '/myapp/index/borrow/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1930, '127.0.0.1', '2024-11-10 16:04:20.665063', '/myapp/index/borrow/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1931, '127.0.0.1', '2024-11-10 16:04:30.097524', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1932, '127.0.0.1', '2024-11-10 16:04:30.580929', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1933, '127.0.0.1', '2024-11-10 16:04:31.357469', '/myapp/index/borrow/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1934, '127.0.0.1', '2024-11-10 16:04:32.252031', '/myapp/index/borrow/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1935, '127.0.0.1', '2024-11-10 16:04:32.958690', '/myapp/index/borrow/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1936, '127.0.0.1', '2024-11-10 16:04:34.856809', '/myapp/index/book/getCollectBookList', 'GET', NULL, '14');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `book_id` bigint(20) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_book_id_6e6a0cc5_fk_b_book_id`(`book_id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_book_id_6e6a0cc5_fk_b_book_id` FOREIGN KEY (`book_id`) REFERENCES `b_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (3, '旅行', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (11, '法律', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (12, '考研', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (13, 'java', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (14, '美食', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (15, '编程', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (16, '科幻', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (17, '交互设计', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (18, '教育', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (19, '散文', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (20, '算法', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (21, '通信', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (22, '音乐', '2024-11-01 20:29:20.000000');
INSERT INTO `b_tag` VALUES (23, '电影', '2024-11-01 20:29:20.000000');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (25, '1', '0', NULL, '', NULL, NULL, NULL, '0192023a7bbd73250516f069df18b500', 'admin123', '2024-11-08 21:34:06.000000', NULL, '0192023a7bbd73250516f069df18b500', NULL, 0, NULL, 0);
INSERT INTO `b_user` VALUES (27, '2', '0', NULL, 'avatar/1731073131762.jpeg', NULL, NULL, NULL, 'c4ca4238a0b923820dcc509a6f75849b', '1453641651@qq.com', '2024-11-08 16:03:03.000000', NULL, 'a889837f512eade74f10c8dca0d54b39', 'a889837f512eade74f10c8dca0d54b39', 1, NULL, 0);
INSERT INTO `b_user` VALUES (28, '2', '0', NULL, '', NULL, NULL, NULL, 'c4ca4238a0b923820dcc509a6f75849b', '123@qq.com', '2024-11-10 09:47:31.435013', NULL, NULL, '487f87505f619bf9ea08f26bb34f8118', 0, NULL, 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (22, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'book');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'borrow');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'borrowlog');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'role');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-01-03 20:27:44.615242');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-01-03 20:27:44.897724');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-01-03 20:27:44.953495');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-01-03 20:27:44.962673');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-03 20:27:44.978198');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-01-03 20:27:45.041158');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-01-03 20:27:45.078398');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-01-03 20:27:45.104344');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-01-03 20:27:45.117748');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-01-03 20:27:45.155021');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-01-03 20:27:45.159680');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-03 20:27:45.171067');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-01-03 20:27:45.224974');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-03 20:27:45.250804');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-01-03 20:27:45.282141');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-01-03 20:27:45.291184');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-03 20:27:45.316854');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-01-03 20:27:45.520965');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_user_password_user_username_alter_user_id', '2023-01-03 20:27:45.564345');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_alter_user_avatar_alter_user_description', '2023-01-03 20:27:45.597640');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_alter_user_password_alter_user_username', '2023-01-03 20:27:45.633857');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_alter_user_password_alter_user_username', '2023-01-03 20:27:45.674871');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_alter_book_layout', '2023-01-03 20:27:45.708082');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_book_original_title', '2023-01-03 20:27:45.734250');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_alter_book_cover', '2023-01-03 20:27:45.741932');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_book_create_time', '2023-01-03 20:27:45.775651');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_classification_create_time_tag_create_time_and_more', '2023-01-03 20:27:45.854694');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_remove_book_tag_book_tag', '2023-01-03 20:27:46.312973');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_alter_book_classification_alter_book_layout_and_more', '2023-01-03 20:27:46.334417');
INSERT INTO `django_migrations` VALUES (30, 'myapp', '0013_alter_book_tag', '2023-01-03 20:27:46.349593');
INSERT INTO `django_migrations` VALUES (31, 'sessions', '0001_initial', '2023-01-03 20:27:46.385664');
INSERT INTO `django_migrations` VALUES (32, 'myapp', '0014_alter_user_role', '2023-01-03 21:08:00.533634');
INSERT INTO `django_migrations` VALUES (33, 'myapp', '0015_user_email', '2023-01-03 21:31:54.825373');
INSERT INTO `django_migrations` VALUES (34, 'myapp', '0016_loginlog', '2023-01-05 21:21:04.722531');
INSERT INTO `django_migrations` VALUES (35, 'myapp', '0017_role_alter_user_role', '2023-01-05 21:47:13.455479');
INSERT INTO `django_migrations` VALUES (36, 'myapp', '0018_borrowlog_borrow', '2023-01-08 16:14:10.817634');
INSERT INTO `django_migrations` VALUES (37, 'myapp', '0019_borrow_return_time', '2023-01-08 16:34:51.014779');
INSERT INTO `django_migrations` VALUES (38, 'myapp', '0020_borrow_expect_time_alter_borrow_return_time', '2023-01-08 17:12:37.647740');
INSERT INTO `django_migrations` VALUES (39, 'myapp', '0021_borrow_delayed', '2023-01-08 19:24:41.148617');
INSERT INTO `django_migrations` VALUES (40, 'myapp', '0022_alter_borrow_delayed', '2023-01-08 19:27:02.797600');
INSERT INTO `django_migrations` VALUES (41, 'myapp', '0023_user_admin_token_user_token', '2023-01-11 20:59:53.270232');
INSERT INTO `django_migrations` VALUES (42, 'myapp', '0024_alter_user_role_delete_role', '2023-01-13 19:50:58.226903');
INSERT INTO `django_migrations` VALUES (43, 'myapp', '0025_remove_loginlog_user_loginlog_username', '2023-01-14 21:52:21.060006');
INSERT INTO `django_migrations` VALUES (44, 'myapp', '0026_oplog', '2023-01-14 22:29:42.849406');
INSERT INTO `django_migrations` VALUES (45, 'myapp', '0027_classification_pid', '2023-01-16 20:30:22.234557');
INSERT INTO `django_migrations` VALUES (46, 'myapp', '0028_banner', '2023-01-17 21:42:22.859463');
INSERT INTO `django_migrations` VALUES (47, 'myapp', '0029_ad', '2023-01-18 20:21:39.028250');
INSERT INTO `django_migrations` VALUES (48, 'myapp', '0030_notice', '2023-01-18 20:44:18.219782');
INSERT INTO `django_migrations` VALUES (49, 'myapp', '0031_loginlog_ua', '2023-01-19 21:18:56.544927');
INSERT INTO `django_migrations` VALUES (50, 'myapp', '0032_errorlog', '2023-01-27 10:09:41.720208');
INSERT INTO `django_migrations` VALUES (51, 'myapp', '0033_book_recommend_count_book_wish_count', '2023-02-12 19:33:57.162233');
INSERT INTO `django_migrations` VALUES (52, 'myapp', '0034_book_wish', '2023-02-12 20:12:16.244582');
INSERT INTO `django_migrations` VALUES (53, 'myapp', '0035_notice_title', '2023-02-16 21:34:07.128596');
INSERT INTO `django_migrations` VALUES (54, 'myapp', '0036_book_collect', '2023-02-17 19:55:28.167557');
INSERT INTO `django_migrations` VALUES (55, 'myapp', '0037_alter_book_collect_alter_book_wish', '2023-02-17 20:14:01.595001');
INSERT INTO `django_migrations` VALUES (56, 'myapp', '0038_book_collect_count', '2023-02-18 21:08:13.933964');
INSERT INTO `django_migrations` VALUES (57, 'myapp', '0039_user_score', '2023-02-19 20:20:16.498357');
INSERT INTO `django_migrations` VALUES (58, 'myapp', '0040_user_push_email_user_push_switch', '2023-02-19 20:58:22.350408');
INSERT INTO `django_migrations` VALUES (59, 'myapp', '0041_address', '2023-02-22 21:24:02.200424');
INSERT INTO `django_migrations` VALUES (60, 'myapp', '0042_rename_address_content_address_desc_address_mobile_and_more', '2023-02-22 21:29:49.165761');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
