CREATE TABLE `facultyenrollment` (
  `FacultyEnrollmentId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL,
  `FacultyCourseId` int(11) NOT NULL,
  PRIMARY KEY (`FacultyEnrollmentId`),
  KEY `FK_FacultyEnrollment_Student_idx` (`StudentId`),
  KEY `FK_FacultyEnrollment_FacultyCourse_idx` (`FacultyCourseId`),
  CONSTRAINT `FK_FacultyEnrollment_FacultyCourse` FOREIGN KEY (`FacultyCourseId`) REFERENCES `facultycourse` (`FacultyCourseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_FacultyEnrollment_Student` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8