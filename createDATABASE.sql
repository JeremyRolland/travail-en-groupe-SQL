CREATE DATABASE IF NOT EXISTS `SquareGames_db`;

-- Level 0 Tables 
CREATE TABLE `SquareGames_db`.`Currency` (
    `id_currency` INT PRIMARY KEY AUTO_INCREMENT,
    `symbol` VARCHAR(10) NOT NULL,
    `exchange_rate` DECIMAL(10,2) NOT NULL
);

CREATE TABLE `SquareGames_db`.`PawnType` (
    `id_pawnType` INT PRIMARY KEY AUTO_INCREMENT,
    `pawnPicture` VARCHAR(255),
    `pawnColor` VARCHAR(7),
    `pawnPatern` VARCHAR(255)
);

CREATE TABLE `SquareGames_db`.`Game` (
    `id_game` INT PRIMARY KEY AUTO_INCREMENT,
    `isFavoritePawn` BOOLEAN DEFAULT FALSE,
    `gameName` VARCHAR(255) NOT NULL,
    `isGameLocal` BOOLEAN DEFAULT TRUE,
    `gameRequiredAge` INT NOT NULL,
    `isParentallyRestrited` BOOLEAN DEFAULT FALSE,
    `gameDifficulty` ENUM('EASY', 'MEDIUM', 'HARD') DEFAULT 'EASY'
);

-- Level 1 Tables

CREATE TABLE `SquareGames_db`.`Country` (
    `id_country` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `majority_age` INT NOT NULL,
    `id_currency` INT,
    FOREIGN KEY (`id_currency`) REFERENCES `Currency`(`id_currency`)
);

CREATE TABLE `SquareGames_db`.`UserInfo` (
    `id_userInfo` INT PRIMARY KEY AUTO_INCREMENT,
    `isLogged` BOOLEAN DEFAULT FALSE,
    `login` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL ,
    `birthday` DATE NOT NULL,
    `avatar` VARCHAR(255),
    `id_country` INT,
    FOREIGN KEY (`id_country`) REFERENCES `Country`(`id_country`)
);

CREATE TABLE `SquareGames_db`.`Board` (
    `id_board` INT PRIMARY KEY AUTO_INCREMENT,
    `boardSizeRow` INT NOT NULL,
    `boardSizeCol` INT NOT NULL,
    `boardColor` INT NOT NULL,
    `boardDisplaySize` INT NOT NULL,
    `id_game` INT,
    FOREIGN KEY (`id_game`) REFERENCES `Game`(`id_game`)
);

CREATE TABLE `SquareGames_db`.`TokenPack` (
    `id_tokenPack` INT PRIMARY KEY AUTO_INCREMENT,
    `endingDate` DATE,
    `startingDate` DATE NOT NULL,
    `tokenAmount` INT NOT NULL,
    `packName` VARCHAR(255) NOT NULL,
    `packPrice` DECIMAL(10,2) NOT NULL,
    `userToken` INT DEFAULT 0
);