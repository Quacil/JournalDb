CREATE TABLE `teachercoursegroup` (
  `TeacherCourseGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseGroupId` int(11) NOT NULL,
  `TeacherId` int(11) NOT NULL,
  PRIMARY KEY (`TeacherCourseGroupId`),
  KEY `FK_TCG_teacher_idx` (`TeacherId`),
  KEY `FK_TCG_coursegroup_idx` (`CourseGroupId`),
  CONSTRAINT `FK_TCG_coursegroup` FOREIGN KEY (`CourseGroupId`) REFERENCES `coursegroup` (`CourseGroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TCG_teacher` FOREIGN KEY (`TeacherId`) REFERENCES `teacher` (`TeacherId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8