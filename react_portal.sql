/*
 Navicat MySQL Data Transfer

 Source Server         : Sites - General
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : react_portal

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 01/01/2019 14:21:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
BEGIN;
INSERT INTO `activity_log` VALUES (1, 'system', 'created', 14, 'App\\Models\\Role', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Default\",\"is_default\":1}}', '2018-12-11 16:50:46', '2018-12-11 16:50:46');
INSERT INTO `activity_log` VALUES (2, 'system', 'created', 13, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Devin\",\"last_name\":\"Member\",\"email\":\"devin@drlnetworks.com\",\"password\":\"$2y$10$7Jy2NZINmRUjZpukSA1l7eTQgSmV6m0K7GRBtJAP\\/pTRctD3JnNkq\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":1}}', '2018-12-11 16:50:46', '2018-12-11 16:50:46');
INSERT INTO `activity_log` VALUES (4, 'system', 'created', 15, 'App\\Models\\Role', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Default\",\"is_default\":1}}', '2018-12-11 17:12:58', '2018-12-11 17:12:58');
INSERT INTO `activity_log` VALUES (5, 'system', 'created', 14, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Free\",\"last_name\":\"Member\",\"email\":\"nasyta@mailinator.net\",\"password\":\"$2y$10$jsfXb458NQRnPepN52l5Quxil37Wt2P2arfpFKBZxx6xhP\\/lQryki\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":1}}', '2018-12-11 17:12:58', '2018-12-11 17:12:58');
INSERT INTO `activity_log` VALUES (8, 'system', 'updated', 16, 'App\\Models\\Company', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Log Test E\"},\"old\":{\"name\":\"Log Test\"}}', '2018-12-12 11:30:08', '2018-12-12 11:30:08');
INSERT INTO `activity_log` VALUES (9, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 1, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\",\"next_billing_at\":\"2019-02-07 00:00:00\"},\"old\":{\"status\":\"Active\",\"next_billing_at\":\"2019-01-12 00:00:00\"}}', '2018-12-12 11:30:25', '2018-12-12 11:30:25');
INSERT INTO `activity_log` VALUES (11, 'system', 'created', 11, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-12 11:42:31', '2018-12-12 11:42:31');
INSERT INTO `activity_log` VALUES (12, 'system', 'updated', 7, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-12 11:47:31', '2018-12-12 11:47:31');
INSERT INTO `activity_log` VALUES (13, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-12 11:47:31', '2018-12-12 11:47:31');
INSERT INTO `activity_log` VALUES (16, 'system', 'updated', 7, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-12 11:49:03', '2018-12-12 11:49:03');
INSERT INTO `activity_log` VALUES (17, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-12 11:49:03', '2018-12-12 11:49:03');
INSERT INTO `activity_log` VALUES (18, 'system', 'deleted', 7, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-12 11:49:32', '2018-12-12 11:49:32');
INSERT INTO `activity_log` VALUES (19, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 1, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\",\"next_billing_at\":\"2018-12-12 00:00:00\"},\"old\":{\"status\":\"Pending Cancelation\",\"next_billing_at\":\"2019-02-07 00:00:00\"}}', '2018-12-12 11:54:19', '2018-12-12 11:54:19');
INSERT INTO `activity_log` VALUES (20, 'system', 'created', 4, 'App\\Models\\CompanyPayment', NULL, NULL, '{\"attributes\":{\"notes\":\"Monthly Subscription Fee\",\"status\":\"Complete\",\"refunded_at\":null}}', '2018-12-12 11:54:41', '2018-12-12 11:54:41');
INSERT INTO `activity_log` VALUES (21, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', NULL, NULL, '{\"attributes\":{\"next_billing_at\":\"2019-01-12 00:00:00\"},\"old\":{\"next_billing_at\":\"2018-12-12 00:00:00\"}}', '2018-12-12 11:54:41', '2018-12-12 11:54:41');
INSERT INTO `activity_log` VALUES (22, 'system', 'updated', 13, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"DevinE\"},\"old\":{\"first_name\":\"Devin\"}}', '2018-12-12 11:57:36', '2018-12-12 11:57:36');
INSERT INTO `activity_log` VALUES (23, 'system', 'updated', 4, 'App\\Models\\CompanyPayment', 1, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Refunded\",\"refunded_at\":\"2018-12-12 11:57:49\"},\"old\":{\"status\":\"Complete\",\"refunded_at\":null}}', '2018-12-12 11:57:49', '2018-12-12 11:57:49');
INSERT INTO `activity_log` VALUES (24, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-12 13:21:52', '2018-12-12 13:21:52');
INSERT INTO `activity_log` VALUES (25, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-12 13:56:45', '2018-12-12 13:56:45');
INSERT INTO `activity_log` VALUES (26, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-13 11:37:36', '2018-12-13 11:37:36');
INSERT INTO `activity_log` VALUES (27, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-13 15:45:13', '2018-12-13 15:45:13');
INSERT INTO `activity_log` VALUES (28, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-13 15:46:13', '2018-12-13 15:46:13');
INSERT INTO `activity_log` VALUES (29, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-13 15:47:11', '2018-12-13 15:47:11');
INSERT INTO `activity_log` VALUES (30, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-19 22:55:29', '2018-12-19 22:55:29');
INSERT INTO `activity_log` VALUES (31, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-21 16:53:46', '2018-12-21 16:53:46');
INSERT INTO `activity_log` VALUES (32, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-21 16:55:14', '2018-12-21 16:55:14');
INSERT INTO `activity_log` VALUES (33, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 10:59:57', '2018-12-24 10:59:57');
INSERT INTO `activity_log` VALUES (34, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:15:55', '2018-12-24 13:15:55');
INSERT INTO `activity_log` VALUES (35, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:17:44', '2018-12-24 13:17:44');
INSERT INTO `activity_log` VALUES (36, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:22:43', '2018-12-24 13:22:43');
INSERT INTO `activity_log` VALUES (37, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:24:18', '2018-12-24 13:24:18');
INSERT INTO `activity_log` VALUES (38, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:26:17', '2018-12-24 13:26:17');
INSERT INTO `activity_log` VALUES (39, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:26:42', '2018-12-24 13:26:42');
INSERT INTO `activity_log` VALUES (40, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:27:24', '2018-12-24 13:27:24');
INSERT INTO `activity_log` VALUES (41, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:27:54', '2018-12-24 13:27:54');
INSERT INTO `activity_log` VALUES (42, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 13:28:20', '2018-12-24 13:28:20');
INSERT INTO `activity_log` VALUES (43, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"roles\":\"\"},\"old\":{\"roles\":\"Default\"}}', '2018-12-24 13:41:49', '2018-12-24 13:41:49');
INSERT INTO `activity_log` VALUES (44, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"DevinEE\"},\"old\":{\"first_name\":\"DevinE\"}}', '2018-12-24 13:45:21', '2018-12-24 13:45:21');
INSERT INTO `activity_log` VALUES (45, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Devin\"},\"old\":{\"first_name\":\"DevinEE\"}}', '2018-12-24 13:47:06', '2018-12-24 13:47:06');
INSERT INTO `activity_log` VALUES (46, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"DevinE\"},\"old\":{\"first_name\":\"Devin\"}}', '2018-12-24 13:47:14', '2018-12-24 13:47:14');
INSERT INTO `activity_log` VALUES (47, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Devin\"},\"old\":{\"first_name\":\"DevinE\"}}', '2018-12-24 13:47:18', '2018-12-24 13:47:18');
INSERT INTO `activity_log` VALUES (48, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"password\":\"$2y$10$SJX.S5Pj.ohH3EU3Z4eRUerK8rzqhy63nc8lao43SJKt8TpmwoHN.\"},\"old\":{\"password\":\"$2y$10$7Jy2NZINmRUjZpukSA1l7eTQgSmV6m0K7GRBtJAP\\/pTRctD3JnNkq\"}}', '2018-12-24 13:47:23', '2018-12-24 13:47:23');
INSERT INTO `activity_log` VALUES (49, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 14:13:03', '2018-12-24 14:13:03');
INSERT INTO `activity_log` VALUES (50, 'system', 'created', 17, 'App\\Models\\Company', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":null,\"email\":\"duva@mailinator.net\",\"phone\":null,\"address\":null,\"website\":null,\"logo_image\":null,\"currency\":null,\"language\":null,\"mail\":null,\"payment\":null}}', '2018-12-24 14:13:27', '2018-12-24 14:13:27');
INSERT INTO `activity_log` VALUES (51, 'system', 'updated', 17, 'App\\Models\\Company', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 14:13:28', '2018-12-24 14:13:28');
INSERT INTO `activity_log` VALUES (52, 'system', 'created', 12, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1}}', '2018-12-24 14:13:29', '2018-12-24 14:13:29');
INSERT INTO `activity_log` VALUES (53, 'system', 'created', 17, 'App\\Models\\Role', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Admin\",\"is_default\":1}}', '2018-12-24 14:13:29', '2018-12-24 14:13:29');
INSERT INTO `activity_log` VALUES (54, 'system', 'created', 18, 'App\\Models\\Role', 1, 'App\\Models\\User', '{\"attributes\":{\"name\":\"Billing\",\"is_default\":0}}', '2018-12-24 14:13:29', '2018-12-24 14:13:29');
INSERT INTO `activity_log` VALUES (55, 'system', 'created', 15, 'App\\Models\\CompanySubscription', 1, 'App\\Models\\User', '{\"attributes\":{\"amount\":44,\"term\":\"month\",\"status\":\"Active\",\"status_notes\":null,\"next_billing_at\":\"2019-01-05 00:00:00\",\"expires_at\":null,\"canceled_at\":null}}', '2018-12-24 14:13:29', '2018-12-24 14:13:29');
INSERT INTO `activity_log` VALUES (56, 'system', 'created', 15, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Cameran\",\"last_name\":\"Rutledge\",\"email\":\"duva@mailinator.net\",\"password\":\"$2y$10$HMDF3plSzdb1lCtdG\\/L76OxpUcbwFBXN519PU40VtcU9QMQmLuk3e\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":1}}', '2018-12-24 14:13:29', '2018-12-24 14:13:29');
INSERT INTO `activity_log` VALUES (57, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 14:13:50', '2018-12-24 14:13:50');
INSERT INTO `activity_log` VALUES (58, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-24 14:13:59', '2018-12-24 14:13:59');
INSERT INTO `activity_log` VALUES (59, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"DevinE\"},\"old\":{\"first_name\":\"Devin\"}}', '2018-12-24 15:22:49', '2018-12-24 15:22:49');
INSERT INTO `activity_log` VALUES (60, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Devin\"},\"old\":{\"first_name\":\"DevinE\"}}', '2018-12-24 15:22:56', '2018-12-24 15:22:56');
INSERT INTO `activity_log` VALUES (61, 'system', 'created', 16, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\",\"last_name\":\"User\",\"email\":\"billing@user.com\",\"password\":\"$2y$10$TJD9ARX0rmUBLArwwZzX0u242WG5C0B.rOGf9rMeMIFN.SRkiLm1y\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 14:04:49', '2018-12-26 14:04:49');
INSERT INTO `activity_log` VALUES (63, 'system', 'created', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\",\"last_name\":\"Test\",\"email\":\"billing@test.com\",\"password\":\"$2y$10$dg.N7tgVn7JQZJR.cOwhlOLks20RXdup\\/2Yri7ilXSwnk.V.ZnKG2\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 14:20:43', '2018-12-26 14:20:43');
INSERT INTO `activity_log` VALUES (64, 'system', 'updated', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"BillingE\"},\"old\":{\"first_name\":\"Billing\"}}', '2018-12-26 15:40:00', '2018-12-26 15:40:00');
INSERT INTO `activity_log` VALUES (65, 'system', 'updated', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\"},\"old\":{\"first_name\":\"BillingE\"}}', '2018-12-26 16:47:49', '2018-12-26 16:47:49');
INSERT INTO `activity_log` VALUES (66, 'system', 'updated', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"BillingE\"},\"old\":{\"first_name\":\"Billing\"}}', '2018-12-26 16:50:05', '2018-12-26 16:50:05');
INSERT INTO `activity_log` VALUES (67, 'system', 'updated', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\"},\"old\":{\"first_name\":\"BillingE\"}}', '2018-12-26 16:50:14', '2018-12-26 16:50:14');
INSERT INTO `activity_log` VALUES (68, 'system', 'created', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 16:55:47', '2018-12-26 16:55:47');
INSERT INTO `activity_log` VALUES (69, 'system', 'updated', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\"},\"old\":{\"first_name\":\"table\"}}', '2018-12-26 17:15:49', '2018-12-26 17:15:49');
INSERT INTO `activity_log` VALUES (70, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:24:14', '2018-12-26 17:24:14');
INSERT INTO `activity_log` VALUES (71, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:30:07', '2018-12-26 17:30:07');
INSERT INTO `activity_log` VALUES (72, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:30:45', '2018-12-26 17:30:45');
INSERT INTO `activity_log` VALUES (73, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:31:26', '2018-12-26 17:31:26');
INSERT INTO `activity_log` VALUES (74, 'system', 'deleted', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\",\"last_name\":\"Test\",\"email\":\"billing@test.com\",\"password\":\"$2y$10$dg.N7tgVn7JQZJR.cOwhlOLks20RXdup\\/2Yri7ilXSwnk.V.ZnKG2\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:31:27', '2018-12-26 17:31:27');
INSERT INTO `activity_log` VALUES (75, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:31:43', '2018-12-26 17:31:43');
INSERT INTO `activity_log` VALUES (76, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:43:59', '2018-12-26 17:43:59');
INSERT INTO `activity_log` VALUES (77, 'system', 'deleted', 18, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Billing\",\"last_name\":\"Test\",\"email\":\"billing@test.com\",\"password\":\"$2y$10$dg.N7tgVn7JQZJR.cOwhlOLks20RXdup\\/2Yri7ilXSwnk.V.ZnKG2\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:44:01', '2018-12-26 17:44:01');
INSERT INTO `activity_log` VALUES (78, 'system', 'created', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Foo\",\"last_name\":\"Bar\",\"email\":\"foo@bar.com\",\"password\":\"$2y$10$1sPiSCeUxCfO.M9.\\/6.nteQ6sDSpSigJ6IEldzMaY3MtcCx03tulO\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:44:39', '2018-12-26 17:44:39');
INSERT INTO `activity_log` VALUES (79, 'system', 'deleted', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Foo\",\"last_name\":\"Bar\",\"email\":\"foo@bar.com\",\"password\":\"$2y$10$1sPiSCeUxCfO.M9.\\/6.nteQ6sDSpSigJ6IEldzMaY3MtcCx03tulO\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 17:44:43', '2018-12-26 17:44:43');
INSERT INTO `activity_log` VALUES (80, 'system', 'updated', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"roles\":\"Admin\"},\"old\":{\"roles\":\"Billing\"}}', '2018-12-26 17:44:55', '2018-12-26 17:44:55');
INSERT INTO `activity_log` VALUES (81, 'system', 'updated', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"roles\":\"Billing\"},\"old\":{\"roles\":\"Admin\"}}', '2018-12-26 17:44:59', '2018-12-26 17:44:59');
INSERT INTO `activity_log` VALUES (82, 'system', 'deleted', 19, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"table E\",\"last_name\":\"test\",\"email\":\"table@test.com\",\"password\":\"$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc\\/w8OZ7hZfkeJFazRKm2NS\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-26 18:17:09', '2018-12-26 18:17:09');
INSERT INTO `activity_log` VALUES (83, 'system', 'updated', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Foo EE\"},\"old\":{\"first_name\":\"Foo\"}}', '2018-12-27 10:52:52', '2018-12-27 10:52:52');
INSERT INTO `activity_log` VALUES (84, 'system', 'deleted', 20, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Foo EE\",\"last_name\":\"Bar\",\"email\":\"foo@bar.com\",\"password\":\"$2y$10$1sPiSCeUxCfO.M9.\\/6.nteQ6sDSpSigJ6IEldzMaY3MtcCx03tulO\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-27 10:52:55', '2018-12-27 10:52:55');
INSERT INTO `activity_log` VALUES (85, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:40:59', '2018-12-27 17:40:59');
INSERT INTO `activity_log` VALUES (86, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:41:26', '2018-12-27 17:41:26');
INSERT INTO `activity_log` VALUES (87, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:42:12', '2018-12-27 17:42:12');
INSERT INTO `activity_log` VALUES (88, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:43:32', '2018-12-27 17:43:32');
INSERT INTO `activity_log` VALUES (89, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:44:36', '2018-12-27 17:44:36');
INSERT INTO `activity_log` VALUES (90, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:49:12', '2018-12-27 17:49:12');
INSERT INTO `activity_log` VALUES (91, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:49:22', '2018-12-27 17:49:22');
INSERT INTO `activity_log` VALUES (92, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:50:21', '2018-12-27 17:50:21');
INSERT INTO `activity_log` VALUES (93, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:50:54', '2018-12-27 17:50:54');
INSERT INTO `activity_log` VALUES (94, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:51:06', '2018-12-27 17:51:06');
INSERT INTO `activity_log` VALUES (95, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:51:09', '2018-12-27 17:51:09');
INSERT INTO `activity_log` VALUES (96, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:53:16', '2018-12-27 17:53:16');
INSERT INTO `activity_log` VALUES (97, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:53:18', '2018-12-27 17:53:18');
INSERT INTO `activity_log` VALUES (98, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:54:01', '2018-12-27 17:54:01');
INSERT INTO `activity_log` VALUES (99, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:54:03', '2018-12-27 17:54:03');
INSERT INTO `activity_log` VALUES (100, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:56:02', '2018-12-27 17:56:02');
INSERT INTO `activity_log` VALUES (101, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:56:04', '2018-12-27 17:56:04');
INSERT INTO `activity_log` VALUES (102, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 17:56:12', '2018-12-27 17:56:12');
INSERT INTO `activity_log` VALUES (103, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 17:56:14', '2018-12-27 17:56:14');
INSERT INTO `activity_log` VALUES (104, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 18:52:59', '2018-12-27 18:52:59');
INSERT INTO `activity_log` VALUES (105, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 18:53:04', '2018-12-27 18:53:04');
INSERT INTO `activity_log` VALUES (106, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 19:04:01', '2018-12-27 19:04:01');
INSERT INTO `activity_log` VALUES (107, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 19:04:03', '2018-12-27 19:04:03');
INSERT INTO `activity_log` VALUES (108, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 19:08:50', '2018-12-27 19:08:50');
INSERT INTO `activity_log` VALUES (109, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 19:08:52', '2018-12-27 19:08:52');
INSERT INTO `activity_log` VALUES (110, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-27 23:11:30', '2018-12-27 23:11:30');
INSERT INTO `activity_log` VALUES (111, 'system', 'created', 13, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-27 23:13:05', '2018-12-27 23:13:05');
INSERT INTO `activity_log` VALUES (112, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-27 23:13:16', '2018-12-27 23:13:16');
INSERT INTO `activity_log` VALUES (113, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-27 23:13:22', '2018-12-27 23:13:22');
INSERT INTO `activity_log` VALUES (114, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-27 23:20:26', '2018-12-27 23:20:26');
INSERT INTO `activity_log` VALUES (115, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-27 23:20:30', '2018-12-27 23:20:30');
INSERT INTO `activity_log` VALUES (116, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:52:47', '2018-12-27 23:52:47');
INSERT INTO `activity_log` VALUES (117, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:52:47', '2018-12-27 23:52:47');
INSERT INTO `activity_log` VALUES (118, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:52:57', '2018-12-27 23:52:57');
INSERT INTO `activity_log` VALUES (119, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:52:57', '2018-12-27 23:52:57');
INSERT INTO `activity_log` VALUES (120, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:53:01', '2018-12-27 23:53:01');
INSERT INTO `activity_log` VALUES (121, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:53:01', '2018-12-27 23:53:01');
INSERT INTO `activity_log` VALUES (122, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:53:52', '2018-12-27 23:53:52');
INSERT INTO `activity_log` VALUES (123, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:53:52', '2018-12-27 23:53:52');
INSERT INTO `activity_log` VALUES (124, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:53:57', '2018-12-27 23:53:57');
INSERT INTO `activity_log` VALUES (125, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:53:57', '2018-12-27 23:53:57');
INSERT INTO `activity_log` VALUES (126, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:17', '2018-12-27 23:54:17');
INSERT INTO `activity_log` VALUES (127, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:17', '2018-12-27 23:54:17');
INSERT INTO `activity_log` VALUES (128, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:45', '2018-12-27 23:54:45');
INSERT INTO `activity_log` VALUES (129, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:45', '2018-12-27 23:54:45');
INSERT INTO `activity_log` VALUES (130, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:47', '2018-12-27 23:54:47');
INSERT INTO `activity_log` VALUES (131, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:47', '2018-12-27 23:54:47');
INSERT INTO `activity_log` VALUES (132, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:50', '2018-12-27 23:54:50');
INSERT INTO `activity_log` VALUES (133, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:50', '2018-12-27 23:54:50');
INSERT INTO `activity_log` VALUES (134, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:51', '2018-12-27 23:54:51');
INSERT INTO `activity_log` VALUES (135, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:51', '2018-12-27 23:54:51');
INSERT INTO `activity_log` VALUES (136, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:54:55', '2018-12-27 23:54:55');
INSERT INTO `activity_log` VALUES (137, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:54:55', '2018-12-27 23:54:55');
INSERT INTO `activity_log` VALUES (138, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-27 23:55:17', '2018-12-27 23:55:17');
INSERT INTO `activity_log` VALUES (139, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-27 23:55:17', '2018-12-27 23:55:17');
INSERT INTO `activity_log` VALUES (140, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 09:42:04', '2018-12-28 09:42:04');
INSERT INTO `activity_log` VALUES (141, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 09:42:04', '2018-12-28 09:42:04');
INSERT INTO `activity_log` VALUES (142, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 09:42:06', '2018-12-28 09:42:06');
INSERT INTO `activity_log` VALUES (143, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 09:42:06', '2018-12-28 09:42:06');
INSERT INTO `activity_log` VALUES (144, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:09:03', '2018-12-28 10:09:03');
INSERT INTO `activity_log` VALUES (145, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:09:03', '2018-12-28 10:09:03');
INSERT INTO `activity_log` VALUES (146, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:09:04', '2018-12-28 10:09:04');
INSERT INTO `activity_log` VALUES (147, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:09:04', '2018-12-28 10:09:04');
INSERT INTO `activity_log` VALUES (148, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:12:47', '2018-12-28 10:12:47');
INSERT INTO `activity_log` VALUES (149, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:12:47', '2018-12-28 10:12:47');
INSERT INTO `activity_log` VALUES (150, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:12:48', '2018-12-28 10:12:48');
INSERT INTO `activity_log` VALUES (151, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:12:48', '2018-12-28 10:12:48');
INSERT INTO `activity_log` VALUES (152, 'system', 'deleted', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 10:21:45', '2018-12-28 10:21:45');
INSERT INTO `activity_log` VALUES (153, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:22:07', '2018-12-28 10:22:07');
INSERT INTO `activity_log` VALUES (154, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:22:07', '2018-12-28 10:22:07');
INSERT INTO `activity_log` VALUES (155, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:22:12', '2018-12-28 10:22:12');
INSERT INTO `activity_log` VALUES (156, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:22:12', '2018-12-28 10:22:12');
INSERT INTO `activity_log` VALUES (157, 'system', 'deleted', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 10:22:18', '2018-12-28 10:22:18');
INSERT INTO `activity_log` VALUES (158, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-28 10:36:01', '2018-12-28 10:36:01');
INSERT INTO `activity_log` VALUES (159, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-28 10:36:37', '2018-12-28 10:36:37');
INSERT INTO `activity_log` VALUES (160, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:37:12', '2018-12-28 10:37:12');
INSERT INTO `activity_log` VALUES (161, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:37:12', '2018-12-28 10:37:12');
INSERT INTO `activity_log` VALUES (162, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 10:37:14', '2018-12-28 10:37:14');
INSERT INTO `activity_log` VALUES (163, 'system', 'updated', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 10:37:14', '2018-12-28 10:37:14');
INSERT INTO `activity_log` VALUES (164, 'system', 'deleted', 13, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 10:37:19', '2018-12-28 10:37:19');
INSERT INTO `activity_log` VALUES (165, 'system', 'created', 21, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"delete\",\"last_name\":\"me\",\"email\":\"asdf@asdfads.com\",\"password\":\"$2y$10$FiZsvHtjWa6uejChdbIBDu9s4NpAMMqpN1\\/sQP7kn98PqbzqxuVJG\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-28 10:38:16', '2018-12-28 10:38:16');
INSERT INTO `activity_log` VALUES (166, 'system', 'deleted', 21, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"delete\",\"last_name\":\"me\",\"email\":\"asdf@asdfads.com\",\"password\":\"$2y$10$FiZsvHtjWa6uejChdbIBDu9s4NpAMMqpN1\\/sQP7kn98PqbzqxuVJG\",\"avatar\":null,\"superuser\":0,\"custom_permissions\":0,\"company_owner\":0}}', '2018-12-28 10:38:23', '2018-12-28 10:38:23');
INSERT INTO `activity_log` VALUES (167, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-28 10:38:48', '2018-12-28 10:38:48');
INSERT INTO `activity_log` VALUES (168, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-28 10:38:50', '2018-12-28 10:38:50');
INSERT INTO `activity_log` VALUES (169, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 10:47:35', '2018-12-28 10:47:35');
INSERT INTO `activity_log` VALUES (170, 'system', 'created', 14, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:06:04', '2018-12-28 13:06:04');
INSERT INTO `activity_log` VALUES (171, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 13:14:11', '2018-12-28 13:14:11');
INSERT INTO `activity_log` VALUES (172, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 13:14:57', '2018-12-28 13:14:57');
INSERT INTO `activity_log` VALUES (173, 'system', 'created', 15, 'App\\Models\\CompanyPaymentMethod', 1, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:15:25', '2018-12-28 13:15:25');
INSERT INTO `activity_log` VALUES (174, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 13:15:30', '2018-12-28 13:15:30');
INSERT INTO `activity_log` VALUES (175, 'system', 'deleted', 15, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:34:01', '2018-12-28 13:34:01');
INSERT INTO `activity_log` VALUES (176, 'system', 'deleted', 14, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:34:03', '2018-12-28 13:34:03');
INSERT INTO `activity_log` VALUES (177, 'system', 'created', 16, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:34:56', '2018-12-28 13:34:56');
INSERT INTO `activity_log` VALUES (178, 'system', 'deleted', 16, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:35:03', '2018-12-28 13:35:03');
INSERT INTO `activity_log` VALUES (179, 'system', 'created', 17, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:38:18', '2018-12-28 13:38:18');
INSERT INTO `activity_log` VALUES (180, 'system', 'created', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:40:38', '2018-12-28 13:40:38');
INSERT INTO `activity_log` VALUES (181, 'system', 'updated', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 13:40:45', '2018-12-28 13:40:45');
INSERT INTO `activity_log` VALUES (182, 'system', 'updated', 17, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 13:40:45', '2018-12-28 13:40:45');
INSERT INTO `activity_log` VALUES (183, 'system', 'updated', 17, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 13:40:48', '2018-12-28 13:40:48');
INSERT INTO `activity_log` VALUES (184, 'system', 'updated', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 13:40:48', '2018-12-28 13:40:48');
INSERT INTO `activity_log` VALUES (185, 'system', 'deleted', 17, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:40:49', '2018-12-28 13:40:49');
INSERT INTO `activity_log` VALUES (186, 'system', 'deleted', 11, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:40:51', '2018-12-28 13:40:51');
INSERT INTO `activity_log` VALUES (187, 'system', 'created', 19, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0}}', '2018-12-28 13:41:51', '2018-12-28 13:41:51');
INSERT INTO `activity_log` VALUES (188, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Pending Cancelation\"},\"old\":{\"status\":\"Active\"}}', '2018-12-28 13:42:06', '2018-12-28 13:42:06');
INSERT INTO `activity_log` VALUES (189, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 13, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Pending Cancelation\"}}', '2018-12-28 13:42:08', '2018-12-28 13:42:08');
INSERT INTO `activity_log` VALUES (190, 'system', 'updated', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 13:44:09', '2018-12-28 13:44:09');
INSERT INTO `activity_log` VALUES (191, 'system', 'updated', 19, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 13:44:09', '2018-12-28 13:44:09');
INSERT INTO `activity_log` VALUES (192, 'system', 'updated', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-28 13:44:10', '2018-12-28 13:44:10');
INSERT INTO `activity_log` VALUES (193, 'system', 'updated', 19, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-28 13:44:10', '2018-12-28 13:44:10');
INSERT INTO `activity_log` VALUES (194, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 14:26:22', '2018-12-28 14:26:22');
INSERT INTO `activity_log` VALUES (195, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 15:15:37', '2018-12-28 15:15:37');
INSERT INTO `activity_log` VALUES (196, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 1, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Canceled\"},\"old\":{\"status\":\"Active\"}}', '2018-12-28 15:15:52', '2018-12-28 15:15:52');
INSERT INTO `activity_log` VALUES (197, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 15:15:56', '2018-12-28 15:15:56');
INSERT INTO `activity_log` VALUES (198, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 15:36:08', '2018-12-28 15:36:08');
INSERT INTO `activity_log` VALUES (199, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 15:55:04', '2018-12-28 15:55:04');
INSERT INTO `activity_log` VALUES (200, 'system', 'updated', 13, 'App\\Models\\CompanySubscription', 1, 'App\\Models\\User', '{\"attributes\":{\"status\":\"Active\"},\"old\":{\"status\":\"Canceled\"}}', '2018-12-28 15:55:14', '2018-12-28 15:55:14');
INSERT INTO `activity_log` VALUES (201, 'system', 'updated', 1, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-28 15:55:17', '2018-12-28 15:55:17');
INSERT INTO `activity_log` VALUES (202, 'system', 'updated', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-29 14:02:10', '2018-12-29 14:02:10');
INSERT INTO `activity_log` VALUES (203, 'system', 'updated', 19, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-29 14:02:10', '2018-12-29 14:02:10');
INSERT INTO `activity_log` VALUES (204, 'system', 'updated', 18, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":1},\"old\":{\"is_default\":0}}', '2018-12-29 14:02:11', '2018-12-29 14:02:11');
INSERT INTO `activity_log` VALUES (205, 'system', 'updated', 19, 'App\\Models\\CompanyPaymentMethod', 13, 'App\\Models\\User', '{\"attributes\":{\"is_default\":0},\"old\":{\"is_default\":1}}', '2018-12-29 14:02:11', '2018-12-29 14:02:11');
INSERT INTO `activity_log` VALUES (206, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-31 18:05:41', '2018-12-31 18:05:41');
INSERT INTO `activity_log` VALUES (207, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-31 18:06:16', '2018-12-31 18:06:16');
INSERT INTO `activity_log` VALUES (208, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2018-12-31 18:07:28', '2018-12-31 18:07:28');
INSERT INTO `activity_log` VALUES (209, 'system', 'updated', 13, 'App\\Models\\User', 13, 'App\\Models\\User', '{\"attributes\":[],\"old\":[]}', '2019-01-01 14:20:34', '2019-01-01 14:20:34');
INSERT INTO `activity_log` VALUES (210, 'system', 'created', 22, 'App\\Models\\User', 1, 'App\\Models\\User', '{\"attributes\":{\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"adminuser@example.com\",\"password\":\"$2y$10$GN0pnaIoAvc.H10jH5x4rOPtlZ9n9EkYyrBxCCIRpCKl1uagBwwSa\",\"avatar\":null,\"superuser\":1,\"custom_permissions\":0,\"company_owner\":0}}', '2019-01-01 14:21:06', '2019-01-01 14:21:06');
COMMIT;

-- ----------------------------
-- Table structure for admin_settings
-- ----------------------------
DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE `admin_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab_order` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_settings
-- ----------------------------
BEGIN;
INSERT INTO `admin_settings` VALUES (1, 'General', 1, 'input', 'email', 'Email', 'Example input setting field', NULL, 'devinlewis@gmail.com', 0, '2018-12-03 21:48:25', '2018-12-03 13:32:38', NULL);
INSERT INTO `admin_settings` VALUES (2, 'General', 1, 'select', 'language', 'Language', 'Select your default language', '[\"English\", \"French\", \"German\"]', 'English', 0, '2018-12-04 01:08:10', '2018-12-03 13:36:04', NULL);
INSERT INTO `admin_settings` VALUES (3, 'API', 2, 'input', 'api_key', 'API Key', 'Another example for settings input', NULL, 'APIKEY', 0, '2018-12-04 01:08:10', '2018-12-03 13:36:30', NULL);
INSERT INTO `admin_settings` VALUES (4, 'API', 2, 'textarea', 'description', 'Description', 'Testing textarea type', NULL, NULL, 0, '2018-12-04 01:08:46', '2018-12-03 13:41:29', NULL);
INSERT INTO `admin_settings` VALUES (5, 'API', 2, 'checkbox', 'colors', 'Favorite Colors', '', '[\"Blue\", \"Red\", \"Green\", \"Yellow\"]', '[\"Blue\",\"Red\"]', 0, '2018-12-04 10:41:36', '2018-12-03 13:45:38', NULL);
COMMIT;

-- ----------------------------
-- Table structure for authentication_log
-- ----------------------------
DROP TABLE IF EXISTS `authentication_log`;
CREATE TABLE `authentication_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of authentication_log
-- ----------------------------
BEGIN;
INSERT INTO `authentication_log` VALUES (1, 'App\\Models\\User', 10, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-10 19:02:32', NULL);
INSERT INTO `authentication_log` VALUES (2, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-10 19:06:13', NULL);
INSERT INTO `authentication_log` VALUES (3, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-11 10:38:45', NULL);
INSERT INTO `authentication_log` VALUES (4, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-11 20:56:22', NULL);
INSERT INTO `authentication_log` VALUES (5, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-12 09:39:41', '2018-12-12 13:21:52');
INSERT INTO `authentication_log` VALUES (6, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-12 13:21:55', '2018-12-12 13:56:45');
INSERT INTO `authentication_log` VALUES (7, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-12 13:56:48', NULL);
INSERT INTO `authentication_log` VALUES (8, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-12 23:10:22', NULL);
INSERT INTO `authentication_log` VALUES (9, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 11:37:36', NULL);
INSERT INTO `authentication_log` VALUES (10, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 13:10:39', NULL);
INSERT INTO `authentication_log` VALUES (11, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 13:15:05', NULL);
INSERT INTO `authentication_log` VALUES (12, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:33:19', NULL);
INSERT INTO `authentication_log` VALUES (13, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:35:17', NULL);
INSERT INTO `authentication_log` VALUES (14, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:45:01', '2018-12-13 15:45:13');
INSERT INTO `authentication_log` VALUES (15, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:46:01', '2018-12-13 15:46:13');
INSERT INTO `authentication_log` VALUES (16, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:46:55', '2018-12-13 15:47:11');
INSERT INTO `authentication_log` VALUES (17, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 15:47:28', NULL);
INSERT INTO `authentication_log` VALUES (18, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 17:38:35', NULL);
INSERT INTO `authentication_log` VALUES (19, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 21:44:44', NULL);
INSERT INTO `authentication_log` VALUES (20, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-13 21:45:31', NULL);
INSERT INTO `authentication_log` VALUES (21, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-14 11:48:43', NULL);
INSERT INTO `authentication_log` VALUES (22, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-18 16:17:18', NULL);
INSERT INTO `authentication_log` VALUES (23, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-18 17:24:55', NULL);
INSERT INTO `authentication_log` VALUES (24, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-19 22:40:13', NULL);
INSERT INTO `authentication_log` VALUES (25, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-19 22:55:12', '2018-12-19 22:55:29');
INSERT INTO `authentication_log` VALUES (26, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-19 22:55:32', NULL);
INSERT INTO `authentication_log` VALUES (27, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-20 15:14:04', NULL);
INSERT INTO `authentication_log` VALUES (28, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-21 10:43:08', NULL);
INSERT INTO `authentication_log` VALUES (29, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-21 10:43:15', '2018-12-21 16:53:46');
INSERT INTO `authentication_log` VALUES (30, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-21 16:53:53', '2018-12-21 16:55:14');
INSERT INTO `authentication_log` VALUES (31, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-21 16:55:17', NULL);
INSERT INTO `authentication_log` VALUES (32, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-21 19:10:35', NULL);
INSERT INTO `authentication_log` VALUES (33, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-22 11:54:04', NULL);
INSERT INTO `authentication_log` VALUES (34, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 09:59:33', '2018-12-24 10:59:57');
INSERT INTO `authentication_log` VALUES (35, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 11:00:01', NULL);
INSERT INTO `authentication_log` VALUES (36, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:15:47', '2018-12-24 13:15:55');
INSERT INTO `authentication_log` VALUES (37, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:16:35', '2018-12-24 13:17:44');
INSERT INTO `authentication_log` VALUES (38, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:22:23', '2018-12-24 13:22:43');
INSERT INTO `authentication_log` VALUES (39, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:23:49', '2018-12-24 13:24:18');
INSERT INTO `authentication_log` VALUES (40, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:26:09', '2018-12-24 13:26:17');
INSERT INTO `authentication_log` VALUES (41, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:26:32', '2018-12-24 13:26:42');
INSERT INTO `authentication_log` VALUES (42, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:27:18', '2018-12-24 13:27:24');
INSERT INTO `authentication_log` VALUES (43, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:27:50', '2018-12-24 13:27:54');
INSERT INTO `authentication_log` VALUES (44, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:28:16', '2018-12-24 13:28:20');
INSERT INTO `authentication_log` VALUES (45, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:29:56', NULL);
INSERT INTO `authentication_log` VALUES (46, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 13:30:22', '2018-12-24 14:13:03');
INSERT INTO `authentication_log` VALUES (47, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 14:12:28', NULL);
INSERT INTO `authentication_log` VALUES (48, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 14:13:06', '2018-12-24 14:13:59');
INSERT INTO `authentication_log` VALUES (49, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-24 14:14:03', NULL);
INSERT INTO `authentication_log` VALUES (50, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-26 10:14:39', NULL);
INSERT INTO `authentication_log` VALUES (51, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-26 14:03:30', NULL);
INSERT INTO `authentication_log` VALUES (52, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-27 10:06:52', NULL);
INSERT INTO `authentication_log` VALUES (53, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-27 22:58:52', '2018-12-27 23:11:30');
INSERT INTO `authentication_log` VALUES (54, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-27 23:12:09', NULL);
INSERT INTO `authentication_log` VALUES (55, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-27 23:12:20', '2018-12-27 23:13:22');
INSERT INTO `authentication_log` VALUES (56, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-27 23:13:26', NULL);
INSERT INTO `authentication_log` VALUES (57, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 09:38:11', NULL);
INSERT INTO `authentication_log` VALUES (58, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 10:47:20', '2018-12-28 10:47:35');
INSERT INTO `authentication_log` VALUES (59, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 10:47:38', NULL);
INSERT INTO `authentication_log` VALUES (60, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 12:51:38', '2018-12-28 13:14:11');
INSERT INTO `authentication_log` VALUES (61, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 13:14:33', '2018-12-28 13:14:57');
INSERT INTO `authentication_log` VALUES (62, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 13:15:00', '2018-12-28 13:15:30');
INSERT INTO `authentication_log` VALUES (63, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 13:15:35', '2018-12-28 14:26:22');
INSERT INTO `authentication_log` VALUES (64, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 14:30:06', '2018-12-28 15:15:37');
INSERT INTO `authentication_log` VALUES (65, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:15:41', '2018-12-28 15:15:56');
INSERT INTO `authentication_log` VALUES (66, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:15:59', '2018-12-28 15:36:08');
INSERT INTO `authentication_log` VALUES (67, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:36:11', NULL);
INSERT INTO `authentication_log` VALUES (68, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:53:36', '2018-12-28 15:55:04');
INSERT INTO `authentication_log` VALUES (69, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:55:07', '2018-12-28 15:55:17');
INSERT INTO `authentication_log` VALUES (70, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 15:55:22', NULL);
INSERT INTO `authentication_log` VALUES (71, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-29 12:24:27', NULL);
INSERT INTO `authentication_log` VALUES (72, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 15:44:10', NULL);
INSERT INTO `authentication_log` VALUES (73, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 16:35:32', NULL);
INSERT INTO `authentication_log` VALUES (74, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 16:38:00', NULL);
INSERT INTO `authentication_log` VALUES (75, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 17:05:03', NULL);
INSERT INTO `authentication_log` VALUES (76, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 17:05:16', NULL);
INSERT INTO `authentication_log` VALUES (77, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 17:10:09', '2018-12-31 18:05:41');
INSERT INTO `authentication_log` VALUES (78, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 18:06:12', '2018-12-31 18:06:16');
INSERT INTO `authentication_log` VALUES (79, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 18:07:23', '2018-12-31 18:07:28');
INSERT INTO `authentication_log` VALUES (80, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-31 18:07:42', NULL);
INSERT INTO `authentication_log` VALUES (81, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 09:44:26', NULL);
INSERT INTO `authentication_log` VALUES (82, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 11:53:41', NULL);
INSERT INTO `authentication_log` VALUES (83, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 11:54:00', NULL);
INSERT INTO `authentication_log` VALUES (84, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:64.0) Gecko/20100101 Firefox/64.0', '2019-01-01 11:57:54', NULL);
INSERT INTO `authentication_log` VALUES (85, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 12:15:41', NULL);
INSERT INTO `authentication_log` VALUES (86, 'App\\Models\\User', 13, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 14:12:15', '2019-01-01 14:20:34');
INSERT INTO `authentication_log` VALUES (87, 'App\\Models\\User', 1, '192.168.33.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-01-01 14:20:37', NULL);
COMMIT;

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_profile_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` text COLLATE utf8mb4_unicode_ci,
  `payment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of companies
-- ----------------------------
BEGIN;
INSERT INTO `companies` VALUES (15, '1506129891', 'DRL Networks', 'devin@drlnetworks.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-11 16:50:45', '2018-12-11 16:50:46', NULL);
INSERT INTO `companies` VALUES (16, '1506134356', 'Log Test E', 'nasyta@mailinator.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-11 17:12:58', '2018-12-12 11:30:08', NULL);
INSERT INTO `companies` VALUES (17, '1506294059', NULL, 'duva@mailinator.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-24 14:13:27', '2018-12-24 14:13:28', NULL);
COMMIT;

-- ----------------------------
-- Table structure for company_payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `company_payment_methods`;
CREATE TABLE `company_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `payment_profile_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_last4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_expiration_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expiration_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_payment_methods_company_id_foreign` (`company_id`),
  CONSTRAINT `company_payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of company_payment_methods
-- ----------------------------
BEGIN;
INSERT INTO `company_payment_methods` VALUES (7, 15, '1505468397', 'Visa', '1111', '10', '22', 0, '2018-12-11 16:50:46', '2018-12-12 11:49:32', '2018-12-12 11:49:32');
INSERT INTO `company_payment_methods` VALUES (8, 16, '1505473016', 'Visa', '1111', '12', '20', 0, '2018-12-12 10:57:35', '2018-12-12 11:30:08', NULL);
INSERT INTO `company_payment_methods` VALUES (9, 16, '1505473025', 'Visa', '1111', '08', '25', 1, '2018-12-12 10:58:05', '2018-12-12 11:30:08', NULL);
INSERT INTO `company_payment_methods` VALUES (10, 15, '1505473477', 'Visa', '1111', '07', '24', 0, '2018-12-12 11:38:32', '2018-12-12 11:39:23', '2018-12-12 11:39:23');
INSERT INTO `company_payment_methods` VALUES (11, 15, '1505473539', 'Visa', '1111', '03', '19', 0, '2018-12-12 11:42:31', '2018-12-28 13:40:51', '2018-12-28 13:40:51');
INSERT INTO `company_payment_methods` VALUES (12, 17, '1505636993', 'Visa', '1111', '11', '25', 1, '2018-12-24 14:13:29', '2018-12-24 14:13:29', NULL);
INSERT INTO `company_payment_methods` VALUES (13, 15, '1505649757', 'Visa', '1111', '12', '25', 0, '2018-12-27 23:13:05', '2018-12-28 10:37:19', '2018-12-28 10:37:19');
INSERT INTO `company_payment_methods` VALUES (14, 15, '1505652711', 'Visa', '1111', '11', '31', 0, '2018-12-28 13:06:04', '2018-12-28 13:34:03', '2018-12-28 13:34:03');
INSERT INTO `company_payment_methods` VALUES (15, 15, '1505652742', 'Visa', '1111', '06', '24', 0, '2018-12-28 13:15:25', '2018-12-28 13:34:01', '2018-12-28 13:34:01');
INSERT INTO `company_payment_methods` VALUES (16, 15, '1505652844', 'Visa', '1111', '12', '31', 0, '2018-12-28 13:34:56', '2018-12-28 13:35:03', '2018-12-28 13:35:03');
INSERT INTO `company_payment_methods` VALUES (17, 15, '1505652868', 'Visa', '1111', '12', '28', 0, '2018-12-28 13:38:18', '2018-12-28 13:40:49', '2018-12-28 13:40:49');
INSERT INTO `company_payment_methods` VALUES (18, 15, '1505652876', 'Visa', '1111', '11', '23', 1, '2018-12-28 13:40:38', '2018-12-29 14:02:11', NULL);
INSERT INTO `company_payment_methods` VALUES (19, 15, '1505652885', 'Visa', '1111', '11', '32', 0, '2018-12-28 13:41:51', '2018-12-29 14:02:11', NULL);
COMMIT;

-- ----------------------------
-- Table structure for company_payments
-- ----------------------------
DROP TABLE IF EXISTS `company_payments`;
CREATE TABLE `company_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `company_subscription_id` int(10) unsigned NOT NULL,
  `company_payment_method_id` int(10) unsigned NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `refund_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `refunded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_payments_company_id_foreign` (`company_id`),
  KEY `company_payments_company_subscription_id_foreign` (`company_subscription_id`),
  KEY `company_payments_company_payment_method_id_foreign` (`company_payment_method_id`),
  CONSTRAINT `company_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `company_payments_company_payment_method_id_foreign` FOREIGN KEY (`company_payment_method_id`) REFERENCES `company_payment_methods` (`id`),
  CONSTRAINT `company_payments_company_subscription_id_foreign` FOREIGN KEY (`company_subscription_id`) REFERENCES `company_subscriptions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of company_payments
-- ----------------------------
BEGIN;
INSERT INTO `company_payments` VALUES (1, 15, 13, 7, '40022722931', '40022722931', 10.00, NULL, 'Monthly Subscription Fee', 'Refunded', '2018-12-12 10:41:30', '2018-12-11 17:32:47', '2018-12-12 10:41:30', NULL);
INSERT INTO `company_payments` VALUES (2, 15, 13, 7, '40022723169', '40022723169', 19.99, NULL, 'Monthly Subscription Fee', 'Refunded', '2018-12-12 10:49:22', '2018-12-11 17:48:05', '2018-12-12 10:49:22', NULL);
INSERT INTO `company_payments` VALUES (3, 15, 13, 7, '40022752038', '40022752038', 19.99, NULL, 'Monthly Subscription Fee', 'Refunded', '2018-12-12 10:53:24', '2018-12-12 10:51:03', '2018-12-12 10:53:24', NULL);
INSERT INTO `company_payments` VALUES (4, 15, 13, 11, '40022754193', '40022754193', 19.99, NULL, 'Monthly Subscription Fee', 'Refunded', '2018-12-12 11:57:49', '2018-12-12 11:54:41', '2018-12-12 11:57:49', NULL);
COMMIT;

-- ----------------------------
-- Table structure for company_subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `company_subscriptions`;
CREATE TABLE `company_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `term` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_billing_at` date DEFAULT NULL,
  `expires_at` date DEFAULT NULL,
  `canceled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_subscriptions_company_id_foreign` (`company_id`),
  CONSTRAINT `company_subscriptions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of company_subscriptions
-- ----------------------------
BEGIN;
INSERT INTO `company_subscriptions` VALUES (13, 15, 19.99, 'month', 'Active', NULL, '2019-01-12', NULL, NULL, '2018-12-11 16:50:46', '2018-12-28 15:55:14', NULL);
INSERT INTO `company_subscriptions` VALUES (14, 16, 99.99, 'year', 'Active', NULL, '2019-01-05', NULL, NULL, '2018-12-11 17:12:58', '2018-12-12 10:57:35', NULL);
INSERT INTO `company_subscriptions` VALUES (15, 17, 44.00, 'month', 'Active', NULL, '2019-01-05', NULL, NULL, '2018-12-24 14:13:29', '2018-12-24 14:13:29', NULL);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_05_12_204519_create_activity_log_table', 2);
INSERT INTO `migrations` VALUES (4, '2017_09_01_000000_create_authentication_log_table', 3);
INSERT INTO `migrations` VALUES (5, '2018_06_09_190408_add_column_to_users_table', 4);
INSERT INTO `migrations` VALUES (6, '2018_11_30_185635_create_permission_tables', 5);
INSERT INTO `migrations` VALUES (7, '2018_12_03_191330_create_admin_settings_table', 6);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `model_has_permissions` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (2, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (3, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (4, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (5, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (6, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (7, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (8, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (17, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (18, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (19, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (20, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (21, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (22, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (23, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (24, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (25, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (26, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (27, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (28, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (29, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (30, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (31, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (32, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (33, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (34, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (35, 'App\\Models\\User', 1);
INSERT INTO `model_has_permissions` VALUES (36, 'App\\Models\\User', 1);
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (14, 'App\\Models\\User', 13);
INSERT INTO `model_has_roles` VALUES (16, 'App\\Models\\User', 14);
INSERT INTO `model_has_roles` VALUES (17, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (15, 'App\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (14, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (15, 'App\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (14, 'App\\Models\\User', 21);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 22);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
INSERT INTO `password_resets` VALUES ('devinlewis@gmail.com', '$2y$10$AlExgcY1Gi5ACwh/UMnixe14M5mbVesnO41yJJzdlPXSjPaF5S/cm', '2018-12-10 19:02:09');
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(3) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'Members', 'List Members', 'admin.members.index', 'admin', 10, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (2, 'Members', 'View Member', 'admin.members.show', 'admin', 11, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (3, 'Members', 'Create Member', 'admin.members.create', 'admin', 12, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (4, 'Members', 'Create Member', 'admin.members.store', 'admin', 13, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (5, 'Members', 'Edit Member', 'admin.members.edit', 'admin', 14, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (6, 'Members', 'Edit Member', 'admin.members.update', 'admin', 15, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (7, 'Members', 'Delete Member', 'admin.members.destroy', 'admin', 16, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (8, 'Members', 'Delete Member', 'admin.members.restore', 'admin', 17, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (17, 'Administrators', 'List Administrators', 'admin.administrators.index', 'admin', 60, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (18, 'Administrators', 'View Administrator', 'admin.administrators.show', 'admin', 61, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (19, 'Administrators', 'Create Administrator', 'admin.administrators.create', 'admin', 62, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (20, 'Administrators', 'Create Administrator', 'admin.administrators.store', 'admin', 63, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (21, 'Administrators', 'Edit Administrator', 'admin.administrators.edit', 'admin', 64, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (22, 'Administrators', 'Edit Administrator', 'admin.administrators.update', 'admin', 65, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (23, 'Administrators', 'Delete Administrator', 'admin.administrators.destroy', 'admin', 66, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (24, 'Administrators', 'Delete Administrator', 'admin.administrators.restore', 'admin', 67, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (25, 'Administrator Roles', 'List Roles', 'admin.administrator-roles.index', 'admin', 70, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (26, 'Administrator Roles', 'View Role', 'admin.administrator-roles.show', 'admin', 71, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (27, 'Administrator Roles', 'Create Role', 'admin.administrator-roles.create', 'admin', 72, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (28, 'Administrator Roles', 'Create Role', 'admin.administrator-roles.store', 'admin', 73, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (29, 'Administrator Roles', 'Edit Role', 'admin.administrator-roles.edit', 'admin', 74, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (30, 'Administrator Roles', 'Edit Role', 'admin.administrator-roles.update', 'admin', 75, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (31, 'Administrator Roles', 'Delete Role', 'admin.administrator-roles.destroy', 'admin', 76, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (32, 'Administrator Roles', 'Delete Role', 'admin.administrator-roles.restore', 'admin', 77, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (33, 'Settings', 'View Settings', 'admin.settings.index', 'admin', 80, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (34, 'Settings', 'Update Settings', 'admin.settings.update', 'admin', 81, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (35, 'Activity Log', 'View Log', 'admin.activity.index', 'admin', 90, '2018-12-03 15:52:42', '2018-12-03 15:52:45');
INSERT INTO `permissions` VALUES (36, 'Activity Log', 'Delete Log', 'admin.activity.destroy', 'admin', 91, '2018-12-03 15:54:43', '2018-12-03 15:54:46');
INSERT INTO `permissions` VALUES (37, 'Users', 'List Users', 'account.users.index', 'account', 60, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (38, 'Users', 'View User', 'account.users.show', 'account', 61, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (39, 'Users', 'Create User', 'account.users.create', 'account', 62, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (40, 'Users', 'Create User', 'account.users.store', 'account', 63, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (41, 'Users', 'Edit User', 'account.users.edit', 'account', 64, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (42, 'Users', 'Edit User', 'account.users.update', 'account', 65, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (43, 'Users', 'Delete User', 'account.users.destroy', 'account', 66, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (44, 'Users', 'Delete User', 'account.users.restore', 'account', 67, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (45, 'User Roles', 'List Roles', 'account.roles.index', 'account', 70, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (46, 'User Roles', 'View Role', 'account.roles.show', 'account', 71, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (47, 'User Roles', 'Create Role', 'account.roles.create', 'account', 72, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (48, 'User Roles', 'Create Role', 'account.roles.store', 'account', 73, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (49, 'User Roles', 'Edit Role', 'account.roles.edit', 'account', 74, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (50, 'User Roles', 'Edit Role', 'account.roles.update', 'account', 75, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (51, 'User Roles', 'Delete Role', 'account.roles.destroy', 'account', 76, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (52, 'User Roles', 'Delete Role', 'account.roles.restore', 'account', 77, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (53, 'Settings', 'View Settings', 'account.settings.index', 'account', 80, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
INSERT INTO `permissions` VALUES (54, 'Settings', 'Update Settings', 'account.settings.update', 'account', 81, '2018-12-06 16:04:21', '2018-12-06 16:04:21');
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, NULL, 'Default', 'admin', 1, '2018-12-10 19:08:42', '2018-12-02 06:28:17', NULL);
INSERT INTO `roles` VALUES (14, 15, 'Admin', 'account-15', 1, '2018-12-11 16:50:46', '2018-12-11 16:50:46', NULL);
INSERT INTO `roles` VALUES (15, 15, 'Billing', 'account-15', 0, '2018-12-24 14:08:58', '2018-12-24 14:09:01', NULL);
INSERT INTO `roles` VALUES (16, 16, 'Admin', 'account-16', 1, '2018-12-11 17:12:58', '2018-12-11 17:12:58', NULL);
INSERT INTO `roles` VALUES (17, 17, 'Admin', 'account-17', 1, '2018-12-24 14:13:29', '2018-12-24 14:13:29', NULL);
INSERT INTO `roles` VALUES (18, 17, 'Billing', 'account-17', 0, '2018-12-24 14:13:29', '2018-12-24 14:13:29', NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superuser` tinyint(1) NOT NULL DEFAULT '0',
  `custom_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `company_owner` tinyint(1) DEFAULT '0',
  `adminly_settings` json DEFAULT NULL,
  `data` json DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, NULL, 1, 'Devin', 'Admin', 'devinlewis@gmail.com', '$2y$10$OjvzyjwfvgTBxIL0O9e8qeRvVeDnS9HF9zWf/MZgTFSAoRafphGO6', 'avatars/hW0Y4vrwM3lXuOny1aoApvcK4GkFUE47qZDAtBbH.jpeg', 0, 1, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": [{\"icon\": \"fal fa-users fa-fw\", \"path\": \"admin/administrators\", \"title\": \"Administrators\"}]}', NULL, 'IysXYGrZQZJnI5Xy3UylEveT8XAnNnzPkGOdGpPKDSBrXVcG5kagBEx2ALLk', '2018-05-12 20:59:49', '2018-12-10 19:08:18', NULL);
INSERT INTO `users` VALUES (13, 15, 2, 'Devin', 'Member', 'devin@drlnetworks.com', '$2y$10$SJX.S5Pj.ohH3EU3Z4eRUerK8rzqhy63nc8lao43SJKt8TpmwoHN.', NULL, 0, 0, 1, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, 'Fh6Gq7I6bLuxFWDTSJft7Tpe8qcTZtRErp6BRCoaEORZK1Sl4suiiB3YuAY3', '2018-12-11 16:50:46', '2018-12-24 15:22:56', NULL);
INSERT INTO `users` VALUES (14, 16, 2, 'Free', 'Member', 'nasyta@mailinator.net', '$2y$10$jsfXb458NQRnPepN52l5Quxil37Wt2P2arfpFKBZxx6xhP/lQryki', NULL, 0, 0, 1, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-11 17:12:58', '2018-12-11 17:12:58', NULL);
INSERT INTO `users` VALUES (15, 17, 2, 'Cameran', 'Rutledge', 'duva@mailinator.net', '$2y$10$HMDF3plSzdb1lCtdG/L76OxpUcbwFBXN519PU40VtcU9QMQmLuk3e', NULL, 0, 0, 1, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-24 14:13:29', '2018-12-24 14:13:29', NULL);
INSERT INTO `users` VALUES (18, 15, 2, 'Billing', 'Test', 'billing@test.com', '$2y$10$dg.N7tgVn7JQZJR.cOwhlOLks20RXdup/2Yri7ilXSwnk.V.ZnKG2', NULL, 0, 0, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-26 14:20:43', '2018-12-26 17:44:01', NULL);
INSERT INTO `users` VALUES (19, 15, 2, 'table E', 'test', 'table@test.com', '$2y$10$SUCu4IOEXfxK9snaDhFYSukWm5qms2Cc/w8OZ7hZfkeJFazRKm2NS', NULL, 0, 0, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-26 16:55:47', '2018-12-26 18:17:09', '2018-12-26 18:17:09');
INSERT INTO `users` VALUES (20, 15, 2, 'Foo EE', 'Bar', 'foo@bar.com', '$2y$10$1sPiSCeUxCfO.M9./6.nteQ6sDSpSigJ6IEldzMaY3MtcCx03tulO', NULL, 0, 0, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-26 17:44:39', '2018-12-27 10:52:55', '2018-12-27 10:52:55');
INSERT INTO `users` VALUES (21, 15, 2, 'delete', 'me', 'asdf@asdfads.com', '$2y$10$FiZsvHtjWa6uejChdbIBDu9s4NpAMMqpN1/sQP7kn98PqbzqxuVJG', NULL, 0, 0, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2018-12-28 10:38:16', '2018-12-28 10:38:23', '2018-12-28 10:38:23');
INSERT INTO `users` VALUES (22, NULL, 1, 'Admin', 'User', 'adminuser@example.com', '$2y$10$GN0pnaIoAvc.H10jH5x4rOPtlZ9n9EkYyrBxCCIRpCKl1uagBwwSa', NULL, 1, 0, 0, '{\"colors\": {\"info\": \"purple\", \"danger\": \"red\", \"primary\": \"blue\", \"success\": \"green\", \"warning\": \"orange\", \"secondary\": \"grey\"}, \"layout\": {\"header_style\": \"normal\", \"submenu_style\": \"bar\"}, \"favorites\": []}', NULL, NULL, '2019-01-01 14:21:06', '2019-01-01 14:21:06', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
