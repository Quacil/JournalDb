CREATE TABLE `grade` (
  `GradeId` int(11) NOT NULL AUTO_INCREMENT,
  `EnrollmentId` int(11) NOT NULL,
  `GradeValueId` int(11) NOT NULL,
  `GradeTypeId` int(11) NOT NULL,
  `Awarded` datetime NOT NULL,
  PRIMARY KEY (`GradeId`),
  KEY `FK_Grade_Enrollment_idx` (`EnrollmentId`),
  KEY `FK_Grade_GradeValue_idx` (`GradeValueId`),
  KEY `FK_Grade_GradeType_idx` (`GradeTypeId`),
  CONSTRAINT `FK_Grade_Enrollment` FOREIGN KEY (`EnrollmentId`) REFERENCES `enrollment` (`EnrollmentId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_Grade_GradeType` FOREIGN KEY (`GradeTypeId`) REFERENCES `gradetype` (`GradeTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Grade_GradeValue` FOREIGN KEY (`GradeValueId`) REFERENCES `gradevalue` (`GradeValueId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8