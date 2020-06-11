
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roomtype`
--

CREATE TABLE `roomtype` (
  `RoomTypeId` int(255) NOT NULL,
  `Decription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `roomtype`
--

INSERT INTO `roomtype` (`RoomTypeId`, `Decription`) VALUES
(1, 'centre apartment'),
(2, 'suburban apartment'),
(3, 'shared apartment centre area'),
(4, 'shared apartment suburban area'),
(5, 'shared room in Bungalow'),
(6, 'full Bungalow'),
(7, 'American Foursquare');
