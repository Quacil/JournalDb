CREATE TABLE `rolepermission` (
  `RoleId` int(11) NOT NULL,
  `PermissionId` int(11) NOT NULL,
  PRIMARY KEY (`RoleId`,`PermissionId`),
  KEY `FK_RolePermission_Permission_idx` (`PermissionId`),
  CONSTRAINT `FK_RolePermission_Permission` FOREIGN KEY (`PermissionId`) REFERENCES `permission` (`PermissionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_RolePermission_Role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8