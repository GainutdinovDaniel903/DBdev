#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '4', '1', 'Praesentium quibusdam quasi quibusdam est hic. Ut eos laborum unde ut est ut nobis. Accusamus praesentium ducimus sequi delectus at tempore ratione. Dolor quibusdam vel quibusdam natus dolores.', 'perferendis', 77, NULL, '1976-08-01 18:01:26', '2003-10-18 09:40:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '7', '2', 'Iure est maiores mollitia asperiores suscipit saepe tempore. Quia sit expedita eius corporis quam. Veritatis voluptatem cumque temporibus nihil alias sequi.', 'voluptas', 0, NULL, '1983-03-02 02:31:36', '1998-03-07 12:01:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '9', '3', 'Totam voluptatem aut enim ut facilis officia. Qui et ab blanditiis vero culpa nihil. Expedita voluptatem nemo dicta neque ut quia fugit.', 'molestiae', 48205972, NULL, '2011-07-08 23:44:36', '1975-05-23 04:11:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '5', '4', 'Dolor repudiandae maxime fugiat consequatur dicta. Aliquid eum doloribus et.', 'doloremque', 24, NULL, '1980-02-12 06:15:42', '1999-12-03 17:05:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '2', '5', 'Cum odio velit autem perferendis ut tenetur quia. Cum deserunt similique nisi consequatur. Laborum autem dolorem deserunt alias qui.', 'recusandae', 1350, NULL, '2008-05-28 09:32:29', '1976-02-18 19:36:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Et et blanditiis accusantium id omnis. Deleniti et laborum et. Et consequatur nihil voluptas officia et eos. Voluptatem sint qui omnis dolorem earum quo.', 'sed', 2736, NULL, '2017-03-03 20:38:01', '2020-08-27 06:08:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '10', '7', 'Neque nemo delectus aut et. Rerum ducimus mollitia ab. Odio ratione fugiat culpa suscipit sunt sequi.', 'tempora', 66, NULL, '2006-11-17 06:40:49', '2001-09-12 01:24:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '9', '8', 'Consequatur quia necessitatibus quaerat exercitationem nisi illo. Id officia voluptatem adipisci aut. Blanditiis ut asperiores eligendi totam sint. Qui amet commodi quae voluptatem et odio repellat.', 'ullam', 76127, NULL, '1995-06-12 06:12:45', '1985-02-10 09:48:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '3', '9', 'Ipsa in pariatur provident quidem ad deleniti officiis. Sint at voluptatem consequatur neque enim officiis. Voluptatem ad ipsa praesentium odit excepturi voluptatem. Voluptatibus corrupti consequuntur omnis odit soluta commodi velit.', 'veniam', 668760, NULL, '2009-08-04 00:59:50', '1972-05-09 09:39:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '6', '10', 'Ut aut quas vel at consequatur. Animi ipsam quis sed magni exercitationem. Et autem enim cupiditate veritatis.', 'aut', 70536535, NULL, '2001-04-15 03:41:29', '1982-11-20 15:13:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '4', '11', 'Nisi sequi voluptates similique dolor quo vitae nihil temporibus. Ad vel quaerat nihil et inventore eveniet provident. Omnis sequi et nemo sequi dolorem. Explicabo non aut atque hic iure deserunt quibusdam.', 'accusantium', 122745, NULL, '1980-09-29 14:03:09', '1998-04-19 10:48:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '2', '12', 'Incidunt ut ipsam ipsam rerum molestias ad numquam. Omnis qui amet voluptatum placeat distinctio. Hic ea quo ut ipsam mollitia dolores rerum unde. Et dolores mollitia et corporis velit error.', 'voluptatem', 83, NULL, '1975-12-12 17:12:02', '1982-07-27 10:41:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '8', '13', 'Rerum incidunt quis recusandae modi. Iusto voluptatem non iusto nulla fugit et. Voluptas asperiores quo ab. Aspernatur et minima commodi.', 'porro', 969835366, NULL, '1984-12-30 23:10:17', '1982-06-21 19:06:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '7', '14', 'Quam autem sequi veniam quas esse. Quia officia temporibus amet quia illo. Sunt ipsum est aut ipsa odio.', 'deserunt', 24370, NULL, '1996-04-01 08:30:29', '2012-04-11 09:21:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '2', '15', 'Est rerum nostrum error perferendis. Ex voluptate illo aut ut necessitatibus deleniti omnis. Iste qui commodi vitae aut quam est.', 'tempore', 52368, NULL, '1998-06-13 10:51:42', '2003-12-22 00:27:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '1', '16', 'Et at quibusdam quasi molestias nihil illo. Doloremque voluptas veritatis totam aut impedit non.', 'nulla', 94900, NULL, '1986-09-25 20:56:27', '2010-02-14 06:37:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '1', '17', 'Ut sed aut sequi asperiores. Autem hic excepturi molestias nisi tempora et. Ea dicta fugit ab maiores perspiciatis et delectus. Incidunt assumenda eos molestiae necessitatibus quos.', 'repellendus', 271618, NULL, '2008-10-24 16:00:15', '1995-05-19 01:50:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '1', '18', 'Qui debitis vel nisi ut est et. Nemo sunt itaque cum in aspernatur quia reprehenderit qui. Mollitia impedit nihil ratione consequatur. Qui iure expedita laudantium omnis assumenda asperiores occaecati.', 'fugit', 33, NULL, '2017-10-07 08:04:36', '2006-06-09 04:54:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '4', '19', 'Esse cum laboriosam earum alias rem. Pariatur in est corrupti pariatur.', 'omnis', 71609, NULL, '2017-10-01 04:14:59', '2005-04-20 17:04:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '20', 'Dicta dolor iure blanditiis natus suscipit. Placeat fugit illo tempore. Adipisci vero voluptas in. Molestias rerum sequi expedita facilis quibusdam.', 'deserunt', 0, NULL, '1993-05-22 06:57:19', '1986-05-08 16:26:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '9', '21', 'Nulla velit nihil placeat sed. Perspiciatis sint optio assumenda et deleniti laborum velit. Laudantium perferendis occaecati sint.', 'velit', 36, NULL, '1979-07-22 08:13:27', '2007-07-20 17:19:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '9', '22', 'Deleniti iste quia eos sed. Necessitatibus praesentium sed voluptas non dolorem. Laudantium aspernatur cum consectetur deserunt iure sed voluptate.', 'qui', 83439557, NULL, '1993-09-11 03:32:12', '2010-04-18 18:18:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '23', 'Sit atque asperiores quae. Accusamus nisi reiciendis a natus. Quis ipsam quae voluptatum molestiae asperiores repellendus ullam.', 'ut', 79432, NULL, '2011-04-11 12:54:21', '1979-09-27 17:43:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '3', '24', 'Rerum est blanditiis ut velit. Est odit doloremque ea molestiae. Eum et autem ipsa quae. Soluta dolorem velit nihil ut ut voluptas sit.', 'esse', 709, NULL, '2018-06-01 17:42:14', '1970-02-24 22:55:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '6', '25', 'Earum nulla est aut expedita. Aut accusamus quos rerum. Dolor officia nostrum doloremque voluptates repellat aut vitae vero. Sunt animi qui iste et.', 'et', 6, NULL, '2007-11-19 21:51:48', '1993-02-28 20:37:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '6', '26', 'Omnis quas atque rerum eos voluptates voluptate. Facere illum repudiandae a ut culpa dolorum. Quidem eligendi quo qui ut est velit. Incidunt est nostrum excepturi fugiat.', 'ut', 0, NULL, '1980-05-25 14:42:32', '2021-02-16 12:52:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '3', '27', 'Iusto sed eos velit est expedita quis ullam. Voluptatem aliquid vel facilis aut. Sint perferendis enim quas sunt voluptas atque vitae.', 'aut', 0, NULL, '2010-04-24 01:34:49', '1975-04-01 20:15:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '2', '28', 'Consequatur et dignissimos quaerat perspiciatis saepe ab illo. Vel et velit exercitationem asperiores. Enim alias accusamus enim ad eos optio amet. Sed amet voluptatibus quis at.', 'optio', 1, NULL, '2022-09-30 03:03:14', '1980-12-24 15:11:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '4', '29', 'Occaecati magni ex optio a nemo eos sint. Facilis non qui explicabo architecto quo porro. Perspiciatis quia nisi aut consequuntur sint eum a. Maxime sit architecto quo.', 'est', 592336, NULL, '2006-09-29 08:52:18', '1985-11-30 16:08:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '1', '30', 'Omnis delectus ullam voluptate molestias. Voluptatem ut blanditiis porro voluptatum qui itaque. Quis expedita molestiae labore ab ut. Error velit debitis et consequatur sint aut at incidunt.', 'dolore', 1, NULL, '2007-11-12 06:11:18', '1980-01-12 09:21:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '7', '31', 'Voluptas nam assumenda et placeat exercitationem. Est ut asperiores et dolorem.', 'qui', 529, NULL, '1973-07-12 08:02:49', '2019-02-16 19:21:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '8', '32', 'Reiciendis ut dolorem reiciendis harum voluptatem. Qui aspernatur consequatur ullam est velit. Eius molestiae rerum beatae et in aut.', 'occaecati', 226683039, NULL, '1991-09-26 00:02:55', '2021-12-06 03:43:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '7', '33', 'Autem suscipit sed dicta. Eum nemo aut neque. Quidem iste explicabo deleniti occaecati.', 'iste', 97637, NULL, '1972-01-05 00:52:53', '2021-11-13 10:29:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '5', '34', 'Dolorum aut harum fugiat vel ut ipsa. Expedita quasi quaerat atque a sit. Quibusdam eos ducimus qui optio sit soluta sed quibusdam.', 'nihil', 71842797, NULL, '1975-01-25 01:47:04', '1986-04-18 11:55:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '2', '35', 'Sed minus sit ea ea rerum. Laudantium consequatur quos consequatur harum. Quia nam et ut numquam.', 'quia', 22790, NULL, '2007-06-17 13:44:14', '2016-06-15 12:33:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '8', '36', 'Deserunt adipisci sapiente assumenda tempore sit perspiciatis. Veritatis vitae velit similique natus harum culpa velit. Voluptates voluptates necessitatibus consectetur nemo dolorem sit.', 'ut', 5, NULL, '1998-08-11 04:14:46', '2008-11-21 15:30:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '37', 'Inventore harum sit aut consequatur ex est amet ducimus. Consequuntur et et optio ea rerum reiciendis expedita magnam. Distinctio autem fugiat esse voluptatibus unde. Voluptatem omnis reprehenderit ex qui similique dignissimos eligendi.', 'et', 437481879, NULL, '1981-02-14 05:20:40', '2007-07-06 23:13:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '2', '38', 'Accusantium ut ea non alias. Sed atque tenetur eligendi consequatur. Voluptas ut dolorem voluptatem provident provident exercitationem saepe. Maxime est et dolorum quod reiciendis aspernatur voluptatem ut.', 'possimus', 3251, NULL, '2016-08-19 06:14:38', '1972-05-24 15:53:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '7', '39', 'Vitae est doloribus et sed cumque optio debitis. Saepe enim a impedit consequatur qui. Officia ducimus ipsam cum qui id mollitia.', 'consequatur', 10, NULL, '2013-09-08 12:57:22', '2016-06-27 13:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '3', '40', 'Autem voluptas magnam voluptas labore saepe. Repellendus esse soluta consequuntur rerum ut non. Reprehenderit rem corrupti soluta quam nihil adipisci quas. Cum non vel culpa porro cupiditate recusandae ut.', 'assumenda', 0, NULL, '1987-08-18 11:02:45', '2009-05-20 07:37:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '7', '41', 'Sunt sunt illum exercitationem dolore. Ut eum nesciunt accusantium nam expedita harum tempora occaecati. Soluta error voluptatibus est aspernatur cum architecto.', 'accusantium', 8971430, NULL, '2005-05-07 06:27:06', '1972-09-12 05:30:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '1', '42', 'Beatae ad unde eveniet facere quos incidunt sit. Rerum dolores et ut et quam. Recusandae vitae consectetur nemo tenetur. Labore fuga tempore dolorum qui repudiandae ullam fugit.', 'animi', 93002328, NULL, '1978-08-23 09:37:36', '1982-06-05 08:07:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '5', '43', 'Aut tempore voluptatibus modi dicta. Aut est omnis rerum aperiam. Occaecati et quis quisquam. Sunt illum quidem quaerat maiores sunt nulla consequatur.', 'nemo', 387, NULL, '2004-11-07 15:04:45', '1987-11-27 21:11:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '5', '44', 'Perferendis cumque voluptates adipisci corrupti est mollitia maxime. Ipsam dolorem iusto ea nisi explicabo veniam quae.', 'hic', 5085, NULL, '2015-08-19 10:48:32', '2012-06-07 00:19:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '7', '45', 'Autem consequatur vitae ratione error maiores. Minima perferendis dolorum voluptate doloremque minus. Quia et aut ex sunt porro voluptas non. Fuga id in rerum aut sunt.', 'quas', 0, NULL, '2002-10-31 17:43:54', '1990-03-24 16:20:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '7', '46', 'Non doloremque libero modi voluptates sit. Officiis consequatur consequuntur sapiente officia adipisci nemo accusantium animi. Ex tenetur nesciunt et debitis et cupiditate a.', 'necessitatibus', 2219, NULL, '1985-08-30 10:27:07', '1973-12-09 12:42:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '5', '47', 'Eos non vero et est hic ut. Ut rerum corrupti nihil consectetur. Exercitationem aut et pariatur ut laboriosam fugit.', 'dolorem', 0, NULL, '2014-04-14 11:59:59', '1979-10-27 16:43:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '7', '48', 'Porro ratione sunt accusantium ut est et. Est nesciunt fugit numquam tenetur doloremque ea earum. Quo ut voluptas beatae blanditiis et tenetur dolorem.', 'ut', 8, NULL, '2013-12-12 01:47:37', '1984-07-21 09:58:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '7', '49', 'Doloribus rerum vel hic reiciendis quibusdam. Maxime cum et voluptatem id. Alias qui sequi inventore iste voluptatem omnis vel. Et quaerat nesciunt cum voluptas veniam aspernatur.', 'est', 8147, NULL, '2003-04-29 03:02:31', '1992-08-19 21:15:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '8', '50', 'Vel quidem exercitationem aut accusantium ea adipisci. Velit cumque sit quo in hic voluptate laborum. Ea dignissimos voluptatem ad eos dolores ea libero.', 'qui', 87439799, NULL, '1971-01-11 03:49:08', '1995-04-12 07:53:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '10', '51', 'Consequatur debitis enim nisi occaecati dolor atque. Nisi laudantium culpa voluptates quisquam. Ut voluptas distinctio enim qui.', 'aliquid', 90, NULL, '1992-12-04 12:23:40', '1993-09-01 02:51:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '6', '52', 'Illum asperiores dignissimos aliquam amet natus qui quam. Provident autem dolore vitae inventore expedita. Et sint maxime enim fuga quia autem omnis.', 'asperiores', 1172234, NULL, '1972-08-02 03:40:47', '1996-11-13 17:43:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '7', '53', 'Tempora necessitatibus molestiae architecto dolor doloribus. Eius unde quaerat corporis. Cumque qui maxime modi magni. Illum aspernatur quibusdam voluptas dignissimos enim consequatur itaque.', 'fugit', 20, NULL, '1996-10-20 18:26:55', '1989-08-05 13:57:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '3', '54', 'Possimus ipsam dolores et molestiae ut officiis maxime. Et est quia sint quod enim. Nihil dolor et nostrum. Doloribus delectus vel debitis beatae nam aut.', 'debitis', 318, NULL, '2011-03-26 05:49:46', '1985-07-22 03:32:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '8', '55', 'Fuga laboriosam aut unde enim nihil. Voluptas quos illo molestias itaque delectus deserunt expedita. Exercitationem voluptas molestias non maiores et expedita illum velit. Commodi dolor id officiis.', 'dolorem', 72980890, NULL, '1999-01-02 10:24:07', '1991-08-31 06:37:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '2', '56', 'Temporibus harum enim quisquam ipsa quia. Unde et blanditiis voluptatem et quo. Ipsum et vitae qui aliquid maiores laudantium adipisci quasi. Est ab amet dolores enim quibusdam veniam.', 'nostrum', 34882, NULL, '1998-05-22 11:12:48', '1980-11-23 12:03:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '9', '57', 'Et fugit sit repudiandae et est fuga ut. Incidunt exercitationem natus maxime et. Enim ducimus eum architecto rerum dolor. Iusto reprehenderit eum ipsum quis dolorum voluptas quidem quasi.', 'excepturi', 0, NULL, '1990-02-19 08:34:50', '1982-08-09 00:10:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '10', '58', 'Iusto animi cumque autem incidunt quos. Tenetur voluptatem porro quis sint cumque. Laudantium et voluptatem sed ab ea.', 'esse', 0, NULL, '2020-10-27 07:20:25', '1994-01-02 03:38:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '4', '59', 'Blanditiis ut officia occaecati qui. Corporis et incidunt consectetur et. Itaque odit minus quasi quo sit.', 'rerum', 2774662, NULL, '2019-06-23 22:12:18', '1983-03-14 14:44:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '3', '60', 'Aliquid qui non maxime. Cumque corrupti magnam beatae architecto dignissimos et a nihil. Alias velit sunt adipisci adipisci vero sit sit soluta.', 'ex', 0, NULL, '1974-12-17 19:12:59', '2002-07-23 07:27:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '61', 'Occaecati cumque reprehenderit velit dolor. Sed et iusto nisi quo voluptatem repellat ut. Est at adipisci rerum sunt fugiat.', 'ipsam', 5, NULL, '1999-12-26 03:11:32', '1995-08-27 03:21:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '1', '62', 'Sequi eum omnis rem quas laudantium dolores. Dolores et exercitationem explicabo aut. Dolor ut ducimus eligendi soluta ab rerum recusandae. Rerum ut ipsum sint velit porro et voluptas est.', 'quidem', 0, NULL, '1990-10-23 02:46:51', '2017-10-07 17:14:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '10', '63', 'Eos aut rerum omnis et ullam voluptas. Ipsam non quia magnam et quis et. Et tempore enim iste aspernatur deleniti repudiandae totam.', 'aliquam', 287967688, NULL, '1993-01-02 23:48:09', '2009-03-14 20:13:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '8', '64', 'Ut et nulla assumenda accusamus. Veritatis dolores saepe iste voluptatem fugiat. Eos est sit voluptatibus repellendus incidunt.', 'accusamus', 8718794, NULL, '2020-01-18 04:45:05', '2000-05-23 20:08:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '6', '65', 'In consequuntur eos non voluptatum. Ipsa animi et error facilis iste maiores voluptates ut. Porro omnis qui ut est provident.', 'quis', 807197, NULL, '2017-04-11 23:08:39', '2018-03-10 03:22:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '1', '66', 'Sit aut officia doloribus eos voluptatibus assumenda. Est harum eligendi ex sed temporibus fugit accusamus. Ut unde iste culpa.', 'impedit', 825, NULL, '2013-11-18 15:03:45', '1997-04-02 19:17:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '5', '67', 'Ea nam vero veritatis et quae pariatur fugiat. Consequuntur omnis accusamus sit maxime deleniti quaerat. Id error consectetur omnis voluptatum facilis rem minima reprehenderit. Minus est alias quia optio qui ex non minima.', 'perferendis', 98873, NULL, '1992-02-01 08:35:55', '1996-01-22 17:49:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '6', '68', 'Fugiat blanditiis aspernatur nihil. Assumenda maiores sunt magni quod rerum vero et. Architecto laborum debitis sint enim veniam nisi aut. Molestiae quos ut molestiae eum corporis nulla.', 'qui', 78, NULL, '1977-01-08 01:31:49', '2004-11-13 10:04:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '3', '69', 'Et nostrum possimus blanditiis. Possimus est molestiae ipsam non est omnis. Ut reiciendis rerum similique et tempora asperiores.', 'et', 0, NULL, '2005-03-14 06:16:47', '2010-09-29 14:07:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '70', 'Autem quia quam et vel. Sed occaecati molestiae aperiam facilis.', 'officia', 0, NULL, '2000-08-10 09:40:15', '2003-10-25 12:48:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '9', '71', 'Sapiente sint adipisci ut est cum. Qui laudantium tempore quaerat itaque impedit. Molestias excepturi maiores et molestiae ut. Ea iusto ut quos alias odit dolores minima natus.', 'quasi', 72108, NULL, '1989-07-20 02:07:12', '1992-04-23 08:38:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '10', '72', 'Qui aut id reiciendis asperiores. Ut doloremque omnis placeat quo voluptatem nesciunt. Illum et reprehenderit omnis quo.', 'quidem', 38025687, NULL, '1977-03-08 15:29:32', '1977-05-25 11:56:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '2', '73', 'Error nisi officia repellat. Doloribus earum repellat vero ut. Voluptatem doloribus ut possimus delectus temporibus aut rerum tenetur. Omnis excepturi quidem inventore officiis ea.', 'non', 7690, NULL, '1997-03-10 16:41:04', '1988-05-16 10:36:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '4', '74', 'Fugiat rem neque quas in minima. Libero ducimus nostrum non molestiae odit.', 'commodi', 67423190, NULL, '2008-01-16 18:23:55', '1996-09-07 07:38:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '4', '75', 'Illum est suscipit error ea rerum autem ut aut. Sed et debitis numquam quis ipsam.', 'aut', 5, NULL, '2012-01-23 12:17:16', '1970-10-12 20:31:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '9', '76', 'Ea consequatur quae sunt neque iste voluptatem excepturi ut. Aut aut aut ea est molestias. Repudiandae autem qui facere provident non voluptate.', 'eveniet', 10424, NULL, '1974-03-03 13:48:11', '1995-12-12 11:47:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '10', '77', 'Quaerat aut aut quia iusto. Aut libero enim ducimus quasi delectus. Vero repudiandae consectetur accusamus.', 'molestias', 2, NULL, '1986-08-15 00:15:36', '2004-04-18 17:04:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '8', '78', 'Laborum sed odit consequatur. Voluptatem minima reprehenderit harum unde consequatur laboriosam. Mollitia odit ex voluptatem illum excepturi esse alias.', 'magnam', 3471673, NULL, '1971-06-23 04:52:34', '2018-08-18 14:47:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '5', '79', 'Ut nostrum voluptatum repellat aperiam. Adipisci ipsum eos nisi non inventore nihil distinctio neque. Laudantium sequi ducimus eligendi dolores voluptatem et sunt. Sit eligendi neque tenetur pariatur sed velit velit.', 'illo', 6410778, NULL, '1989-10-10 22:03:41', '2005-12-23 18:13:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '7', '80', 'In vero atque itaque corporis. Labore veritatis at repellendus a.', 'in', 194, NULL, '2002-01-05 21:32:21', '1972-03-11 01:36:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '5', '81', 'Et accusantium soluta qui vero. Amet facilis mollitia culpa assumenda temporibus. Omnis dolor reprehenderit iste. Rerum sequi ut expedita ipsum placeat enim sint sit.', 'non', 6710, NULL, '1980-03-22 23:53:48', '1990-07-24 22:09:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '5', '82', 'Rerum et molestiae dolor. Id facilis eos beatae pariatur. Voluptatem quaerat accusamus optio fugit vel sapiente.', 'aliquam', 0, NULL, '1988-03-10 17:37:59', '1976-06-27 12:35:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '2', '83', 'Natus magnam repudiandae adipisci est eaque. Dignissimos quia id sit omnis vel voluptatibus vel. Ut dolor minus similique asperiores. Asperiores est veritatis eveniet nostrum.', 'aut', 384725, NULL, '2021-01-20 15:28:31', '1975-07-26 16:41:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '1', '84', 'Quia expedita laborum assumenda ex quis quam. Tenetur soluta impedit provident minus. Ipsa ad qui architecto dolorem enim. Nam sit eveniet sint nulla quisquam quasi dolores. Nostrum quaerat dignissimos blanditiis odit est totam voluptatibus.', 'molestias', 4818971, NULL, '2010-04-22 11:50:16', '1981-07-19 01:11:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '8', '85', 'Voluptatibus et minus est doloribus ad sequi ex. Repudiandae eligendi ut dolores eveniet. Aut maxime sint qui quis debitis tempore et. Incidunt itaque adipisci id ipsam voluptatem.', 'excepturi', 261, NULL, '2007-01-17 09:33:19', '1980-10-14 02:39:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '9', '86', 'Delectus repudiandae qui magnam architecto error. Voluptatum velit eos explicabo expedita aliquid. Delectus impedit et animi sunt. Ut voluptates rerum et maxime molestias.', 'earum', 1, NULL, '1984-10-12 13:29:18', '1998-06-27 09:58:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '3', '87', 'Magnam est mollitia autem ea quia in cum nesciunt. Quasi iusto similique corrupti porro. Et quod dignissimos voluptatem enim. Nihil nostrum explicabo laudantium facilis earum unde quae.', 'vero', 1, NULL, '1998-12-17 22:00:45', '1971-06-12 10:30:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '6', '88', 'Et ipsum error aut enim eius est omnis voluptatum. Aut eius veritatis odio quia sed nulla. Et eaque facere omnis optio placeat cum vitae repudiandae. Mollitia reprehenderit ullam beatae dolorum laboriosam.', 'quae', 0, NULL, '2012-06-06 01:50:53', '2013-06-11 16:51:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '89', 'Quisquam porro commodi sit ab. Maiores consequatur quam perferendis delectus consequatur. Laudantium sapiente qui cum distinctio rem incidunt.', 'molestiae', 613504249, NULL, '2007-04-04 11:59:07', '2010-02-28 09:51:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '7', '90', 'Dolorem quod nesciunt est ut in. Corrupti magni quia veniam atque reprehenderit.', 'et', 3245, NULL, '2019-04-07 17:01:54', '1993-10-08 20:37:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '8', '91', 'Reiciendis autem fugit neque sapiente laboriosam qui. Ut illo ut sed accusamus quam suscipit. Enim optio sequi alias sit odio voluptatum.', 'incidunt', 0, NULL, '2007-12-14 04:44:55', '2020-04-27 19:00:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '10', '92', 'Cumque ut deserunt corrupti autem. Delectus id et architecto eveniet. Iure iusto quos labore officiis dolores quibusdam.', 'odit', 945496403, NULL, '2020-01-18 10:44:29', '1978-11-11 14:42:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '7', '93', 'Aut ipsam qui porro dolores. Labore sunt perferendis sed veritatis. Ipsum non dolorem sed quibusdam praesentium. Delectus sapiente magnam quas quia harum debitis nemo aut.', 'architecto', 0, NULL, '1973-08-26 23:46:38', '1990-05-07 21:57:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '8', '94', 'Est natus non dolorem qui nihil nobis aut. Quis quis alias voluptas qui. Cupiditate vitae et voluptatem ipsa est ipsum omnis dolorum. Exercitationem quaerat sequi sunt consequatur. Enim sunt ad nam et voluptatum.', 'quod', 0, NULL, '1970-01-22 04:56:16', '1999-05-14 21:44:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '7', '95', 'Itaque ut voluptatem qui et omnis quasi distinctio. Voluptatem a consequatur veniam ab neque qui. Eum molestiae ea aut eum.', 'qui', 1067, NULL, '1984-08-21 08:35:16', '2016-08-15 12:51:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '2', '96', 'Illum aspernatur omnis nulla perferendis hic eos vitae nihil. Dolore explicabo impedit et nulla reiciendis sit. Consequuntur porro error voluptatibus in esse dolores laudantium. Ratione est voluptatem aut recusandae et qui recusandae.', 'inventore', 0, NULL, '1972-03-25 12:25:41', '1982-03-28 16:07:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '9', '97', 'Et vero aut dicta dolorem ipsam laborum minus. Nihil sunt quo quae sapiente qui nihil. Eligendi voluptas nihil est magni ipsam quidem repellendus.', 'occaecati', 5380, NULL, '2012-11-24 18:56:12', '2011-02-04 00:22:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '98', 'Ut quod deserunt provident est et eos sit. Ipsum distinctio quod aut tempore possimus. Odit et alias aut unde ea culpa dolorem et. Rerum corrupti ad voluptas modi dignissimos ex aut.', 'voluptatibus', 56, NULL, '1981-02-01 09:07:59', '2012-07-27 07:55:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '7', '99', 'Et tempora qui cumque voluptas sint voluptate saepe suscipit. Rem ut ullam autem dolores atque quia eaque. Quis doloremque ipsa nihil atque.', 'cumque', 3229251, NULL, '2014-11-13 10:01:33', '1982-02-08 07:05:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '1', '100', 'Facilis sit consequatur voluptas id laborum in id. Veritatis sapiente in fuga esse repellendus porro. Vel quo illo tempora quas animi. Itaque suscipit commodi deserunt tempora est. Molestiae velit et nulla ab deleniti.', 'similique', 0, NULL, '1990-10-19 11:05:58', '2018-08-13 07:41:06');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'eum', '1993-06-09 00:54:17', '1977-07-17 16:28:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'officia', '1989-03-09 22:18:23', '2018-03-20 17:03:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'consequuntur', '1984-02-29 22:51:22', '2021-10-29 07:14:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'ad', '1990-10-08 02:32:59', '2017-07-04 09:37:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'quam', '1988-02-18 00:20:07', '2006-08-14 21:28:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'et', '1971-01-29 20:47:43', '1994-07-09 19:39:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'qui', '2013-12-10 11:52:06', '1979-11-25 06:51:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'sint', '1980-02-16 15:38:27', '1986-04-02 20:52:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'fugiat', '2013-08-09 13:48:50', '1974-01-16 17:53:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'porro', '1976-10-20 22:23:42', '2013-05-25 14:36:09');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '24', '2', 'Minima quod esse repellendus mollitia. Eius itaque modi iusto hic sint enim placeat. Odio repellendus eos provident laborum corrupti in maiores consequatur. Asperiores vel minus aut corporis unde natus.', '1984-07-09 20:11:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '28', '36', 'Consequatur enim sit labore alias. Sequi ut et sed quod. Accusamus rerum aut qui et sit distinctio cum iusto.', '2010-04-13 22:18:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '6', '31', 'Sed accusamus unde sit pariatur optio expedita id. Iusto sit quia velit ut sapiente modi aliquam et. Et harum labore perferendis magnam quae eum quis pariatur.', '2009-01-04 22:43:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '72', '87', 'Est in et ab mollitia qui. Doloribus officia dignissimos voluptatem optio quis itaque. Id ipsum tempore voluptas eos voluptas officia fuga. Quas non illo qui.', '2021-05-04 14:55:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '57', '28', 'Suscipit ratione at non voluptatum reiciendis. Eos cumque eius doloribus voluptatem voluptatibus. Voluptatem impedit nesciunt dignissimos dolor.', '2011-08-03 13:49:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '52', '16', 'Itaque omnis quasi sunt repellendus dolor dolorem. Nihil at architecto sit nihil cumque dolorem. Voluptate omnis earum voluptatibus doloremque.', '1995-06-12 12:23:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '24', '64', 'Vero sed sint eos est iusto vitae. Nisi nobis et atque minima deleniti qui omnis. Unde laborum non quisquam odit repudiandae aut reiciendis. Voluptas fugiat nihil aspernatur ut pariatur suscipit.', '2005-06-04 15:57:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '21', '87', 'Voluptatibus quia illum ipsum optio necessitatibus quam. Quis magni expedita rerum cumque tempora. Ipsum ut debitis dolorum aspernatur. Id laboriosam autem rerum occaecati.', '1982-10-15 04:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '7', '2', 'Ratione fugiat sit ut tempore. Similique temporibus est itaque laboriosam harum molestiae. Quas dignissimos dolores dolorem est incidunt.', '1972-04-22 18:08:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '2', '16', 'Sapiente enim recusandae eum reprehenderit architecto. Quam minus et distinctio quo aspernatur. Necessitatibus optio et ratione. Ad praesentium expedita quia iure quia in odit.', '2001-08-24 15:16:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '35', '63', 'Repudiandae modi rerum quod voluptatum unde quis excepturi. Sunt qui et numquam voluptatibus est. Dolorum neque ab aut beatae et saepe. Doloribus in magni et eum et.', '1972-02-23 10:42:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '50', '34', 'Eius ea debitis et laboriosam. Eius adipisci enim distinctio at ad accusamus. Ipsum illo qui et nobis ut.', '1984-09-09 07:27:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '50', '56', 'Repellendus similique quibusdam velit. Magni et aperiam ducimus et.', '1972-11-28 16:09:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '33', '91', 'Voluptatem vel aut explicabo illo eum deserunt nisi. Et facere vel ut tempore.', '1977-09-05 07:05:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '3', '77', 'Et aut nulla officia et ut sunt. Qui quidem esse id et necessitatibus ratione quas. Delectus rerum quas est voluptas et occaecati eum et.', '1985-04-25 23:43:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '5', '27', 'Est earum cumque et quaerat eaque. Debitis eius rem deserunt accusantium ut eum omnis. Magnam neque neque similique in omnis consequuntur. Commodi eum eum repudiandae neque provident tenetur qui velit.', '1972-08-25 10:30:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '79', '33', 'Aut aperiam aut officiis in nulla voluptas dolorum. Officia doloribus rerum iusto voluptas in quia a omnis. Et nesciunt nemo quisquam ut. Aliquam omnis nihil ut qui officiis dolores iusto nesciunt.', '1991-02-28 03:04:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '62', '84', 'Sint ratione voluptas minima atque praesentium. Repellendus sint aspernatur et et consequatur incidunt id. Sed laboriosam cumque aut tenetur voluptate consectetur.', '2004-12-01 08:57:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '64', '34', 'Error quia sit possimus commodi et ex ut ullam. Quasi nemo voluptate illum consectetur rerum quidem maxime. Temporibus sed sed sit doloribus.', '1974-10-28 14:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '71', '21', 'Consequatur aut ipsa velit consequatur est quia iure soluta. Reiciendis optio illo eos maxime at rerum. Aperiam quas voluptatem ea id voluptas occaecati ut.', '1982-02-27 14:27:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '61', '22', 'Asperiores ab itaque ipsum repellat. Magni magnam natus id quia qui. Possimus id voluptatem eum et qui voluptas. Commodi illum eos asperiores voluptas et veritatis magnam et.', '1999-08-25 22:07:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '36', '85', 'Deserunt eum nihil sed voluptas. Architecto quisquam distinctio sit est. Amet molestias commodi quia dolor doloribus.', '2011-09-01 06:45:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '86', '56', 'Quis et hic dolorum et sunt dicta tempora. Quo rem quasi rerum natus. Aperiam maxime et autem perferendis error in deleniti.', '1980-01-24 17:20:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '71', '92', 'Rem ratione tenetur tempore alias perspiciatis. Iusto accusamus ad voluptatem rerum. Voluptatem et consequatur eos distinctio incidunt.', '1971-09-26 04:48:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '57', '73', 'Libero tenetur exercitationem dicta. Officiis placeat quaerat voluptate sit eius rem sit. Neque vel ratione hic.', '2012-12-01 05:20:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '8', '92', 'Minus iusto architecto vel voluptates assumenda. Id sed saepe cum molestiae consequatur et qui.', '1980-11-30 08:11:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '36', '57', 'Cumque non dolorum ut earum voluptas iure. Reprehenderit sint beatae quia. Beatae aut ut reiciendis.', '2021-07-25 05:44:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '25', '85', 'Sed et autem aliquid nulla aut. Et non rerum autem quia et omnis. Aperiam nulla autem fuga debitis asperiores. Unde et eius amet.', '1983-07-21 06:22:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '13', '58', 'Iusto quia officia atque cum omnis vitae. Et dolorum cum voluptatum expedita et aliquam. Omnis saepe est expedita atque qui dolores. Quia similique molestias architecto.', '1985-11-11 22:08:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '75', '15', 'Sint iste et sit qui error omnis reprehenderit. Quasi ut laborum dicta eum sed. Ipsa eum voluptatem nihil animi.', '1980-01-23 15:14:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '34', '79', 'Id maiores qui delectus necessitatibus dolore sit voluptatem laudantium. Voluptas earum modi sint ea a. Ut laborum labore qui voluptatem accusantium non. Rerum quae et culpa laborum optio facilis est.', '1983-05-27 15:56:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '41', '12', 'Qui dolorum quis autem quo ut vel. Officiis iste consequuntur neque recusandae modi dolorum. Doloribus aliquid incidunt fugiat dolorum veniam non ea quis. Est eveniet voluptate optio esse voluptate optio dolores.', '1982-12-20 14:09:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '12', '3', 'Ad in quia est cumque. Veritatis quis modi placeat consectetur et sed sit quis. Dolorum est quis voluptatibus aperiam sed libero. Similique id aut delectus quas quod atque a.', '1998-10-18 17:28:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '96', '75', 'Quae sit aliquam facilis in. Ut autem nulla eos ex voluptatem architecto. Voluptatem facere repellendus dolor ratione exercitationem laudantium et. Corrupti error blanditiis aut nisi temporibus accusantium saepe necessitatibus.', '1996-01-24 14:30:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '36', '66', 'Non rerum eum voluptatem sit et consequatur. Et ea illum totam quasi sapiente blanditiis minima. Harum sunt vel natus. Debitis voluptas repellat cupiditate dolorem provident qui aut.', '2014-06-02 05:42:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '95', '97', 'Quia ad et deleniti. Molestias aut reiciendis illo harum nam. Et iure quisquam blanditiis non.', '1983-05-21 20:19:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '88', '31', 'Dicta non explicabo consequatur rem quis rem id. Et facilis aut ad. Quia necessitatibus qui ad ducimus itaque sunt.', '1991-01-08 07:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '81', '73', 'Tempore ipsum incidunt consequatur consequatur quam. Aut esse nisi quo necessitatibus. Atque quia dolorum enim nam perferendis voluptates animi dolor. At qui ex sunt et.', '2018-03-27 09:22:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '87', '52', 'Doloremque iste cumque delectus aspernatur corporis non. Voluptate rerum magni aut id sed nobis quo. Quam commodi et inventore dolor laborum illum. Sapiente autem quia minima commodi at architecto.', '2003-12-23 20:28:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '65', '44', 'Aut amet quas beatae et. Delectus commodi voluptas aut corporis. Voluptates alias in id expedita molestiae odio ut. Necessitatibus laudantium iusto aut quae distinctio adipisci consequatur.', '2017-01-28 04:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '25', '72', 'Eligendi nihil culpa et eum et est. Quas placeat ipsam aspernatur voluptatem et possimus adipisci. Nam eos voluptate id iste quae repellat.', '1970-01-07 08:22:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '35', '60', 'Quas et non doloremque enim laboriosam tenetur. Veniam perspiciatis maiores est rerum sed officiis eligendi neque. Animi illum et et est in ab. Voluptatibus expedita nobis quis ut.', '2000-08-14 20:10:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '28', '60', 'Ex omnis impedit repellat voluptates. Praesentium qui ratione magnam impedit. Provident nisi provident quam accusamus sed pariatur consequatur consequatur. Nemo qui eos vel laborum.', '2021-09-13 02:49:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '45', '41', 'Quod quis vitae natus velit cum et consequuntur. Eligendi incidunt facere debitis laborum voluptatem quam est. Soluta cumque non aut ullam.', '1989-01-07 20:33:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '17', '19', 'Id dolor officia porro velit dicta. Cupiditate aliquid aut explicabo ipsa inventore ea sed. Harum eligendi fugiat voluptas natus saepe.', '2007-10-26 16:44:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '55', '51', 'Aliquam eligendi sequi perferendis ut natus voluptas. Alias ducimus nobis incidunt atque. Necessitatibus hic consequatur nihil ducimus placeat doloribus distinctio. Totam a qui excepturi voluptas magni.', '2000-09-27 03:42:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '98', '95', 'Atque quasi incidunt non perferendis et. Et labore amet perspiciatis et est delectus. Vel mollitia non eos.', '2012-11-27 12:35:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '63', '9', 'Quia dolorem quia corporis odit aut suscipit. Aut omnis assumenda qui libero et nihil. Minima commodi debitis aut consequuntur laborum. Est laboriosam hic quod aliquam inventore commodi.', '1976-10-05 22:20:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '97', '58', 'Enim est qui illo dicta et quis ut suscipit. Iste a ut doloribus. Iusto aut fugiat aut quia.', '2022-04-30 02:30:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '84', '32', 'Vero ipsa dolorem sequi. Est quis aliquam dolorem incidunt dolor assumenda nulla. Minus facilis quos aspernatur ad. Delectus veritatis cumque soluta autem et earum et.', '2007-01-05 09:28:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '23', '79', 'Et aliquid quisquam qui reiciendis quibusdam commodi error iure. Est eaque nihil consequatur. Et voluptatibus praesentium dignissimos perferendis mollitia aut doloribus. Iusto iure et animi veritatis voluptas.', '2022-03-22 12:56:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '29', '11', 'Consectetur sed minima odio harum omnis. Porro nihil ut et excepturi. Dolores sint eligendi nemo odit est hic autem. Et consequatur nostrum temporibus distinctio doloribus.', '1992-09-21 04:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '9', '9', 'Distinctio voluptas explicabo enim maiores. Asperiores voluptatum sapiente nihil voluptatum. Sunt ipsum dolores consectetur illum ut. Voluptas sint exercitationem perspiciatis repudiandae et.', '1989-12-25 08:54:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '83', '95', 'Velit consequatur quisquam ducimus aut fuga veritatis optio. Ut libero adipisci quia natus deleniti. Ipsa eveniet consequatur laborum ad molestias non et.', '1999-03-19 02:56:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '61', '48', 'Tenetur eaque debitis laboriosam ipsam ut. Qui pariatur sed a neque odit in fugiat. Et laudantium velit provident deserunt iure incidunt repellat velit. Laboriosam temporibus aut quam autem. Dolores repellat et atque aut.', '1991-09-09 07:17:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '38', '85', 'Praesentium recusandae eveniet sint in ipsa vitae aut non. Facere qui qui quis voluptatem.', '1995-11-16 04:19:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '19', '73', 'Dolor sint eius vel tenetur tempora ut deserunt. Id illum blanditiis et quam. Assumenda cumque assumenda iste sunt ut nemo.', '2009-02-27 19:55:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '44', '47', 'Praesentium et laudantium corrupti labore aut nobis. Atque cum repudiandae mollitia labore explicabo. Dolores dolorem corrupti asperiores possimus minus.', '1977-04-13 22:46:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '32', '88', 'Et explicabo qui impedit culpa qui ut. Qui dolor autem sunt rerum qui explicabo. Iure similique adipisci sit non deserunt. Autem et ullam magnam qui occaecati quidem. Non dignissimos odit ducimus soluta cumque nulla nobis.', '1994-10-24 04:01:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '87', '48', 'Explicabo velit quo magnam laudantium animi in. Quia occaecati quo nulla quisquam non. Aspernatur sed qui accusantium molestiae accusantium.', '1982-04-17 17:25:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '7', '41', 'Ipsam quia quia et et optio vel tenetur. Eveniet ipsam aspernatur dolores nostrum labore error dicta. Modi cumque sit eos et blanditiis minus. Eos unde eos sit et sapiente a. Et et enim omnis.', '2019-03-20 22:01:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '98', '4', 'Aliquid quia qui modi modi. Officiis et quibusdam dolor velit similique hic et nostrum.', '1990-03-02 08:34:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '36', '60', 'Explicabo exercitationem qui et deserunt sapiente dolor id a. Expedita eum excepturi doloribus soluta qui vel maiores saepe. Vero dolores dolores amet maxime perferendis harum.', '1986-07-09 09:56:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '13', '32', 'Repellendus nesciunt ipsa at nostrum ipsa officia. Sed alias ea id omnis non. Sint qui veniam voluptas quo et at.', '2018-07-28 17:32:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '18', '97', 'Voluptate veritatis atque dolor voluptatem. Doloremque aut culpa magnam.', '2003-07-21 13:12:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '64', '40', 'Et et placeat iure ut eius eum officia. Vel est corrupti doloribus sequi non occaecati necessitatibus.', '1977-08-25 00:04:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '75', '93', 'Iure ea ad porro possimus esse. Accusantium fugiat vel temporibus. In sapiente quis dolorem quia aliquam commodi harum. Dolorem quasi provident sed et.', '1996-06-23 10:07:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '50', '84', 'Perferendis vitae dolor corrupti et. Et ipsum sed ipsa at. Quam corrupti delectus molestias adipisci.', '1972-05-24 15:33:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '1', '33', 'Nisi sed hic et dolorem ut ut aut. Praesentium magni odio non molestias qui quod.', '1992-08-12 13:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '78', '61', 'Totam nobis assumenda commodi omnis. Iure tempore et hic reiciendis. Voluptate eum dolore assumenda. Cumque est assumenda vitae dolores provident consequatur. Ullam quia minus pariatur porro dolor eveniet laborum.', '2015-05-29 18:06:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '80', '16', 'Neque perspiciatis perspiciatis perferendis sit quis nam. Rem rerum ut nostrum. Repellendus molestiae accusamus voluptas perferendis rem incidunt itaque similique. Dicta omnis voluptas aut.', '1982-07-04 23:02:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '45', '99', 'Nemo rem ab est quae. Harum odit nesciunt facere sed. Enim dolor eligendi repudiandae. Reiciendis nihil dolor repellendus excepturi consequuntur.', '1976-12-17 18:59:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '88', '89', 'Vel excepturi quia voluptas ipsum dolores natus. Reprehenderit quaerat voluptate ad cum officia. Dolores laudantium sit dolore minima rerum velit aut vel. Consequatur quia tempora voluptatem illum assumenda commodi.', '1996-08-07 23:01:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '45', '19', 'Incidunt aut quia et aut et molestias sed autem. Quia ipsam placeat perferendis voluptas. Assumenda eos sit sunt delectus cumque aut.', '2000-12-19 03:31:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '77', '31', 'Minima error quo consequatur provident quia et eaque. Nihil atque rerum perspiciatis aut quo et. Tenetur vel ut vel voluptate. Officiis eius nemo facilis sit.', '1990-12-28 18:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '67', '84', 'Voluptatem reiciendis cupiditate et officia libero accusantium. Praesentium necessitatibus sit est vel quidem ducimus. In illum repellendus qui dolor natus id qui quod.', '1973-11-16 00:52:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '72', '65', 'Quo fuga fugiat nihil. Rem repellat officiis non libero. Labore saepe et quisquam atque.', '1989-03-21 15:53:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '87', '7', 'Doloremque corporis vitae tempora sit nemo voluptatibus. Quia facere officiis dolorem maiores. Qui qui et ea ut repellat esse doloribus expedita.', '1995-09-07 19:31:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '24', '100', 'Voluptates ut pariatur consequatur adipisci sint. Aliquid qui ut qui delectus.', '2005-07-28 12:32:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '39', '42', 'Magni rerum ut doloremque voluptates. Distinctio neque facere at doloribus quasi architecto non. Rerum architecto officia sapiente incidunt dolorum eos. Odit soluta facilis quia asperiores laudantium esse. Facere repudiandae laudantium porro quod.', '1998-03-11 09:38:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '96', '3', 'Fuga ut et modi dicta voluptate dolore. Et quisquam aut molestias tempora architecto. Dolorum consequatur laborum nemo et. Sint delectus deleniti quaerat nisi.', '2008-05-21 12:37:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '82', '70', 'Unde ullam et et minus. Assumenda omnis est voluptas enim. Corrupti qui reiciendis minus voluptatibus non.', '2012-04-04 18:53:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '95', '32', 'Possimus distinctio a reprehenderit illum quasi delectus beatae. Sequi corporis voluptatem ea dolorem ullam atque qui. Sit sunt doloribus laborum quia distinctio. Asperiores consequuntur quaerat fugiat voluptas fugit facilis.', '2020-09-28 01:01:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '53', '96', 'Velit explicabo officia et nostrum. Vitae omnis deserunt ducimus fuga et doloribus.', '1984-04-22 18:19:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '64', '31', 'Rerum qui ut ullam et nihil aut. Illum aperiam consequatur quidem quaerat vel. Neque nostrum fuga ipsam fugiat aperiam. Voluptas eum hic quo.', '2007-04-11 18:13:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '56', '44', 'Temporibus recusandae quia est rem perspiciatis. Illo voluptatem ducimus molestiae dolorem non. Et sed distinctio ut sed alias. Minima quos odio ut voluptas odit animi quia.', '2011-05-08 02:10:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '47', '1', 'Eum quod error excepturi earum mollitia. Itaque eius quam aut voluptatem quia aliquid omnis. Mollitia minus reiciendis voluptatem ut eius. Eligendi soluta quidem molestiae non et et.', '2014-12-09 16:30:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '42', '35', 'Omnis et nesciunt quo deleniti labore non deleniti eveniet. Sint vitae atque eos qui nobis. Natus aut quis qui voluptatibus veniam eaque aut aut.', '1981-11-13 18:56:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '90', '86', 'Hic voluptate culpa voluptates esse rerum. Quod sit incidunt esse ipsam qui est explicabo. Ut cupiditate qui distinctio omnis.', '2018-06-02 15:00:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '54', '67', 'Qui perferendis consectetur sequi et sapiente. Quod est veniam et laborum placeat veritatis. Et odit sed quasi.', '2005-09-27 17:57:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '17', '20', 'Qui veniam eligendi dolorem. Incidunt dolorem et nulla est autem magni fugit temporibus. Hic odit nisi commodi sed.', '1971-07-16 03:14:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '50', '88', 'Nobis praesentium ea rerum nam laboriosam officia hic. Quas sint corporis dicta quis. Provident quis omnis consequatur ut deserunt nam. Omnis est omnis error.', '2016-02-11 09:06:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '84', '37', 'Sint quis repudiandae omnis quo. Adipisci non earum dolore.', '2020-11-06 17:03:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '95', '8', 'Dolores autem assumenda optio. Id molestias vel incidunt odio doloremque reprehenderit molestiae. Eum illo ex mollitia.', '1985-07-05 15:42:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '36', '33', 'Adipisci aliquam earum doloribus. Maxime qui repudiandae culpa eius. Quidem voluptas necessitatibus repellat et accusamus. Voluptate repellat maxime dolor possimus perferendis et praesentium.', '1999-07-08 05:25:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '49', '32', 'Dicta aut odit maiores. Sint et explicabo veniam minus. Incidunt recusandae eaque illo quam. Assumenda voluptatem et velit fugiat error eos dicta.', '1995-07-28 08:48:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '36', '30', 'Molestias qui rerum dignissimos. Perspiciatis ut deserunt earum quasi ea.', '1973-07-31 00:16:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '2', '31', 'Placeat quaerat recusandae saepe blanditiis possimus nihil dolores. Itaque ipsam nesciunt eius rerum officia inventore.', '2010-12-10 19:48:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '61', '54', 'Nemo temporibus suscipit voluptas aut ratione est. Aut dicta saepe id alias natus aut nobis eveniet. Est expedita nihil necessitatibus voluptate eligendi ipsum.', '2000-12-11 19:49:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '26', '25', 'Nihil quis totam magnam ad iure accusantium ea et. Voluptas corrupti maxime quia. Accusantium est ab omnis qui quisquam. Dolor aspernatur reiciendis minus sed labore fugit ipsum.', '1975-03-02 01:30:28');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'sit', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'qui', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'unde', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'dignissimos', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'dolores', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'cupiditate', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'magnam', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'omnis', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'quis', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'eligendi', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'et', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'reiciendis', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'est', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'perspiciatis', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ipsam', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'architecto', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'dolorem', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'illo', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'repudiandae', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'neque', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'blanditiis', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'quis', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'quae', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'autem', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'atque', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'rem', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'sit', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'neque', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'pariatur', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'velit', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'et', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'quia', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'facilis', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'ad', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'doloremque', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'aut', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'molestiae', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'qui', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'accusantium', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'soluta', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'corporis', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'nihil', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'minima', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'facilis', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'voluptatibus', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'quibusdam', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'qui', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'et', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'commodi', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'totam', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'optio', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'praesentium', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'nihil', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'maiores', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'aspernatur', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'molestiae', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'velit', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'assumenda', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'nostrum', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'accusamus', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'vitae', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'ut', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'esse', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'voluptatem', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'dolores', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'cupiditate', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'quia', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'quidem', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'quo', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'qui', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'distinctio', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'veniam', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'qui', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'sunt', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'architecto', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'maxime', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'in', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'molestias', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'ut', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'voluptas', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'tempora', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'et', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'ut', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'iure', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'in', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'asperiores', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'saepe', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'recusandae', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'eaque', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'dolores', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'omnis', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'sit', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'nihil', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'iusto', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'consequatur', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'minus', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'rem', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'minus', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'autem', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'sit', '86');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '25', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '57', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '95', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '42', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '90', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '25', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '24', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '83', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '97', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '71', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '46', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '43', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '18', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '61', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '53', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '92', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '50', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '80', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '50', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '38', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '41', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '29', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '30', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '3', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '1', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '93', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '16', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '82', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '4', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '86', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '86', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '28', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '42', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '80', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '70', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '32', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '5', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '93', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '14', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '2', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '64', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '60', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '45', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '81', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '21', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '97', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '73', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '70', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '76', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '22', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '8', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '16', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '51', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '38', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '19', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '52', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '30', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '34', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '34', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '33', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '19', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '19', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '61', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '61', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '98', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '31', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '92', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '3', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '24', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '6', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '4', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '87', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '66', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '48', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '68', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '86', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '44', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '40', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '55', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '20', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '62', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '63', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '36', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '13', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '1', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '54', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '64', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '30', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '88', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '97', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '63', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '6', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '16', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '23', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '67', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '13', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '53', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '59', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '15', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '77', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'F', '1971-03-12', '6', '1973-10-09 21:17:39', 'Rauport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'M', '1975-02-06', '9', '2017-08-15 10:56:50', 'North Harrisonport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'M', '1993-08-08', '21', '2001-01-27 02:22:00', 'East Reggie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'M', '1987-09-13', '88', '1973-11-07 10:13:30', 'New Rosella');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'F', '2021-05-22', '57', '1993-12-28 00:58:38', 'Kaileestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'F', '1970-06-22', '79', '2015-03-02 14:31:38', 'Balistreribury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'M', '1985-09-08', '92', '2004-05-14 23:54:49', 'Heidenreichside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'F', '2004-11-13', '81', '2010-06-25 05:35:55', 'Koeppburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'M', '2008-03-07', '68', '2003-01-14 22:52:12', 'Casperbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'F', '1996-09-18', '42', '1983-11-23 22:04:45', 'Port Olamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'M', '2003-11-30', '65', '2005-04-07 09:01:39', 'West Wilfredfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'M', '2015-10-08', '3', '1973-12-05 16:54:19', 'Friesenfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'M', '2012-05-16', '56', '1998-06-04 16:43:08', 'New Hershelside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'M', '1987-10-03', '29', '1976-08-11 01:35:09', 'South Travon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'M', '2004-01-24', '92', '1983-06-30 05:03:26', 'Faymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'F', '2018-12-15', '67', '1999-08-03 18:06:25', 'Halvorsonfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'F', '1993-06-08', '12', '2020-08-18 02:22:12', 'Briabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'F', '1989-05-27', '84', '1997-11-15 04:03:33', 'Lake Erika');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'M', '1992-08-25', '49', '1978-06-28 15:25:51', 'Parkerstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'F', '2009-06-09', '2', '1973-09-29 15:54:46', 'East Jake');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'M', '2015-08-31', '6', '1986-12-25 18:07:09', 'Lake Travisfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'F', '2009-12-26', '71', '2017-12-28 13:14:58', 'North Domingofurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'F', '1973-03-08', '93', '2003-10-22 22:29:26', 'Miracleborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'F', '1981-05-19', '56', '1981-10-09 03:54:58', 'Baumbachville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'M', '1972-11-14', '54', '2013-12-06 02:27:55', 'Lukasville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'F', '1980-03-19', '93', '2013-12-17 01:17:37', 'North Max');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'F', '1972-05-06', '44', '2006-09-27 14:03:14', 'South Felixshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'M', '2011-06-09', '33', '1979-03-12 23:52:54', 'Waelchimouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'M', '1970-04-17', '88', '2022-04-06 13:11:15', 'Hudsonview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'F', '1982-05-16', '39', '1981-12-09 17:00:33', 'Wymantown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'F', '2009-02-18', '59', '1987-03-11 11:32:55', 'North Kittyberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'F', '1970-04-23', '93', '1985-04-04 20:57:55', 'East Norval');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'F', '1977-11-01', '48', '2001-09-28 00:28:01', 'Rempelfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'M', '1973-05-16', '80', '1970-12-29 00:58:24', 'South Delfinaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'M', '1980-03-25', '81', '2002-05-03 08:01:05', 'East Maynardfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'M', '1999-12-21', '4', '1992-10-16 23:46:38', 'Lake Alvah');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'F', '1976-10-04', '58', '1980-07-23 10:13:00', 'Norbertoberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'F', '1971-03-26', '72', '1995-10-30 19:44:43', 'South Joaquinside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'M', '1990-08-29', '85', '1984-04-24 12:03:49', 'Mullerbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'M', '1977-09-23', '26', '1981-06-16 14:28:51', 'New Shanyshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'M', '1977-08-22', '13', '1995-04-11 13:16:00', 'Stiedemannstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'F', '1996-08-31', '49', '2001-02-03 16:48:42', 'Alfredaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'F', '2019-12-07', '28', '2006-10-16 00:41:36', 'Leannonfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'F', '2015-10-26', '68', '1979-06-03 04:31:07', 'Dandreview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'F', '1997-07-18', '78', '1989-04-12 06:54:11', 'Dwightstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'M', '2004-04-02', '20', '2022-01-08 13:21:59', 'Port Titus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'M', '1997-10-06', '35', '2006-07-25 06:53:29', 'Rogermouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'F', '2008-08-11', '89', '1975-01-15 01:58:09', 'Benniemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'M', '2018-08-25', '3', '1977-03-05 15:08:15', 'Morarfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'F', '2012-08-23', '84', '2018-09-04 13:00:51', 'South Devenburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'F', '1996-12-15', '91', '2018-09-08 03:58:42', 'West Vada');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'F', '1981-05-01', '8', '1984-01-31 15:20:54', 'South Samirfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'F', '1990-05-12', '55', '2010-09-09 19:38:07', 'Port Casey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'M', '1971-11-21', '84', '2007-03-09 23:22:47', 'West Olaf');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'M', '2018-05-13', '64', '1971-10-31 12:11:16', 'Conroystad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'M', '1992-03-01', '8', '1972-11-22 04:23:38', 'Port Candiceville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'M', '1982-09-03', '76', '2011-04-14 18:11:42', 'Beckerside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'F', '2021-12-04', '8', '1998-01-24 01:11:25', 'Tyshawnside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'F', '1979-08-03', '41', '1996-03-16 23:37:13', 'North Katrina');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'M', '1976-07-26', '63', '2008-07-05 03:12:33', 'Bartolettiville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'M', '1987-03-08', '47', '1993-07-16 01:30:55', 'New Zoieview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'M', '2019-10-31', '99', '2004-03-05 11:20:30', 'Metzburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'F', '1992-03-16', '56', '1988-03-16 18:48:29', 'Denesikside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'M', '2021-03-30', '94', '2008-11-04 04:16:52', 'North Jordan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'M', '2021-01-15', '79', '1995-01-05 19:32:32', 'North Brittanyfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'M', '1993-09-18', '36', '1986-06-22 12:18:38', 'New Estevanborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'M', '1990-02-16', '97', '1992-01-12 20:31:13', 'East Arlenemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'F', '2015-07-09', '36', '1986-02-27 16:03:00', 'Johnstonside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'M', '1990-05-31', '8', '2001-05-11 15:38:38', 'Alejandrinville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'F', '1987-03-06', '82', '2011-09-18 15:39:58', 'Reynoldston');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'M', '2014-11-28', '61', '2002-05-27 00:50:20', 'West Wilhelmine');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'M', '2004-06-30', '21', '1992-12-03 07:52:59', 'Lake Linda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'M', '2019-09-30', '30', '1999-04-28 21:51:49', 'Ankundingstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'M', '2004-12-11', '89', '2021-04-30 06:14:59', 'West Ladariustown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'M', '1972-02-28', '89', '2007-06-13 06:01:25', 'Kevenberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'F', '1994-08-15', '8', '2020-03-11 00:10:02', 'Evechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'M', '1982-01-05', '8', '2017-06-02 11:07:02', 'West Caylahaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'M', '2000-02-06', '23', '2014-06-07 19:21:35', 'East Namebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'M', '2016-02-24', '97', '1972-03-24 06:26:50', 'Port Myahside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'F', '2010-05-28', '10', '1975-10-10 16:38:41', 'Port Angus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'M', '1975-07-16', '6', '2005-05-29 10:48:33', 'Adrienville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'M', '2001-05-19', '87', '2004-04-24 13:48:28', 'Nicolasside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'M', '1994-08-14', '18', '2011-11-28 18:32:29', 'Towneberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'M', '2000-05-25', '61', '1995-09-25 19:33:34', 'Lake Maxie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'M', '1980-02-09', '70', '2004-03-19 23:21:37', 'Lake Amya');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'F', '2006-05-21', '81', '2008-10-20 14:51:41', 'Hermannmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'M', '2012-10-06', '68', '1974-11-28 18:28:51', 'Krisberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'M', '1989-01-19', '46', '2008-07-18 06:54:23', 'Port Keyon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'M', '1993-03-12', '88', '2000-01-27 06:37:50', 'Murazikchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'M', '2012-08-10', '8', '1992-05-30 07:13:37', 'North Evangelineberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'F', '1970-03-02', '8', '2011-11-22 02:49:03', 'Howeside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'F', '2000-11-28', '34', '1992-08-09 04:31:13', 'Lake Destany');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'M', '1975-12-03', '7', '2014-07-13 13:49:15', 'Port Claremouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'M', '1996-03-14', '64', '2003-11-01 20:08:02', 'Spencerhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'F', '2003-06-13', '27', '1983-06-05 20:47:33', 'Darylfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'F', '2003-02-20', '85', '2005-01-19 12:22:48', 'Port Caterinaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'M', '1979-05-07', '100', '1991-11-01 18:41:20', 'New Kileyfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'F', '1995-04-02', '24', '2018-02-19 22:15:10', 'South Vivianestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'M', '1994-02-21', '21', '2009-06-20 06:19:49', 'Hickleton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'M', '1991-03-03', '7', '1977-05-13 16:15:56', 'Wisozkshire');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Jannie', 'Ziemann', 'abbott.delbert@example.net', '9e71befb90a639269eb54dbc39b7fcdb005fce7b', '89257360740', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Harry', 'Will', 'adalberto91@example.org', 'f579c7cae24b4ef4b16f7d01d982b82dee5938cf', '89913687594', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Neil', 'Blanda', 'beulah07@example.org', '1040c84f740e48c718b11dd67c8f4f171e0b7c70', '89375037158', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Jordyn', 'Kuhic', 'candido60@example.org', '3b47685906bfb238a919089c96a0dd8d45470e5c', '89129491087', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Nannie', 'Bernier', 'zechariah.grimes@example.net', '9c0336d01d2aa240768ca02fd025f1d8a0a9ba9e', '89140824177', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Cornell', 'Maggio', 'natalie08@example.com', '1b9a6570fce25b0fe08744e9558af84f48923153', '89007141633', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Antonio', 'Kerluke', 'wgreen@example.net', 'e4dfce200bb499ce6c503c280a1316d9bb22380f', '89302203927', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Ressie', 'Herzog', 'qmckenzie@example.net', '00dc5952549350c904db86a93c17afe2c0c84b17', '89519038716', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Ole', 'Blanda', 'barton.asa@example.com', 'f7166d6a9a075b8ec9d745343f208188b82da513', '89100922517', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Jessica', 'Brakus', 'craynor@example.org', 'a4f4bb4cfc3a1028286e401d01a5ca5041a9372e', '89992572859', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Gino', 'Lehner', 'bailee.maggio@example.org', '9490cc5512b1a1bcb6a718d6d2a9ece6188f7d52', '89298770058', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Mike', 'Wolf', 'tess54@example.com', '6fc85354f9b1311d18f7c5e08cd403aeca184cc4', '89212491509', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Garrick', 'Orn', 'aglae77@example.net', 'e015b9d277975e604d981165d6633a958256d7d2', '89305155267', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Walker', 'Kunze', 'bahringer.maryjane@example.com', 'd2b8ae1c01940d5d035fb7df057ee11377000ebc', '89729342788', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Stanley', 'Ward', 'mekhi.stiedemann@example.net', '01231216637bd051aaa2cba76ab1c52471d648dc', '89097014644', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Cecile', 'Schiller', 'streich.gisselle@example.net', '5f7b72db2a81cf3ce9b89ff95fe7af138a1638b2', '89708902808', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Lora', 'Schamberger', 'cremin.xander@example.com', '8400f4645e73a648871ece0c04ea3cdb55f4e267', '89667323336', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Deshawn', 'Weber', 'schuppe.gussie@example.com', '43a718a8e5954c011452c8f8b0bfcb11d7d6ca8f', '89421713512', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Rebeca', 'Boehm', 'xblock@example.net', '15da4af91608656ba09ae83872ecfa4883860fab', '89662898381', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Monte', 'Hickle', 'lon78@example.org', '3f6826f7f94a0875b05a0a29aebc3920a4ba58f5', '89291606890', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Morton', 'Monahan', 'kkeebler@example.com', 'b50d06dbb0f12c414e026962934088f6fc314579', '89653779056', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Edgar', 'Mosciski', 'wlindgren@example.com', '68a4cf9cfdc6b65ac23660e404da10a206a5abee', '89216823007', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Ilene', 'Powlowski', 'roman13@example.com', 'a6c82394bf9c5c2ecb34c51c4d685a88228c3f06', '89825969638', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Victoria', 'Ruecker', 'grover.brekke@example.com', '96ec942b2524ecf906d82bcc13bf2fa726b7b0dd', '89316353856', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Evelyn', 'Hills', 'ferry.chance@example.com', 'c45e091cddbe892a26c08cb25bb501e19e210efc', '89683648381', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Glenda', 'Eichmann', 'rodriguez.vito@example.org', 'ac8c047fed496d342ed2f8f1370526fa383d76e5', '89823460297', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Daniela', 'Collier', 'matilde.powlowski@example.net', 'c64a4c88f1896e3a6bd51d0d989ab7b2ea589626', '89672572885', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Mona', 'Fadel', 'madelyn87@example.org', 'bc35f409ed1129db78c3a0656707ced8af4d6381', '89174708961', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Frederique', 'Simonis', 'lee.skiles@example.com', '4e8f081050fc7b7d57fce3cabe53e18f8a350a0c', '89427560231', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Rosalia', 'Krajcik', 'thomas23@example.net', 'aa66030da10668b027b052e2cdf67da0db022803', '89614764081', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Marty', 'Morar', 'zoey.lockman@example.org', 'cbdc47de196b323f03b1da0cf38367a23bed5cc6', '89200253252', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Deven', 'Hintz', 'eleazar57@example.org', 'ef359f3143fda468a59709d8bc98aa2ccbc28e2b', '89380337034', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Pasquale', 'Beier', 'huels.dorian@example.net', '7ac0beb3585054f438c6d384ef3ee1d8adcca32a', '89158607836', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Darrel', 'Kling', 'myriam.haley@example.com', 'dc90d326cd14443e3daf6d07d5947707efee95fb', '89531731356', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Hiram', 'Grady', 'obatz@example.org', '8eecd9f9142a1a143778a7921ec8efac35c20e1e', '89505986486', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Keshaun', 'Thiel', 'edyth32@example.org', 'adcd809d0b3eab6143383500af5bb5752791fdfc', '89056190048', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Oscar', 'Terry', 'drew.hickle@example.net', 'b1081b55f683052eed92ce44f35da2e2aa3bbc6f', '89810426619', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Aubree', 'Mertz', 'dibbert.reagan@example.com', 'fca5bd92bd2225010f4e7a7cfe7f18ffee210289', '89820345583', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Geoffrey', 'Von', 'brandi61@example.net', '8139a165b1228b22656dd1c7097dcfe32cf9f31e', '89090382273', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Elwyn', 'Rippin', 'alba35@example.com', '122f9476740b1f9df1d9ff584b9231c4bfd3e7d0', '89949296929', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Demario', 'Lehner', 'kcummings@example.com', 'db9b64fd0bdb93e71e72a2d8cd2cfbfde3237fd8', '89256146361', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Jarred', 'Jones', 'abigail40@example.com', 'b159059e5e0cc55f3c6156f2ba07f6255c1faf07', '89252209606', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Coleman', 'Huel', 'veda66@example.com', 'e20ca37b5a1d5b223f35d55d8235a8e0654769da', '89413651400', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Edna', 'Lueilwitz', 'nedra.balistreri@example.com', '5d97311038de3b41d2f8ca5c6822edbaba495514', '89475418694', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Hettie', 'Dickens', 'grimes.walter@example.com', 'b928460ad298fb9445620287408a21de899efb9d', '89696963563', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Amelia', 'Balistreri', 'doyle94@example.net', '68111960d2960e33d3b5984995a7a975215e8bdd', '89226723646', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Lacey', 'Heller', 'madilyn.spinka@example.com', '5b3fd000b6248f6d0e0b2d06949d5473cdfe3c61', '89010686259', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Guadalupe', 'Kihn', 'gulgowski.curt@example.com', '8770c392d543f2a4f636ddf4194cf9c95361e5af', '89716860509', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Matilde', 'Brekke', 'rath.haylee@example.org', '8f1f0db09d531f22e48ea950af12b46cc777e07b', '89469361307', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Travis', 'Miller', 'jaime.lehner@example.net', '4a8aafd81e0ccb45c9c9420716ad724ba46f7a95', '89717560600', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Rubye', 'Lynch', 'jessyca.turcotte@example.org', '608013948016622f660ea7d5b2564397df012766', '89461556371', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Malcolm', 'Klocko', 'juston45@example.net', '36e9dd261ebf5bf5ab06dcd9409fe233de328bc5', '89127046507', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Violet', 'Renner', 'vivianne.cummings@example.net', 'e362e8fec3d432051c6e70da4bfefb9ac1d77504', '89928650022', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Gracie', 'Lang', 'dina.morissette@example.com', '1d1d4f95a822162f0e626228e312ca9b9f96bc1b', '89627770409', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Kyla', 'Oberbrunner', 'schmeler.verlie@example.net', '0abcd7bcd5a9b9571446e43fbab66efd2aba82fd', '89404565550', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Emmitt', 'Parker', 'qhickle@example.net', '754b203dc771961b63293bdba923406c69c3bf6e', '89961382190', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Mikayla', 'Murphy', 'odooley@example.com', '151ec92eaf7a0b0429b5b818d42b8e4a5c3eda4a', '89267887554', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Vicenta', 'Thompson', 'xwehner@example.net', '6230db8195c45192f562a01380e59a7f93a4367a', '89236950981', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Tyra', 'Kertzmann', 'oscar.wisoky@example.org', '75fff9443ff70537af221c28ababc59ed5081d4f', '89625120199', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Doris', 'Padberg', 'rohan.estell@example.net', '34e20a60ad230ddf636074a80518ccc862c0ed97', '89256861431', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Bailey', 'Schamberger', 'nschmidt@example.org', '264ccefe51683712662b21f86a62b70ce215c2b4', '89848269577', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Dewayne', 'Steuber', 'hilpert.matilde@example.org', '37b41dedf21a2974ba1c62e96faf69005ebfcaab', '89901177097', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Abigayle', 'Kreiger', 'pschaefer@example.net', '70c6729dd7b70f1f6cd41109811a9436032a152e', '89369863710', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Rupert', 'Quitzon', 'adams.bonnie@example.com', 'ce93fd699349578bebc5f97d9fdd8263506f804a', '89060556279', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Jarred', 'Gulgowski', 'roscoe.batz@example.org', 'b65d65aa4c3a979f40de9ac54bce454cd7cf6c47', '89180837298', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Bryana', 'Homenick', 'coby07@example.net', '0ce1a6956aae76dfa68aaf6b5a2f4c88585839b6', '89299614344', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Kristin', 'Satterfield', 'okuneva.alden@example.org', '77cf7ce3b194a02d571cc5178b0308d98d65efb4', '89538315463', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Emil', 'Hane', 'xo\'kon@example.net', '3c82ab092d96787520893e0437ca5a37d2c8de14', '89547743212', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Chelsea', 'Carter', 'dmclaughlin@example.org', '54161ec1b7415114bbee2a68c7827957acc18e90', '89292839889', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Robyn', 'Hartmann', 'mylene91@example.com', '17e1b0d0c4f20cd0ae406797246964d9774e4d07', '89509803302', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Leora', 'Hermann', 'hayes.tierra@example.com', '2db410421baf283dd4051705145ee83b134838aa', '89772496622', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Liliane', 'Hahn', 'korbin.west@example.com', '1f3deb132336326eab039572f212b0a6d130019c', '89416267707', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Brigitte', 'Hackett', 'wilkinson.marisol@example.net', 'fce2ab2bcfa2e159a6cd9fab749a7a5effd461ce', '89128172421', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Roselyn', 'Haag', 'toy.madelyn@example.net', 'cf40e55cec87642682c9f4e7705b8aa708843890', '89977061701', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Felicia', 'Anderson', 'wschneider@example.com', 'd49c2b1207a914bd1b7f2e0aa9f20893a29e9df6', '89007117911', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Kane', 'Stanton', 'elian87@example.net', '48996c5b4b1d66b23a72916c173c16c32d744d92', '89055494744', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Toni', 'Shields', 'sgislason@example.net', 'd59cfd93ba30f5a8d7b94d672d4bfb211f58feeb', '89162912325', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Ottilie', 'Effertz', 'clotilde80@example.com', 'c296b5edcbc679da04dc407781379fd059e8647a', '89444689064', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Alfonso', 'Huels', 'aiyana38@example.net', 'b836bd8e7b7dc288555995160d047f9005432222', '89394488857', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Bryon', 'Kutch', 'dbeahan@example.com', 'ef89226c6623d7b15a3ee1db09028bdb841c43bc', '89493440207', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Esther', 'Bradtke', 'jasen98@example.com', 'dea905269aeada80c67b00a9578e1431a73751e4', '89553258472', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Jess', 'Kilback', 'tmills@example.net', '6a76d9272e92c8ecc1ab929fbf39a1901c130ea2', '89391874675', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Danial', 'Miller', 'vallie.klocko@example.org', '3a83283e29d5ea9ff5a7c6a20154bd7a98c3faa2', '89963486316', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Lance', 'Koch', 'ojohnson@example.net', '64598a34517bc48df721818c6d5b7a3fca5f3612', '89734500242', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Delmer', 'Auer', 'jdicki@example.com', '6fdcd26a5e45d30a7c82a81d61e542e2ab1314e9', '89158526136', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Moises', 'Turcotte', 'stracke.eino@example.com', '13b48f5952d307f506d91a6da438874b363fd41f', '89294283892', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Enid', 'Morar', 'kacie.adams@example.net', '53cf2aa6e41d2c41a30b357b4e5a004456604b5b', '89091260354', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Clifton', 'Shanahan', 'norris.nicolas@example.com', '920e2732701f193b4c1f1fcc718e7cb8bb9e0c03', '89980041940', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Leilani', 'Kub', 'jtoy@example.com', 'cc698ac38e69c7f9c9742e34281593e6344f22c7', '89100434895', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Mariah', 'Morissette', 'adolph.quitzon@example.org', 'a76893f438f3f1ddc35ffda2448d4d275a47a12e', '89014622336', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Lavern', 'Casper', 'schuppe.rosalind@example.net', 'c4064efdb179ae7ff47a3c46557a93cc2a384906', '89940787318', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Carmela', 'Kertzmann', 'jameson.reinger@example.net', '151f0029fd574d58fac95dbf44530e804a7ea02a', '89021179987', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Violette', 'Pagac', 'kristofer.botsford@example.com', 'c750e321c1c2761937f08da3f1e54acde1114e3a', '89872330870', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Mafalda', 'Wolff', 'paucek.kailey@example.net', 'a10316448d7474db7f1723dc11bde604d22a523e', '89804097818', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Lillie', 'Watsica', 'lbailey@example.net', 'd37a4463e7c2d52c05c5fecae8118fa754ff54de', '89881881700', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Herminia', 'Koch', 'mdavis@example.org', 'a34a3ceca67802e94d574dd6ef36885a3b47b4b8', '89885092834', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Aurelio', 'Bednar', 'cschmidt@example.com', '93f2a2f0cb905c55925ca9c8fc392cb760eff63c', '89811218242', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Laurine', 'Cremin', 'magdalena07@example.com', 'b93a0eb40b0090c85e110ea2f8e4f6c96e6d9d35', '89142301151', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Maximilian', 'Greenfelder', 'maia95@example.com', 'bcf7fc011326e094585bcff0a0f22b771e70aa0b', '89904003321', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Jayme', 'Bogan', 'kuhic.dion@example.org', '1378efa9e76d869a4a57a096f4aee781c873a033', '89234565243', '0');


