

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `miniprojectdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--
DROP DATABASE IF EXISTS renting;
CREATE DATABASE IF NOT EXISTS renting;
USE renting;

CREATE TABLE `address` (
  `id_addr` int(11) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `commune` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `no_home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `refrigator` int(11) default 0,
  `washingmachine` int(11) default 0,
  `aircondition` int(11) default 0,
  `tv` int(11) default 0,
  `bedroom` int(11) default 0,
  `bathroom` int(11) default 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home`
--

CREATE TABLE `home` (
  `id_home` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `id_addr` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `id_host` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_detail`
--

CREATE TABLE `home_detail` (
  `id_detail` int(11) NOT NULL,
  `id_home` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `host`
--

CREATE TABLE `host` (
  `id_host` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_addr` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `renter`
--

CREATE TABLE `renter` (
  `id_renter` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `id_addr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote`
--

CREATE TABLE `vote` (
  `id_vote` int(11) NOT NULL,
  `review` varchar(250) DEFAULT NULL,
  `voted_date` date NOT NULL,
  `id_home` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voting`
--

CREATE TABLE `voting` (
  `id_vote` int(11) NOT NULL,
  `id_renter` int(11) NOT NULL,
  `visited_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_addr`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`),
  ADD KEY `id_host` (`id_host`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `home_detail`
--
ALTER TABLE `home_detail`
  ADD PRIMARY KEY (`id_home`),
  ADD KEY `id_home` (`id_home`);

--
-- Chỉ mục cho bảng `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`id_host`),
  ADD KEY `id_host` (`id_host`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `renter`
--
ALTER TABLE `renter`
  ADD PRIMARY KEY (`id_renter`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `id_home` (`id_home`);

--
-- Chỉ mục cho bảng `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`id_vote`,`id_renter`),
  ADD KEY `id_renter` (`id_renter`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id_addr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `renter`
--
ALTER TABLE `renter`
  MODIFY `id_renter` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vote`
--
ALTER TABLE `vote`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `home_ibfk_1` FOREIGN KEY (`id_host`) REFERENCES `host` (`id_host`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_ibfk_2` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id_addr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `home_detail`
--
ALTER TABLE `home_detail`
  ADD CONSTRAINT `home_detail_ibfk_1` FOREIGN KEY (`id_detail`) REFERENCES `detail` (`id_detail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_detail_ibfk_2` FOREIGN KEY (`id_home`) REFERENCES `home` (`id_home`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `host`
--
ALTER TABLE `host`
  ADD CONSTRAINT `host_ibfk_1` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id_addr`);

--
-- Các ràng buộc cho bảng `renter`
--
ALTER TABLE `renter`
  ADD CONSTRAINT `renter_ibfk_1` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id_addr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_home`) REFERENCES `home` (`id_home`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `voting`
--
ALTER TABLE `voting`
  ADD CONSTRAINT `voting_ibfk_1` FOREIGN KEY (`id_vote`) REFERENCES `vote` (`id_vote`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `voting_ibfk_2` FOREIGN KEY (`id_renter`) REFERENCES `renter` (`id_renter`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

show tables;
-- desc host;
-- desc address;
-- desc detail;
-- desc renter;
-- desc home;
-- desc home_detail;

insert into address(id_addr,province,district,commune,street,no_home) values
("0","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Dao","Hoang Hoa Tham","1"),
("1","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong An Lac A","Hoang Hoa Tham","2"),
("2","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Mai Dong","Tran Hung Dao","3"),
("3","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Pho Hue","4"),
("4","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Hoang Liet","Kim Nguu","5"),
("5","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Tran Dai Nghia","6"),
("6","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Cau Dat","7"),
("7","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Pho Hue","8"),
("8","Thanh pho Ha Noi","Quan Long Bien","Phuong Gia Thuy","Thai Thinh","9"),
("9","Thanh pho Ho Chi Minh","Quan 5","Phuong 12","Cau Dat","10"),
("10","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Duong Lang","11"),
("11","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Nguyen Trung Truc","Minh Khai","12"),
("12","Thanh pho Ho Chi Minh","Quan 7","Phuong Tan Quy","Kim Nguu","13"),
("13","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Dien Bien","Van Mieu","14"),
("14","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Bai","Van Mieu","15"),
("15","Thanh pho Ho Chi Minh","Quan 10","Phuong 13","Hoang Quoc Viet","16"),
("16","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Le Dai Hanh","Minh Khai","17"),
("17","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Minh Khai","18"),
("18","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Quynh Loi","Pham Van Dong","19"),
("19","Thanh pho Ha Noi","Quan Tay Ho","Phuong Tu Lien","Kim Nguu","20"),
("20","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Thai Thinh","21"),
("21","Thanh pho Ho Chi Minh","Quan 2","Phuong Binh Khanh","Duong Lang","22"),
("22","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Nguyen Ngoc Vu","23"),
("23","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Tan Thoi Hoa","Hoang Quoc Viet","24"),
("24","Thanh pho Ho Chi Minh","Quan 8","Phuong 03","Hoang Hoa Tham","25"),
("25","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Phu Thanh","Hoang Hoa Tham","26"),
("26","Thanh pho Ha Noi","Quan Dong Da","Phuong Kham Thien","Pho Hue","27"),
("27","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Kim Nguu","28"),
("28","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Ly Thai To","Pho Hue","29"),
("29","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Ma","Van Mieu","30"),
("30","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Cau Dat","31"),
("31","Thanh pho Ha Noi","Quan Dong Da","Phuong Tho Quan","Cau Dat","32"),
("32","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 06","Pham Hung","33"),
("33","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Kinh Bac","Thai Thinh","34"),
("34","Thanh pho Ha Noi","Quan Cau Giay","Phuong Mai Dich","Phuong Mai","35"),
("35","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Nam Son","Pham Hung","36"),
("36","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Dao Tan","37"),
("37","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Le Thanh Nghi","38"),
("38","Thanh pho Ho Chi Minh","Quan 12","Phuong An Phu Dong","Dao Tan","39"),
("39","Thanh pho Ho Chi Minh","Quan 7","Phuong Tan Hung","Le Van Luong","40"),
("40","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Kim Chan","Van Mieu","41"),
("41","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Dinh Cong","Pham Hung","42"),
("42","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Le Thanh Nghi","43"),
("43","Thanh pho Ho Chi Minh","Quan 7","Phuong Phu Thuan","Phuong Mai","44"),
("44","Thanh pho Ho Chi Minh","Quan 9","Phuong Phuoc Long B","Hai Ba Trung","45"),
("45","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 15","Hoang Quoc Viet","46"),
("46","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Phuong Mai","47"),
("47","Thanh pho Ho Chi Minh","Quan 8","Phuong 10","Hoang Hoa Tham","48"),
("48","Thanh pho Ho Chi Minh","Quan 5","Phuong 04","Hoang Hoa Tham","49"),
("49","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Liet","Hoang Hoa Tham","50"),
("50","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Nguyen Ngoc Vu","51"),
("51","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Nguyen Ngoc Vu","52"),
("52","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Hai Ba Trung","53"),
("53","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 10","Tran Hung Dao","54"),
("54","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Phu Tho Hoa","Pham Hung","55"),
("55","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Tran Hung Dao","56"),
("56","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Nguyen Ngoc Vu","57"),
("57","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 01","Le Thanh Nghi","58"),
("58","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Dao Tan","59"),
("59","Thanh pho Ho Chi Minh","Quan 3","Phuong 13","Van Mieu","60"),
("60","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Nguyen Ngoc Vu","61"),
("61","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Van Mieu","62"),
("62","Thanh pho Ho Chi Minh","Quan 7","Phuong Tan Quy","Phuong Mai","63"),
("63","Thanh pho Ho Chi Minh","Quan 3","Phuong 04","Thai Thinh","64"),
("64","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Cau Dat","65"),
("65","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Tan Tao","Tran Hung Dao","66"),
("66","Thanh pho Ho Chi Minh","Quan 8","Phuong 01","Pho Hue","67"),
("67","Thanh pho Ho Chi Minh","Quan 10","Phuong 10","Nguyen Ngoc Vu","68"),
("68","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Tran Phu","Hoang Hoa Tham","69"),
("69","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Hai Ba Trung","70"),
("70","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Truong Dinh","Le Thanh Nghi","71"),
("71","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Kim Nguu","72"),
("72","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Tan Quy","Tran Hung Dao","73"),
("73","Thanh pho Ha Noi","Quan Dong Da","Phuong Kim Lien","Thai Thinh","74"),
("74","Thanh pho Ho Chi Minh","Quan 4","Phuong 14","Tran Dai Nghia","75"),
("75","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Cau Dat","76"),
("76","Thanh pho Ho Chi Minh","Quan 10","Phuong 03","Le Van Luong","77"),
("77","Thanh pho Ho Chi Minh","Quan 11","Phuong 02","Kim Nguu","78"),
("78","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Hiep Binh Chanh","Kim Nguu","79"),
("79","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Tran Hung Dao","Minh Khai","80"),
("80","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Pham Van Dong","81"),
("81","Thanh pho Ho Chi Minh","Quan 4","Phuong 14","Le Van Luong","82"),
("82","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Hai Ba Trung","83"),
("83","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Kim Chan","Phuong Mai","84"),
("84","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Phuong Mai","85"),
("85","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Le Van Luong","86"),
("86","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Cua Nam","Pho Hue","87"),
("87","Thanh pho Ha Noi","Quan Long Bien","Phuong Bo De","Hoang Hoa Tham","88"),
("88","Thanh pho Ho Chi Minh","Quan 9","Phuong Long Binh","Tran Hung Dao","89"),
("89","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 08","Cau Dat","90"),
("90","Thanh pho Ha Noi","Quan Long Bien","Phuong Ngoc Thuy","Hoang Hoa Tham","91"),
("91","Thanh pho Ho Chi Minh","Quan 3","Phuong 04","Ho Dac Di","92"),
("92","Thanh pho Ho Chi Minh","Quan 12","Phuong Dong Hung Thuan","Dao Tan","93"),
("93","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Le Van Luong","94"),
("94","Thanh pho Ha Noi","Quan Dong Da","Phuong Khuong Thuong","Kim Nguu","95"),
("95","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 22","Van Mieu","96"),
("96","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Duong Lang","97"),
("97","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Dong Xuan","Dao Tan","98"),
("98","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 27","Pham Hung","99"),
("99","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Nguyen Du","Kim Nguu","100"),
("100","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Thai Thinh","101"),
("101","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ninh Xa","Tran Dai Nghia","102"),
("102","Thanh pho Ha Noi","Quan Dong Da","Phuong Nam Dong","Pho Hue","103"),
("103","Thanh pho Ho Chi Minh","Quan 8","Phuong 02","Dao Tan","104"),
("104","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Cau Den","Pham Van Dong","105"),
("105","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Mai Dong","Nguyen Ngoc Vu","106"),
("106","Thanh pho Ha Noi","Quan Dong Da","Phuong Tho Quan","Hoang Hoa Tham","107"),
("107","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Truong Tho","Hoang Quoc Viet","108"),
("108","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 15","Ho Dac Di","109"),
("109","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Tan Tao","Tran Hung Dao","110"),
("110","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Van Luong","111"),
("111","Thanh pho Ha Noi","Quan Tay Ho","Phuong Buoi","Phuong Mai","112"),
("112","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Tran Hung Dao","113"),
("113","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Hai Ba Trung","114"),
("114","Thanh pho Ho Chi Minh","Quan 11","Phuong 03","Kim Nguu","115"),
("115","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Thinh Liet","Nguyen Ngoc Vu","116"),
("116","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Nhan Chinh","Hoang Hoa Tham","117"),
("117","Thanh pho Ho Chi Minh","Quan 8","Phuong 07","Minh Khai","118"),
("118","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Kim Chan","Minh Khai","119"),
("119","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Dinh Cong","Hoang Quoc Viet","120"),
("120","Thanh pho Ho Chi Minh","Quan 5","Phuong 03","Hoang Hoa Tham","121"),
("121","Thanh pho Ha Noi","Quan Dong Da","Phuong Phuong Mai","Duong Lang","122"),
("122","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Le Dai Hanh","Tran Dai Nghia","123"),
("123","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Le Thanh Nghi","124"),
("124","Thanh pho Ho Chi Minh","Quan 9","Phuong Long Binh","Ho Dac Di","125"),
("125","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Cua Dong","Minh Khai","126"),
("126","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Minh Khai","127"),
("127","Thanh pho Ho Chi Minh","Quan 10","Phuong 05","Hoang Quoc Viet","128"),
("128","Thanh pho Ho Chi Minh","Quan 1","Phuong Pham Ngu Lao","Phuong Mai","129"),
("129","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Nam Son","Pham Hung","130"),
("130","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 6","Nguyen Ngoc Vu","131"),
("131","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Tran Hung Dao","132"),
("132","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Tran Dai Nghia","133"),
("133","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Chuong Duong","Phuong Mai","134"),
("134","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Thanh Nhan","Cau Dat","135"),
("135","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Gai","Pham Van Dong","136"),
("136","Thanh pho Ho Chi Minh","Quan 1","Phuong Nguyen Thai Binh","Hoang Hoa Tham","137"),
("137","Thanh pho Ho Chi Minh","Quan 9","Phuong Truong Thanh","Pho Hue","138"),
("138","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Le Van Luong","139"),
("139","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Phuong Mai","140"),
("140","Thanh pho Ha Noi","Quan Dong Da","Phuong Phuong Lien","Van Mieu","141"),
("141","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Phuong Liet","Dao Tan","142"),
("142","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Hoang Quoc Viet","143"),
("143","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Van Luong","144"),
("144","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Thanh Luong","Tran Hung Dao","145"),
("145","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Kinh Bac","Kim Nguu","146"),
("146","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Minh Khai","147"),
("147","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Le Thanh Nghi","148"),
("148","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Doi Can","Tran Hung Dao","149"),
("149","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Thanh Nghi","150"),
("150","Thanh pho Ho Chi Minh","Quan 6","Phuong 11","Tran Hung Dao","151"),
("151","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Thanh Tri","Cau Dat","152"),
("152","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Linh Xuan","Pham Hung","153"),
("153","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Nhan Chinh","Minh Khai","154"),
("154","Thanh pho Ho Chi Minh","Quan 10","Phuong 05","Minh Khai","155"),
("155","Thanh pho Ho Chi Minh","Quan 11","Phuong 02","Le Van Luong","156"),
("156","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Kim Nguu","157"),
("157","Thanh pho Ho Chi Minh","Quan 9","Phuong Tan Phu","Nguyen Ngoc Vu","158"),
("158","Thanh pho Ha Noi","Quan Dong Da","Phuong Thinh Quang","Tran Hung Dao","159"),
("159","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khac Niem","Phuong Mai","160"),
("160","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 12","Ho Dac Di","161"),
("161","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Khoa","Hoang Hoa Tham","162"),
("162","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 04","Hai Ba Trung","163"),
("163","Thanh pho Ho Chi Minh","Quan 6","Phuong 14","Phuong Mai","164"),
("164","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Liet","Le Thanh Nghi","165"),
("165","Thanh pho Ho Chi Minh","Quan 12","Phuong Trung My Tay","Hoang Hoa Tham","166"),
("166","Thanh pho Ho Chi Minh","Quan 10","Phuong 14","Pham Van Dong","167"),
("167","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Mai","Phuong Mai","168"),
("168","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Kim Nguu","169"),
("169","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Quynh Mai","Pham Van Dong","170"),
("170","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Phan Chu Trinh","Phuong Mai","171"),
("171","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Hoang Liet","Phuong Mai","172"),
("172","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Truong Dinh","Pham Van Dong","173"),
("173","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Trang Tien","Hoang Quoc Viet","174"),
("174","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 17","Tran Hung Dao","175"),
("175","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Hoa Thanh","Le Thanh Nghi","176"),
("176","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dap Cau","Hoang Quoc Viet","177"),
("177","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 06","Pho Hue","178"),
("178","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Kim Nguu","179"),
("179","Thanh pho Ho Chi Minh","Quan 1","Phuong Nguyen Thai Binh","Hoang Quoc Viet","180"),
("180","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Tran Hung Dao","Hai Ba Trung","181"),
("181","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Dien Bien","Hai Ba Trung","182"),
("182","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Yen So","Pho Hue","183"),
("183","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Tran Hung Dao","Pham Hung","184"),
("184","Thanh pho Ha Noi","Quan Long Bien","Phuong Thuong Thanh","Tran Dai Nghia","185"),
("185","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Van Mieu","186"),
("186","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Truong Dinh","Hoang Quoc Viet","187"),
("187","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 24","Dao Tan","188"),
("188","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Pham Hung","189"),
("189","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Dang","Le Thanh Nghi","190"),
("190","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Kinh Bac","Kim Nguu","191"),
("191","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 14","Le Van Luong","192"),
("192","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Gai","Pham Hung","193"),
("193","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Thuong Dinh","Le Thanh Nghi","194"),
("194","Thanh pho Ho Chi Minh","Quan 6","Phuong 06","Van Mieu","195"),
("195","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Kinh Bac","Pham Van Dong","196"),
("196","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Binh Tri Dong B","Pham Van Dong","197"),
("197","Thanh pho Ho Chi Minh","Quan 7","Phuong Tan Phong","Le Van Luong","198"),
("198","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 15","Kim Nguu","199"),
("199","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dap Cau","Hai Ba Trung","200"),
("200","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Nam Son","Minh Khai","201"),
("201","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Le Van Luong","202"),
("202","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Phung","Hai Ba Trung","203"),
("203","Thanh pho Ha Noi","Quan Dong Da","Phuong Thinh Quang","Pho Hue","204"),
("204","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Trang Tien","Tran Dai Nghia","205"),
("205","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Kim Chan","Pham Van Dong","206"),
("206","Thanh pho Ho Chi Minh","Quan 11","Phuong 01","Le Thanh Nghi","207"),
("207","Thanh pho Ha Noi","Quan Long Bien","Phuong Duc Giang","Pham Van Dong","208"),
("208","Thanh pho Ho Chi Minh","Quan 6","Phuong 01","Cau Dat","209"),
("209","Thanh pho Ho Chi Minh","Quan 6","Phuong 03","Cau Dat","210"),
("210","Thanh pho Ha Noi","Quan Cau Giay","Phuong Dich Vong","Pham Van Dong","211"),
("211","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 17","Cau Dat","212"),
("212","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Duong Lang","213"),
("213","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Pham Hung","214"),
("214","Thanh pho Ho Chi Minh","Quan 12","Phuong Dong Hung Thuan","Nguyen Ngoc Vu","215"),
("215","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Van Luong","216"),
("216","Thanh pho Ho Chi Minh","Quan 11","Phuong 12","Hai Ba Trung","217"),
("217","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Tran Hung Dao","Duong Lang","218"),
("218","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Ho Dac Di","219"),
("219","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Phuong Mai","220"),
("220","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 19","Van Mieu","221"),
("221","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 21","Pham Van Dong","222"),
("222","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Ngo Thi Nham","Cau Dat","223"),
("223","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Tran Hung Dao","224"),
("224","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 10","Le Thanh Nghi","225"),
("225","Thanh pho Ho Chi Minh","Quan 9","Phuong Long Thanh My","Hai Ba Trung","226"),
("226","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Le Van Luong","227"),
("227","Thanh pho Ho Chi Minh","Quan 5","Phuong 05","Duong Lang","228"),
("228","Thanh pho Ho Chi Minh","Quan 3","Phuong 10","Dao Tan","229"),
("229","Thanh pho Ho Chi Minh","Quan 12","Phuong Thanh Loc","Tran Dai Nghia","230"),
("230","Thanh pho Ho Chi Minh","Quan 6","Phuong 07","Pham Van Dong","231"),
("231","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Dao Tan","232"),
("232","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Hai Ba Trung","233"),
("233","Thanh pho Ha Noi","Quan Dong Da","Phuong Tho Quan","Thai Thinh","234"),
("234","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Duong Lang","235"),
("235","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Mai","Le Van Luong","236"),
("236","Thanh pho Ho Chi Minh","Quan 11","Phuong 16","Dao Tan","237"),
("237","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Le Van Luong","238"),
("238","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Duong Lang","239"),
("239","Thanh pho Ho Chi Minh","Quan 4","Phuong 03","Dao Tan","240"),
("240","Thanh pho Ho Chi Minh","Quan 4","Phuong 09","Dao Tan","241"),
("241","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Van Mieu","242"),
("242","Thanh pho Ha Noi","Quan Dong Da","Phuong O Cho Dua","Cau Dat","243"),
("243","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Nguyen Du","Nguyen Ngoc Vu","244"),
("244","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Liet","Tran Hung Dao","245"),
("245","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 01","Thai Thinh","246"),
("246","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Dinh Cong","Nguyen Ngoc Vu","247"),
("247","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Cua Dong","Hoang Hoa Tham","248"),
("248","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Tran Dai Nghia","249"),
("249","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 03","Hoang Hoa Tham","250"),
("250","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 01","Le Thanh Nghi","251"),
("251","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Tran Hung Dao","252"),
("252","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Duong Lang","253"),
("253","Thanh pho Ho Chi Minh","Quan 1","Phuong Da Kao","Cau Dat","254"),
("254","Thanh pho Ho Chi Minh","Quan 4","Phuong 16","Pham Van Dong","255"),
("255","Thanh pho Ha Noi","Quan Long Bien","Phuong Giang Bien","Minh Khai","256"),
("256","Thanh pho Ha Noi","Quan Dong Da","Phuong Kham Thien","Tran Dai Nghia","257"),
("257","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Pho Hue","258"),
("258","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ninh Xa","Nguyen Ngoc Vu","259"),
("259","Thanh pho Ha Noi","Quan Cau Giay","Phuong Dich Vong","Tran Hung Dao","260"),
("260","Thanh pho Ho Chi Minh","Quan 1","Phuong Co Giang","Cau Dat","261"),
("261","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Cua Dong","Duong Lang","262"),
("262","Thanh pho Ho Chi Minh","Quan 6","Phuong 13","Minh Khai","263"),
("263","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Le Van Luong","264"),
("264","Thanh pho Ha Noi","Quan Tay Ho","Phuong Nhat Tan","Le Thanh Nghi","265"),
("265","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Thuong Dinh","Phuong Mai","266"),
("266","Thanh pho Ha Noi","Quan Long Bien","Phuong Duc Giang","Le Van Luong","267"),
("267","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Thanh Xuan Trung","Duong Lang","268"),
("268","Thanh pho Ha Noi","Quan Cau Giay","Phuong Nghia Do","Nguyen Ngoc Vu","269"),
("269","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Hoang Hoa Tham","270"),
("270","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Hoa Long","Van Mieu","271"),
("271","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Ho Dac Di","272"),
("272","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Le Thanh Nghi","273"),
("273","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Kim Chan","Minh Khai","274"),
("274","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Hoang Hoa Tham","275"),
("275","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Cau Dat","276"),
("276","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Hiep Binh Phuoc","Le Thanh Nghi","277"),
("277","Thanh pho Ho Chi Minh","Quan 3","Phuong 05","Le Thanh Nghi","278"),
("278","Thanh pho Ho Chi Minh","Quan 9","Phuong Long Binh","Nguyen Ngoc Vu","279"),
("279","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Nam Son","Minh Khai","280"),
("280","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Linh Dong","Pham Van Dong","281"),
("281","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 09","Dao Tan","282"),
("282","Thanh pho Ho Chi Minh","Quan 6","Phuong 08","Hoang Quoc Viet","283"),
("283","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khac Niem","Hai Ba Trung","284"),
("284","Thanh pho Ho Chi Minh","Quan 8","Phuong 11","Tran Dai Nghia","285"),
("285","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Hoang Liet","Kim Nguu","286"),
("286","Thanh pho Ho Chi Minh","Quan 7","Phuong Binh Thuan","Pham Hung","287"),
("287","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Mai Dong","Minh Khai","288"),
("288","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Tran Dai Nghia","289"),
("289","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Cau Dat","290"),
("290","Thanh pho Ho Chi Minh","Quan 8","Phuong 04","Dao Tan","291"),
("291","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Le Van Luong","292"),
("292","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van Duong","Pho Hue","293"),
("293","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 10","Pham Van Dong","294"),
("294","Thanh pho Ho Chi Minh","Quan 9","Phuong Long Phuoc","Van Mieu","295"),
("295","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 9","Le Thanh Nghi","296"),
("296","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Minh Khai","297"),
("297","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Hoang Hoa Tham","298"),
("298","Thanh pho Ho Chi Minh","Quan Thu Duc","Phuong Truong Tho","Hai Ba Trung","299"),
("299","Thanh pho Ha Noi","Quan Tay Ho","Phuong Nhat Tan","Ho Dac Di","300"),
("300","Thanh pho Ha Noi","Quan Cau Giay","Phuong Yen Hoa","Pham Van Dong","301"),
("301","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Van Luong","302"),
("302","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Pho Hue","303"),
("303","Thanh pho Ha Noi","Quan Long Bien","Phuong Bo De","Pham Van Dong","304"),
("304","Thanh pho Ho Chi Minh","Quan 4","Phuong 18","Hoang Hoa Tham","305"),
("305","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Cau Dat","306"),
("306","Thanh pho Ho Chi Minh","Quan 10","Phuong 01","Tran Hung Dao","307"),
("307","Thanh pho Ha Noi","Quan Dong Da","Phuong O Cho Dua","Phuong Mai","308"),
("308","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Dao Tan","309"),
("309","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Thanh Nhan","Nguyen Ngoc Vu","310"),
("310","Thanh pho Ha Noi","Quan Dong Da","Phuong Nga Tu So","Pham Hung","311"),
("311","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Nguyen Du","Cau Dat","312"),
("312","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Minh Khai","313"),
("313","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ninh Xa","Dao Tan","314"),
("314","Thanh pho Ho Chi Minh","Quan 4","Phuong 16","Minh Khai","315"),
("315","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Thanh Luong","Minh Khai","316"),
("316","Thanh pho Ho Chi Minh","Quan 3","Phuong 04","Thai Thinh","317"),
("317","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Quan Thanh","Minh Khai","318"),
("318","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Dao Tan","319"),
("319","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Doi Can","Kim Nguu","320"),
("320","Thanh pho Ha Noi","Quan Cau Giay","Phuong Dich Vong","Nguyen Ngoc Vu","321"),
("321","Thanh pho Ha Noi","Quan Cau Giay","Phuong Yen Hoa","Hai Ba Trung","322"),
("322","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Giang Vo","Duong Lang","323"),
("323","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Duong Lang","324"),
("324","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Gai","Le Thanh Nghi","325"),
("325","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Thai Thinh","326"),
("326","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Binh Tri Dong A","Nguyen Ngoc Vu","327"),
("327","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 14","Ho Dac Di","328"),
("328","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Dao Tan","329"),
("329","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Pham Hung","330"),
("330","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Dao Tan","331"),
("331","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Thanh Xuan Nam","Pho Hue","332"),
("332","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Minh Khai","Nguyen Ngoc Vu","333"),
("333","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Truong Dinh","Hoang Quoc Viet","334"),
("334","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 05","Ho Dac Di","335"),
("335","Thanh pho Ha Noi","Quan Long Bien","Phuong Giang Bien","Le Thanh Nghi","336"),
("336","Thanh pho Ho Chi Minh","Quan 9","Phuong Tang Nhon Phu A","Hai Ba Trung","337"),
("337","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 22","Duong Lang","338"),
("338","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Hai Ba Trung","339"),
("339","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dap Cau","Nguyen Ngoc Vu","340"),
("340","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Hoang Hoa Tham","341"),
("341","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ve An","Pham Hung","342"),
("342","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Phuong Liet","Thai Thinh","343"),
("343","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Dang","Hoang Hoa Tham","344"),
("344","Thanh pho Ha Noi","Quan Tay Ho","Phuong Tu Lien","Le Thanh Nghi","345"),
("345","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Tran Hung Dao","346"),
("346","Thanh pho Ho Chi Minh","Quan 3","Phuong 05","Tran Dai Nghia","347"),
("347","Thanh pho Ho Chi Minh","Quan 8","Phuong 05","Pho Hue","348"),
("348","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Suoi Hoa","Phuong Mai","349"),
("349","Thanh pho Ho Chi Minh","Quan 11","Phuong 15","Hoang Quoc Viet","350"),
("350","Thanh pho Ha Noi","Quan Tay Ho","Phuong Yen Phu","Hoang Hoa Tham","351"),
("351","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 16","Kim Nguu","352"),
("352","Thanh pho Ha Noi","Quan Long Bien","Phuong Ngoc Lam","Pham Van Dong","353"),
("353","Thanh pho Ha Noi","Quan Cau Giay","Phuong Nghia Do","Phuong Mai","354"),
("354","Thanh pho Ho Chi Minh","Quan 12","Phuong Tan Thoi Nhat","Dao Tan","355"),
("355","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Phuc Tan","Pho Hue","356"),
("356","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Phuong Mai","357"),
("357","Thanh pho Ha Noi","Quan Dong Da","Phuong Lang Ha","Minh Khai","358"),
("358","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Thanh Nghi","359"),
("359","Thanh pho Ho Chi Minh","Quan 11","Phuong 02","Tran Dai Nghia","360"),
("360","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Ly Thai To","Tran Hung Dao","361"),
("361","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Phuong Mai","362"),
("362","Thanh pho Ho Chi Minh","Quan 2","Phuong Binh An","Van Mieu","363"),
("363","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Tran Phu","Pham Van Dong","364"),
("364","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Nguyen Ngoc Vu","365"),
("365","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Dien Bien","Tran Hung Dao","366"),
("366","Thanh pho Ho Chi Minh","Quan 4","Phuong 12","Pho Hue","367"),
("367","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Binh Tri Dong A","Tran Hung Dao","368"),
("368","Thanh pho Ha Noi","Quan Thanh Xuan","Phuong Thuong Dinh","Kim Nguu","369"),
("369","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Kinh Bac","Pho Hue","370"),
("370","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 05","Le Van Luong","371"),
("371","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Kim Nguu","372"),
("372","Thanh pho Ho Chi Minh","Quan 12","Phuong Tan Thoi Hiep","Pham Hung","373"),
("373","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Phung","Tran Hung Dao","374"),
("374","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Le Thanh Nghi","375"),
("375","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 04","Tran Dai Nghia","376"),
("376","Thanh pho Ha Noi","Quan Dong Da","Phuong Cat Linh","Hoang Hoa Tham","377"),
("377","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong An Lac A","Hoang Quoc Viet","378"),
("378","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Mai Dong","Ho Dac Di","379"),
("379","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Dai Kim","Kim Nguu","380"),
("380","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Minh Khai","381"),
("381","Thanh pho Ha Noi","Quan Long Bien","Phuong Cu Khoi","Dao Tan","382"),
("382","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 10","Le Van Luong","383"),
("383","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Le Dai Hanh","Van Mieu","384"),
("384","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Pho Hue","Ho Dac Di","385"),
("385","Thanh pho Ho Chi Minh","Quan Phu Nhuan","Phuong 12","Tran Hung Dao","386"),
("386","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Tien An","Hoang Hoa Tham","387"),
("387","Thanh pho Ha Noi","Quan Dong Da","Phuong Phuong Lien","Ho Dac Di","388"),
("388","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Hoang Van Thu","Phuong Mai","389"),
("389","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Khoa","Hoang Quoc Viet","390"),
("390","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Hoang Hoa Tham","391"),
("391","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Binh Hung Hoa","Nguyen Ngoc Vu","392"),
("392","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 01","Phuong Mai","393"),
("393","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 05","Phuong Mai","394"),
("394","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bach Khoa","Pho Hue","395"),
("395","Thanh pho Ho Chi Minh","Quan 9","Phuong Phu Huu","Le Van Luong","396"),
("396","Thanh pho Ha Noi","Quan Ba Dinh","Phuong Doi Can","Le Thanh Nghi","397"),
("397","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Trong","Minh Khai","398"),
("398","Thanh pho Ho Chi Minh","Quan 5","Phuong 02","Cau Dat","399"),
("399","Thanh pho Ho Chi Minh","Quan 4","Phuong 12","Duong Lang","400"),
("400","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Hoang Hoa Tham","401"),
("401","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 07","Hoang Quoc Viet","402"),
("402","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khuc Xuyen","Pham Van Dong","403"),
("403","Thanh pho Ho Chi Minh","Quan Binh Thanh","Phuong 13","Le Thanh Nghi","404"),
("404","Thanh pho Ho Chi Minh","Quan Tan Phu","Phuong Tay Thanh","Le Van Luong","405"),
("405","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Bong","Ho Dac Di","406"),
("406","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Khac Niem","Ho Dac Di","407"),
("407","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Bui Thi Xuan","Hoang Hoa Tham","408"),
("408","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong Binh Hung Hoa A","Hoang Quoc Viet","409"),
("409","Tinh Bac Ninh","Huyen Yen Phong","Thi tran Cho","Nguyen Ngoc Vu","410"),
("410","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Dong Mac","Pham Hung","411"),
("411","Thanh pho Ho Chi Minh","Quan 7","Phuong Tan Thuan Tay","Dao Tan","412"),
("412","Thanh pho Ho Chi Minh","Quan 10","Phuong 02","Hoang Hoa Tham","413"),
("413","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Thai Thinh","414"),
("414","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 04","Nguyen Ngoc Vu","415"),
("415","Thanh pho Ho Chi Minh","Quan 8","Phuong 02","Kim Nguu","416"),
("416","Thanh pho Ha Noi","Quan Hoan Kiem","Phuong Hang Bo","Le Thanh Nghi","417"),
("417","Tinh Bac Ninh","Thanh pho Bac Ninh","Xa Nam Son","Pho Hue","418"),
("418","Thanh pho Ho Chi Minh","Quan Binh Tan","Phuong An Lac A","Phuong Mai","419"),
("419","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Liet","Hoang Hoa Tham","420"),
("420","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 17","Pho Hue","421"),
("421","Thanh pho Ha Noi","Quan Dong Da","Phuong Phuong Mai","Le Van Luong","422"),
("422","Thanh pho Ho Chi Minh","Quan 9","Phuong Truong Thanh","Dao Tan","423"),
("423","Thanh pho Ha Noi","Quan Dong Da","Phuong Trung Tu","Hoang Hoa Tham","424"),
("424","Thanh pho Ho Chi Minh","Quan 5","Phuong 08","Pho Hue","425"),
("425","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Kim Nguu","426"),
("426","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Thi Cau","Tran Hung Dao","427"),
("427","Thanh pho Ha Noi","Quan Tay Ho","Phuong Phu Thuong","Le Thanh Nghi","428"),
("428","Thanh pho Ho Chi Minh","Quan 11","Phuong 12","Pham Van Dong","429"),
("429","Thanh pho Ho Chi Minh","Quan 9","Phuong Tang Nhon Phu B","Hai Ba Trung","430"),
("430","Thanh pho Ha Noi","Quan Hai Ba Trung","Phuong Dong Nhan","Pho Hue","431"),
("431","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ninh Xa","Duong Lang","432"),
("432","Thanh pho Ha Noi","Quan Dong Da","Phuong Hang Bot","Hoang Hoa Tham","433"),
("433","Thanh pho Ha Noi","Quan Hoang Mai","Phuong Dinh Cong","Duong Lang","434"),
("434","Thanh pho Ho Chi Minh","Quan 4","Phuong 10","Tran Hung Dao","435"),
("435","Thanh pho Ha Noi","Quan Cau Giay","Phuong Yen Hoa","Nguyen Ngoc Vu","436"),
("436","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Hap Linh","Thai Thinh","437"),
("437","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Phong Khe","Pham Hung","438"),
("438","Thanh pho Ha Noi","Quan Long Bien","Phuong Thach Ban","Hai Ba Trung","439"),
("439","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Dai Phuc","Duong Lang","440"),
("440","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Vo Cuong","Pham Hung","441"),
("441","Thanh pho Ho Chi Minh","Quan Tan Binh","Phuong 06","Ho Dac Di","442"),
("442","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Van An","Kim Nguu","443"),
("443","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 16","Tran Dai Nghia","444"),
("444","Tinh Bac Ninh","Thanh pho Bac Ninh","Phuong Ninh Xa","Minh Khai","445"),
("445","Thanh pho Ho Chi Minh","Quan Go Vap","Phuong 01","Thai Thinh","446"),
("446","Thanh pho Ho Chi Minh","Quan 6","Phuong 11","Pham Van Dong","447"),
("447","Thanh pho Ho Chi Minh","Quan 3","Phuong 13","Duong Lang","448");

insert into detail(id_detail,refrigator,washingmachine,aircondition,tv,bedroom,bathroom) values
(1,0,1,2,0,0,1),
(2,0,2,2,0,1,2),
(3,0,2,1,2,0,2),
(4,1,0,1,0,3,4),
(5,0,2,2,4,1,2),
(6,0,1,0,2,0,2),
(7,0,2,0,0,0,1),
(8,1,1,0,0,0,1),
(9,0,0,1,0,2,0),
(10,0,1,2,1,3,2),
(11,1,0,1,1,3,4),
(12,1,0,0,1,1,2),
(13,2,2,0,2,1,2),
(14,1,1,1,1,0,0),
(15,2,1,0,1,3,1),
(16,0,1,0,2,0,0),
(17,1,2,2,0,0,1),
(18,2,1,2,2,2,2),
(19,1,0,0,2,2,1),
(20,0,0,2,1,3,1),
(21,1,0,1,1,3,1),
(22,2,1,2,1,3,2),
(23,2,2,0,1,0,0),
(24,1,1,1,0,3,1),
(25,0,0,0,0,2,1),
(26,1,0,2,1,3,2),
(27,2,1,2,1,0,1),
(28,1,1,2,2,1,1),
(29,0,2,1,0,2,1),
(30,1,2,0,1,0,0),
(31,1,1,2,1,2,2),
(32,2,2,1,0,0,2),
(33,0,2,1,0,2,0),
(34,0,1,0,1,0,0),
(35,0,0,2,0,0,0),
(36,1,0,0,2,3,1),
(37,1,1,2,2,3,0),
(38,0,0,2,1,3,4),
(39,0,2,2,2,0,0),
(40,2,1,1,1,2,1),
(41,0,0,2,1,1,2),
(42,2,0,0,0,3,1),
(43,2,1,1,1,0,2),
(44,0,2,0,0,2,0),
(45,1,2,0,2,1,0),
(46,2,0,0,2,0,1),
(47,2,0,2,0,3,0),
(48,0,2,2,2,3,1),
(49,1,1,0,2,0,2),
(50,0,2,0,2,1,0),
(51,0,1,1,2,2,1),
(52,1,2,0,1,0,2),
(53,1,2,2,1,1,2),
(54,2,1,1,2,0,0),
(55,0,1,2,1,2,2),
(56,2,0,2,1,0,2),
(57,1,0,0,0,0,2),
(58,1,1,0,0,2,0),
(59,0,2,2,0,4,2),
(60,2,1,0,2,2,1),
(61,2,1,1,2,2,1),
(62,0,0,0,2,3,1),
(63,2,0,0,0,3,2),
(64,0,1,2,0,1,1),
(65,0,0,1,0,1,0),
(66,0,4,1,0,2,0),
(67,2,0,0,0,2,0),
(68,1,2,1,1,3,2),
(69,1,1,0,1,1,2),
(70,2,1,0,0,3,2),
(71,2,0,0,1,2,1),
(72,1,2,2,2,2,0),
(73,0,0,0,2,0,1),
(74,2,0,1,0,2,2),
(75,0,0,0,2,3,0),
(76,0,1,0,0,1,1),
(77,0,2,1,1,3,0),
(78,0,1,0,1,0,2),
(79,2,0,1,2,0,1),
(80,0,1,0,2,3,0),
(81,1,0,1,0,3,0),
(82,1,2,0,1,1,1),
(83,0,1,2,2,1,2),
(84,1,0,0,2,3,2),
(85,2,0,0,0,0,2),
(86,0,2,1,1,0,1),
(87,1,0,1,2,0,2),
(88,1,0,2,2,3,1),
(89,2,2,1,1,1,1),
(90,2,1,2,2,1,2),
(91,1,2,1,2,1,2),
(92,1,1,1,0,3,2),
(93,1,0,1,1,1,0),
(94,0,0,1,1,2,2),
(95,1,0,2,0,3,2),
(96,2,2,2,1,0,2),
(97,2,2,2,1,0,1),
(98,0,2,1,1,0,0),
(99,1,0,0,0,3,2),
(100,2,0,2,2,0,0);

insert into host(id_host,name,phone,id_addr) values
(1,'Mai Huy Banh','0234000685',131),
(2,'Nguyen Trung Tuong','0896700307',141),
(3,'Mai Dinh Long','0458501761',106),
(4,'Dinh Trung Bong','0331400654',175),
(5,'Vu Dinh Phiet','0677139177',112),
(6,'Tran Trung Phoan','0788522881',114),
(7,'Vu Ba Triet','0681828447',164),
(8,'Vu Xuan Biet','0831636002',109),
(9,'Nguyen Ba Tuong','0801955903',102),
(10,'Mai Huy Huong','0899484967',125),
(11,'Vu Dinh Chuong','0547518263',185),
(12,'Mai Huy Duong','0204220396',186),
(13,'Tran Trung Tong','0987913690',121),
(14,'Nguyen Trung Hau','0301831322',135),
(15,'Ngoc Ba Buu','0877030927',128),
(16,'Le Ba Tieu','0343062077',189),
(17,'Tran Xuan Phon','0956123813',152),
(18,'Vu Huy Huong','0862326668',184),
(19,'Nguyen Trung Dieu','0100013813',179),
(20,'Tran Trung Bong','0282749088',181),
(21,'Mai Huu Huong','0456582990',199),
(22,'Dinh Ba Lieu','0518328629',187),
(23,'Nguyen Xuan Banh','0413903888',133),
(24,'Que Ba Luong','0641001695',197),
(25,'Ngoc Huy Diet','0625259591',158),
(26,'Nguyen Huu Biet','0243901934',176),
(27,'Que Ba Truong','0886551609',110),
(28,'Mai Xuan Huong','0186831904',198),
(29,'Nguyen Dinh Phuong','0515412661',119),
(30,'Nguyen Trung Tong','0573562279',117),
(31,'Vu Huy Hiet','0120921130',140),
(32,'Vu Huy Diet','0381089596',180),
(33,'Dinh Huu Tuong','0324504461',118),
(34,'Tran Xuan Dong','0391269017',170),
(35,'Que Ba Huong','0929839052',154),
(36,'Le Ba Lieu','0602433680',123),
(37,'Mai Dinh Tieu','0767959829',194),
(38,'Vu Huu Phanh','0765509291',122),
(39,'Dinh Ba Tiet','0145757599',126),
(40,'Tran Trung Bieu','0139188799',115),
(41,'Le Trung Bieu','0507514103',168),
(42,'Vu Dinh Phiet','0296507531',190),
(43,'Nguyen Ba Bieu','0537200765',148),
(44,'Mai Van Duong','0219983287',153),
(45,'Le Xuan Duong','0936519598',195),
(46,'Nguyen Ba Phuong','0329884570',105),
(47,'Tran Huy Phong','0126150711',191),
(48,'Dinh Trung Doan','0553715518',151),
(49,'Vu Xuan Dieu','0180190389',161),
(50,'Tran Xuan Phuong','0153529702',177),
(51,'Mai Van Long','0330741247',167),
(52,'Vu Dinh Boan','0696849498',142),
(53,'Tran Ba Phong','0199100821',129),
(54,'Que Dinh Truong','0187063100',169),
(55,'Mai Huy Loan','0414087660',101),
(56,'Tran Huy Dieu','0361519324',107),
(57,'Mai Huu Hong','0967386869',183),
(58,'Nguyen Van Lieu','0738494599',136),
(59,'Le Trung Duong','0706985769',157),
(60,'Vu Huy Bong','0991019691',172),
(61,'Le Trung Long','0756427253',127),
(62,'Mai Ba Hoan','0375284344',138),
(63,'Le Dinh Bong','0345143413',111),
(64,'Tran Xuan Liet','0136109581',174),
(65,'Que Ba Tanh','0836124619',147),
(66,'Que Trung Lanh','0402611185',173),
(67,'Vu Huy Biet','0210074568',144),
(68,'Le Ba Doan','0949195054',130),
(69,'Mai Huu Tong','0337457599',149),
(70,'Dinh Van Dieu','0235079677',166),
(71,'Nguyen Huy Boan','0441345479',116),
(72,'Ngoc Van Phanh','0810354167',139),
(73,'Dinh Huu Banh','0241929819',143),
(74,'Mai Dinh Liet','0942829565',178),
(75,'Que Trung Toan','0896288284',160),
(76,'Le Dinh Truong','0705201223',137),
(77,'Que Van Huong','0885923091',165),
(78,'Que Ba Luong','0231587655',120),
(79,'Vu Xuan Doan','0534153123',104),
(80,'Le Trung Banh','0850124066',182),
(81,'Ngoc Xuan Huong','0535427011',124),
(82,'Nguyen Dinh Phoan','0374891564',162),
(83,'Nguy Trung Hau','0313353488',193),
(84,'Mai Huu Hieu','0504057908',155),
(85,'Que Xuan Phiet','0955029289',134),
(86,'Vu Ba Lanh','0182886113',113),
(87,'Dinh Trung Dong','0951511952',108),
(88,'Ngoc Trung Luong','0618620387',132),
(89,'Tran Van Luong','0293540771',146),
(90,'Le Ba Hong','0409830044',156),
(91,'Que Huu Hiet','0345335625',145),
(92,'Mai Ba Phong','0146739796',159),
(93,'Nguyen Van Biet','0254790637',150),
(94,'Tran Van Luong','0429761068',171),
(95,'Nguyen Xuan Biet','0442881225',192),
(96,'Tran Manh Hung','0892048791',200),
(97,'Tran Trung Doan','0977526518',188),
(98,'Dinh Dinh Doan','0874737620',196),
(99,'Mai Dinh Danh','0494527790',163),
(100,'Tran Van Danh','0456055534',103);

insert into renter(id_renter,name,phone,id_addr) values
(1,'Ho Ngoc He','0565946371',285),
(2,'Bach Bao Dan','0256246873',289),
(3,'Dao Ngoc He','0594928255',217),
(4,'Dao Trong Van','0712086336',283),
(5,'Duong Trong Le','0168806668',206),
(6,'Duong Ngoc Danh','0861832575',288),
(7,'Trinh Bao Danh','0675689574',249),
(8,'Duong Bao Phung','0880091097',209),
(9,'Dao Ngoc Diet','0225535670',241),
(10,'Duong Trong Lien','0709677074',298),
(11,'Bach Bao Dien','0954311807',250),
(12,'Vuong Van Dung','0816582787',238),
(13,'Ho Trung Han','0422750606',229),
(14,'Duong Trung Phung','0900061064',210),
(15,'Dao Viet Vien','0721520259',224),
(16,'Bach Trong Tan','0456968610',203),
(17,'Ho Van Tung','0490206614',245),
(18,'Bach Viet Vanh','0665141314',201),
(19,'Trinh Trung Le','0147006943',251),
(20,'Duong Van Phiet','0460516980',281),
(21,'Bach Trong Tien','0669218423',294),
(22,'Vuong Van Vanh','0998143895',268),
(23,'Ho Trong Vuong','0776645114',207),
(24,'Ho Viet Luong','0265178910',263),
(25,'Vuong Trung Danh','0279189614',205),
(26,'Mac Viet Dien','0750713589',226),
(27,'Bach Bao Van','0653013540',220),
(28,'Le Huy Van','0341857278',214),
(29,'Mac Ngoc Phanh','0413460617',265),
(30,'Vuong Van Dien','0669303535',296),
(31,'Duong Viet Ve','0580078356',204),
(32,'Vuong Trong Viet','0320942605',212),
(33,'Duong Bao Duong','0457587406',270),
(34,'Mac Ngoc Lanh','0887878091',246),
(35,'Ho Van Vuong','0135750798',278),
(36,'Mac Ngoc Phe','0828063388',261),
(37,'Mac Ngoc Dung','0287063387',239),
(38,'Vuong Viet Viet','0494388140',292),
(39,'Trinh Van Te','0241835819',219),
(40,'Mac Ngoc Viet','0983409766',242),
(41,'Duong Bao Ve','0128023003',248),
(42,'Vuong Trong Viet','0327998598',218),
(43,'Trinh Ngoc Liet','0193835761',237),
(44,'Mac Ngoc Tuong','0584376078',274),
(45,'Vuong Trong Diet','0386654573',222),
(46,'Duong Ngoc Han','0584796591',230),
(47,'Trinh Trong Phan','0951199203',254),
(48,'Dao Bao Phuong','0363492251',284),
(49,'Dao Trung Le','0611188675',264),
(50,'Trinh Viet Vuong','0739956015',282),
(51,'Mac Van Phanh','0782940401',215),
(52,'Dao Viet Tanh','0600443729',275),
(53,'Trinh Trong Huong','0324797193',295),
(54,'Trinh Viet Phanh','0601260792',299),
(55,'Trinh Trong Tiet','0313317198',297),
(56,'Trinh Trong Phuong','0769344270',235),
(57,'Duong Ngoc Te','0159044703',216),
(58,'Dao Van Van','0257225846',223),
(59,'Dao Trung Ve','0354051869',273),
(60,'Duong Viet Phe','0167341517',287),
(61,'Vuong Trong Phien','0568617373',293),
(62,'Vuong Bao De','0436609820',291),
(63,'Trinh Trong Tan','0520073158',259),
(64,'Vuong Viet Liet','0268907728',232),
(65,'Ho Van Diet','0459894674',279),
(66,'Trinh Van Huong','0525919100',290),
(67,'Bach Trong Dien','0596470510',280),
(68,'Bach Viet Liet','0263999477',233),
(69,'Trinh Viet Han','0258414299',253),
(70,'Duong Bao Tien','0977299335',300),
(71,'Dao Trung Hien','0382484505',247),
(72,'Ho Van Tuong','0207834195',258),
(73,'Bach Van Hung','0320160986',276),
(74,'Ho Van Tanh','0725709564',256),
(75,'Mac Van Tiet','0226519062',277),
(76,'Mac Trong Le','0404625673',211),
(77,'Mac Trung Dung','0599902211',260),
(78,'Ho Trong Liet','0774479590',236),
(79,'Ho Bao Diet','0282753873',252),
(80,'Bach Van Dien','0442780973',213),
(81,'Mac Viet Te','0383799149',272),
(82,'Ho Trong Lien','0769567696',227),
(83,'Bach Trong Hiet','0252018180',240),
(84,'Dao Bao De','0179784918',202),
(85,'Ho Trung Dien','0288887369',244),
(86,'Mac Ngoc Ve','0593973358',255),
(87,'Bach Van Tien','0761939601',228),
(88,'Bach Van Tiet','0799010849',269),
(89,'Dao Bao Vanh','0228395953',243),
(90,'Mac Van Lan','0757647324',286),
(91,'Bach Bao Danh','0817014074',257),
(92,'Bach Trung Liet','0996911312',221),
(93,'Bach Bao Tien','0653901048',262),
(94,'Ho Trung Dung','0158459187',271),
(95,'Dao Viet Phien','0780257219',208),
(96,'Bach Trong Vuong','0100362568',225),
(97,'Dao Trung Hung','0790276862',231),
(98,'Bach Van Tien','0639652733',267),
(99,'Dao Trong Han','0768632313',234),
(100,'Vuong Trong Phan','0243819672',266);

insert into home(id_home,type,id_addr,status,fee,id_host) values
(1,"Nha tro",1,1,1000000,75),
(2,"Van phong",2,1,6900000,90),
(3,"Biet thu",3,1,23200000,82),
(4,"Van phong",4,1,6500000,97),
(5,"Biet thu",5,1,26000000,89),
(6,"Biet thu",6,0,25600000,61),
(7,"Chung cu",7,0,7400000,19),
(8,"Van phong",8,0,5000000,46),
(9,"Chung cu",9,1,9400000,67),
(10,"Biet thu",10,1,21100000,51),
(11,"Nha tro",11,1,1800000,97),
(12,"Chung cu",12,1,6900000,10),
(13,"Nha tro",13,1,1400000,78),
(14,"Van phong",14,0,4400000,41),
(15,"Van phong",15,1,5000000,22),
(16,"Biet thu",16,0,21300000,38),
(17,"Biet thu",17,1,22000000,91),
(18,"Chung cu",18,1,8400000,51),
(19,"Van phong",19,1,5100000,89),
(20,"Biet thu",20,0,22500000,28),
(21,"Nha tro",21,1,1100000,6),
(22,"Nha tro",22,1,1400000,32),
(23,"Van phong",23,0,4700000,72),
(24,"Nha tro",24,0,1500000,89),
(25,"Chung cu",25,1,7000000,33),
(26,"Chung cu",26,1,9200000,41),
(27,"Biet thu",27,0,24500000,4),
(28,"Nha tro",28,0,1700000,46),
(29,"Van phong",29,0,4700000,21),
(30,"Chung cu",30,0,8200000,43),
(31,"Biet thu",31,1,26900000,93),
(32,"Nha tro",32,1,1100000,66),
(33,"Biet thu",33,0,26400000,26),
(34,"Van phong",34,0,4300000,45),
(35,"Nha tro",35,1,1300000,72),
(36,"Nha tro",36,1,1400000,86),
(37,"Van phong",37,1,4000000,20),
(38,"Nha tro",38,1,1000000,24),
(39,"Nha tro",39,1,1900000,68),
(40,"Van phong",40,1,5500000,35),
(41,"Van phong",41,0,6800000,44),
(42,"Nha tro",42,1,1800000,18),
(43,"Van phong",43,0,4800000,32),
(44,"Van phong",44,1,6100000,81),
(45,"Chung cu",45,1,8800000,74),
(46,"Biet thu",46,0,26900000,48),
(47,"Nha tro",47,0,1600000,54),
(48,"Biet thu",48,1,25900000,56),
(49,"Biet thu",49,0,21900000,5),
(50,"Biet thu",50,0,23600000,33),
(51,"Chung cu",51,1,7600000,46),
(52,"Chung cu",52,1,7700000,34),
(53,"Chung cu",53,1,7200000,95),
(54,"Van phong",54,0,6900000,86),
(55,"Chung cu",55,1,6000000,93),
(56,"Van phong",56,0,4400000,36),
(57,"Van phong",57,1,5300000,39),
(58,"Biet thu",58,0,22000000,51),
(59,"Biet thu",59,0,20600000,69),
(60,"Chung cu",60,0,9900000,68),
(61,"Van phong",61,1,6900000,92),
(62,"Nha tro",62,1,1000000,85),
(63,"Nha tro",63,0,1300000,31),
(64,"Biet thu",64,1,24200000,96),
(65,"Van phong",65,0,4000000,88),
(66,"Biet thu",66,0,20600000,55),
(67,"Van phong",67,0,6600000,3),
(68,"Chung cu",68,1,7800000,96),
(69,"Nha tro",69,0,1900000,46),
(70,"Van phong",70,1,5600000,88),
(71,"Biet thu",71,1,23800000,12),
(72,"Nha tro",72,1,1700000,13),
(73,"Chung cu",73,0,9800000,58),
(74,"Chung cu",74,0,8000000,62),
(75,"Biet thu",75,1,21000000,55),
(76,"Van phong",76,0,4700000,97),
(77,"Van phong",77,0,6000000,71),
(78,"Chung cu",78,0,9600000,13),
(79,"Nha tro",79,1,1500000,42),
(80,"Van phong",80,0,4500000,100),
(81,"Chung cu",81,1,8300000,79),
(82,"Van phong",82,1,6300000,47),
(83,"Chung cu",83,1,7300000,16),
(84,"Chung cu",84,0,7000000,97),
(85,"Van phong",85,0,4400000,39),
(86,"Chung cu",86,1,8100000,92),
(87,"Chung cu",87,0,6500000,100),
(88,"Chung cu",88,0,7900000,19),
(89,"Biet thu",89,0,26900000,77),
(90,"Nha tro",90,0,1700000,18),
(91,"Biet thu",91,1,22500000,55),
(92,"Nha tro",92,0,1600000,32),
(93,"Chung cu",93,1,6400000,56),
(94,"Chung cu",94,1,7600000,99),
(95,"Biet thu",95,0,23100000,22),
(96,"Van phong",96,0,6800000,43),
(97,"Nha tro",97,1,1100000,95),
(98,"Van phong",98,0,6100000,59),
(99,"Chung cu",99,0,9100000,93),
(100,"Nha tro",100,0,1000000,5);

insert into vote(id_vote,review,voted_date,id_home,star) values 
(1,"Nha chat, gia dat. Khong khep kin.","2019-9-16",45,1),
(2,"Khu ve sinh be. Gan mat duong.","2019-7-24",76,3),
(3,"Khong khep kin.","2020-4-8",41,3),
(4,"Khong co cho nau an.","2019-11-13",22,4),
(5,"O 2 nguoi thi du, 3 nguoi hoi chat. Nha ban.","2020-2-11",30,2),
(6,"Khong duoc nhu trong hinh.","2019-9-4",39,4),
(7,"Chat luong tot. Gia ca phai chang.","2019-7-7",24,5),
(8,"Chu nha co ve kho tinh. Khong khep kin.","2020-5-26",91,3),
(9,"Tien dien co. Phong nho. Nong.","2019-9-18",74,1),
(10,"Phong rong rai, thoang mat, day du tien nghi.","2020-11-6",38,5),
(11,"Chu nha kho tinh. Chung chu.","2019-9-8",6,4),
(12,"An ninh khong tot. Gan mat duong.","2020-2-1",21,1),
(13,"Phong nho.","2019-11-27",50,3),
(14,"Tien dich vu hoi cao.","2019-9-12",95,3),
(15,"Gia hoi dat so voi mat bang chung.","2020-5-3",46,1),
(16,"Phong rat thuan loi cho viec di lai. Rong rai, thoang mat.","2019-12-15",34,5),
(17,"Phong tot. Gia ca phai chang.","2020-1-30",79,5),
(18,"Khong du tien nhi nhu mo ta.","2019-9-20",10,3),
(19,"Khong co cho nau an.","2020-6-6",82,3),
(20,"Xau, nho, nong, gia dat.","2019-7-24",18,1),
(21,"Phong khong phu hop voi nhu cau.","2020-2-15",23,3),
(22,"Chung chu, gio giac khong thoai mai.","2020-3-2",61,3),
(23,"Phong huong mat troi nen kha nong vao mua he.","2020-4-31",99,2),
(24,"Phong tot.","2020-3-22",60,5),
(25,"Khong co giuong san, phong ve sinh nho, khong khep kin.","2019-12-11",13,1),
(26,"Gia re. O thoai mai, co chia khoa rieng.","2020-8-1",94,5),
(27,"Gan trung tam va rong rai, thoang mat, khong chung chu.","2019-7-22",47,5),
(28,"Khong an ninh.","2019-8-19",78,3),
(29,"Gia tot. Dien nuoc re.","2020-3-27",85,5);

desc voting;
insert into voting(id_vote,id_renter,visited_date) values
(1,61,"2020-2-21"),
(2,38,"2019-7-26"),
(3,43,"2020-5-25"),
(4,13,"2019-8-10"),
(5,99,"2020-5-17"),
(6,53,"2019-9-23"),
(7,1,"2020-5-7"),
(8,44,"2020-1-19"),
(9,39,"2019-9-27"),
(10,6,"2020-3-8"),
(11,40,"2019-12-31"),
(12,93,"2019-7-26"),
(13,16,"2019-12-10"),
(14,20,"2020-3-3"),
(15,64,"2019-7-31"),
(16,65,"2020-2-19"),
(17,45,"2020-3-14"),
(18,78,"2019-7-8"),
(19,45,"2019-10-4"),
(20,55,"2019-10-3"),
(21,83,"2020-2-24"),
(22,94,"2020-1-9"),
(23,20,"2019-10-19"),
(24,8,"2019-8-4"),
(25,74,"2019-11-17"),
(26,14,"2019-6-24"),
(27,66,"2019-12-11"),
(28,10,"2019-9-23"),
(29,27,"2019-10-12");

desc home_detail;
insert into home_detail(id_detail,id_home) values
(24,1),
(11,2),
(82,3),
(92,4),
(49,5),
(3,6),
(97,7),
(59,8),
(50,9),
(10,10),
(97,11),
(38,12),
(89,13),
(84,14),
(70,15),
(19,16),
(34,17),
(92,18),
(49,19),
(45,20),
(71,21),
(61,22),
(77,23),
(55,24),
(56,25),
(54,26),
(53,27),
(2,28),
(45,29),
(99,30),
(11,31),
(38,32),
(96,33),
(88,34),
(27,35),
(89,36),
(16,37),
(60,38),
(44,39),
(32,40),
(96,41),
(39,42),
(40,43),
(38,44),
(46,45),
(35,46),
(72,47),
(9,48),
(13,49),
(95,50),
(99,51),
(29,52),
(26,53),
(24,54),
(68,55),
(2,56),
(8,57),
(9,58),
(77,59),
(8,60),
(22,61),
(59,62),
(83,63),
(64,64),
(96,65),
(67,66),
(5,67),
(74,68),
(96,69),
(53,70),
(12,71),
(93,72),
(87,73),
(22,74),
(86,75),
(97,76),
(50,77),
(60,78),
(21,79),
(97,80),
(9,81),
(80,82),
(56,83),
(61,84),
(26,85),
(95,86),
(29,87),
(82,88),
(84,89),
(30,90),
(45,91),
(12,92),
(90,93),
(84,94),
(32,95),
(18,96),
(21,97),
(14,98),
(44,99),
(96,100);