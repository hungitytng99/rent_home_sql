
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`AgencyId`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`HomeID`),
  ADD KEY `HostID` (`HostID`),
  ADD KEY `Fee` (`Fee`),
  ADD KEY `Fee_2` (`Fee`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `RoomTypeID` (`RoomTypeID`);

--
-- Chỉ mục cho bảng `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`HostId`);

--
-- Chỉ mục cho bảng `renter`
--
ALTER TABLE `renter`
  ADD PRIMARY KEY (`RenterId`),
  ADD KEY `AgencyID` (`AgencyID`),
  ADD KEY `RoomTypeID` (`RoomTypeID`);

--
-- Chỉ mục cho bảng `roomtype`
--
ALTER TABLE `roomtype`
  ADD PRIMARY KEY (`RoomTypeId`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `AgencyiD` (`AgencyiD`);

--
-- Chỉ mục cho bảng `visiting`
--
ALTER TABLE `visiting`
  ADD KEY `HomeId` (`HomeId`),
  ADD KEY `RenterId` (`RenterId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `home_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostId`),
  ADD CONSTRAINT `home_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  ADD CONSTRAINT `home_ibfk_3` FOREIGN KEY (`RoomTypeID`) REFERENCES `roomtype` (`RoomTypeId`);

--
-- Các ràng buộc cho bảng `renter`
--
ALTER TABLE `renter`
  ADD CONSTRAINT `renter_ibfk_1` FOREIGN KEY (`AgencyID`) REFERENCES `agency` (`AgencyId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `renter_ibfk_2` FOREIGN KEY (`RoomTypeID`) REFERENCES `roomtype` (`RoomTypeId`);

--
-- Các ràng buộc cho bảng `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`AgencyiD`) REFERENCES `agency` (`AgencyId`);

--
-- Các ràng buộc cho bảng `visiting`
--
ALTER TABLE `visiting`
  ADD CONSTRAINT `visiting_ibfk_2` FOREIGN KEY (`HomeId`) REFERENCES `home` (`HomeID`);
