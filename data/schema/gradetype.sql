CREATE TABLE `gradetype` (
  `GradeTypeId` int(11) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`GradeTypeId`),
  UNIQUE KEY `Name_UNIQUE` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8