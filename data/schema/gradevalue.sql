CREATE TABLE `gradevalue` (
  `GradeValueId` int(11) NOT NULL AUTO_INCREMENT,
  `Value` decimal(2,1) NOT NULL,
  PRIMARY KEY (`GradeValueId`),
  UNIQUE KEY `Value_UNIQUE` (`Value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8