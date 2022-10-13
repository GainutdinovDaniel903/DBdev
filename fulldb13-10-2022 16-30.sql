#
# TABLE STRUCTURE FOR: katalog
#

DROP TABLE IF EXISTS `katalog`;

CREATE TABLE `katalog` (
  `id_knigi` int(11) NOT NULL AUTO_INCREMENT,
  `nazvanie` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avtor` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_postavshika` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  PRIMARY KEY (`id_knigi`),
  UNIQUE KEY `id_postavshika` (`id_postavshika`),
  CONSTRAINT `katalog_ibfk_1` FOREIGN KEY (`id_postavshika`) REFERENCES `postavshiki` (`id_postavshika`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (1, 'ea', 'Mr. Claud Jaskolski Sr.', 18, 367);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (2, 'quod', 'Jarret O\'Hara', 21, 325);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (3, 'voluptas', 'Justice Morissette', 35, 976);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (4, 'omnis', 'Linnea Kub', 43, 816);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (5, 'in', 'Zoe Upton', 64, 303);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (6, 'nobis', 'Miss Marquise Flatley', 65, 346);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (7, 'et', 'Brisa Marks', 77, 490);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (8, 'doloremque', 'Prof. Isidro Lueilwitz Sr.', 76, 292);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (9, 'omnis', 'Easton Wiegand', 45, 721);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (10, 'sapiente', 'Dr. Madisen Thompson Sr.', 26, 150);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (11, 'suscipit', 'Ashley Orn', 28, 337);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (12, 'mollitia', 'Britney Treutel', 39, 350);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (13, 'distinctio', 'Theresa Mosciski', 61, 926);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (14, 'sed', 'Jaylon O\'Hara', 69, 779);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (15, 'quas', 'Kellen Witting', 98, 510);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (16, 'voluptatem', 'Skylar Lehner', 15, 909);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (17, 'magni', 'Frank Nikolaus', 70, 198);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (18, 'id', 'Laverne Lueilwitz I', 14, 173);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (19, 'itaque', 'Mrs. Phyllis Herman Jr.', 25, 935);
INSERT INTO `katalog` (`id_knigi`, `nazvanie`, `avtor`, `id_postavshika`, `cena`) VALUES (20, 'non', 'Arianna Mayert', 79, 364);


#
# TABLE STRUCTURE FOR: klienty
#

DROP TABLE IF EXISTS `klienty`;

CREATE TABLE `klienty` (
  `id_klienta` int(11) NOT NULL AUTO_INCREMENT,
  `fio_klienta` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (1, 'Mr. Kade Murazik DDS');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (2, 'Wilmer Yundt');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (3, 'Oliver Hauck');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (4, 'Dr. Katlynn Schaden III');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (5, 'Abraham Zieme');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (6, 'Mr. Zander Collins I');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (7, 'Faustino Rau');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (8, 'Dr. Jovany Beer');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (9, 'Prof. Ansel Moore DVM');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (10, 'Guido Donnelly DDS');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (11, 'Mr. Favian Powlowski');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (12, 'Mr. Roderick Kirlin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (13, 'Aniya Rippin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (14, 'Marjorie Hamill II');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (15, 'Mathilde Nicolas');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (16, 'Julio Gutkowski');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (17, 'Kitty Kovacek DDS');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (18, 'Ms. Eldridge Ritchie');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (19, 'Katelyn Morissette');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (20, 'Dustin Hilll');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (21, 'Aglae Moen');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (22, 'Jettie Lebsack');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (23, 'Javier Gutmann Jr.');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (24, 'Mr. Ezequiel Williamson');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (25, 'Dr. Oren Halvorson');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (26, 'Prof. Mack Balistreri');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (27, 'Tyree Heller II');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (28, 'Dr. Oral Mosciski');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (29, 'Mrs. Rosina Smith');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (30, 'Lydia Marks');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (31, 'Lawson O\'Connell DVM');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (32, 'Aracely Little');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (33, 'Ms. Alia Durgan PhD');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (34, 'Orlo Crist');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (35, 'Ahmed Russel');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (36, 'Prof. Abigale Cremin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (37, 'Linnea Graham');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (38, 'Mrs. Marcelle Huels IV');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (39, 'Orland Macejkovic');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (40, 'Dr. Reed Koch');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (41, 'Prof. Charlie Bergnaum PhD');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (42, 'Krista Nolan III');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (43, 'Elian Jacobi');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (44, 'Coby Spinka');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (45, 'Ernestina Lakin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (46, 'Prof. Joey Strosin IV');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (47, 'Britney Blick');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (48, 'Malinda Towne');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (49, 'Prof. Raoul Lockman');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (50, 'Gillian Hermann');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (51, 'Lilliana Macejkovic DDS');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (52, 'Dr. Brianne Pollich');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (53, 'Ron Gottlieb');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (54, 'Prof. Jenifer Rohan Sr.');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (55, 'Laney Beatty');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (56, 'Prof. Bobbie Zboncak II');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (57, 'Vernie Goodwin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (58, 'Mrs. Aubrey Blanda');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (59, 'Jaquelin Ziemann');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (60, 'Mrs. Hosea Kihn III');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (61, 'Ernest Marquardt');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (62, 'Reinhold Maggio');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (63, 'Prof. Liliana Beier');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (64, 'Lucy Rippin II');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (65, 'Eldora Luettgen');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (66, 'Mr. Kenny Jacobs IV');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (67, 'Araceli Huels');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (68, 'Sallie Langworth');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (69, 'Shanie Rogahn');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (70, 'Frederique Will');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (71, 'Dominic O\'Connell');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (72, 'Murphy Stark');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (73, 'Dr. Karli Wintheiser Sr.');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (74, 'Raymond Rohan');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (75, 'Blaze Bernier');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (76, 'Helena Keebler');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (77, 'Deonte Satterfield');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (78, 'Elyse Keebler');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (79, 'Mr. Nikko Kunze');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (80, 'Zack Schuppe');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (81, 'Lorena Wunsch');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (82, 'Mr. Emory Weimann');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (83, 'Leonard Koelpin');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (84, 'Elisabeth Rempel');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (85, 'Leonel Conn');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (86, 'Vergie Nikolaus');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (87, 'Isai Bogan');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (88, 'Zoie Oberbrunner Sr.');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (89, 'Wilford Jacobi');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (90, 'Mr. Davin Hauck');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (91, 'Adrain Kohler');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (92, 'Mark Swift III');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (93, 'Ms. Laurie Powlowski PhD');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (94, 'Cortney Weissnat');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (95, 'Dr. Jett Hand Jr.');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (96, 'Eda Wintheiser');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (97, 'Miss Shyanne Lynch');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (98, 'Jameson Fahey');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (99, 'Genevieve Oberbrunner');
INSERT INTO `klienty` (`id_klienta`, `fio_klienta`) VALUES (100, 'Oran Streich');


#
# TABLE STRUCTURE FOR: postavshiki
#

DROP TABLE IF EXISTS `postavshiki`;

CREATE TABLE `postavshiki` (
  `id_postavshika` int(11) NOT NULL AUTO_INCREMENT,
  `nazvanie` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_postavshika`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (1, 'Kuhic, Hills and Ratke');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (2, 'Graham, Fisher and Herzog');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (3, 'Ortiz-Upton');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (4, 'Tremblay, Huels and Johnson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (5, 'Walker Inc');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (6, 'Tremblay-Hahn');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (7, 'Doyle-Swaniawski');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (8, 'Dietrich, Rodriguez and Pollich');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (9, 'Mosciski-Zboncak');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (10, 'Borer-Gaylord');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (11, 'White-Heathcote');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (12, 'Senger, Conroy and Carter');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (13, 'Rosenbaum-Jacobson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (14, 'Lind PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (15, 'Mosciski Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (16, 'Marks-Glover');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (17, 'Konopelski, Aufderhar and Rempel');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (18, 'Swaniawski PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (19, 'Schulist-Pacocha');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (20, 'Fahey, Kassulke and Denesik');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (21, 'Konopelski, Klein and Smith');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (22, 'Bernier, Batz and Lueilwitz');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (23, 'Wisoky LLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (24, 'Stoltenberg, Stracke and Gleason');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (25, 'Kulas, Fahey and Rogahn');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (26, 'Walker, Donnelly and Ziemann');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (27, 'Schamberger and Sons');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (28, 'Simonis-Bartell');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (29, 'Hilpert PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (30, 'Heidenreich, Schmidt and Rosenbaum');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (31, 'Reilly-Cruickshank');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (32, 'Stark-Abernathy');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (33, 'Jaskolski Inc');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (34, 'Senger-Boyer');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (35, 'Gislason LLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (36, 'Nitzsche-Gulgowski');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (37, 'Harvey-Murphy');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (38, 'Kshlerin PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (39, 'D\'Amore-Jerde');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (40, 'Shields-DuBuque');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (41, 'Beatty-Littel');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (42, 'Schneider Group');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (43, 'Bahringer, Parisian and Weissnat');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (44, 'Kiehn-Ritchie');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (45, 'Schiller Group');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (46, 'Maggio-Klein');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (47, 'Bartoletti, Oberbrunner and Mitchell');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (48, 'Hickle-Daniel');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (49, 'Dickens, Heller and Price');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (50, 'Effertz, Mante and Carroll');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (51, 'Zboncak PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (52, 'Witting, Cormier and Abernathy');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (53, 'Hettinger, McGlynn and Zboncak');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (54, 'Hudson Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (55, 'Bayer, Reichel and Weissnat');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (56, 'Heaney Inc');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (57, 'Pfeffer-Schamberger');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (58, 'Kunde-Ritchie');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (59, 'Upton, Keebler and Trantow');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (60, 'Stiedemann, Schultz and Auer');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (61, 'Gleichner, Little and Rath');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (62, 'Altenwerth, Lesch and Dickinson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (63, 'Ullrich-Simonis');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (64, 'Cummings, Strosin and O\'Connell');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (65, 'Kihn Inc');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (66, 'Goyette Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (67, 'Herzog-Legros');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (68, 'Strosin, Ziemann and Hudson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (69, 'Smitham-Zulauf');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (70, 'Glover, Morissette and Mayer');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (71, 'Purdy, Pouros and Schmeler');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (72, 'Wolf Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (73, 'Hettinger-Wuckert');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (74, 'Cummerata, Littel and Kutch');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (75, 'Haag-Fadel');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (76, 'Smitham Inc');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (77, 'Shields, Morissette and Schimmel');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (78, 'Koepp-Johnson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (79, 'Feest, Zboncak and Harber');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (80, 'Ritchie-Leffler');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (81, 'Botsford-Smitham');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (82, 'Kutch and Sons');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (83, 'Nolan PLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (84, 'Windler Group');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (85, 'Tillman-Beahan');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (86, 'Morar, Bruen and Klein');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (87, 'Hegmann, Rodriguez and Willms');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (88, 'Corwin Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (89, 'Nienow, Stoltenberg and Hansen');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (90, 'Rice-Rippin');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (91, 'Conn-Ortiz');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (92, 'Schamberger-Willms');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (93, 'Trantow, Dietrich and Hayes');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (94, 'Friesen, Lang and Upton');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (95, 'Olson Group');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (96, 'Quitzon-Anderson');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (97, 'Romaguera Ltd');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (98, 'Stark LLC');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (99, 'Gleichner, Lueilwitz and Jacobi');
INSERT INTO `postavshiki` (`id_postavshika`, `nazvanie`) VALUES (100, 'Hagenes, Ryan and King');


#
# TABLE STRUCTURE FOR: prodavcy
#

DROP TABLE IF EXISTS `prodavcy`;

CREATE TABLE `prodavcy` (
  `id_prodavca` int(11) NOT NULL AUTO_INCREMENT,
  `fio_prodavca` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_prodavca`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (1, 'Rosendo Graham Jr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (2, 'Belle Douglas');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (3, 'Faustino Huels');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (4, 'Ms. Paige Deckow');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (5, 'Arnulfo Cormier');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (6, 'Ms. Valerie Weber');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (7, 'Genoveva Kub Sr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (8, 'Madonna Koepp');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (9, 'Delilah Veum II');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (10, 'Octavia Mayer');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (11, 'Dr. Houston Fahey Sr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (12, 'Evie Bogisich');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (13, 'Jerad Ledner');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (14, 'Marquise Graham');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (15, 'Enola Nicolas');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (16, 'Braeden Heidenreich II');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (17, 'Dr. Quentin Boyer');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (18, 'Delphine Kohler');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (19, 'Prof. Price Champlin');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (20, 'Ora Batz');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (21, 'Ulices Bauch');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (22, 'Jacques Koss');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (23, 'Myrtie Armstrong');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (24, 'Terrence Hermiston');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (25, 'Fae Vandervort');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (26, 'Garland Gleichner');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (27, 'Elsie Spinka');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (28, 'Titus Runolfsdottir');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (29, 'Ms. Marcella Ankunding I');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (30, 'Rylan Heathcote');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (31, 'Prof. Devante Hirthe MD');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (32, 'Cale Hills');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (33, 'Prof. Quinton Berge');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (34, 'Colin Johns');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (35, 'Abby Schaden');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (36, 'Bobby Eichmann');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (37, 'Santina Thompson');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (38, 'Florence Huels');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (39, 'Wilson Johnston Sr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (40, 'Mireille White');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (41, 'Bo Emard DVM');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (42, 'Mr. Chadd Schuppe II');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (43, 'Mr. Manuela Leuschke DDS');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (44, 'Mr. Ole Veum Sr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (45, 'Prof. Johnathan O\'Reilly III');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (46, 'Fidel Doyle');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (47, 'Dr. Lindsey Hammes');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (48, 'Ubaldo Crooks');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (49, 'Cleta Prosacco');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (50, 'Nyasia Sanford');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (51, 'Queenie Schulist I');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (52, 'Cleveland Herman');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (53, 'Valentina Graham');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (54, 'Georgette Mueller');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (55, 'Jonathon Schamberger');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (56, 'Dagmar Schimmel V');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (57, 'Jodie Watsica');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (58, 'Whitney Gulgowski');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (59, 'Mr. Henri Rogahn');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (60, 'Mr. Tatum Feest Sr.');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (61, 'Stewart Streich');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (62, 'Rosanna Kerluke');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (63, 'Hanna Schinner');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (64, 'Mrs. Selena Ankunding DVM');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (65, 'Justine Kreiger');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (66, 'Terry Schowalter');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (67, 'Linnie Hudson');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (68, 'Mrs. Stacey Witting');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (69, 'Mr. Don Cassin');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (70, 'Mr. Juston Hessel');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (71, 'Lew Berge');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (72, 'Mr. Brant Fadel');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (73, 'Carmel Schuster');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (74, 'Kenny Heller');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (75, 'Freeman Ullrich');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (76, 'Jovanny Dach');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (77, 'Prof. Charlene Rutherford II');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (78, 'Audie McCullough');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (79, 'Dr. Alice Cruickshank');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (80, 'Alberta Labadie');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (81, 'Eveline Smitham');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (82, 'Prof. Raegan Sauer I');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (83, 'Michale Langosh');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (84, 'Jailyn Dibbert');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (85, 'Adelle Mayert');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (86, 'Alvis Gislason');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (87, 'Cielo Dibbert');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (88, 'Alexandro Gutkowski');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (89, 'Chance Jast');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (90, 'Dorris Schulist');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (91, 'Dr. Orlo Schamberger');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (92, 'Alicia Corwin');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (93, 'Keely Thiel V');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (94, 'Maya Ziemann');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (95, 'Prof. Hazel Lowe');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (96, 'Prof. Peyton Spencer');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (97, 'Prof. Jalyn Hauck');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (98, 'Magnolia Bogisich DDS');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (99, 'Cortez Wolff');
INSERT INTO `prodavcy` (`id_prodavca`, `fio_prodavca`) VALUES (100, 'Prof. Brayan Jacobs');


#
# TABLE STRUCTURE FOR: prodazhy
#

DROP TABLE IF EXISTS `prodazhy`;

CREATE TABLE `prodazhy` (
  `id_prodazhi` int(11) NOT NULL AUTO_INCREMENT,
  `id_klienta` int(11) NOT NULL,
  `id_knigi` int(11) NOT NULL,
  `id_prodavca` int(11) NOT NULL,
  `zarplata_prodavca` int(11) NOT NULL,
  `summa` int(11) NOT NULL,
  PRIMARY KEY (`id_prodazhi`),
  UNIQUE KEY `id_klienta` (`id_klienta`),
  UNIQUE KEY `id_knigi` (`id_knigi`),
  UNIQUE KEY `id_prodavca` (`id_prodavca`),
  UNIQUE KEY `zarplata_prodavca` (`zarplata_prodavca`),
  UNIQUE KEY `summa` (`summa`),
  CONSTRAINT `prodazhy_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienty` (`id_klienta`),
  CONSTRAINT `prodazhy_ibfk_2` FOREIGN KEY (`id_knigi`) REFERENCES `katalog` (`id_knigi`),
  CONSTRAINT `prodazhy_ibfk_3` FOREIGN KEY (`id_prodavca`) REFERENCES `prodavcy` (`id_prodavca`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (101, 96, 1, 80, 20377, 636);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (102, 46, 9, 85, 31274, 631);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (103, 80, 12, 87, 37608, 153);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (104, 57, 4, 89, 21263, 585);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (105, 24, 2, 18, 41845, 753);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (106, 60, 13, 33, 42871, 633);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (108, 100, 7, 60, 39149, 811);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (111, 16, 6, 7, 17523, 678);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (112, 95, 15, 51, 17181, 591);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (116, 72, 19, 99, 35701, 159);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (122, 88, 3, 64, 20047, 491);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (126, 6, 17, 47, 34244, 242);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (127, 4, 18, 76, 28069, 177);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (129, 56, 20, 14, 32437, 214);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (132, 47, 8, 53, 25550, 707);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (133, 11, 16, 46, 25137, 716);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (134, 26, 5, 4, 42396, 809);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (144, 97, 10, 50, 20691, 755);
INSERT INTO `prodazhy` (`id_prodazhi`, `id_klienta`, `id_knigi`, `id_prodavca`, `zarplata_prodavca`, `summa`) VALUES (153, 99, 11, 28, 33217, 859);


