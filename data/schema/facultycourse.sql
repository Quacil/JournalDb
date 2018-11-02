CREATE TABLE `facultycourse` (
  `FacultyCourseId` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  PRIMARY KEY (`FacultyCourseId`),
  KEY `FK_FacultyCourse_Faculty_idx` (`FacultyId`),
  CONSTRAINT `FK_FacultyCourse_Faculty` FOREIGN KEY (`FacultyId`) REFERENCES `faculty` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8