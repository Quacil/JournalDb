CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `PersonId` int(11) NOT NULL,
  PRIMARY KEY (`StudentId`),
  UNIQUE KEY `PersonId` (`PersonId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `person` (`PersonId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8