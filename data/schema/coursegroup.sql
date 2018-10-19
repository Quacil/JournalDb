CREATE TABLE `coursegroup` (
  `CourseGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  PRIMARY KEY (`CourseGroupId`),
  KEY `FK_coursegroup_course_idx` (`CourseId`),
  KEY `FK_coursegroup_group_idx` (`GroupId`),
  CONSTRAINT `FK_coursegroup_course` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_coursegroup_group` FOREIGN KEY (`GroupId`) REFERENCES `group` (`GroupId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8