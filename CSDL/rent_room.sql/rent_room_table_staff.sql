
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(41) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `AgencyiD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`StaffID`, `first_name`, `last_name`, `email`, `gender`, `address`, `phone`, `dob`, `salary`, `AgencyiD`) VALUES
(1, 'Mathian', 'Farney', 'mfarney0@weather.com', 'Male', 'Braddock Avenue Queens', '624-933-1133', '1982-04-29', 2029, 5),
(2, 'Fayina', 'Kensit', 'fkensit1@imgur.com', 'Female', 'Eighth Avenue Brooklyn', '448-121-1361', '1997-12-13', 1520, 12),
(3, 'Maia', 'Tidd', 'mtidd2@vk.com', 'Female', 'Eastern Parkway Brooklyn', '601-642-0661', '1980-04-03', 2317, 2),
(4, 'Bondy', 'McHale', 'bmchale3@wikispaces.com', 'Male', 'Fort Hamilton Parkway Brooklyn', '567-398-1823', '1992-02-07', 2652, 7),
(5, 'Rance', 'Reynoldson', 'rreynoldson4@mit.edu', 'Male', 'Jamaica Avenue Queens', '691-251-7611', '1973-03-10', 1060, 9),
(6, 'Filippa', 'Whatsize', 'fwhatsize5@creativecommons.org', 'Female', 'Francis Lewis Boulevard Queens', '464-918-6497', '1978-05-19', 1464, 2),
(7, 'Beulah', 'Playfair', 'bplayfair6@europa.eu', 'Female', 'Pelham Road Bronx', '119-160-8317', '1994-09-07', 611, 4),
(8, 'Sarene', 'Hexum', 'shexum7@cbc.ca', 'Female', 'Rockaway Boulevard Brooklyn', '452-842-1136', '1988-09-30', 1687, 15),
(9, 'Maddie', 'Dobell', 'mdobell8@prnewswire.com', 'Male', 'Little Neck Parkway Queens', '653-814-1348', '1997-08-24', 1342, 13),
(10, 'Christin', 'Eates', 'ceates9@wunderground.com', 'Female', 'Bowery? Fifth Avenue? Manhattan', '335-224-2092', '1981-05-10', 2450, 8),
(11, 'Zorana', 'Fairbourne', 'zfairbournea@wufoo.com', 'Female', 'Metropolitan Avenue Bronx', '813-436-0675', '1980-01-30', 2010, 10),
(12, 'Wilma', 'Clevely', 'wclevelyb@mysql.com', 'Female', 'Metropolitan Avenue Brooklyn', '823-674-5475', '1977-06-02', 1292, 2),
(13, 'Percival', 'Sudran', 'psudranc@amazon.com', 'Male', 'Bowery? Fifth Avenue? Manhattan', '286-784-5208', '1993-12-14', 2572, 6),
(14, 'Coralyn', 'Castella', 'ccastellad@whitehouse.gov', 'Female', 'Eighth Avenue Manhattan', '975-215-3504', '1984-03-18', 1268, 9),
(15, 'Rosanna', 'Hiscoke', 'rhiscokee@unblog.fr', 'Female', 'Little Neck Parkway Queens', '427-519-2920', '1986-04-01', 1261, 5),
(16, 'Shayla', 'Summerly', 'ssummerlyf@google.com.au', 'Female', 'Third Avenue Bronx', '875-389-3801', '1987-03-22', 2633, 10),
(17, 'Silas', 'Strowger', 'sstrowgerg@mozilla.org', 'Male', 'Nostrand Avenue Brooklyn', '463-875-9965', '1978-11-18', 1060, 1),
(18, 'Giovanna', 'Sollner', 'gsollnerh@youtu.be', 'Female', 'Stillwell Avenue Brooklyn', '653-624-5668', '1979-10-15', 538, 12),
(19, 'Clarissa', 'Gludor', 'cgludori@weather.com', 'Female', 'DeKalb Avenue Brooklyn', '366-692-0393', '1987-05-20', 2689, 15),
(20, 'Kylila', 'Zuann', 'kzuannj@uiuc.edu', 'Female', 'Prospect Avenue Brooklyn', '662-749-3999', '1993-11-04', 2773, 3),
(21, 'Stella', 'Heelis', 'sheelisk@eventbrite.com', 'Female', 'Dyre Avenue Bronx', '279-960-8611', '1996-05-23', 1367, 5),
(22, 'Harwell', 'Starbeck', 'hstarbeckl@msu.edu', 'Male', 'Sixth Avenue Manhattan', '857-147-1319', '1988-06-29', 2607, 6),
(23, 'Lyle', 'Camidge', 'lcamidgem@merriam-webster.com', 'Male', 'Bedford Avenue Brooklyn', '510-294-6897', '1987-06-16', 1931, 12),
(24, 'Findley', 'Corradeschi', 'fcorradeschin@surveymonkey.com', 'Male', 'Fountain Avenue Brooklyn', '766-429-1723', '1988-09-12', 2843, 10),
(25, 'Florry', 'Cloney', 'fcloneyo@house.gov', 'Female', 'Grand Street Manhattan', '404-645-1318', '1989-06-10', 2581, 14),
(26, 'Gerard', 'Gibbens', 'ggibbensp@who.int', 'Male', 'Shore Front Parkway Queens', '205-851-5682', '1993-06-09', 2810, 10),
(27, 'Chandler', 'Heminsley', 'cheminsleyq@1und1.de', 'Male', 'Metropolitan Avenue Brooklyn', '659-598-7156', '1980-12-18', 1501, 2),
(28, 'Bartolomeo', 'Tender', 'btenderr@tripod.com', 'Male', 'Braddock Avenue Queens', '352-518-4977', '1997-08-25', 1891, 5),
(29, 'Sophia', 'Steaning', 'ssteanings@t-online.de', 'Female', 'Father Capodanno Boulevard Staten Island', '144-188-8634', '1972-06-05', 2903, 11),
(30, 'Wilie', 'Gotcliff', 'wgotclifft@nsw.gov.au', 'Female', 'Jamaica Avenue Brooklyn', '571-363-9496', '1987-10-11', 2237, 13),
(31, 'Cass', 'Joddins', 'cjoddinsu@scribd.com', 'Male', 'Westchester Avenue Bronx', '712-197-1871', '1994-02-05', 2952, 4),
(32, 'Lishe', 'Duthy', 'lduthyv@java.com', 'Female', 'Grand Concourse Bronx', '962-420-8740', '1989-07-03', 1586, 6),
(33, 'Ellette', 'Tribe', 'etribew@home.pl', 'Female', '161st Street Bronx', '578-997-3930', '1987-03-30', 1769, 2),
(34, 'Tripp', 'Leband', 'tlebandx@unesco.org', 'Male', 'Bay Parkway Brooklyn', '975-765-2143', '1991-04-23', 2302, 9),
(35, 'Elbertina', 'Harrold', 'eharroldy@google.es', 'Female', 'Astoria Boulevard Queens', '260-432-1324', '1993-11-05', 2015, 11),
(36, 'Sella', 'Lease', 'sleasez@ocn.ne.jp', 'Female', 'Grand Street and Grand Avenue Queens', '793-678-2169', '1995-04-14', 514, 7),
(37, 'Sargent', 'Willimont', 'swillimont10@sphinn.com', 'Male', 'Springfield Boulevard Queens', '759-364-1385', '1984-07-27', 1803, 12),
(38, 'Sherry', 'Searby', 'ssearby11@angelfire.com', 'Female', 'Arthur Kill Road Staten Island', '207-158-0177', '1991-07-28', 746, 8),
(39, 'Buckie', 'Ropking', 'bropking12@google.com.hk', 'Male', 'McGuinness Boulevard Brooklyn', '920-429-4540', '1980-03-22', 1911, 9),
(40, 'Nahum', 'Gisbourn', 'ngisbourn13@infoseek.co.jp', 'Male', 'Gun Hill Road Bronx', '945-965-7688', '1981-07-20', 1888, 4),
(41, 'Elizabet', 'Padgham', 'epadgham14@yahoo.com', 'Female', 'Fifth Avenue? Manhattan', '514-788-5577', '1988-02-01', 1093, 8),
(42, 'Valentia', 'Slany', 'vslany15@google.ca', 'Female', 'Madison Avenue? Manhattan', '582-589-3194', '1979-05-28', 1905, 13),
(43, 'Barby', 'Cleyne', 'bcleyne16@businesswire.com', 'Female', 'Thirteenth Avenue Brooklyn', '124-152-1964', '1996-06-07', 872, 6),
(44, 'Hermann', 'Rodwell', 'hrodwell17@addtoany.com', 'Male', 'Union Turnpike Queens', '342-693-6540', '1992-02-16', 1400, 2),
(45, 'Tobin', 'Walshe', 'twalshe18@archive.org', 'Male', 'Metropolitan Avenue Brooklyn', '417-934-2962', '1988-12-31', 690, 10),
(46, 'Georgy', 'Hoggetts', 'ghoggetts19@nba.com', 'Male', 'Shore Front Parkway Queens', '312-358-5118', '1995-07-29', 1385, 4),
(47, 'Fin', 'Landsberg', 'flandsberg1a@fda.gov', 'Male', 'Francis Lewis Boulevard Queens', '107-423-0238', '1980-10-09', 798, 14),
(48, 'Rock', 'Vittet', 'rvittet1b@ebay.co.uk', 'Male', 'Coney Island Avenue Brooklyn', '211-470-0166', '1980-04-15', 2541, 13),
(49, 'Brinn', 'Dechelle', 'bdechelle1c@phpbb.com', 'Female', 'Greenpoint and Roosevelt Avenues Queens', '528-570-3359', '1988-02-16', 1007, 8),
(50, 'Brandtr', 'MacConchie', 'bmacconchie1d@ihg.com', 'Male', 'Second Avenue Manhattan', '244-743-4923', '1995-11-06', 2407, 4),
(51, 'Price', 'Browncey', 'pbrowncey1e@ebay.co.uk', 'Male', 'Fountain Avenue Brooklyn', '698-397-8840', '1998-02-18', 2880, 13),
(52, 'Hewitt', 'Grise', 'hgrise1f@wisc.edu', 'Male', 'Westchester Avenue Bronx', '987-405-6742', '1977-08-20', 911, 1),
(53, 'Johnna', 'Linne', 'jlinne1g@twitpic.com', 'Female', 'Greenpoint and Roosevelt Avenues Brooklyn', '713-338-0368', '1980-03-07', 2929, 14),
(54, 'Johanna', 'Pogosian', 'jpogosian1h@indiatimes.com', 'Female', 'Wall Street Manhattan', '911-172-6823', '1974-09-29', 2372, 14),
(55, 'Wallas', 'Grazier', 'wgrazier1i@digg.com', 'Male', 'Coney Island Avenue Brooklyn', '776-633-0755', '1980-06-05', 867, 9),
(56, 'Olia', 'Ouldred', 'oouldred1j@sciencedaily.com', 'Female', 'Pennsylvania Avenue Brooklyn', '546-613-2472', '1992-04-20', 2815, 5),
(57, 'Analise', 'Sybbe', 'asybbe1k@jalbum.net', 'Female', 'Grand Street and Grand Avenue Brooklyn', '415-799-1210', '1995-08-28', 2806, 11),
(58, 'Seline', 'Jevon', 'sjevon1l@psu.edu', 'Female', 'Eastern Parkway Brooklyn', '266-232-8394', '1983-10-06', 2218, 4),
(59, 'Carmita', 'Grinyer', 'cgrinyer1m@ca.gov', 'Female', 'Sedgwick Avenue Bronx', '589-324-4011', '1994-05-11', 2931, 7),
(60, 'Kiele', 'Janu', 'kjanu1n@china.com.cn', 'Female', '42nd Street Manhattan?', '168-237-8767', '1971-01-02', 2375, 14),
(61, 'Auroora', 'Fowlestone', 'afowlestone1o@cargocollective.com', 'Female', 'Eighth Avenue Manhattan', '569-684-7066', '1980-05-10', 2428, 1),
(62, 'Cash', 'Meechan', 'cmeechan1p@cbslocal.com', 'Male', 'Conduit Avenue Queens', '591-273-8143', '1972-07-30', 600, 2),
(63, 'Lev', 'Van der Mark', 'lvandermark1q@drupal.org', 'Male', 'Eighth Avenue Manhattan', '359-258-3822', '1976-06-24', 826, 7),
(64, 'Elsbeth', 'Hertwell', 'ehertwell1r@answers.com', 'Female', 'Rockaway Freeway Queens', '927-394-3647', '1987-02-11', 1873, 15),
(65, 'Jacynth', 'Riedel', 'jriedel1s@networksolutions.com', 'Female', 'Third Avenue Bronx', '690-794-4180', '1973-04-16', 2986, 6),
(66, 'Willard', 'Ringer', 'wringer1t@google.co.jp', 'Male', 'Third Avenue Bronx', '547-385-2264', '1990-10-22', 1803, 7),
(67, 'Etty', 'Doncaster', 'edoncaster1u@mlb.com', 'Female', 'Vanderbilt Avenue Staten Island', '718-377-5121', '1975-05-25', 1698, 11),
(68, 'Ari', 'Moraleda', 'amoraleda1v@bravesites.com', 'Male', 'Broadway Manhattan', '586-795-1232', '1971-09-24', 1190, 9),
(69, 'Clemente', 'Thurstan', 'cthurstan1w@digg.com', 'Male', 'Richmond Road Staten Island', '766-714-6376', '1974-01-06', 1476, 12),
(70, 'Dorolisa', 'Amiranda', 'damiranda1x@sciencedirect.com', 'Female', 'Second Avenue Manhattan', '556-661-9025', '1979-12-03', 2288, 4),
(71, 'Humfried', 'Addess', 'haddess1y@reference.com', 'Male', 'Christopher Street? Manhattan', '500-138-8668', '1977-09-22', 987, 6),
(72, 'Lynelle', 'McNeilley', 'lmcneilley1z@deliciousdays.com', 'Female', 'New York State Route 24 Queens', '479-329-6256', '1989-02-04', 2905, 8),
(73, 'Solly', 'Jorez', 'sjorez20@slashdot.org', 'Male', 'Albee Square Brooklyn', '755-350-6660', '1971-01-16', 2209, 3),
(74, 'Franzen', 'Viall', 'fviall21@last.fm', 'Male', 'Utopia Parkway Queens', '952-246-8051', '1972-12-09', 1097, 12),
(75, 'Micheline', 'Clayson', 'mclayson22@dedecms.com', 'Female', 'Bay Parkway Brooklyn', '584-585-4977', '1980-12-22', 2595, 12),
(76, 'Kirby', 'Pimer', 'kpimer23@slashdot.org', 'Male', 'Myrtle Avenue Queens', '315-208-8931', '1976-09-20', 2571, 14),
(77, 'Toinette', 'Nairy', 'tnairy24@comcast.net', 'Female', 'Flatbush Avenue Brooklyn', '290-344-6431', '1992-09-29', 574, 13),
(78, 'Jaimie', 'Townsley', 'jtownsley25@homestead.com', 'Female', 'Braddock Avenue Queens', '570-454-0614', '1990-05-20', 1192, 14),
(79, 'Mommy', 'Poletto', 'mpoletto26@w3.org', 'Female', 'Shore Front Parkway Queens', '436-416-4483', '1979-11-12', 1484, 3),
(80, 'Brande', 'Mintoft', 'bmintoft27@icq.com', 'Female', 'Rockaway Freeway Queens', '671-470-1165', '1982-08-19', 2480, 15),
(81, 'Karlotta', 'McIntee', 'kmcintee28@wix.com', 'Female', 'Thirteenth Avenue Brooklyn', '241-550-7713', '1996-04-26', 2635, 11),
(82, 'Raquel', 'Dewis', 'rdewis29@upenn.edu', 'Female', 'Grand Street and Grand Avenue Brooklyn', '642-281-4012', '1976-09-02', 1231, 12),
(83, 'Tonia', 'Zukerman', 'tzukerman2a@github.com', 'Female', 'Nostrand Avenue Brooklyn', '762-766-4422', '1987-06-24', 1518, 9),
(84, 'Arty', 'Bendall', 'abendall2b@behance.net', 'Male', 'Little Neck Parkway Queens', '126-241-3396', '1991-06-17', 1961, 12),
(85, 'Gilbertina', 'Baybutt', 'gbaybutt2c@ebay.co.uk', 'Female', 'Utopia Parkway Queens', '953-269-2910', '1983-06-06', 544, 13),
(86, 'Weber', 'Basezzi', 'wbasezzi2d@apache.org', 'Male', 'Lexington Avenue? Manhattan', '449-739-2298', '1973-10-04', 1107, 9),
(87, 'Orly', 'Shurrock', 'oshurrock2e@csmonitor.com', 'Female', 'Greenpoint and Roosevelt Avenues Brooklyn', '920-617-2333', '1978-11-23', 1456, 14),
(88, 'Dyan', 'Hake', 'dhake2f@rambler.ru', 'Female', 'White Plains Road Bronx', '787-511-5230', '1987-01-07', 1825, 7),
(89, 'Ives', 'Sturte', 'isturte2g@jimdo.com', 'Male', 'White Plains Road Bronx', '200-579-0303', '1998-08-13', 1440, 15),
(90, 'Amabelle', 'Dawbury', 'adawbury2h@ihg.com', 'Female', 'Mosholu Parkway Bronx', '749-366-3634', '1972-04-24', 1229, 2),
(91, 'Cosimo', 'Juszczyk', 'cjuszczyk2i@artisteer.com', 'Male', 'Wall Street Manhattan', '989-467-8844', '1974-10-27', 1864, 6),
(92, 'Hayden', 'Trembey', 'htrembey2j@uol.com.br', 'Male', 'Liberty Avenue Brooklyn', '673-140-1494', '1973-11-12', 912, 14),
(93, 'Ibby', 'Mungane', 'imungane2k@ft.com', 'Female', 'New York State Route 25A Queens', '473-834-7215', '1997-05-24', 2376, 9),
(94, 'Julietta', 'Normanville', 'jnormanville2l@pen.io', 'Female', 'Steinway Street Queens', '580-530-2689', '1975-07-30', 2246, 3),
(95, 'Borg', 'Badam', 'bbadam2m@theglobeandmail.com', 'Male', '42nd Street Manhattan?', '604-256-9561', '1983-05-29', 1016, 5),
(96, 'Jillayne', 'Clewett', 'jclewett2n@hatena.ne.jp', 'Female', 'Arthur Kill Road Staten Island', '975-508-9970', '1994-10-30', 2814, 7),
(97, 'Wernher', 'Cutler', 'wcutler2o@php.net', 'Male', 'White Plains Road Bronx', '400-897-8855', '1973-04-11', 1210, 11),
(98, 'Ricki', 'Launder', 'rlaunder2p@vimeo.com', 'Female', 'Kissena Boulevard Queens', '398-501-6922', '1996-08-22', 555, 13),
(99, 'Dalia', 'Pattrick', 'dpattrick2q@bbc.co.uk', 'Female', 'Myrtle Avenue Queens', '603-607-8729', '1971-10-01', 2113, 6),
(100, 'Winnie', 'Standley', 'wstandley2r@redcross.org', 'Male', 'Vanderbilt Avenue Brooklyn', '727-412-5122', '1994-08-24', 1896, 3),
(101, 'Carrol', 'Cove', 'ccove2s@indiegogo.com', 'Male', 'Grand Avenue Queens', '855-772-0876', '1996-10-10', 2349, 3),
(102, 'Biddie', 'Cambling', 'bcambling2t@liveinternet.ru', 'Female', 'Rockaway Beach Boulevard Queens', '962-254-2612', '1987-09-29', 2657, 3),
(103, 'Lion', 'Montfort', 'lmontfort2u@rakuten.co.jp', 'Male', 'DeKalb Avenue Brooklyn', '201-701-3358', '1987-09-21', 1588, 1),
(104, 'Biron', 'Sarsons', 'bsarsons2v@accuweather.com', 'Male', 'Union Turnpike Queens', '369-403-1749', '1987-04-30', 1677, 11),
(105, 'Erwin', 'Perdue', 'eperdue2w@twitter.com', 'Male', 'Fifth Avenue? Manhattan', '778-507-1244', '1971-04-04', 2750, 3),
(106, 'Davy', 'Cosins', 'dcosins2x@weebly.com', 'Male', 'Rockaway Beach Boulevard Queens', '320-278-1265', '1992-08-08', 1595, 10),
(107, 'Eldredge', 'Milella', 'emilella2y@theguardian.com', 'Male', 'Pelham Parkway Bronx', '483-295-2375', '1972-07-30', 2196, 12),
(108, 'Marcel', 'Wadforth', 'mwadforth2z@pen.io', 'Male', 'Jamaica Avenue Queens', '588-800-1996', '1982-10-27', 2474, 1),
(109, 'Lucius', 'Kinch', 'lkinch30@dropbox.com', 'Male', 'Parsons Boulevard Queens', '532-804-3010', '1994-04-20', 1749, 2),
(110, 'Vinson', 'Jinkinson', 'vjinkinson31@deviantart.com', 'Male', 'Eleventh Avenue Manhattan', '733-645-7886', '1996-03-12', 1291, 6),
(111, 'Ephrayim', 'Warde', 'ewarde32@squidoo.com', 'Male', 'Seventh Avenue Manhattan', '734-726-6562', '1980-03-08', 1092, 13),
(112, 'Giselbert', 'Trittam', 'gtrittam33@vkontakte.ru', 'Male', 'Vanderbilt Avenue Brooklyn', '435-516-5237', '1984-09-18', 2027, 8),
(113, 'Grissel', 'Benthall', 'gbenthall34@newsvine.com', 'Female', 'Vanderbilt Avenue Staten Island', '877-244-7583', '1986-05-12', 2733, 7),
(114, 'Bonita', 'Lunt', 'blunt35@java.com', 'Female', 'Eastern Parkway Brooklyn', '823-135-2629', '1971-05-03', 2042, 7),
(115, 'Tisha', 'Sloegrave', 'tsloegrave36@pinterest.com', 'Female', 'Prospect Avenue Brooklyn', '237-636-3609', '1994-05-07', 2451, 11),
(116, 'Opaline', 'Darlaston', 'odarlaston37@independent.co.uk', 'Female', 'Jamaica Avenue Queens', '849-230-0985', '1980-12-18', 988, 10),
(117, 'Raynor', 'Alejandre', 'ralejandre38@netlog.com', 'Male', 'Eleventh Avenue Manhattan', '861-820-1494', '1992-01-01', 2977, 15),
(118, 'Lin', 'Wormald', 'lwormald39@twitpic.com', 'Male', 'Fort Hamilton Parkway Brooklyn', '137-613-1625', '1998-10-13', 1162, 10),
(119, 'Evvie', 'Lockett', 'elockett3a@jimdo.com', 'Female', 'Fourth Avenue Brooklyn', '678-118-4344', '1977-02-18', 559, 11),
(120, 'Samaria', 'Kalf', 'skalf3b@51.la', 'Female', 'Ditmars Boulevard Queens', '857-417-8941', '1979-06-24', 2138, 13),
(121, 'Ferrell', 'Harroway', 'fharroway3c@bloglines.com', 'Male', 'Linden Boulevard Queens', '513-528-5386', '1971-03-14', 2068, 15),
(122, 'Ewen', 'Boerder', 'eboerder3d@biglobe.ne.jp', 'Male', 'Ocean Avenue Brooklyn', '661-103-5296', '1977-12-21', 2192, 14),
(123, 'Tina', 'Cunnane', 'tcunnane3e@dot.gov', 'Female', 'Shore Front Parkway Queens', '168-146-2912', '1994-05-31', 1092, 2),
(124, 'Malia', 'Rimell', 'mrimell3f@youtu.be', 'Female', 'Grand Avenue Queens', '436-332-5348', '1980-10-19', 2262, 6),
(125, 'Forrest', 'Evans', 'fevans3g@theguardian.com', 'Male', 'Conduit Avenue Queens', '155-981-2870', '1979-09-27', 610, 8),
(126, 'Weber', 'Sharrem', 'wsharrem3h@skype.com', 'Male', 'Greenpoint and Roosevelt Avenues Queens', '483-249-8508', '1978-11-26', 571, 15),
(127, 'Brandea', 'Ashall', 'bashall3i@about.com', 'Female', 'Dyre Avenue Bronx', '889-612-2642', '1998-04-12', 2408, 9),
(128, 'Tito', 'Habercham', 'thabercham3j@wix.com', 'Male', 'Broadway Manhattan', '498-975-3197', '1986-05-17', 1628, 6),
(129, 'Isidor', 'Thorne', 'ithorne3k@si.edu', 'Male', 'Christopher Street? Manhattan', '738-966-6466', '1993-05-13', 2813, 14),
(130, 'Rusty', 'Dennerly', 'rdennerly3l@ebay.com', 'Male', 'Linden Boulevard Brooklyn', '144-364-4043', '1987-04-27', 2908, 2),
(131, 'Elita', 'Chipman', 'echipman3m@loc.gov', 'Female', 'Little Neck Parkway Queens', '639-841-7384', '1990-03-22', 1531, 7),
(132, 'Adora', 'Willshear', 'awillshear3n@chron.com', 'Female', 'New York State Route 25A Queens', '568-617-4014', '1998-02-26', 681, 2),
(133, 'Rhodia', 'Orrick', 'rorrick3o@google.es', 'Female', 'Albee Square Brooklyn', '753-931-8033', '1993-04-22', 589, 14),
(134, 'Caren', 'Frostdicke', 'cfrostdicke3p@yellowpages.com', 'Female', 'Pelham Road Bronx', '337-871-4604', '1998-01-16', 1735, 2),
(135, 'Jillian', 'Osgerby', 'josgerby3q@accuweather.com', 'Female', 'Prospect Avenue Brooklyn', '498-973-5137', '1996-05-02', 1763, 8),
(136, 'Chevalier', 'Arrell', 'carrell3r@feedburner.com', 'Male', 'Park Avenue Bronx', '255-638-3526', '1973-03-12', 1745, 9),
(137, 'Judi', 'Drewet', 'jdrewet3s@dot.gov', 'Female', 'Steinway Street Queens', '712-348-6983', '1992-01-03', 2896, 13),
(138, 'Cinnamon', 'Matheson', 'cmatheson3t@360.cn', 'Female', 'Linden Boulevard Queens', '125-643-1183', '1992-05-03', 2238, 5),
(139, 'Aguste', 'Alderton', 'aalderton3u@mapquest.com', 'Male', '161st Street Bronx', '165-870-5239', '1997-08-06', 1311, 13),
(140, 'Goober', 'Harley', 'gharley3v@pagesperso-orange.fr', 'Male', 'Eastern Parkway Brooklyn', '757-400-3392', '1975-08-24', 1504, 4),
(141, 'Melva', 'Stubbington', 'mstubbington3w@addthis.com', 'Female', 'Bedford Avenue Brooklyn', '608-297-2729', '1989-08-27', 2218, 1),
(142, 'Alonzo', 'Mattimoe', 'amattimoe3x@wufoo.com', 'Male', 'Flatlands Avenue Brooklyn', '846-565-9086', '1994-12-28', 2023, 8),
(143, 'Wright', 'Neasham', 'wneasham3y@taobao.com', 'Male', 'Fort Hamilton Parkway Brooklyn', '600-447-1634', '1995-01-27', 2706, 11),
(144, 'Patty', 'Verbrugge', 'pverbrugge3z@dmoz.org', 'Female', 'Flushing Avenue Brooklyn', '327-977-5089', '1979-07-17', 2398, 13),
(145, 'Lonna', 'Venneur', 'lvenneur40@apache.org', 'Female', 'West End Avenue? Manhattan', '500-393-4862', '1980-10-05', 1168, 1),
(146, 'Mari', 'Cowlard', 'mcowlard41@uol.com.br', 'Female', 'Webster Avenue Bronx', '686-691-2363', '1988-11-08', 2337, 1),
(147, 'Lenci', 'Senussi', 'lsenussi42@last.fm', 'Male', 'Beach Channel Drive Queens', '104-479-6688', '1974-12-24', 1539, 12),
(148, 'Gaile', 'Baal', 'gbaal43@berkeley.edu', 'Male', 'Woodhaven and Cross Bay Boulevards Queens', '218-192-1728', '1979-12-28', 2270, 2),
(149, 'Tomasine', 'Reast', 'treast44@admin.ch', 'Female', 'New York State Route 25A Queens', '128-400-2703', '1996-09-07', 968, 4),
(150, 'Gizela', 'Rubenczyk', 'grubenczyk45@cnn.com', 'Female', 'Braddock Avenue Queens', '724-107-2439', '1990-01-21', 1920, 2),
(151, 'Ruddy', 'Rising', 'rrising46@qq.com', 'Male', 'Francis Lewis Boulevard Queens', '925-315-7558', '1984-05-10', 1932, 3),
(152, 'Chere', 'Twentyman', 'ctwentyman47@themeforest.net', 'Female', 'Myrtle Avenue Brooklyn', '785-921-2309', '1985-11-14', 2694, 2),
(153, 'Kipp', 'Wroughton', 'kwroughton48@surveymonkey.com', 'Male', 'Second Avenue Manhattan', '634-147-3189', '1978-09-05', 1001, 5),
(154, 'Dennis', 'Harse', 'dharse49@google.nl', 'Male', 'DeKalb Avenue Brooklyn', '862-721-7256', '1994-11-07', 2771, 5),
(155, 'Sherilyn', 'Dunbar', 'sdunbar4a@yellowpages.com', 'Female', 'New York State Route 25A Queens', '539-700-6702', '1971-01-12', 548, 1),
(156, 'Vladimir', 'Coppins', 'vcoppins4b@bravesites.com', 'Male', 'Greenpoint and Roosevelt Avenues Queens', '806-355-3939', '1996-10-05', 666, 12),
(157, 'Phillipe', 'Frake', 'pfrake4c@about.me', 'Male', 'Third Avenue Bronx', '316-187-0099', '1987-07-22', 1845, 7),
(158, 'Baily', 'Wheatland', 'bwheatland4d@ocn.ne.jp', 'Male', 'Grand Street and Grand Avenue Queens', '853-394-0888', '1983-05-10', 1356, 14),
(159, 'Dieter', 'Cheatle', 'dcheatle4e@vimeo.com', 'Male', 'Fordham Road Bronx', '207-842-2077', '1979-06-13', 2295, 13),
(160, 'Mendel', 'Gatehouse', 'mgatehouse4f@webmd.com', 'Male', 'Pelham Road Bronx', '420-372-0254', '1975-04-30', 2384, 4),
(161, 'Kalina', 'MacCaull', 'kmaccaull4g@kickstarter.com', 'Female', 'Utica Avenue Brooklyn', '605-991-2121', '1974-03-15', 2522, 3),
(162, 'Quinn', 'Leteurtre', 'qleteurtre4h@usa.gov', 'Male', 'Victory Boulevard Staten Island', '768-183-7170', '1998-03-18', 554, 13),
(163, 'Leonid', 'Clemmitt', 'lclemmitt4i@globo.com', 'Male', 'Rockaway Beach Boulevard Queens', '948-796-5309', '1998-10-24', 1068, 4),
(164, 'Isidor', 'Hurle', 'ihurle4j@ihg.com', 'Male', 'Broad Street Manhattan', '325-222-7215', '1982-02-10', 1919, 15),
(165, 'Vick', 'Randles', 'vrandles4k@paypal.com', 'Male', 'DeKalb Avenue Brooklyn', '240-985-4853', '1976-07-06', 2209, 1),
(166, 'Abbe', 'Hughman', 'ahughman4l@apple.com', 'Female', 'Sixth Avenue Manhattan', '960-253-3178', '1988-12-07', 664, 14),
(167, 'Shawn', 'Bazek', 'sbazek4m@ustream.tv', 'Female', 'Prospect Avenue Brooklyn', '729-718-5559', '1982-07-28', 1345, 6),
(168, 'Conway', 'Whetnell', 'cwhetnell4n@dailymail.co.uk', 'Male', 'Metropolitan Avenue Staten Island', '562-559-3757', '1975-08-23', 2999, 12),
(169, 'Seka', 'Erangy', 'serangy4o@shareasale.com', 'Female', 'Ocean Avenue Brooklyn', '476-790-0363', '1992-06-08', 1499, 9),
(170, 'Vikki', 'Spacie', 'vspacie4p@nymag.com', 'Female', 'Bedford Avenue Brooklyn', '405-549-7147', '1992-09-18', 2766, 15),
(171, 'Martie', 'Thorrington', 'mthorrington4q@discuz.net', 'Male', '23rd Street Manhattan', '702-633-2094', '1988-08-28', 2593, 3),
(172, 'Kory', 'Rennick', 'krennick4r@skype.com', 'Male', 'Park Avenue? Manhattan', '183-638-9234', '1978-04-22', 2277, 5),
(173, 'Jacquie', 'Shipston', 'jshipston4s@disqus.com', 'Female', 'Astoria Boulevard Queens', '843-686-8934', '1980-03-14', 2974, 10),
(174, 'Marjie', 'Beavors', 'mbeavors4t@netscape.com', 'Female', 'Third Avenue Brooklyn', '713-329-7732', '1979-09-19', 562, 8),
(175, 'Lorne', 'Abley', 'labley4u@toplist.cz', 'Male', 'Tremont Avenue Bronx', '732-667-2854', '1994-04-26', 2833, 5),
(176, 'Mariquilla', 'Bow', 'mbow4v@odnoklassniki.ru', 'Female', 'Shore Front Parkway Queens', '940-433-5786', '1990-02-05', 591, 13),
(177, 'Sibby', 'Rash', 'srash4w@angelfire.com', 'Female', 'Sedgwick Avenue Bronx', '418-149-4019', '1973-05-22', 1135, 6),
(178, 'Barrett', 'Undrill', 'bundrill4x@bbb.org', 'Male', 'Gun Hill Road Bronx', '992-101-1234', '1992-07-09', 1720, 8),
(179, 'Raff', 'Loines', 'rloines4y@auda.org.au', 'Male', 'Fort Hamilton Parkway Brooklyn', '493-151-0094', '1993-02-12', 758, 14),
(180, 'Townie', 'Vicarey', 'tvicarey4z@cnn.com', 'Male', 'Wall Street Manhattan', '842-147-7371', '1992-08-18', 2743, 14),
(181, 'Peyton', 'Flode', 'pflode50@columbia.edu', 'Male', 'Madison Avenue? Manhattan', '635-573-5702', '1997-11-29', 2853, 5),
(182, 'Barrie', 'Eschelle', 'beschelle51@smugmug.com', 'Female', 'Rockaway Parkway Brooklyn', '732-582-3562', '1986-08-24', 1077, 9),
(183, 'Erena', 'Goodhew', 'egoodhew52@moonfruit.com', 'Female', 'Arthur Kill Road Staten Island', '702-813-8952', '1988-06-08', 2908, 6),
(184, 'Geoffrey', 'Potbury', 'gpotbury53@census.gov', 'Male', 'Fourth Avenue Brooklyn', '592-190-2499', '1984-08-09', 2915, 4),
(185, 'Cassaundra', 'Petracco', 'cpetracco54@java.com', 'Female', 'Woodhaven and Cross Bay Boulevards Queens', '616-955-5891', '1986-11-10', 2239, 6),
(186, 'Harald', 'Draayer', 'hdraayer55@blog.com', 'Male', 'White Plains Road Bronx', '274-305-1762', '1995-08-05', 1766, 7),
(187, 'Blondie', 'Cray', 'bcray56@lycos.com', 'Female', 'Metropolitan Avenue Staten Island', '853-763-6118', '1997-04-02', 2540, 9),
(188, 'Chantal', 'Riquet', 'criquet57@freewebs.com', 'Female', 'New York State Route 25A Queens', '818-697-6497', '1971-12-23', 1202, 14),
(189, 'Michelina', 'Cruess', 'mcruess58@earthlink.net', 'Female', 'Esplanade Bronx', '413-387-0297', '1972-04-08', 1931, 2),
(190, 'Devondra', 'Haldane', 'dhaldane59@chronoengine.com', 'Female', 'Southern Boulevard Bronx', '690-834-7465', '1988-04-22', 1890, 6),
(191, 'Bud', 'Mellonby', 'bmellonby5a@boston.com', 'Male', 'Richmond Road Staten Island', '781-215-1777', '1976-03-16', 1775, 3),
(192, 'Sonnie', 'Ridgwell', 'sridgwell5b@qq.com', 'Male', 'New York State Route 25D Queens', '489-772-0115', '1971-01-02', 1063, 5),
(193, 'Alden', 'Mander', 'amander5c@creativecommons.org', 'Male', 'Stillwell Avenue Brooklyn', '372-743-0690', '1973-06-25', 655, 11),
(194, 'Brigg', 'Malenoir', 'bmalenoir5d@alibaba.com', 'Male', 'Linden Boulevard Brooklyn', '876-638-9159', '1974-12-12', 1591, 12),
(195, 'Grantley', 'O\'Giany', 'gogiany5e@topsy.com', 'Male', 'McGuinness Boulevard Brooklyn', '831-955-0929', '1983-07-18', 2697, 15),
(196, 'Alfie', 'Simcox', 'asimcox5f@t.co', 'Female', '23rd Street Manhattan', '702-439-7278', '1971-10-06', 2840, 3),
(197, 'Virgie', 'Tedman', 'vtedman5g@sogou.com', 'Female', 'Cropsey Avenue Brooklyn', '195-640-6179', '1993-06-28', 2623, 12),
(198, 'Cody', 'Fishbie', 'cfishbie5h@tripadvisor.com', 'Male', 'Vanderbilt Avenue Brooklyn', '916-421-4528', '1981-03-20', 2083, 10),
(199, 'Putnam', 'Caroll', 'pcaroll5i@scribd.com', 'Male', 'Westchester Avenue Bronx', '281-922-6319', '1994-11-30', 758, 4),
(200, 'Thane', 'Alvaro', 'talvaro5j@cnet.com', 'Male', 'Grand Avenue Queens', '869-926-2689', '1983-02-23', 1907, 1);
