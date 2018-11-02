CREATE TABLE `facultyteacher` (
  `TeacherId` int(11) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  PRIMARY KEY (`FacultyId`,`TeacherId`),
  KEY `FK_FacultyTeacher_Teacher_idx` (`TeacherId`),
  CONSTRAINT `FK_FacultyTeacher_Faculty` FOREIGN KEY (`FacultyId`) REFERENCES `faculty` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_FacultyTeacher_Teacher` FOREIGN KEY (`TeacherId`) REFERENCES `teacher` (`TeacherId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8