CREATE TABLE `teacher` (
  `TeacherId` int(11) NOT NULL,
  `PersonId` int(11) NOT NULL,
  PRIMARY KEY (`TeacherId`),
  KEY `FK_teacher_person_idx` (`PersonId`),
  CONSTRAINT `FK_teacher_person` FOREIGN KEY (`PersonId`) REFERENCES `person` (`PersonId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8