CREATE TABLE `users` 
(
    `id` INTEGER NOT NULL auto_increment, 
    `username` VARCHAR(255) NOT NULL, 
    `email` VARCHAR(255) NOT NULL, 
    `password` VARCHAR(255) NOT NULL, 
    `createdAt` DATETIME NOT NULL, 
    `updatedAt` DATETIME NOT NULL, 
    PRIMARY KEY (`id`)
);

CREATE TABLE `rhymes` 
(
    `id` INTEGER NOT NULL auto_increment, 
    `title` VARCHAR(255) NOT NULL, 
    `content` VARCHAR(255) NOT NULL, 
    `userId` INTEGER NOT NULL, 
    `parentId` INTEGER, 
    `createdAt` DATETIME NOT NULL, 
    `updatedAt` DATETIME NOT NULL, 
    PRIMARY KEY (`id`), 
    FOREIGN KEY (`userId`) REFERENCES `users` (`id`) 
    ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (`parentId`) REFERENCES `rhymes` (`id`) 
    ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO `users` (`username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES ('admin', 'admin@adminmail.com', 'adminPasswordSecured', '2021-01-01 00:00:00', '2021-01-01 00:00:00');

INSERT INTO `rhymes` (`title`, `content`, `userId`, `parentId`, `createdAt`, `updatedAt`) VALUES ('Rhyme 1', 'Content of Rhyme 1', 1, NULL, '2021-01-01 00:00:00', '2021-01-01 00:00:00');