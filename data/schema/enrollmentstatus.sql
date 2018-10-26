CREATE TABLE `enrollmentstatus` (
  `EnrollmentStatusId` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`EnrollmentStatusId`),
  UNIQUE KEY `Status_UNIQUE` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8