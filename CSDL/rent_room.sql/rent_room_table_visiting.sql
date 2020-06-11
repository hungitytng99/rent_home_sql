
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visiting`
--

CREATE TABLE `visiting` (
  `HomeId` int(11) DEFAULT NULL,
  `RenterId` int(11) DEFAULT NULL,
  `VisitedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `visiting`
--

INSERT INTO `visiting` (`HomeId`, `RenterId`, `VisitedDate`) VALUES
(648, 32, '2018-07-30'),
(566, 118, '2018-03-26'),
(130, 349, '2018-05-03'),
(619, 413, '2018-03-19'),
(244, 456, '2018-05-17'),
(500, 429, '2018-04-06'),
(232, 101, '2018-08-21'),
(354, 95, '2018-01-06'),
(15, 398, '2018-09-30'),
(676, 70, '2018-04-20'),
(711, 48, '2018-08-01'),
(234, 481, '2018-07-11'),
(364, 32, '2018-03-08'),
(761, 105, '2018-04-02'),
(573, 307, '2018-09-09'),
(370, 297, '2017-12-21'),
(448, 173, '2018-09-26'),
(259, 437, '2018-03-28'),
(410, 259, '2018-04-15'),
(342, 68, '2018-10-12'),
(655, 384, '2018-08-11'),
(343, 393, '2018-01-01'),
(98, 13, '2018-08-17'),
(393, 266, '2018-10-26'),
(251, 456, '2018-10-08'),
(609, 65, '2018-08-14'),
(161, 96, '2018-07-26'),
(351, 157, '2018-08-03'),
(459, 103, '2018-04-30'),
(321, 333, '2018-03-13'),
(46, 358, '2017-12-27'),
(614, 451, '2018-07-25'),
(110, 425, '2018-03-11'),
(523, 127, '2018-07-25'),
(492, 287, '2018-01-14'),
(97, 122, '2018-08-10'),
(242, 216, '2018-01-17'),
(344, 41, '2018-07-01'),
(156, 313, '2018-01-17'),
(618, 136, '2018-04-26'),
(192, 372, '2018-06-05'),
(406, 228, '2018-08-05'),
(648, 403, '2018-10-29'),
(696, 201, '2018-09-13'),
(183, 186, '2018-01-11'),
(663, 205, '2018-10-17'),
(59, 297, '2018-09-14'),
(464, 210, '2018-07-08'),
(657, 148, '2018-01-09'),
(723, 310, '2018-07-21'),
(648, 379, '2018-11-17'),
(687, 302, '2018-05-28'),
(99, 222, '2018-09-18'),
(396, 482, '2018-08-24'),
(109, 333, '2018-04-18'),
(100, 473, '2018-04-28'),
(102, 385, '2018-04-09'),
(334, 58, '2018-01-30'),
(240, 133, '2018-04-14'),
(598, 33, '2018-06-18'),
(489, 499, '2018-09-29'),
(720, 4, '2018-08-12'),
(529, 475, '2018-07-24'),
(119, 329, '2018-06-11'),
(188, 4, '2018-01-20'),
(790, 295, '2018-01-11'),
(276, 22, '2018-02-18'),
(601, 488, '2018-01-08'),
(261, 368, '2018-03-24'),
(177, 296, '2018-03-19'),
(218, 124, '2018-09-02'),
(146, 296, '2018-07-07'),
(429, 421, '2018-03-07'),
(715, 307, '2018-06-26'),
(535, 178, '2018-05-21'),
(90, 440, '2018-08-09'),
(559, 60, '2018-08-02'),
(527, 371, '2018-11-15'),
(470, 350, '2018-11-19'),
(170, 200, '2018-01-01'),
(581, 477, '2018-11-21'),
(168, 307, '2018-03-15'),
(536, 107, '2018-02-24'),
(284, 458, '2018-05-16'),
(717, 38, '2018-09-21'),
(281, 442, '2018-09-16'),
(91, 211, '2018-04-05'),
(631, 469, '2018-02-26'),
(199, 117, '2018-02-24'),
(748, 496, '2018-04-07'),
(172, 4, '2018-03-06'),
(232, 86, '2018-01-20'),
(294, 92, '2018-01-30'),
(399, 251, '2018-05-28'),
(516, 211, '2018-10-03'),
(129, 310, '2018-09-13'),
(443, 293, '2018-02-05'),
(751, 104, '2018-05-14'),
(201, 473, '2018-01-29'),
(529, 76, '2018-12-16'),
(108, 313, '2018-10-11'),
(624, 218, '2018-04-18'),
(483, 442, '2018-04-26'),
(329, 61, '2018-06-22'),
(308, 261, '2018-08-09'),
(705, 318, '2018-08-01'),
(503, 203, '2018-01-27'),
(524, 144, '2018-12-04'),
(765, 377, '2017-12-31'),
(180, 262, '2018-02-22'),
(625, 26, '2018-01-25'),
(243, 372, '2018-04-30'),
(765, 435, '2018-07-11'),
(265, 313, '2018-02-14'),
(404, 50, '2018-02-19'),
(657, 332, '2018-11-03'),
(608, 415, '2017-12-20'),
(83, 434, '2018-08-26'),
(547, 146, '2018-06-22'),
(413, 416, '2018-04-01'),
(661, 124, '2018-08-03'),
(664, 191, '2018-09-25'),
(401, 101, '2018-09-15'),
(2, 39, '2018-02-20'),
(411, 410, '2018-03-09'),
(610, 110, '2018-12-06'),
(490, 282, '2018-01-05'),
(465, 167, '2018-05-24'),
(51, 213, '2018-11-13'),
(550, 439, '2018-07-21'),
(501, 56, '2018-07-08'),
(716, 254, '2018-09-28'),
(398, 191, '2018-06-24'),
(376, 485, '2018-07-30'),
(190, 230, '2018-05-28'),
(306, 71, '2018-08-01'),
(438, 350, '2018-04-25'),
(41, 354, '2018-10-13'),
(136, 325, '2018-10-03'),
(790, 355, '2018-11-06'),
(604, 340, '2018-02-02'),
(615, 202, '2018-08-26'),
(474, 47, '2018-12-14'),
(710, 66, '2018-08-10'),
(284, 33, '2018-05-06'),
(224, 384, '2018-08-01'),
(699, 34, '2018-10-14'),
(111, 192, '2018-04-29'),
(298, 344, '2018-10-07'),
(238, 162, '2018-05-02'),
(368, 224, '2018-10-05'),
(760, 160, '2018-11-28'),
(154, 67, '2018-04-03'),
(532, 372, '2018-05-09'),
(193, 500, '2018-01-30'),
(658, 165, '2018-08-14'),
(496, 30, '2018-03-26'),
(542, 338, '2018-06-10'),
(311, 38, '2018-07-02'),
(464, 264, '2018-10-14'),
(61, 32, '2018-12-10'),
(509, 384, '2018-04-11'),
(111, 163, '2018-08-09'),
(434, 120, '2018-02-10'),
(426, 284, '2018-04-10'),
(534, 289, '2018-03-13'),
(28, 379, '2018-05-23'),
(750, 10, '2017-12-22'),
(357, 22, '2018-08-07'),
(449, 442, '2018-10-09'),
(562, 125, '2018-10-20'),
(184, 163, '2018-11-26'),
(8, 286, '2018-03-01'),
(34, 26, '2018-01-18'),
(221, 471, '2018-10-25'),
(720, 446, '2018-09-03'),
(76, 367, '2018-01-27'),
(760, 316, '2018-10-22'),
(68, 9, '2018-01-12'),
(268, 473, '2018-07-07'),
(683, 437, '2018-06-05'),
(481, 409, '2018-09-08'),
(724, 56, '2018-01-25'),
(392, 157, '2018-08-28'),
(773, 350, '2018-11-04'),
(436, 281, '2018-05-31'),
(630, 398, '2018-07-03'),
(604, 445, '2018-06-29'),
(128, 492, '2018-11-07'),
(752, 370, '2018-05-02'),
(425, 131, '2018-08-05'),
(192, 30, '2018-12-08'),
(530, 137, '2018-03-28'),
(32, 317, '2018-01-05'),
(212, 88, '2018-03-25'),
(628, 131, '2018-08-01'),
(753, 404, '2018-04-26'),
(618, 106, '2018-03-31'),
(244, 226, '2018-11-17'),
(747, 180, '2018-11-15'),
(3, 454, '2018-05-31'),
(67, 97, '2018-06-06'),
(276, 76, '2018-01-05'),
(463, 180, '2018-12-09'),
(752, 465, '2018-03-28'),
(430, 55, '2018-09-29'),
(561, 450, '2018-08-19'),
(614, 56, '2018-10-06'),
(92, 397, '2018-04-17'),
(165, 93, '2018-02-15'),
(554, 448, '2018-06-19'),
(303, 357, '2018-08-04'),
(462, 437, '2018-06-28'),
(547, 429, '2018-08-17'),
(767, 356, '2018-03-25'),
(341, 488, '2017-12-27'),
(738, 352, '2018-11-16'),
(151, 67, '2018-05-10'),
(714, 416, '2018-03-12'),
(766, 275, '2018-06-25'),
(370, 288, '2018-05-24'),
(507, 176, '2018-05-12'),
(165, 255, '2018-09-21'),
(455, 181, '2018-03-19'),
(234, 162, '2018-01-16'),
(768, 346, '2018-02-12'),
(758, 330, '2018-07-02'),
(483, 413, '2018-05-13'),
(521, 348, '2018-03-30'),
(684, 2, '2018-11-29'),
(343, 399, '2018-03-16'),
(595, 334, '2018-02-13'),
(417, 1, '2018-10-28'),
(62, 232, '2018-10-11'),
(453, 344, '2018-07-21'),
(597, 33, '2018-04-24'),
(293, 164, '2018-03-09'),
(787, 203, '2018-09-29'),
(580, 160, '2018-11-28'),
(51, 332, '2018-05-04'),
(426, 494, '2018-03-12'),
(241, 210, '2018-11-20'),
(624, 328, '2018-01-16'),
(595, 303, '2018-09-15'),
(265, 444, '2018-10-27'),
(443, 450, '2018-01-28'),
(328, 429, '2018-02-20'),
(510, 327, '2018-01-24'),
(317, 226, '2018-08-24'),
(225, 428, '2018-04-16'),
(84, 178, '2018-11-24'),
(252, 430, '2018-01-27'),
(174, 450, '2018-05-30'),
(609, 244, '2018-09-10'),
(264, 323, '2017-12-30'),
(339, 467, '2018-05-30'),
(760, 421, '2017-12-24'),
(348, 317, '2018-03-06'),
(681, 353, '2018-08-02'),
(784, 322, '2018-01-20'),
(18, 334, '2018-03-18'),
(420, 344, '2017-12-22'),
(560, 186, '2018-02-10'),
(666, 139, '2018-06-29'),
(72, 51, '2018-11-13'),
(373, 272, '2018-04-08'),
(264, 252, '2018-05-17'),
(108, 481, '2018-03-01'),
(380, 249, '2018-01-27'),
(719, 408, '2018-01-31'),
(170, 318, '2018-02-03'),
(330, 45, '2018-01-07'),
(307, 53, '2017-12-19'),
(180, 355, '2017-12-28'),
(416, 158, '2018-08-20'),
(254, 212, '2018-04-09'),
(712, 58, '2018-11-25'),
(457, 39, '2018-12-02'),
(563, 44, '2018-01-26'),
(419, 33, '2018-11-16'),
(26, 437, '2018-04-24'),
(434, 340, '2018-05-13'),
(107, 412, '2018-09-18'),
(268, 131, '2018-03-05'),
(556, 452, '2018-08-19'),
(478, 101, '2018-06-18'),
(385, 109, '2018-08-31'),
(641, 89, '2018-05-22'),
(296, 250, '2018-12-11'),
(625, 32, '2018-10-13'),
(354, 409, '2018-06-24'),
(505, 48, '2018-12-14'),
(450, 89, '2018-02-12'),
(300, 385, '2018-02-14'),
(526, 213, '2018-06-08'),
(28, 76, '2018-10-24'),
(128, 467, '2018-01-08'),
(712, 212, '2018-11-15'),
(559, 124, '2018-03-20'),
(330, 463, '2018-12-10'),
(145, 322, '2018-11-01'),
(770, 167, '2018-01-18'),
(47, 107, '2018-06-16'),
(372, 213, '2018-08-02'),
(411, 167, '2018-03-10'),
(618, 337, '2018-01-31'),
(684, 148, '2018-09-20'),
(388, 66, '2018-10-31'),
(115, 328, '2018-07-31'),
(244, 374, '2018-09-06'),
(360, 310, '2018-01-08'),
(4, 186, '2018-04-23'),
(601, 405, '2018-08-23'),
(172, 290, '2018-10-24'),
(248, 240, '2018-02-02'),
(324, 65, '2018-06-24'),
(6, 258, '2018-05-29'),
(573, 146, '2018-06-23'),
(119, 39, '2018-02-06'),
(445, 447, '2018-07-28'),
(530, 1, '2018-09-01'),
(722, 187, '2018-04-18'),
(370, 121, '2018-08-08'),
(756, 12, '2018-05-30'),
(60, 151, '2018-12-13'),
(306, 206, '2018-04-09'),
(614, 252, '2018-11-12'),
(702, 453, '2018-05-25'),
(283, 17, '2018-07-17'),
(142, 406, '2018-06-23'),
(656, 27, '2018-05-21'),
(628, 138, '2018-01-09'),
(409, 134, '2018-03-23'),
(780, 171, '2018-05-15'),
(731, 198, '2018-03-19'),
(701, 255, '2018-10-15'),
(300, 318, '2018-10-05'),
(525, 34, '2018-03-25'),
(441, 333, '2018-04-05'),
(104, 396, '2018-03-24'),
(747, 255, '2018-07-30'),
(490, 352, '2018-05-03'),
(513, 107, '2018-11-26'),
(151, 195, '2018-01-23'),
(208, 173, '2018-04-28'),
(348, 160, '2018-11-17'),
(29, 468, '2018-06-07'),
(669, 242, '2018-03-06'),
(320, 50, '2018-12-05'),
(680, 290, '2018-11-03'),
(703, 441, '2018-04-26'),
(543, 278, '2018-10-17'),
(594, 427, '2018-12-13'),
(635, 342, '2018-02-23'),
(496, 70, '2018-01-19'),
(364, 436, '2018-01-24'),
(6, 471, '2018-10-06'),
(554, 402, '2018-08-11'),
(233, 143, '2018-09-26'),
(355, 294, '2018-05-23'),
(377, 133, '2018-01-02'),
(553, 309, '2018-12-16'),
(32, 319, '2018-09-22'),
(675, 295, '2018-06-23'),
(184, 451, '2018-09-03'),
(375, 66, '2018-06-19'),
(579, 368, '2017-12-25'),
(736, 86, '2018-05-10'),
(437, 308, '2018-06-30'),
(258, 227, '2018-01-10'),
(753, 383, '2018-08-12'),
(252, 415, '2018-10-27'),
(742, 258, '2018-01-30'),
(509, 243, '2018-04-20'),
(580, 479, '2018-02-21'),
(583, 258, '2017-12-27'),
(430, 500, '2018-07-09'),
(650, 268, '2018-10-03'),
(371, 369, '2018-11-11'),
(655, 413, '2018-06-24'),
(223, 117, '2018-01-22'),
(73, 327, '2018-04-02'),
(265, 73, '2018-10-22'),
(94, 88, '2018-11-22'),
(124, 352, '2018-04-08'),
(458, 85, '2018-10-09'),
(224, 304, '2018-04-28'),
(293, 143, '2018-01-26'),
(400, 87, '2018-02-11'),
(486, 252, '2018-07-23'),
(159, 185, '2018-07-17'),
(734, 338, '2018-06-13'),
(38, 314, '2018-09-13'),
(53, 140, '2018-10-05'),
(366, 200, '2018-06-26'),
(430, 487, '2018-03-31'),
(642, 284, '2018-05-11'),
(345, 280, '2018-08-20'),
(556, 305, '2017-12-30'),
(188, 323, '2018-10-23'),
(406, 495, '2018-04-22'),
(723, 91, '2018-03-19'),
(264, 222, '2018-01-26'),
(575, 272, '2018-12-13'),
(196, 388, '2018-02-08'),
(537, 312, '2018-10-08'),
(31, 298, '2018-03-30'),
(414, 318, '2018-06-18'),
(203, 416, '2018-03-01'),
(191, 218, '2018-01-16'),
(181, 106, '2018-06-12'),
(528, 383, '2018-07-20'),
(236, 457, '2018-05-06'),
(517, 54, '2018-11-14'),
(451, 361, '2018-08-12'),
(696, 122, '2018-12-12'),
(49, 309, '2018-10-20'),
(114, 388, '2018-10-08'),
(234, 13, '2018-05-08'),
(162, 303, '2018-10-24'),
(392, 51, '2018-11-02'),
(743, 281, '2018-12-01'),
(799, 449, '2018-09-27'),
(240, 55, '2018-05-04'),
(503, 16, '2018-06-14'),
(751, 282, '2018-08-29'),
(558, 473, '2018-11-13'),
(43, 76, '2018-08-30'),
(492, 162, '2018-05-13'),
(204, 55, '2018-01-28'),
(719, 411, '2018-12-15'),
(295, 78, '2018-05-22'),
(46, 251, '2018-06-21'),
(390, 202, '2018-09-25'),
(103, 468, '2018-03-15'),
(109, 146, '2018-05-10'),
(84, 32, '2018-07-13'),
(221, 188, '2018-07-22'),
(331, 55, '2018-01-15'),
(499, 420, '2018-01-15'),
(565, 193, '2018-08-03'),
(580, 423, '2018-07-29'),
(394, 386, '2018-09-24'),
(709, 318, '2018-08-17'),
(415, 156, '2018-05-06'),
(35, 406, '2018-06-10'),
(735, 173, '2018-11-13'),
(19, 277, '2018-11-07'),
(183, 5, '2018-03-19'),
(174, 31, '2017-12-29'),
(647, 73, '2017-12-24'),
(758, 274, '2018-09-25'),
(519, 482, '2018-04-23'),
(648, 439, '2018-05-27'),
(183, 302, '2018-08-25'),
(306, 172, '2018-09-05'),
(561, 104, '2018-09-07'),
(597, 304, '2018-05-15'),
(147, 471, '2018-10-03'),
(571, 419, '2018-01-05'),
(133, 51, '2017-12-26'),
(3, 320, '2018-07-24'),
(618, 51, '2018-12-04'),
(708, 372, '2018-09-17'),
(24, 492, '2018-07-30'),
(568, 309, '2018-07-20'),
(437, 36, '2018-09-21'),
(705, 144, '2017-12-31'),
(115, 13, '2018-07-23'),
(724, 480, '2018-08-26'),
(479, 301, '2018-07-25'),
(117, 441, '2018-03-20'),
(311, 102, '2018-04-12'),
(752, 475, '2018-01-31'),
(323, 181, '2018-01-11'),
(656, 323, '2018-03-11'),
(508, 377, '2018-02-03'),
(90, 20, '2018-05-13'),
(784, 176, '2018-09-21'),
(547, 27, '2017-12-23'),
(606, 366, '2018-02-08'),
(507, 204, '2018-12-16'),
(19, 310, '2018-02-12'),
(9, 353, '2018-03-25'),
(690, 496, '2018-06-21'),
(235, 249, '2018-11-07'),
(507, 6, '2018-01-25'),
(304, 473, '2018-08-08'),
(673, 389, '2018-10-15'),
(426, 427, '2018-09-21'),
(246, 409, '2018-11-06'),
(683, 290, '2018-04-25'),
(253, 495, '2018-02-09'),
(36, 216, '2018-02-13'),
(465, 88, '2018-07-03'),
(395, 176, '2018-10-09'),
(297, 156, '2018-01-09'),
(419, 345, '2018-07-01'),
(722, 427, '2018-09-01'),
(751, 315, '2018-12-03'),
(451, 424, '2018-03-30'),
(316, 259, '2018-09-06'),
(234, 81, '2018-07-21'),
(78, 98, '2018-08-18'),
(53, 136, '2018-03-01'),
(54, 48, '2018-07-15'),
(55, 238, '2018-09-14'),
(358, 210, '2018-01-03'),
(501, 13, '2018-09-06'),
(159, 302, '2018-10-06'),
(225, 183, '2018-08-28'),
(665, 1, '2018-06-10'),
(639, 126, '2018-02-23'),
(17, 107, '2018-03-15'),
(236, 106, '2018-11-02'),
(570, 269, '2018-06-10'),
(554, 350, '2018-10-30'),
(129, 199, '2018-03-21'),
(251, 105, '2018-09-30'),
(173, 130, '2018-12-02'),
(704, 1, '2018-04-20'),
(559, 270, '2018-03-16'),
(142, 186, '2018-03-06'),
(687, 401, '2018-11-27'),
(651, 86, '2018-07-13'),
(38, 319, '2018-05-28'),
(573, 496, '2018-05-05'),
(632, 294, '2018-04-01'),
(583, 118, '2018-01-08'),
(318, 271, '2017-12-30'),
(750, 50, '2017-12-30'),
(581, 10, '2018-05-11'),
(365, 143, '2018-10-02'),
(245, 20, '2018-06-02'),
(108, 155, '2018-10-22'),
(324, 319, '2018-09-27'),
(160, 40, '2018-07-01'),
(487, 122, '2018-11-04'),
(384, 249, '2018-05-08'),
(310, 443, '2018-12-08'),
(742, 50, '2018-06-18'),
(90, 93, '2018-05-31'),
(527, 443, '2017-12-21'),
(403, 466, '2018-06-22'),
(656, 22, '2018-04-18'),
(570, 306, '2018-10-20'),
(407, 340, '2018-04-06'),
(441, 165, '2018-06-23'),
(453, 242, '2018-07-01'),
(496, 292, '2018-06-11'),
(653, 97, '2018-04-25'),
(442, 480, '2018-04-21'),
(399, 279, '2018-07-20'),
(495, 62, '2018-07-17'),
(671, 161, '2018-08-07'),
(575, 102, '2018-02-21'),
(397, 118, '2018-10-07'),
(291, 223, '2018-09-02'),
(145, 166, '2018-09-13'),
(799, 471, '2018-02-12'),
(564, 429, '2018-07-04'),
(484, 49, '2018-02-13'),
(642, 368, '2018-11-23'),
(15, 205, '2018-05-16'),
(113, 479, '2018-02-21'),
(446, 39, '2018-11-16'),
(635, 418, '2018-04-15'),
(672, 86, '2018-08-24'),
(147, 270, '2018-10-08'),
(491, 207, '2018-03-06'),
(343, 380, '2018-05-24'),
(203, 159, '2018-05-09'),
(163, 334, '2018-12-04'),
(721, 88, '2018-02-02'),
(206, 179, '2018-02-25'),
(25, 338, '2018-02-22'),
(471, 308, '2018-07-14'),
(725, 221, '2018-11-02'),
(156, 451, '2018-01-09'),
(386, 454, '2018-11-01'),
(107, 114, '2018-10-05'),
(800, 117, '2018-05-24'),
(604, 438, '2018-09-26'),
(598, 211, '2018-08-27'),
(782, 453, '2018-06-16'),
(728, 388, '2018-11-27'),
(744, 358, '2018-07-12'),
(301, 259, '2018-06-15'),
(372, 178, '2018-05-01'),
(121, 221, '2018-10-21'),
(448, 355, '2018-08-07'),
(634, 402, '2018-06-21'),
(669, 195, '2018-04-23'),
(740, 94, '2018-09-25'),
(479, 194, '2018-07-27'),
(9, 342, '2018-04-20'),
(569, 25, '2018-11-23'),
(502, 235, '2018-02-28'),
(787, 280, '2018-05-15'),
(331, 469, '2018-05-28'),
(337, 323, '2018-06-22'),
(754, 205, '2018-08-02'),
(798, 158, '2018-07-05'),
(580, 305, '2018-10-30'),
(617, 98, '2018-05-19'),
(555, 309, '2018-06-15'),
(350, 10, '2018-01-31'),
(671, 45, '2017-12-20'),
(399, 466, '2018-08-16'),
(38, 3, '2018-03-01'),
(551, 396, '2018-09-24'),
(479, 457, '2018-03-30'),
(100, 222, '2018-05-21'),
(14, 273, '2018-06-18'),
(345, 450, '2018-07-14'),
(141, 1, '2018-07-14'),
(34, 221, '2018-02-28'),
(705, 188, '2018-06-01'),
(555, 23, '2018-01-08'),
(579, 398, '2018-03-07'),
(734, 499, '2018-12-14'),
(60, 429, '2018-05-12'),
(461, 57, '2018-03-16'),
(69, 142, '2018-11-25'),
(31, 138, '2018-11-22'),
(253, 350, '2018-07-09'),
(215, 493, '2018-08-15'),
(734, 109, '2018-12-14'),
(57, 166, '2018-06-04'),
(71, 458, '2018-06-24'),
(37, 496, '2018-06-17'),
(306, 77, '2018-06-13'),
(361, 92, '2018-10-27'),
(434, 244, '2018-03-31'),
(764, 227, '2018-06-01'),
(350, 460, '2017-12-20'),
(461, 279, '2018-01-18'),
(159, 332, '2018-06-18'),
(184, 140, '2018-11-27'),
(669, 90, '2018-08-24'),
(666, 337, '2018-12-09'),
(229, 295, '2018-10-14'),
(501, 129, '2018-02-20'),
(232, 153, '2018-07-02'),
(468, 4, '2018-07-18'),
(130, 391, '2018-11-28'),
(765, 74, '2018-06-22'),
(722, 304, '2017-12-19'),
(230, 270, '2018-10-04'),
(109, 112, '2018-08-31'),
(682, 376, '2018-01-31'),
(138, 419, '2018-01-28'),
(491, 127, '2018-10-17'),
(235, 260, '2018-08-08'),
(385, 311, '2018-05-07'),
(130, 223, '2018-03-18'),
(230, 486, '2018-04-21'),
(125, 93, '2018-09-26'),
(704, 421, '2018-05-19'),
(756, 110, '2018-01-08'),
(734, 447, '2018-08-22'),
(258, 394, '2018-08-27'),
(248, 346, '2018-03-24'),
(748, 136, '2018-02-26'),
(462, 103, '2018-02-22'),
(186, 131, '2018-09-13'),
(768, 10, '2018-06-15'),
(534, 476, '2018-03-23'),
(484, 474, '2018-10-08'),
(163, 293, '2018-08-15'),
(30, 433, '2018-02-24'),
(210, 400, '2018-01-31'),
(126, 359, '2018-02-03'),
(334, 457, '2018-02-15'),
(396, 212, '2018-11-23'),
(44, 261, '2018-11-17'),
(377, 441, '2018-07-12'),
(509, 344, '2018-02-09'),
(46, 199, '2018-08-17'),
(438, 215, '2018-10-09'),
(677, 331, '2018-04-20'),
(330, 424, '2018-09-06'),
(498, 11, '2018-06-02'),
(490, 430, '2018-05-08'),
(712, 171, '2018-12-06'),
(431, 70, '2018-05-06'),
(674, 393, '2018-01-26'),
(795, 180, '2018-06-28'),
(155, 283, '2018-04-08'),
(628, 106, '2018-07-05'),
(336, 426, '2018-05-27'),
(504, 356, '2018-02-08'),
(712, 159, '2018-01-20'),
(635, 3, '2018-01-06'),
(376, 355, '2018-06-28'),
(327, 136, '2018-04-05'),
(250, 166, '2018-04-28'),
(345, 39, '2018-05-28'),
(628, 462, '2018-08-29'),
(327, 308, '2018-10-12'),
(490, 351, '2018-07-17'),
(518, 302, '2018-01-08'),
(685, 354, '2018-10-17'),
(628, 479, '2018-03-12'),
(18, 88, '2018-02-26'),
(151, 301, '2018-05-21'),
(173, 60, '2018-05-07'),
(606, 239, '2018-06-19'),
(762, 150, '2018-08-30'),
(17, 173, '2018-06-23'),
(595, 36, '2018-07-05'),
(569, 441, '2018-02-05'),
(681, 64, '2018-09-20'),
(111, 275, '2018-06-01'),
(303, 21, '2018-06-03'),
(241, 324, '2018-05-09'),
(713, 398, '2018-02-12'),
(472, 106, '2018-04-26'),
(49, 473, '2018-05-16'),
(97, 431, '2018-06-21'),
(694, 168, '2018-09-07'),
(594, 193, '2018-04-16'),
(695, 126, '2018-07-23'),
(707, 140, '2018-11-09'),
(414, 431, '2018-10-22'),
(649, 129, '2018-11-02'),
(165, 367, '2018-10-17'),
(270, 148, '2018-12-05'),
(126, 18, '2018-11-13'),
(139, 5, '2018-07-18'),
(394, 185, '2018-02-13'),
(56, 77, '2018-01-29'),
(395, 207, '2018-04-03'),
(704, 286, '2018-01-14'),
(46, 159, '2018-10-15'),
(309, 285, '2018-03-26'),
(704, 179, '2018-10-14'),
(516, 202, '2018-06-26'),
(149, 387, '2018-02-27'),
(238, 192, '2018-01-23'),
(500, 364, '2018-10-31'),
(695, 321, '2018-09-06'),
(13, 308, '2018-03-10'),
(656, 133, '2018-11-17'),
(594, 148, '2018-02-27'),
(624, 264, '2018-11-25'),
(461, 440, '2018-02-28'),
(121, 161, '2018-02-28'),
(502, 313, '2018-02-06'),
(417, 272, '2018-11-03'),
(4, 21, '2018-07-28'),
(582, 257, '2018-01-27'),
(383, 411, '2018-06-05'),
(448, 38, '2018-06-23'),
(710, 62, '2018-06-04'),
(730, 76, '2018-12-17'),
(116, 125, '2018-09-22'),
(308, 35, '2018-06-25'),
(263, 260, '2018-03-27'),
(169, 15, '2018-09-26'),
(725, 7, '2018-09-24'),
(708, 139, '2018-05-20'),
(274, 210, '2018-11-24'),
(34, 441, '2018-01-20'),
(462, 184, '2018-04-28'),
(628, 359, '2018-09-03'),
(243, 259, '2018-09-19'),
(540, 238, '2018-07-27'),
(749, 228, '2018-11-07'),
(373, 383, '2018-07-07'),
(195, 147, '2018-02-26'),
(163, 235, '2018-09-25'),
(750, 85, '2018-05-03'),
(791, 82, '2018-05-18'),
(523, 60, '2018-01-15'),
(17, 282, '2018-06-29'),
(598, 75, '2018-11-23'),
(287, 327, '2018-03-15'),
(436, 279, '2018-09-14'),
(170, 8, '2018-06-02'),
(617, 96, '2018-08-19'),
(646, 80, '2018-03-09'),
(171, 481, '2018-05-10'),
(588, 178, '2018-05-14'),
(579, 237, '2018-03-03'),
(527, 21, '2018-08-17'),
(546, 149, '2018-02-28'),
(404, 416, '2018-04-04'),
(640, 124, '2018-04-09'),
(198, 474, '2018-11-14'),
(255, 103, '2018-05-03'),
(5, 471, '2018-04-15'),
(250, 199, '2017-12-23'),
(411, 58, '2018-11-29'),
(191, 434, '2018-10-01'),
(47, 369, '2018-08-12'),
(395, 331, '2018-08-19'),
(317, 384, '2018-08-27'),
(21, 276, '2018-06-27'),
(574, 178, '2018-03-13'),
(798, 425, '2018-03-01'),
(499, 47, '2018-03-01'),
(479, 24, '2018-01-16'),
(17, 448, '2018-07-29'),
(275, 417, '2018-02-18'),
(196, 460, '2018-04-30'),
(534, 288, '2018-03-09'),
(319, 113, '2018-06-04'),
(370, 49, '2018-10-25'),
(515, 271, '2018-04-21'),
(781, 360, '2018-10-09'),
(747, 120, '2018-10-24'),
(616, 27, '2018-09-12'),
(344, 2, '2018-07-18'),
(49, 32, '2018-08-18'),
(236, 261, '2018-05-12'),
(319, 493, '2018-11-11'),
(221, 460, '2018-03-05'),
(706, 140, '2018-11-13'),
(275, 274, '2018-01-16'),
(102, 207, '2018-04-11'),
(689, 89, '2018-02-02'),
(228, 416, '2018-04-17'),
(297, 47, '2018-08-11'),
(750, 412, '2018-01-11'),
(785, 269, '2018-10-06'),
(628, 374, '2018-10-07'),
(482, 477, '2018-12-06'),
(361, 414, '2018-10-29'),
(473, 10, '2018-04-03'),
(686, 304, '2018-03-14'),
(261, 59, '2018-02-19'),
(732, 335, '2018-11-20'),
(14, 404, '2018-07-31'),
(500, 166, '2018-04-03'),
(159, 327, '2018-08-17'),
(31, 223, '2018-03-22'),
(720, 191, '2018-07-22'),
(220, 396, '2018-10-21'),
(53, 40, '2018-07-07'),
(558, 64, '2018-11-15'),
(531, 113, '2018-12-03'),
(405, 89, '2018-02-07'),
(6, 92, '2018-08-22'),
(26, 427, '2018-02-14'),
(3, 330, '2018-08-24'),
(470, 410, '2018-04-11'),
(681, 85, '2018-11-08'),
(9, 309, '2018-11-28'),
(99, 254, '2018-10-21'),
(231, 107, '2018-07-03'),
(535, 251, '2018-06-28'),
(561, 64, '2018-04-12'),
(549, 131, '2018-06-06'),
(441, 422, '2018-02-21'),
(13, 4, '2018-05-07'),
(772, 228, '2018-09-11'),
(342, 469, '2018-02-04'),
(23, 151, '2018-02-16'),
(279, 299, '2018-06-30'),
(442, 196, '2018-02-12'),
(577, 336, '2018-02-21'),
(41, 407, '2018-08-07'),
(272, 21, '2018-02-20'),
(442, 112, '2018-08-01'),
(19, 427, '2018-08-09'),
(2, 468, '2018-09-11'),
(540, 120, '2018-11-28'),
(216, 329, '2018-03-02'),
(411, 391, '2018-01-06'),
(121, 259, '2018-03-30'),
(736, 249, '2018-02-01'),
(293, 491, '2018-12-15'),
(278, 463, '2018-08-25'),
(47, 493, '2018-07-29'),
(530, 438, '2018-07-18'),
(391, 492, '2018-03-20'),
(466, 275, '2018-05-23'),
(211, 343, '2018-07-10'),
(406, 378, '2018-09-12'),
(356, 387, '2018-07-23'),
(498, 404, '2018-08-13'),
(602, 298, '2018-03-15'),
(711, 311, '2018-04-02'),
(268, 80, '2018-09-29'),
(245, 32, '2018-09-15'),
(481, 229, '2018-01-21'),
(223, 47, '2018-01-20'),
(101, 430, '2018-03-22'),
(89, 261, '2018-07-14'),
(115, 292, '2018-06-23'),
(367, 10, '2018-03-12'),
(338, 448, '2018-08-14'),
(308, 496, '2018-06-30'),
(792, 152, '2018-07-21'),
(306, 125, '2018-11-20'),
(745, 368, '2018-04-16'),
(58, 235, '2018-02-28'),
(156, 124, '2018-09-06'),
(164, 41, '2018-07-10'),
(583, 32, '2018-01-11'),
(29, 263, '2018-09-21'),
(347, 62, '2018-05-29'),
(285, 271, '2018-05-10'),
(722, 154, '2018-08-19'),
(147, 26, '2018-10-20'),
(761, 237, '2018-09-30'),
(393, 15, '2018-12-10'),
(94, 289, '2018-10-12'),
(550, 336, '2018-05-14'),
(183, 33, '2018-04-23'),
(313, 442, '2018-08-13'),
(643, 140, '2018-01-08'),
(573, 298, '2018-11-03'),
(315, 20, '2017-12-28'),
(722, 151, '2018-05-20'),
(5, 223, '2018-10-28'),
(792, 380, '2018-04-29'),
(97, 323, '2018-02-18'),
(253, 5, '2018-05-21'),
(201, 188, '2018-09-17'),
(769, 425, '2018-04-19'),
(538, 282, '2018-03-08'),
(780, 87, '2018-01-08'),
(418, 379, '2018-10-25'),
(503, 477, '2018-04-30'),
(339, 396, '2018-08-24'),
(649, 486, '2018-09-15'),
(199, 215, '2018-05-26'),
(271, 465, '2018-06-24'),
(608, 368, '2018-06-28'),
(662, 314, '2018-08-31'),
(144, 480, '2018-11-24'),
(460, 176, '2018-06-24'),
(497, 77, '2018-12-03'),
(235, 488, '2018-04-14'),
(714, 169, '2018-02-26'),
(660, 272, '2018-05-05'),
(644, 114, '2018-05-10'),
(46, 208, '2018-10-31'),
(246, 140, '2018-07-20'),
(648, 309, '2018-11-10'),
(469, 475, '2018-06-02'),
(23, 434, '2018-04-10'),
(96, 202, '2018-05-28'),
(715, 303, '2018-03-17'),
(508, 143, '2018-08-06'),
(698, 303, '2018-06-03'),
(784, 362, '2018-07-26'),
(146, 269, '2018-11-22'),
(33, 204, '2018-06-12'),
(222, 350, '2018-04-21'),
(699, 335, '2018-04-17'),
(579, 96, '2018-07-21'),
(161, 170, '2018-04-01'),
(381, 155, '2018-02-25'),
(294, 175, '2018-05-15'),
(692, 491, '2018-06-29'),
(389, 27, '2018-09-09'),
(398, 372, '2018-10-30'),
(745, 468, '2018-06-10'),
(121, 65, '2018-01-11'),
(88, 454, '2018-11-06'),
(799, 417, '2018-02-18'),
(597, 375, '2018-02-26'),
(661, 259, '2018-09-26'),
(326, 383, '2018-07-21'),
(783, 62, '2018-04-14'),
(532, 381, '2018-02-11'),
(798, 492, '2018-04-11'),
(321, 338, '2018-06-17'),
(607, 117, '2018-08-07'),
(263, 104, '2018-06-05'),
(467, 141, '2018-05-13'),
(598, 465, '2018-11-13'),
(793, 497, '2018-01-19'),
(90, 394, '2017-12-29'),
(687, 336, '2018-02-12'),
(739, 479, '2018-02-17'),
(335, 189, '2017-12-26'),
(172, 364, '2018-05-28'),
(654, 65, '2018-01-11'),
(330, 45, '2018-01-21'),
(451, 87, '2018-06-11'),
(586, 226, '2018-08-29'),
(720, 31, '2018-06-05'),
(737, 343, '2018-04-29'),
(260, 174, '2018-10-30'),
(525, 7, '2018-03-23'),
(768, 444, '2018-06-08'),
(298, 258, '2018-10-26'),
(94, 248, '2018-08-27'),
(211, 207, '2018-08-20'),
(684, 104, '2018-02-22'),
(241, 468, '2018-11-17'),
(154, 54, '2018-01-28'),
(383, 118, '2018-09-17'),
(693, 416, '2018-10-22'),
(379, 201, '2018-03-31'),
(478, 45, '2018-11-05');