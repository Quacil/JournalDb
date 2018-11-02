CREATE TABLE `enrollment` (
  `EnrollmentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `CourseGroupId` int(11) NOT NULL,
  `EnrollmentStatusId` int(11) NOT NULL,
  PRIMARY KEY (`EnrollmentId`),
  KEY `FK_enrollment_student_idx` (`StudentId`),
  KEY `FK_enrollment_coursegroup_idx` (`CourseGroupId`),
  KEY `FK_Enrollment_Status_idx` (`EnrollmentStatusId`),
  CONSTRAINT `FK_Enrollment_Status` FOREIGN KEY (`EnrollmentStatusId`) REFERENCES `enrollmentstatus` (`EnrollmentStatusId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_enrollment_coursegroup` FOREIGN KEY (`CourseGroupId`) REFERENCES `coursegroup` (`CourseGroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_enrollment_student` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8