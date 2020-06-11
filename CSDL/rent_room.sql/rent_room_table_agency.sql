
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agency`
--

CREATE TABLE `agency` (
  `AgencyId` int(11) NOT NULL,
  `Hotline` varchar(50) DEFAULT NULL,
  `AgencyAddress` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `agency`
--

INSERT INTO `agency` (`AgencyId`, `Hotline`, `AgencyAddress`) VALUES
(1, '(305) 3985367', 'Ocean Avenue Brooklyn'),
(2, '(271) 7119707', 'Third Avenue Brooklyn'),
(3, '(412) 9982514', 'Broad Way Brooklyn'),
(4, '(430) 1752403', 'Madison Avenue Manhattan'),
(5, '(834) 9699123', 'Broad Way Brooklyn'),
(6, '(707) 3288313', 'Metropolitan Avenue Staten Island'),
(7, '(613) 1113879', 'Park Avenue Bronx'),
(8, '(593) 3223319', 'Oak Ave Queens'),
(9, '(929) 8332768', 'Third Avenue Brooklyn'),
(10, '(108) 7426108', 'Wall Street Manhattan'),
(11, '(396) 4243536', 'Park Avenue Bronx'),
(12, '(413) 2586202', 'Ocean Avenue Brooklyn'),
(13, '(426) 4673513', 'Madison Avenue Manhattan'),
(14, '(510) 8979132', 'Franklin Ave Brooklyn'),
(15, '(530) 9115176', 'Third Avenue Brooklyn');
